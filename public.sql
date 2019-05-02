/*
 Navicat Premium Data Transfer

 Source Server         : postegres
 Source Server Type    : PostgreSQL
 Source Server Version : 90605
 Source Host           : localhost:5432
 Source Catalog        : gestion_hotel
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90605
 File Encoding         : 65001

 Date: 02/05/2019 17:42:31
*/


-- ----------------------------
-- Sequence structure for categorie_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categorie_id_seq";
CREATE SEQUENCE "public"."categorie_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for chambre_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."chambre_id_seq";
CREATE SEQUENCE "public"."chambre_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for groupe_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."groupe_id_seq";
CREATE SEQUENCE "public"."groupe_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for lit_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."lit_id_seq";
CREATE SEQUENCE "public"."lit_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for privilege_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."privilege_id_seq";
CREATE SEQUENCE "public"."privilege_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for produit_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."produit_id_seq";
CREATE SEQUENCE "public"."produit_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for promotion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."promotion_id_seq";
CREATE SEQUENCE "public"."promotion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for responsable_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."responsable_id_seq";
CREATE SEQUENCE "public"."responsable_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for service_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."service_id_seq";
CREATE SEQUENCE "public"."service_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_id_seq";
CREATE SEQUENCE "public"."type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for unite_produit_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unite_produit_id_seq";
CREATE SEQUENCE "public"."unite_produit_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for categorie
-- ----------------------------
DROP TABLE IF EXISTS "public"."categorie";
CREATE TABLE "public"."categorie" (
  "id" int4 NOT NULL DEFAULT nextval('categorie_id_seq'::regclass),
  "groupe_id" int4,
  "libelle" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of categorie
-- ----------------------------
INSERT INTO "public"."categorie" VALUES (2, 1, 'Boisson Jus');
INSERT INTO "public"."categorie" VALUES (3, 1, 'Boisson Alcoolisée');
INSERT INTO "public"."categorie" VALUES (4, 1, 'Boisson Eau');
INSERT INTO "public"."categorie" VALUES (5, 3, 'Dessert');
INSERT INTO "public"."categorie" VALUES (6, 4, 'Soupe');

-- ----------------------------
-- Table structure for chambre
-- ----------------------------
DROP TABLE IF EXISTS "public"."chambre";
CREATE TABLE "public"."chambre" (
  "id" int4 NOT NULL DEFAULT nextval('chambre_id_seq'::regclass),
  "type_id" int4,
  "etat" varchar(50) COLLATE "pg_catalog"."default",
  "numero" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for concerner
-- ----------------------------
DROP TABLE IF EXISTS "public"."concerner";
CREATE TABLE "public"."concerner" (
  "produit_id" int4,
  "promotion_id" int4
)
;

-- ----------------------------
-- Table structure for groupe
-- ----------------------------
DROP TABLE IF EXISTS "public"."groupe";
CREATE TABLE "public"."groupe" (
  "id" int4 NOT NULL DEFAULT nextval('groupe_id_seq'::regclass),
  "libelle" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of groupe
-- ----------------------------
INSERT INTO "public"."groupe" VALUES (1, 'Resto-Bar');
INSERT INTO "public"."groupe" VALUES (2, 'Cuisine');
INSERT INTO "public"."groupe" VALUES (3, 'Snack et Pizza');
INSERT INTO "public"."groupe" VALUES (4, 'Hotel');

-- ----------------------------
-- Table structure for lit
-- ----------------------------
DROP TABLE IF EXISTS "public"."lit";
CREATE TABLE "public"."lit" (
  "id" int4 NOT NULL DEFAULT nextval('lit_id_seq'::regclass),
  "nbre_place" int4
)
;

-- ----------------------------
-- Table structure for posseder
-- ----------------------------
DROP TABLE IF EXISTS "public"."posseder";
CREATE TABLE "public"."posseder" (
  "type_id" int4,
  "lit_id" int4
)
;

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS "public"."privilege";
CREATE TABLE "public"."privilege" (
  "id" int4 NOT NULL DEFAULT nextval('privilege_id_seq'::regclass),
  "libelle" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO "public"."privilege" VALUES (1, 'lecture');
INSERT INTO "public"."privilege" VALUES (2, 'lecture et ecriture');
INSERT INTO "public"."privilege" VALUES (3, 'aucun');

-- ----------------------------
-- Table structure for produit
-- ----------------------------
DROP TABLE IF EXISTS "public"."produit";
CREATE TABLE "public"."produit" (
  "id" int4 NOT NULL DEFAULT nextval('produit_id_seq'::regclass),
  "unite_produit_id" int4,
  "libelle" varchar(50) COLLATE "pg_catalog"."default",
  "prix" numeric(8,2),
  "photos" varchar(50) COLLATE "pg_catalog"."default",
  "categorie_id" int4
)
;

-- ----------------------------
-- Records of produit
-- ----------------------------
INSERT INTO "public"."produit" VALUES (1, 1, 'COCA 100 cl', 2300.00, 'file:/D:/HC/Fx/Gest_Hotel/src/Boissons/coca.jpg', 2);

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS "public"."promotion";
CREATE TABLE "public"."promotion" (
  "id" int4 NOT NULL DEFAULT nextval('promotion_id_seq'::regclass),
  "nom" varchar(100) COLLATE "pg_catalog"."default",
  "reduction" numeric(4,2),
  "date_debut" date,
  "date_fin" date,
  "etat_promotion" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of promotion
-- ----------------------------
INSERT INTO "public"."promotion" VALUES (1, 'Vacance', 15.00, '2019-02-01', '2019-03-01', 'desactivee');
INSERT INTO "public"."promotion" VALUES (2, 'noel', 16.00, '2019-03-21', '2019-03-22', 'desactivee');

-- ----------------------------
-- Table structure for responsable
-- ----------------------------
DROP TABLE IF EXISTS "public"."responsable";
CREATE TABLE "public"."responsable" (
  "id" int4 NOT NULL DEFAULT nextval('responsable_id_seq'::regclass),
  "nom" varchar(100) COLLATE "pg_catalog"."default",
  "prenom" varchar(100) COLLATE "pg_catalog"."default",
  "telephone" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "pseudo" varchar(50) COLLATE "pg_catalog"."default",
  "mdp" varchar(50) COLLATE "pg_catalog"."default",
  "indication_mdp" varchar(50) COLLATE "pg_catalog"."default",
  "photos" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "service_id" int4
)
;

-- ----------------------------
-- Records of responsable
-- ----------------------------
INSERT INTO "public"."responsable" VALUES (1, 'Tafita Mario', 'Francisco', '0343120037', 'malyo20.daiki@gmail.com', 'malyod4iki', '_Roboro20Team_', 'Admin: L0g1qu3', 'file:/D:/Kaleba.PNG', 2);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS "public"."service";
CREATE TABLE "public"."service" (
  "id" int4 NOT NULL DEFAULT nextval('service_id_seq'::regclass),
  "libelle" varchar(50) COLLATE "pg_catalog"."default",
  "privilege_id" int4
)
;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO "public"."service" VALUES (1, 'admin', 1);
INSERT INTO "public"."service" VALUES (2, 'secretaire', 2);
INSERT INTO "public"."service" VALUES (3, 'caissier', 2);

-- ----------------------------
-- Table structure for stocker
-- ----------------------------
DROP TABLE IF EXISTS "public"."stocker";
CREATE TABLE "public"."stocker" (
  "responsable_id" int4,
  "produit_id" int4,
  "quantite" int8,
  "date_enreg" date
)
;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS "public"."type";
CREATE TABLE "public"."type" (
  "id" int4 NOT NULL DEFAULT nextval('type_id_seq'::regclass),
  "libelle" varchar(50) COLLATE "pg_catalog"."default",
  "photos" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for unite_produit
-- ----------------------------
DROP TABLE IF EXISTS "public"."unite_produit";
CREATE TABLE "public"."unite_produit" (
  "id" int4 NOT NULL DEFAULT nextval('unite_produit_id_seq'::regclass),
  "categorie_id" int4,
  "libelle" varchar(50) COLLATE "pg_catalog"."default",
  "quantite" int4
)
;

-- ----------------------------
-- Records of unite_produit
-- ----------------------------
INSERT INTO "public"."unite_produit" VALUES (1, 2, 'Cageot de 100 cl', 12);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."categorie_id_seq"
OWNED BY "public"."categorie"."id";
SELECT setval('"public"."categorie_id_seq"', 7, true);
ALTER SEQUENCE "public"."chambre_id_seq"
OWNED BY "public"."chambre"."id";
SELECT setval('"public"."chambre_id_seq"', 2, false);
ALTER SEQUENCE "public"."groupe_id_seq"
OWNED BY "public"."groupe"."id";
SELECT setval('"public"."groupe_id_seq"', 5, true);
ALTER SEQUENCE "public"."lit_id_seq"
OWNED BY "public"."lit"."id";
SELECT setval('"public"."lit_id_seq"', 2, false);
ALTER SEQUENCE "public"."privilege_id_seq"
OWNED BY "public"."privilege"."id";
SELECT setval('"public"."privilege_id_seq"', 4, true);
ALTER SEQUENCE "public"."produit_id_seq"
OWNED BY "public"."produit"."id";
SELECT setval('"public"."produit_id_seq"', 3, true);
ALTER SEQUENCE "public"."promotion_id_seq"
OWNED BY "public"."promotion"."id";
SELECT setval('"public"."promotion_id_seq"', 3, true);
ALTER SEQUENCE "public"."responsable_id_seq"
OWNED BY "public"."responsable"."id";
SELECT setval('"public"."responsable_id_seq"', 3, true);
ALTER SEQUENCE "public"."service_id_seq"
OWNED BY "public"."service"."id";
SELECT setval('"public"."service_id_seq"', 4, true);
ALTER SEQUENCE "public"."type_id_seq"
OWNED BY "public"."type"."id";
SELECT setval('"public"."type_id_seq"', 2, false);
ALTER SEQUENCE "public"."unite_produit_id_seq"
OWNED BY "public"."unite_produit"."id";
SELECT setval('"public"."unite_produit_id_seq"', 2, true);

-- ----------------------------
-- Primary Key structure for table categorie
-- ----------------------------
ALTER TABLE "public"."categorie" ADD CONSTRAINT "categorie_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table chambre
-- ----------------------------
ALTER TABLE "public"."chambre" ADD CONSTRAINT "chambre_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table groupe
-- ----------------------------
ALTER TABLE "public"."groupe" ADD CONSTRAINT "groupe_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table lit
-- ----------------------------
ALTER TABLE "public"."lit" ADD CONSTRAINT "lit_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table privilege
-- ----------------------------
ALTER TABLE "public"."privilege" ADD CONSTRAINT "privilege_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table produit
-- ----------------------------
ALTER TABLE "public"."produit" ADD CONSTRAINT "produit_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table promotion
-- ----------------------------
ALTER TABLE "public"."promotion" ADD CONSTRAINT "promotion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table responsable
-- ----------------------------
ALTER TABLE "public"."responsable" ADD CONSTRAINT "responsable_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table service
-- ----------------------------
ALTER TABLE "public"."service" ADD CONSTRAINT "service_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table type
-- ----------------------------
ALTER TABLE "public"."type" ADD CONSTRAINT "type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table unite_produit
-- ----------------------------
ALTER TABLE "public"."unite_produit" ADD CONSTRAINT "unite_produit_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table categorie
-- ----------------------------
ALTER TABLE "public"."categorie" ADD CONSTRAINT "groupe_fkey" FOREIGN KEY ("groupe_id") REFERENCES "public"."groupe" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table chambre
-- ----------------------------
ALTER TABLE "public"."chambre" ADD CONSTRAINT "type_fkey" FOREIGN KEY ("type_id") REFERENCES "public"."type" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table concerner
-- ----------------------------
ALTER TABLE "public"."concerner" ADD CONSTRAINT "produit_fkey" FOREIGN KEY ("produit_id") REFERENCES "public"."produit" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."concerner" ADD CONSTRAINT "promotion_fkey" FOREIGN KEY ("promotion_id") REFERENCES "public"."promotion" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table posseder
-- ----------------------------
ALTER TABLE "public"."posseder" ADD CONSTRAINT "lit_fkey" FOREIGN KEY ("lit_id") REFERENCES "public"."lit" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."posseder" ADD CONSTRAINT "type_fkey" FOREIGN KEY ("type_id") REFERENCES "public"."type" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table produit
-- ----------------------------
ALTER TABLE "public"."produit" ADD CONSTRAINT "categorie_fkey" FOREIGN KEY ("categorie_id") REFERENCES "public"."categorie" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."produit" ADD CONSTRAINT "unite_fkey" FOREIGN KEY ("unite_produit_id") REFERENCES "public"."unite_produit" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table responsable
-- ----------------------------
ALTER TABLE "public"."responsable" ADD CONSTRAINT "sevice_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."service" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table service
-- ----------------------------
ALTER TABLE "public"."service" ADD CONSTRAINT "privilege_fkey" FOREIGN KEY ("privilege_id") REFERENCES "public"."privilege" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table stocker
-- ----------------------------
ALTER TABLE "public"."stocker" ADD CONSTRAINT "produit_fkey" FOREIGN KEY ("produit_id") REFERENCES "public"."produit" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."stocker" ADD CONSTRAINT "responsble_fkey" FOREIGN KEY ("responsable_id") REFERENCES "public"."responsable" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table unite_produit
-- ----------------------------
ALTER TABLE "public"."unite_produit" ADD CONSTRAINT "categorie_id" FOREIGN KEY ("categorie_id") REFERENCES "public"."categorie" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
