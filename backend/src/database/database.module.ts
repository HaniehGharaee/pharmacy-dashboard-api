import { Module, OnModuleDestroy } from '@nestjs/common';
import { TypeOrmModule, InjectDataSource } from '@nestjs/typeorm';
import { ConfigService } from '@nestjs/config';
import { DataSource } from 'typeorm';

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      inject: [ConfigService],
      useFactory: (configService: ConfigService) => {
        const host = configService.get<string>('DB_HOST');
        const port = Number(configService.get<string>('DB_PORT'));
        const username = configService.get<string>('DB_USERNAME');
        const password = configService.get<string>('DB_PASSWORD');
        const database = configService.get<string>('DB_DATABASE');
        if (!host) throw new Error('DB_Host is required');
        if (!database) throw new Error('DB_DATABASE is required');
        return {
          type: 'postgres',
          host,
          port,
          username,
          password,
          database,

          autoLoadEntities: true,
          synchronize: false,
          logging: true,

          //connection lifecycle hooks
          extra: {
            max: 10,
          },
        };
      },
    }),
  ],
})
export class DatabaseModule implements OnModuleDestroy {
  constructor(
    @InjectDataSource()
    private readonly dataSource: DataSource,
  ) {}
  async onModuleDestroy() {
    if (this.dataSource?.isInitialized) {
      await this.dataSource.destroy();
    }
  }
}
