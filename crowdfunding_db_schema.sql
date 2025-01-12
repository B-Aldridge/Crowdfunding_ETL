PGDMP     3                    {           postgres    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3343                        2615    17341    crowdfunding_db_schema    SCHEMA     &   CREATE SCHEMA crowdfunding_db_schema;
 $   DROP SCHEMA crowdfunding_db_schema;
                postgres    false            �            1259    17363    Campaign    TABLE     d  CREATE TABLE crowdfunding_db_schema."Campaign" (
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name character varying NOT NULL,
    description character varying NOT NULL,
    goal numeric NOT NULL,
    pledged numeric NOT NULL,
    outcome character varying NOT NULL,
    backers_count integer NOT NULL,
    country character varying NOT NULL,
    currency character varying NOT NULL,
    launch_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    category_ids character varying NOT NULL,
    subcategory_id character varying NOT NULL
);
 .   DROP TABLE crowdfunding_db_schema."Campaign";
       crowdfunding_db_schema         heap    postgres    false    6            �            1259    17349    Category    TABLE     �   CREATE TABLE crowdfunding_db_schema."Category" (
    category_id character varying NOT NULL,
    category_name character varying NOT NULL
);
 .   DROP TABLE crowdfunding_db_schema."Category";
       crowdfunding_db_schema         heap    postgres    false    6            �            1259    17356    Contact    TABLE     �   CREATE TABLE crowdfunding_db_schema."Contact" (
    contact_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL
);
 -   DROP TABLE crowdfunding_db_schema."Contact";
       crowdfunding_db_schema         heap    postgres    false    6            �            1259    17342    Subcategory    TABLE     �   CREATE TABLE crowdfunding_db_schema."Subcategory" (
    subcategory_id character varying NOT NULL,
    subcategory_name character varying NOT NULL
);
 1   DROP TABLE crowdfunding_db_schema."Subcategory";
       crowdfunding_db_schema         heap    postgres    false    6            x           2606    17369    Campaign Campaign_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY crowdfunding_db_schema."Campaign"
    ADD CONSTRAINT "Campaign_pkey" PRIMARY KEY (cf_id);
 T   ALTER TABLE ONLY crowdfunding_db_schema."Campaign" DROP CONSTRAINT "Campaign_pkey";
       crowdfunding_db_schema            postgres    false    218            t           2606    17355    Category Category_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY crowdfunding_db_schema."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (category_id);
 T   ALTER TABLE ONLY crowdfunding_db_schema."Category" DROP CONSTRAINT "Category_pkey";
       crowdfunding_db_schema            postgres    false    216            v           2606    17362    Contact Contact_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY crowdfunding_db_schema."Contact"
    ADD CONSTRAINT "Contact_pkey" PRIMARY KEY (contact_id);
 R   ALTER TABLE ONLY crowdfunding_db_schema."Contact" DROP CONSTRAINT "Contact_pkey";
       crowdfunding_db_schema            postgres    false    217            r           2606    17348    Subcategory Subcategory_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY crowdfunding_db_schema."Subcategory"
    ADD CONSTRAINT "Subcategory_pkey" PRIMARY KEY (subcategory_id);
 Z   ALTER TABLE ONLY crowdfunding_db_schema."Subcategory" DROP CONSTRAINT "Subcategory_pkey";
       crowdfunding_db_schema            postgres    false    215            y           2606    17375 #   Campaign Campaign_category_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY crowdfunding_db_schema."Campaign"
    ADD CONSTRAINT "Campaign_category_ids_fkey" FOREIGN KEY (category_ids) REFERENCES crowdfunding_db_schema."Category"(category_id);
 a   ALTER TABLE ONLY crowdfunding_db_schema."Campaign" DROP CONSTRAINT "Campaign_category_ids_fkey";
       crowdfunding_db_schema          postgres    false    3188    218    216            z           2606    17370 !   Campaign Campaign_contact_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY crowdfunding_db_schema."Campaign"
    ADD CONSTRAINT "Campaign_contact_id_fkey" FOREIGN KEY (contact_id) REFERENCES crowdfunding_db_schema."Contact"(contact_id);
 _   ALTER TABLE ONLY crowdfunding_db_schema."Campaign" DROP CONSTRAINT "Campaign_contact_id_fkey";
       crowdfunding_db_schema          postgres    false    218    217    3190            {           2606    17380 %   Campaign Campaign_subcategory_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY crowdfunding_db_schema."Campaign"
    ADD CONSTRAINT "Campaign_subcategory_id_fkey" FOREIGN KEY (subcategory_id) REFERENCES crowdfunding_db_schema."Subcategory"(subcategory_id);
 c   ALTER TABLE ONLY crowdfunding_db_schema."Campaign" DROP CONSTRAINT "Campaign_subcategory_id_fkey";
       crowdfunding_db_schema          postgres    false    3186    215    218           