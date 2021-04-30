-- CREATE DATABASE organization; 

CREATE SCHEMA partition;

CREATE TABLE partition.t_employees (
    pk_id serial PRIMARY KEY,
    c_lastname varchar NOT NULL,
    c_firstname varchar NOT NULL,
    c_middlename varchar,
    c_salary money NOT NULL,
    c_email varchar,
    c_position varchar NOT NULL
);

CREATE TABLE partition.t_clients (
    pk_id serial PRIMARY KEY,
    c_lastname varchar NOT NULL,
    c_firstname varchar NOT NULL,
    c_middlename varchar,
    c_email varchar
);

CREATE SCHEMA auth;

CREATE TABLE auth.t_user (
    pk_id serial PRIMARY KEY,
    c_login varchar NOT NULL,
    c_password bytea NOT NULL,
    c_last_in timestamp
);