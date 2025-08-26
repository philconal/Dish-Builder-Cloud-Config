-- Tạo schema nếu chưa tồn tại
create schema if not exists config_schema;

-- Chỉ set search_path sau khi schema đã được tạo
set search_path to config_schema;

-- Tạo bảng nếu chưa tồn tại
create table if not exists ws_properties
(
    id          serial primary key,
    application varchar(255) not null,
    label       varchar(255) not null,
    profile     varchar(255) not null,
    key         varchar(255) not null,
    value       text,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);

-- Insert dữ liệu
INSERT INTO ws_properties(application, label, profile, key, value, created_at)
VALUES
    ('dish-builder-app', 'master', 'local', 'spring.datasource.url', 'jdbc:postgresql://localhost:5432/dish_builder_db', now()),
    ('dish-builder-app', 'master', 'local', 'spring.datasource.username', 'dish-builder', now()),
    ('dish-builder-app', 'master', 'local', 'spring.datasource.password', 'Conal2411@C', now()),
    ('dish-builder-app', 'master', 'local', 'spring.jpa.hibernate.ddl-auto', 'validate', now()),
    ('dish-builder-app', 'master', 'local', 'spring.jpa.show-sql', 'true', now()),
    ('dish-builder-app', 'master', 'local', 'spring.jpa.properties.hibernate.dialect', 'org.hibernate.dialect.PostgreSQLDialect', now()),
    ('dish-builder-app', 'master', 'local', 'spring.security.oauth2.client.registration.google.client-id', '938513069093-616gdfnetbs6pvr1y9mb0q35g3lc', now()),
    ('dish-builder-app', 'master', 'local', 'spring.security.oauth2.client.registration.google.client-secret', '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', now()),
    ('dish-builder-app', 'master', 'local', 'spring.security.oauth2.client.registration.google.scope', 'openid,profile,email', now()),
    ('dish-builder-app', 'master', 'local', 'management.endpoints.web.exposure.include', 'refresh,health,env', now());
