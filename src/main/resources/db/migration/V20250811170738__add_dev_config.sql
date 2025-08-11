
set search_path to config_schema;
-- Insert dữ liệu
INSERT INTO config_schema.ws_properties(application, label, profile, key, value, created_at)
VALUES
    ('dish-builder-app', 'master', 'dev', 'spring.datasource.url', 'jdbc:postgresql://54.179.118.34:5432/dish-builder', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.datasource.username', 'dish_builder', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.datasource.password', 'Conal2411@C', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.jpa.hibernate.ddl-auto', 'validate', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.jpa.show-sql', 'true', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.jpa.properties.hibernate.dialect', 'org.hibernate.dialect.PostgreSQLDialect', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.security.oauth2.client.registration.google.client-id', '938513069093-616gdfnetbs6pvr1y9mb0q35g3lc', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.security.oauth2.client.registration.google.client-secret', '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', now()),
    ('dish-builder-app', 'master', 'dev', 'spring.security.oauth2.client.registration.google.scope', 'openid,profile,email', now()),
    ('dish-builder-app', 'master', 'dev', 'management.endpoints.web.exposure.include', 'refresh,health,env', now());
