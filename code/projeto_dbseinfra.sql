PGDMP  #                    }            projeto_dbseinfra    10.23    17.4 	    �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �
           1262    25023    projeto_dbseinfra    DATABASE     �   CREATE DATABASE projeto_dbseinfra WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE projeto_dbseinfra;
                     postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false            �
           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    6            �            1259    25028    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(200),
    cpf character varying(14),
    telefone character varying(14)
);
    DROP TABLE public.usuario;
       public         r       postgres    false    6            �
          0    25028    usuario 
   TABLE DATA           :   COPY public.usuario (id, nome, cpf, telefone) FROM stdin;
    public               postgres    false    196   m       m
           2606    25032    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    196            �
      x������ � �     