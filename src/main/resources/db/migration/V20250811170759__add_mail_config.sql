set search_path to config_schema;
-- Insert dữ liệu
INSERT INTO config_schema.ws_properties(application, label, profile, key, value, created_at)
VALUES ('dish-builder-app', 'master', 'local', 'spring.mail.host', 'localhost', now()),
       ('dish-builder-app', 'master', 'local', 'spring.mail.port', '1025', now()),
       ('dish-builder-app', 'master', 'local', 'spring.mail.username', '', now()),
       ('dish-builder-app', 'master', 'local', 'spring.mail.password', '', now()),
       ('dish-builder-app', 'master', 'local', 'spring.mail.properties.mail.smtp.auth', 'false', now()),
       ('dish-builder-app', 'master', 'local', 'spring.mail.properties.mail.smtp.starttls.enable', 'false', now());