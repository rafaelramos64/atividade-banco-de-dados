-- CreateEnum
CREATE TYPE user_gender AS ENUM ('WOMEN', 'MAN', 'OTHER');

-- CreateEnum
CREATE TYPE user_profile_type AS ENUM ('ADMIN', 'STUDENT');

-- CreateEnum
CREATE TYPE user_profile_status AS ENUM ('WAITING_DOCUMENT_VALIDATION', 'VALID', 'DECLINED');

-- CreateTable
CREATE TABLE user (
    id TEXT NOT NULL,
    email TEXT NOT NULL,
    first_name TEXT,
    last_name TEXT,
    salt TEXT NOT NULL,
    hash TEXT NOT NULL,
    external_identifier TEXT NOT NULL,
    document TEXT NOT NULL,
    profile_type user_profile_type NOT NULL DEFAULT E'STUDENT',
    gender user_gender,
    age INTEGER,
    status user_profile_status NOT NULL DEFAULT E'WAITING_DOCUMENT_VALIDATION',
    profile_picture TEXT,

    CONSTRAINT user_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX user_id_key ON user(id);

-- CreateIndex
CREATE UNIQUE INDEX user_email_key ON user(email);

-- CreateIndex
CREATE UNIQUE INDEX user_document_key ON user(document);

-- CreateEnum
CREATE TYPE file_owner AS ENUM ('User');

-- CreateTable
CREATE TABLE file (
    id TEXT NOT NULL,
    url TEXT NOT NULL,
    file_owner file_owner NOT NULL,
    description TEXT,
    user_id TEXT,
    immobile_id TEXT,
    CONSTRAINT file_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX file_id_key ON file(id);

-- CreateIndex
CREATE UNIQUE INDEX file_url_key ON file(url);

-- AddForeignKey
ALTER TABLE file ADD CONSTRAINT file_user_id_fkey FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE SET NULL ON UPDATE CASCADE;

-- CreateEnum
CREATE TYPE allowed_only_women AS ENUM ('YES', 'NO');

-- AlterEnum
ALTER TYPE file_owner ADD VALUE 'Immobile';

-- AlterTable
ALTER TABLE file ADD COLUMN     immobile_id TEXT;

-- CreateTable
CREATE TABLE immobile (
    id TEXT NOT NULL,
    title TEXT,
    description TEXT,
    amount_vacancies INTEGER NOT NULL,
    remaning_vacancies INTEGER NOT NULL,
    amount_price INTEGER NOT NULL,
    allowed_only_women allowed_only_women NOT NULL,

    CONSTRAINT immobile_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX immobile_id_key ON immobile(id);

-- AddForeignKey
ALTER TABLE file ADD CONSTRAINT file_immobile_id_fkey FOREIGN KEY (immobile_id) REFERENCES immobile(id) ON DELETE SET NULL ON UPDATE CASCADE;

-- CreateTable
CREATE TABLE rating (
    id TEXT NOT NULL,
    comment TEXT,
    stars INTEGER,
    user_id TEXT NOT NULL,
    immobile_id TEXT NOT NULL,

    CONSTRAINT rating_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX rating_id_key ON rating(id);

-- AddForeignKey
ALTER TABLE rating ADD CONSTRAINT rating_user_id_fkey FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE rating ADD CONSTRAINT rating_immobile_id_fkey FOREIGN KEY (immobile_id) REFERENCES immobile(id) ON DELETE RESTRICT ON UPDATE CASCADE;

-- CreateEnum
CREATE TYPE user_immobile_role AS ENUM ('ROOMMATE', 'CURRENT_RESPONSIBLE');

-- CreateTable
CREATE TABLE user_immobile (
    id TEXT NOT NULL,
    role user_immobile_role NOT NULL,
    user_id TEXT NOT NULL,
    immobile_id TEXT NOT NULL,

    CONSTRAINT user_immobile_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX user_immobile_id_key ON user_immobile(id);

-- CreateIndex
CREATE UNIQUE INDEX user_immobile_user_id_key ON user_immobile(user_id);

-- AddForeignKey
ALTER TABLE user_immobile ADD CONSTRAINT user_immobile_user_id_fkey FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE user_immobile ADD CONSTRAINT user_immobile_immobile_id_fkey FOREIGN KEY (immobile_id) REFERENCES immobile(id) ON DELETE RESTRICT ON UPDATE CASCADE;