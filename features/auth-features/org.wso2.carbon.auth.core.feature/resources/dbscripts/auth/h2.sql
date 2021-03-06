CREATE TABLE IF NOT EXISTS AUTH_OAUTH2_CLIENTS (
            CLIENT_ID VARCHAR(256),
            CLIENT_SECRET VARCHAR(512),
            REDIRECT_URI VARCHAR(1024) DEFAULT NULL,
            PRIMARY KEY (CLIENT_ID)
);

CREATE TABLE IF NOT EXISTS AUTH_OAUTH2_AUTHORIZATION_CODE (
            CODE_ID INTEGER NOT NULL AUTO_INCREMENT,
            CLIENT_ID VARCHAR(256),
            AUTHORIZATION_CODE VARCHAR(512),
            REDIRECT_URI VARCHAR(1024) DEFAULT NULL,
            SCOPE VARCHAR(2048),
            PRIMARY KEY (CODE_ID)
);

CREATE TABLE IF NOT EXISTS AUTH_OAUTH2_APPLICATIONS (
            ID INTEGER NOT NULL AUTO_INCREMENT,
            CLIENT_ID VARCHAR(255),
            CLIENT_SECRET VARCHAR(512),
            APP_NAME VARCHAR(255),
            OAUTH_VERSION VARCHAR(128),
            CALLBACK_URL VARCHAR(1024) DEFAULT NULL,
            GRANT_TYPES VARCHAR (1024) DEFAULT NULL,
            APP_STATE VARCHAR (25) DEFAULT 'ACTIVE',
            USER_ACCESS_TOKEN_EXPIRE_TIME BIGINT DEFAULT 3600000,
            APP_ACCESS_TOKEN_EXPIRE_TIME BIGINT DEFAULT 3600000,
            REFRESH_TOKEN_EXPIRE_TIME BIGINT DEFAULT 84600000,
            CONSTRAINT CONSUMER_KEY_CONSTRAINT UNIQUE (CLIENT_ID),
            PRIMARY KEY (ID)
);
