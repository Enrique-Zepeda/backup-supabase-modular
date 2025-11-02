SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict BfzjNX46vGdT6EL2C0V6NMYomTygS4fHM0X1nT1ms7T3GcTAYIMcXKyZZ1NuvHK

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	b9447f9a-9ac9-4d89-a40b-6c74a317c15f	{"action":"user_confirmation_requested","actor_id":"c78066b4-db29-4251-9b8b-3962ad36594f","actor_name":"Logan A","actor_username":"saibor.p.ly@hotmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-30 00:50:24.385113+00	
00000000-0000-0000-0000-000000000000	6793fc85-da92-4ff8-b304-71320086c309	{"action":"user_signedup","actor_id":"c78066b4-db29-4251-9b8b-3962ad36594f","actor_name":"Logan A","actor_username":"saibor.p.ly@hotmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-07-30 00:50:39.149754+00	
00000000-0000-0000-0000-000000000000	924eab57-dece-480e-b514-d8327162b960	{"action":"login","actor_id":"c78066b4-db29-4251-9b8b-3962ad36594f","actor_name":"Logan A","actor_username":"saibor.p.ly@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-30 00:50:44.964324+00	
00000000-0000-0000-0000-000000000000	48b4ed5b-e3d0-4478-9bad-483959b62439	{"action":"user_confirmation_requested","actor_id":"b6ed6b9f-9d70-42d5-a929-bf71e51e3074","actor_name":"Logan A","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-30 05:55:11.915081+00	
00000000-0000-0000-0000-000000000000	9b075f34-07bd-4eac-87a5-c733131becfe	{"action":"user_signedup","actor_id":"b6ed6b9f-9d70-42d5-a929-bf71e51e3074","actor_name":"Logan A","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-07-30 05:55:22.240401+00	
00000000-0000-0000-0000-000000000000	1672d4c3-c0c9-457f-95a7-29a6719f1c09	{"action":"login","actor_id":"b6ed6b9f-9d70-42d5-a929-bf71e51e3074","actor_name":"Logan A","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-30 05:55:28.357144+00	
00000000-0000-0000-0000-000000000000	e6d67696-1122-4f10-8cae-74328191be4e	{"action":"user_confirmation_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-30 20:23:45.516999+00	
00000000-0000-0000-0000-000000000000	f8ffc504-b6a3-49dd-b417-a85de8e5e566	{"action":"user_signedup","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-07-30 20:24:13.821648+00	
00000000-0000-0000-0000-000000000000	be221698-af66-4338-934e-fa1ce5d439fc	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-30 20:24:23.759792+00	
00000000-0000-0000-0000-000000000000	63fe64c1-bc28-4f50-9e7e-95e3adc6f5d4	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-07-30 20:27:13.830779+00	
00000000-0000-0000-0000-000000000000	72627522-1434-4203-a469-dd47b48e8626	{"action":"user_repeated_signup","actor_id":"b6ed6b9f-9d70-42d5-a929-bf71e51e3074","actor_name":"Logan A","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-30 22:00:49.857412+00	
00000000-0000-0000-0000-000000000000	c3932621-169f-4fcc-a8c1-f4a11655bf37	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"libros123@yopmail.com","user_id":"b6ed6b9f-9d70-42d5-a929-bf71e51e3074","user_phone":""}}	2025-07-30 22:02:11.34024+00	
00000000-0000-0000-0000-000000000000	128cc76c-589b-468e-8b62-b604eea18cad	{"action":"user_confirmation_requested","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-30 22:02:23.799797+00	
00000000-0000-0000-0000-000000000000	e2311e10-06bf-401e-b1ce-0388ed3a62dd	{"action":"user_signedup","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-07-30 22:02:33.049343+00	
00000000-0000-0000-0000-000000000000	7dfbcd13-807e-4cf2-b498-fc2496fccbdd	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-30 22:02:38.178829+00	
00000000-0000-0000-0000-000000000000	98ba7368-0c61-4f24-aa0a-8c3e17c07507	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-30 22:34:42.356948+00	
00000000-0000-0000-0000-000000000000	34b30f02-d1ac-4b11-abcc-411fa6eccbad	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-30 23:56:02.000975+00	
00000000-0000-0000-0000-000000000000	3b783a82-3a9e-45f0-ad2e-3fcc53e4c49f	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-30 23:56:02.006098+00	
00000000-0000-0000-0000-000000000000	6a182bf6-b2ab-4cf5-a35a-dc07058c7e8a	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 00:00:16.952187+00	
00000000-0000-0000-0000-000000000000	293b22ec-86e6-4359-97a4-b7ade58be010	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 00:00:34.537413+00	
00000000-0000-0000-0000-000000000000	8a6d4b0b-9ae2-43dc-a774-166b97d18a50	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-31 01:14:11.274297+00	
00000000-0000-0000-0000-000000000000	831788df-09ef-4edb-a287-1658b3ec6a2c	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-31 01:14:11.278609+00	
00000000-0000-0000-0000-000000000000	27ac365f-6225-4a79-beeb-6cc351d78969	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 01:14:15.852204+00	
00000000-0000-0000-0000-000000000000	abd4f28f-be06-4a61-8629-2da74f6e3de6	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-31 02:34:13.423481+00	
00000000-0000-0000-0000-000000000000	d05558ad-64d0-497f-a9d5-c13e82ad7076	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-31 02:34:13.429524+00	
00000000-0000-0000-0000-000000000000	7ff3d4a1-0286-422e-8eae-56e1845cfe13	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 02:36:45.609751+00	
00000000-0000-0000-0000-000000000000	10b134f5-78c2-40dd-9508-175207752701	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 05:41:44.277769+00	
00000000-0000-0000-0000-000000000000	b5c003de-1549-48fd-8a00-38103fb586bc	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-07-31 05:41:53.646207+00	
00000000-0000-0000-0000-000000000000	bfde5077-9eec-4fc0-8eb1-988a6158f46c	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 16:18:49.089522+00	
00000000-0000-0000-0000-000000000000	def0d8a7-6572-4128-b8d7-5e1a442163c7	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-07-31 16:18:51.957169+00	
00000000-0000-0000-0000-000000000000	adb8d38e-d19b-45ab-a8e8-5fe40de50bbe	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 19:04:19.870115+00	
00000000-0000-0000-0000-000000000000	93ee61ac-9039-43ce-a8b3-b07229635a92	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-07-31 19:04:22.294987+00	
00000000-0000-0000-0000-000000000000	ffaaa86f-7011-448d-a1f6-e991ecd9f55b	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-31 21:24:54.317847+00	
00000000-0000-0000-0000-000000000000	df5b80ef-6bb6-4c48-a2d5-7b9bebd6f168	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-07-31 21:25:00.750833+00	
00000000-0000-0000-0000-000000000000	93f286b4-15b9-4538-916a-e75954a49721	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-01 02:15:57.608145+00	
00000000-0000-0000-0000-000000000000	d0719334-ba5c-426a-867e-23246a01f5b8	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-01 02:15:57.609595+00	
00000000-0000-0000-0000-000000000000	d76027dd-3cee-4b3f-b169-61ea71550c21	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-01 02:16:10.497197+00	
00000000-0000-0000-0000-000000000000	1db6f2a5-e663-45fa-bc67-47c49494e08e	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-01 02:16:21.123039+00	
00000000-0000-0000-0000-000000000000	6cd8a35f-4512-476c-ab45-c58195dc030b	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-01 03:36:06.017224+00	
00000000-0000-0000-0000-000000000000	88aab14e-a23d-4328-bfcb-d8200445eab7	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-01 03:36:06.022172+00	
00000000-0000-0000-0000-000000000000	6f17c781-57b2-443c-95cd-c491ff7d6178	{"action":"logout","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-01 03:36:52.570935+00	
00000000-0000-0000-0000-000000000000	66d0d0b2-14b7-4548-9ee0-7b8dff49cab9	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-01 03:36:56.178676+00	
00000000-0000-0000-0000-000000000000	356e6e54-62d2-4754-9b16-e4e30a648a21	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-01 05:16:13.365479+00	
00000000-0000-0000-0000-000000000000	8b57fda6-890a-4fa6-850c-d3372ca5b81d	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-01 05:16:13.374939+00	
00000000-0000-0000-0000-000000000000	d76d4ed3-292f-4945-9010-06ee5a75783b	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-01 16:05:49.683637+00	
00000000-0000-0000-0000-000000000000	625729d3-fa2b-4301-abf8-5591e4a9f6d8	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-01 16:05:58.250508+00	
00000000-0000-0000-0000-000000000000	71915081-094c-4e05-819a-5819a506c692	{"action":"user_confirmation_requested","actor_id":"167c2ee3-4bea-4f9f-a128-e5313b87f9a1","actor_username":"trepabelouweu-8256@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-01 19:46:13.76538+00	
00000000-0000-0000-0000-000000000000	a1e5d1ff-c724-48d1-9b6b-e00f1e482188	{"action":"user_confirmation_requested","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-01 20:35:18.922487+00	
00000000-0000-0000-0000-000000000000	cd8a55c9-5bac-4fd8-9723-81afc471ba93	{"action":"user_signedup","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-01 20:35:34.757135+00	
00000000-0000-0000-0000-000000000000	13b1a987-28b4-4bb9-a6df-d6e8920b5110	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-08-01 20:35:50.078115+00	
00000000-0000-0000-0000-000000000000	b54f496c-fa87-4cc1-af9e-11ca88b7557e	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-01 20:43:43.536579+00	
00000000-0000-0000-0000-000000000000	ba9632bf-86ae-434a-883f-970b360c2b43	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-08-01 20:43:48.432879+00	
00000000-0000-0000-0000-000000000000	8859faee-73f1-4553-8ce5-abfb80820221	{"action":"user_recovery_requested","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"user"}	2025-08-01 20:44:40.989587+00	
00000000-0000-0000-0000-000000000000	c7149132-4816-460e-9ec3-5c3d1c270abd	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-08-01 20:44:49.170784+00	
00000000-0000-0000-0000-000000000000	9616da44-7e41-472a-9cbf-9d8a89b2939e	{"action":"user_confirmation_requested","actor_id":"ccf47ff3-abec-4672-8208-e78e1b90258f","actor_username":"nefeumewauhe-6084@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-02 00:52:59.955527+00	
00000000-0000-0000-0000-000000000000	b1dbd31c-a641-44b4-b840-fbc4a091598a	{"action":"user_signedup","actor_id":"ccf47ff3-abec-4672-8208-e78e1b90258f","actor_username":"nefeumewauhe-6084@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-02 00:54:43.358838+00	
00000000-0000-0000-0000-000000000000	3e2d1441-14ab-4358-8ef6-3f3fd06a42b4	{"action":"user_confirmation_requested","actor_id":"c8e13e66-d8d1-48c0-aab4-1de1ef5c3309","actor_username":"ceicrecefromi-9084@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-02 01:19:39.118219+00	
00000000-0000-0000-0000-000000000000	223e4de5-c2d3-4f06-86a6-fd8b21031bbd	{"action":"user_signedup","actor_id":"c8e13e66-d8d1-48c0-aab4-1de1ef5c3309","actor_username":"ceicrecefromi-9084@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-02 01:19:46.812875+00	
00000000-0000-0000-0000-000000000000	e02614e9-b091-4628-a606-abd126651043	{"action":"logout","actor_id":"c8e13e66-d8d1-48c0-aab4-1de1ef5c3309","actor_username":"ceicrecefromi-9084@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 01:22:01.648531+00	
00000000-0000-0000-0000-000000000000	9af83909-9ca2-45ea-8489-6c747877e46f	{"action":"user_updated_password","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:42:36.213355+00	
00000000-0000-0000-0000-000000000000	5039a330-10dd-49e9-bdd1-751e9c47d025	{"action":"user_confirmation_requested","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-02 01:32:12.089009+00	
00000000-0000-0000-0000-000000000000	c076dd8d-6c3e-437f-83bf-229adc0814d1	{"action":"user_signedup","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-02 01:32:20.623251+00	
00000000-0000-0000-0000-000000000000	632b771a-085c-43ca-90f1-c479495331a5	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 01:32:42.854417+00	
00000000-0000-0000-0000-000000000000	67e6710d-8efe-451c-9783-815d650471db	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 01:33:01.735954+00	
00000000-0000-0000-0000-000000000000	7026f4d8-0b7b-4aac-a7ca-1e808376be5e	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 02:31:50.793356+00	
00000000-0000-0000-0000-000000000000	8515e159-5ac8-4190-ae4d-ee983df7ef3b	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 02:31:53.923516+00	
00000000-0000-0000-0000-000000000000	5d306ff7-b7a3-4dd8-9d25-51c629eff500	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 15:59:51.347538+00	
00000000-0000-0000-0000-000000000000	a7755ce2-37a0-4cf5-a3a7-da0be309edf1	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 16:32:31.751326+00	
00000000-0000-0000-0000-000000000000	bbe09e9c-e3dc-4040-8edb-4ee0e3020089	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 16:33:21.325616+00	
00000000-0000-0000-0000-000000000000	a74f04f9-f9da-4661-9645-f987d0afa743	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 16:34:02.015175+00	
00000000-0000-0000-0000-000000000000	ece5e99c-04df-4624-9301-ef417b25bf3d	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 17:01:15.367161+00	
00000000-0000-0000-0000-000000000000	0ce1ce1c-b3d1-42b9-a83f-b22e958e989c	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:01:33.556947+00	
00000000-0000-0000-0000-000000000000	a8ca920c-5c8d-453e-b9e7-3a9892af8087	{"action":"user_confirmation_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-02 17:02:02.588883+00	
00000000-0000-0000-0000-000000000000	08c5233c-aaef-44c0-8797-599e9f9f5576	{"action":"user_signedup","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-02 17:02:10.861953+00	
00000000-0000-0000-0000-000000000000	c0adb2ed-1a52-4367-ae60-d89b63098455	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:02:38.608909+00	
00000000-0000-0000-0000-000000000000	2ab9d1ea-a2cb-453e-b11f-99212d2cc785	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 17:02:55.007093+00	
00000000-0000-0000-0000-000000000000	4c94adb2-a0c9-4774-a68b-e9090bf1d135	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:03:26.007619+00	
00000000-0000-0000-0000-000000000000	b4de1e14-3664-4718-9ff7-e5ef44703b45	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:32:21.850177+00	
00000000-0000-0000-0000-000000000000	f842762c-7cbf-4987-b0c8-589a7b41f5cb	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:32:30.857099+00	
00000000-0000-0000-0000-000000000000	25b7c52a-a7e7-4c11-9e16-2e0124b52077	{"action":"user_updated_password","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:32:53.883342+00	
00000000-0000-0000-0000-000000000000	53ba6d5b-a4c0-47b9-969d-03c2f1a293ef	{"action":"user_modified","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:32:53.883915+00	
00000000-0000-0000-0000-000000000000	bdaa52db-2b98-4599-a48e-af91d064c9bb	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:32:56.837191+00	
00000000-0000-0000-0000-000000000000	0f1d485b-5077-4cd6-8f9e-d1a733c0d0e0	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-02 17:33:01.182656+00	
00000000-0000-0000-0000-000000000000	845454df-6795-4cd0-9416-742e1000d539	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:33:02.610175+00	
00000000-0000-0000-0000-000000000000	62b9abcf-4a10-4e57-9299-ac30a6a9c1e0	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:38:49.325754+00	
00000000-0000-0000-0000-000000000000	765600c1-e9de-43a8-b7a3-535c0f12ca90	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:38:58.466465+00	
00000000-0000-0000-0000-000000000000	2ebe2ab9-87d1-47c7-a60e-1f35bc96dc93	{"action":"user_updated_password","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:39:12.36104+00	
00000000-0000-0000-0000-000000000000	031b959e-fc29-4ff7-83e4-b0aee4b835e8	{"action":"user_modified","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:39:12.361671+00	
00000000-0000-0000-0000-000000000000	c2ef4205-77d7-487b-9c6c-71df8c16942f	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:42:07.000946+00	
00000000-0000-0000-0000-000000000000	6b6312ec-b79f-4fdc-8295-68c735cd8726	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:42:17.274779+00	
00000000-0000-0000-0000-000000000000	49a922b1-c826-445d-a4f4-25db3d67be6d	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:42:26.199085+00	
00000000-0000-0000-0000-000000000000	b7802fa6-ba89-4f8a-af48-764ca483d1ed	{"action":"user_modified","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:42:36.217402+00	
00000000-0000-0000-0000-000000000000	89565696-fdba-457e-a57f-26a00b170a88	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:42:36.338095+00	
00000000-0000-0000-0000-000000000000	7199cd02-01f6-4767-9033-fbdb4b7942d4	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:43:24.399258+00	
00000000-0000-0000-0000-000000000000	ec474766-44c2-469b-afb3-f65a34d23ef4	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:43:30.45286+00	
00000000-0000-0000-0000-000000000000	256ee62f-9c59-4da7-bd31-379d67ba20db	{"action":"user_updated_password","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:43:42.324372+00	
00000000-0000-0000-0000-000000000000	4a660c7f-d6be-402b-b9df-7db9c91a3502	{"action":"user_modified","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:43:42.325066+00	
00000000-0000-0000-0000-000000000000	239385ee-42d8-42fe-91c5-15b1aa84d21b	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:43:42.508463+00	
00000000-0000-0000-0000-000000000000	5418245a-adf6-4a4e-bf82-d4d2c32e97ff	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 17:57:38.158912+00	
00000000-0000-0000-0000-000000000000	0b1b7ed2-44c1-4e5e-9e4a-3cee4359956f	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 17:57:47.864235+00	
00000000-0000-0000-0000-000000000000	cf2d916d-5ca4-4659-9c04-744230356d7e	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:01:36.20112+00	
00000000-0000-0000-0000-000000000000	4d36946d-d49b-4f25-beec-d9110f47b539	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 18:01:55.747919+00	
00000000-0000-0000-0000-000000000000	59f9a688-b52e-41c3-a2da-fab11af7b7a2	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:02:01.621619+00	
00000000-0000-0000-0000-000000000000	6bb88d9c-b594-4dc6-8f4f-c0d2150443e0	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 18:11:25.074068+00	
00000000-0000-0000-0000-000000000000	68ab8880-584e-435c-8b86-c7143090a84b	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:11:29.882296+00	
00000000-0000-0000-0000-000000000000	4cc6eb7e-9110-4c18-99a6-5704c4b85e7e	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:11:38.939179+00	
00000000-0000-0000-0000-000000000000	113a41cf-70d0-40e3-a164-8afee656c18f	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 18:21:12.331481+00	
00000000-0000-0000-0000-000000000000	9be2472f-7fd2-409c-ae59-1480067de9b5	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:21:17.486179+00	
00000000-0000-0000-0000-000000000000	e7e6c58b-2a56-494a-8341-cfc6692022d6	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:50:48.441539+00	
00000000-0000-0000-0000-000000000000	3ee263d1-2ac6-4c82-a145-d667129668bb	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 18:52:02.605142+00	
00000000-0000-0000-0000-000000000000	51ee4248-a858-4d6c-8c34-afbff67af0ef	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:52:09.605091+00	
00000000-0000-0000-0000-000000000000	8f0dad62-0f9d-4377-9616-87c7c0e2806e	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:52:17.884759+00	
00000000-0000-0000-0000-000000000000	f0a31126-c1c6-4d50-8c97-625249759595	{"action":"user_recovery_requested","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 18:54:20.456588+00	
00000000-0000-0000-0000-000000000000	608e3c7a-cbb0-4b9a-9ae5-45bec424fdb4	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 18:54:26.554357+00	
00000000-0000-0000-0000-000000000000	f70557a9-0061-47ea-b2b5-f64b3011bf11	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 23:35:42.600415+00	
00000000-0000-0000-0000-000000000000	76b2c29d-30ec-4adb-a4b6-df680bdb75c9	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 23:35:48.66511+00	
00000000-0000-0000-0000-000000000000	e1484602-01c4-47d3-bb2c-3559e4972c1e	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 23:39:32.112637+00	
00000000-0000-0000-0000-000000000000	06e569dc-c56d-44e9-b203-da071a9f5ade	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 23:39:38.121386+00	
00000000-0000-0000-0000-000000000000	4cb10fe9-0a22-47e6-af52-18e8fbe0b971	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 23:41:47.525508+00	
00000000-0000-0000-0000-000000000000	10372e9b-8f6e-4c43-9a63-66f41e529d07	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 23:41:56.868731+00	
00000000-0000-0000-0000-000000000000	df4fcd02-e450-4019-90b1-3a060ae38fb3	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 23:42:02.048071+00	
00000000-0000-0000-0000-000000000000	eb2c5932-2ef3-44b6-b807-86b9741934c7	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 23:42:05.617987+00	
00000000-0000-0000-0000-000000000000	a4bc01fc-6916-4757-bae7-6c1e2f6da053	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-02 23:51:12.05739+00	
00000000-0000-0000-0000-000000000000	1f0f9677-2e14-48e3-9f09-75210c890a5f	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-02 23:51:16.975525+00	
00000000-0000-0000-0000-000000000000	f8288b7a-3bcb-462e-a7e8-d0a7720534f7	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:02:38.598927+00	
00000000-0000-0000-0000-000000000000	b6f32ae3-170a-44ff-9501-c09efca054dc	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:02:42.915071+00	
00000000-0000-0000-0000-000000000000	f019cb4e-700e-4643-9266-a95826731121	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:05:51.920965+00	
00000000-0000-0000-0000-000000000000	21d73503-cdc9-4c79-85ac-1e132adf1a86	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:05:55.745414+00	
00000000-0000-0000-0000-000000000000	cb22ec1b-2173-4feb-9e39-2f9229c26f3d	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:07:57.999895+00	
00000000-0000-0000-0000-000000000000	9321699b-4a5f-463c-bbff-5cf828639e1d	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:08:41.455609+00	
00000000-0000-0000-0000-000000000000	924d99d0-6f62-4885-9aa4-247de4ef40fd	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:08:46.457296+00	
00000000-0000-0000-0000-000000000000	03f1652c-3eaa-42ea-93a6-cdc5498d4732	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:08:53.620337+00	
00000000-0000-0000-0000-000000000000	35d5b415-fc73-4dfd-bd0b-4f5f398e1201	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:13:46.736876+00	
00000000-0000-0000-0000-000000000000	a877e885-361b-47ed-9af6-17756e557f61	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:13:51.418042+00	
00000000-0000-0000-0000-000000000000	08293829-909a-4489-8bc7-8d332a0fa340	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:13:54.676198+00	
00000000-0000-0000-0000-000000000000	cbbc6adc-9cd2-469e-b0a4-8adb8fa368d4	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:26:36.952001+00	
00000000-0000-0000-0000-000000000000	c069c35c-d092-4bc0-8cf4-f4172670509b	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:26:41.687605+00	
00000000-0000-0000-0000-000000000000	5224e07b-00e8-4c0b-b7c1-22c29389e7b6	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:28:33.32258+00	
00000000-0000-0000-0000-000000000000	72ac2093-30e7-4402-be20-9ba6e8ba9a01	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:28:37.541213+00	
00000000-0000-0000-0000-000000000000	e0791304-717f-4762-b039-d913b0a3bccf	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:48:06.995642+00	
00000000-0000-0000-0000-000000000000	80c34795-0a37-47f2-be5b-55679a36f420	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:48:57.942983+00	
00000000-0000-0000-0000-000000000000	f52d659a-90d8-4f9c-a789-c5020b6c6f2c	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:49:02.790085+00	
00000000-0000-0000-0000-000000000000	3c3c6772-809e-4ab4-bc28-6b5fe2f1b291	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:49:08.45093+00	
00000000-0000-0000-0000-000000000000	7ddf1f2d-2f01-40ca-b678-91975e43a591	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:53:03.401952+00	
00000000-0000-0000-0000-000000000000	37a54c1a-dc65-490f-842d-8649995e6185	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:53:07.59002+00	
00000000-0000-0000-0000-000000000000	dfa0f398-762f-4c9a-bfb6-913d2dc06b82	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:53:10.999248+00	
00000000-0000-0000-0000-000000000000	e4f272cc-3226-4b78-84ab-14e39a97c0f1	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:55:10.855184+00	
00000000-0000-0000-0000-000000000000	9f58033e-3520-4305-966e-73cfe0f89a83	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:55:15.294717+00	
00000000-0000-0000-0000-000000000000	fc100adf-398b-43da-8e90-1a4bdcd3158a	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:55:17.693599+00	
00000000-0000-0000-0000-000000000000	992e8845-e67c-4c8c-8d8a-b401cceb0781	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 00:56:26.831776+00	
00000000-0000-0000-0000-000000000000	4f47d72c-9d3b-4ad6-8571-f7f905b02ecb	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:56:31.475487+00	
00000000-0000-0000-0000-000000000000	f52a1007-324b-4fd4-a0bc-c6eaf7ce5076	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 00:56:34.851013+00	
00000000-0000-0000-0000-000000000000	21e27471-2c00-41d7-b4d7-054f131c067c	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:13:07.203901+00	
00000000-0000-0000-0000-000000000000	51768925-c3b0-4545-828a-2715c613fd3b	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:13:11.322002+00	
00000000-0000-0000-0000-000000000000	27966bb1-dc3f-4cee-933a-d9e0f7dd9a5d	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:13:17.268287+00	
00000000-0000-0000-0000-000000000000	5e4d144b-dae7-4b19-a6dd-1800d1cdc27a	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:17:55.019972+00	
00000000-0000-0000-0000-000000000000	bde8b508-8ab9-4aae-b2fa-ab5249f4bbcd	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:18:02.137563+00	
00000000-0000-0000-0000-000000000000	4ccc22bb-3fc8-4610-a91b-21d219b5716e	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:19:45.732774+00	
00000000-0000-0000-0000-000000000000	12fadfad-a1c5-4424-97d5-87d3d4235d74	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:21:07.936015+00	
00000000-0000-0000-0000-000000000000	c024b202-f85e-488f-b733-0f4a36178d36	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:23:36.978186+00	
00000000-0000-0000-0000-000000000000	5968a856-d3eb-4ec1-b23e-41399538fc63	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:28:29.514244+00	
00000000-0000-0000-0000-000000000000	43d99076-596e-4f9e-9deb-2167d597ceac	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:28:34.344492+00	
00000000-0000-0000-0000-000000000000	89fe987f-4a99-4f30-922a-075d90969ba9	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:28:43.022848+00	
00000000-0000-0000-0000-000000000000	945950bb-31d5-4233-8792-724f2338eefa	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:32:20.509961+00	
00000000-0000-0000-0000-000000000000	2195d281-b467-4acb-9bab-0a9526a21715	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:32:25.185229+00	
00000000-0000-0000-0000-000000000000	d68d1d14-e87d-4290-99dc-166addefbf2e	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:33:59.329672+00	
00000000-0000-0000-0000-000000000000	0aa67631-5c48-4f59-bfe0-937ea0dfbec2	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:39:54.310025+00	
00000000-0000-0000-0000-000000000000	4ec2ac0f-6205-4d19-bcb9-604c27632b28	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:39:59.188325+00	
00000000-0000-0000-0000-000000000000	d04f1034-5cae-4638-95bd-76031cfdc99e	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:49:30.836583+00	
00000000-0000-0000-0000-000000000000	1296e129-ef45-4b9d-9978-1e9ae8f09942	{"action":"user_recovery_requested","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:49:39.901839+00	
00000000-0000-0000-0000-000000000000	c5f211b5-d01f-466e-8eb1-d2e352bd7703	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:49:45.24283+00	
00000000-0000-0000-0000-000000000000	f4cb39db-089f-4b51-9809-d30edf7dbdab	{"action":"user_updated_password","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:50:09.041854+00	
00000000-0000-0000-0000-000000000000	60722ffb-fcd2-4de9-aa64-08f182868937	{"action":"user_modified","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 01:50:09.042508+00	
00000000-0000-0000-0000-000000000000	d2c47074-db08-4cc6-b019-8f4a10396b7d	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:50:09.155422+00	
00000000-0000-0000-0000-000000000000	5ced340e-815b-4c3b-a6db-e5294291ab77	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-03 01:50:17.275543+00	
00000000-0000-0000-0000-000000000000	02b81a00-35ac-4662-9eba-8df76f68007b	{"action":"logout","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 01:51:48.338178+00	
00000000-0000-0000-0000-000000000000	bc757fcc-a580-4fb3-bd15-00f438070bab	{"action":"user_repeated_signup","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-03 02:11:26.983276+00	
00000000-0000-0000-0000-000000000000	d8491180-c019-4e07-bfe9-cf89956ff7ae	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-03 02:11:44.453364+00	
00000000-0000-0000-0000-000000000000	60ae8cb9-3a5f-4be7-8688-3caa8ac36e8a	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 02:11:56.53194+00	
00000000-0000-0000-0000-000000000000	1754560a-21ab-4e51-80b3-b34fa2050376	{"action":"user_confirmation_requested","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-03 02:12:19.095638+00	
00000000-0000-0000-0000-000000000000	8df46a32-e391-4aee-885d-0391c3d0ffc1	{"action":"user_signedup","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-03 02:12:35.456316+00	
00000000-0000-0000-0000-000000000000	2631bef3-1920-4123-b64f-684c042050e5	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 02:12:50.256967+00	
00000000-0000-0000-0000-000000000000	eb6ca649-15f6-4f19-83a6-118ad8739cba	{"action":"user_recovery_requested","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 02:46:49.149693+00	
00000000-0000-0000-0000-000000000000	cc498973-5482-4f5f-a609-9e70aa3f9522	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 02:46:58.303581+00	
00000000-0000-0000-0000-000000000000	5bd4c0fe-65a4-4cdd-bc66-2b02686be5e5	{"action":"user_updated_password","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 02:47:11.836788+00	
00000000-0000-0000-0000-000000000000	136b814d-0657-4da4-9fcd-1f17cee25454	{"action":"user_modified","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-03 02:47:11.837398+00	
00000000-0000-0000-0000-000000000000	ddfd3067-8e83-4449-9248-bb850cdd90ac	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 02:47:12.08135+00	
00000000-0000-0000-0000-000000000000	378ec88c-1bbb-43dc-85fd-a92ba72fa293	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-03 02:47:27.556001+00	
00000000-0000-0000-0000-000000000000	e506a4ea-0d6f-41ef-bc41-0a8ac6b876e5	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-03 02:50:30.724964+00	
00000000-0000-0000-0000-000000000000	7bdb9e80-3730-432b-a2f9-e3c9bf518bcc	{"action":"user_recovery_requested","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-04 02:26:10.094081+00	
00000000-0000-0000-0000-000000000000	f5d8e4ff-c153-4039-87a1-4274f9d4121a	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-04 02:26:18.968421+00	
00000000-0000-0000-0000-000000000000	8fb1f082-39eb-49d4-835b-e040bd3022bd	{"action":"user_updated_password","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-04 02:26:25.285309+00	
00000000-0000-0000-0000-000000000000	e4354084-e376-48d0-ab5b-91a912336681	{"action":"user_modified","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-04 02:26:25.285926+00	
00000000-0000-0000-0000-000000000000	99e30070-7c7c-4735-bc37-f20627eb2b88	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-04 02:26:25.432362+00	
00000000-0000-0000-0000-000000000000	3c3995b4-d8d0-4371-87f5-264ecea0e05d	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-04 02:26:38.399701+00	
00000000-0000-0000-0000-000000000000	8b1e586c-52a8-4c42-8b8e-86a61f36c038	{"action":"user_recovery_requested","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-04 02:41:28.241706+00	
00000000-0000-0000-0000-000000000000	1034eede-0930-4597-9bb5-fb7208ce662d	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-04 02:41:32.273052+00	
00000000-0000-0000-0000-000000000000	8ac20c08-c188-4f17-a64c-277a47860f1d	{"action":"user_updated_password","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-04 02:41:40.521904+00	
00000000-0000-0000-0000-000000000000	edb70c00-20ae-4585-95c6-90f1c1ca004d	{"action":"user_modified","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-04 02:41:40.522469+00	
00000000-0000-0000-0000-000000000000	55e80e4f-aea8-4eb9-805e-22ce743eb196	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-04 02:41:40.812491+00	
00000000-0000-0000-0000-000000000000	6319d0e5-0a85-4ebe-a3e0-4707f7d03204	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-04 02:41:47.327738+00	
00000000-0000-0000-0000-000000000000	d2e7aeef-b260-488d-9cb4-a823f5c23bfb	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-04 02:41:50.166973+00	
00000000-0000-0000-0000-000000000000	c4b1f0cb-6a58-4963-a285-3a188585035d	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-05 00:56:16.317087+00	
00000000-0000-0000-0000-000000000000	89cbeeb2-5481-452a-9120-60b48ca23f75	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-05 00:56:16.330897+00	
00000000-0000-0000-0000-000000000000	f6216c59-c746-48a5-ba67-d2f3dd61c18f	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 00:59:18.502915+00	
00000000-0000-0000-0000-000000000000	be546451-6858-4b2f-ad05-95163adf19c5	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 01:00:09.241442+00	
00000000-0000-0000-0000-000000000000	8f0c78a2-e2be-4a13-b40c-d9ede83b12b3	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 01:01:54.112277+00	
00000000-0000-0000-0000-000000000000	8ceb341b-ef5a-48ad-88a8-764fa5379490	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 01:02:04.334561+00	
00000000-0000-0000-0000-000000000000	d6582873-58ce-4edf-aa34-3b37359b3080	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 01:23:13.344405+00	
00000000-0000-0000-0000-000000000000	fedb14d0-971a-406f-90f9-bbf7dd6c8197	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 02:04:27.683799+00	
00000000-0000-0000-0000-000000000000	45bdbd89-3e3a-48c7-bbce-739b0864f893	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 02:04:35.135035+00	
00000000-0000-0000-0000-000000000000	8842d9f8-3c48-4397-a5af-606a63863073	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 02:05:00.030931+00	
00000000-0000-0000-0000-000000000000	5d3ae66b-f95d-4c2f-8e5f-d86b14c32127	{"action":"user_confirmation_requested","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-05 15:40:39.114448+00	
00000000-0000-0000-0000-000000000000	1e7d3ea3-6d85-419f-84d3-5d1a693dfab0	{"action":"user_signedup","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-05 15:40:49.074145+00	
00000000-0000-0000-0000-000000000000	e00da4cb-a5af-42f1-9fe2-92c3fb691afa	{"action":"logout","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-05 15:40:58.58342+00	
00000000-0000-0000-0000-000000000000	ecd59188-6b71-4aa4-b39e-ee464fc371f0	{"action":"user_recovery_requested","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-05 15:41:08.836603+00	
00000000-0000-0000-0000-000000000000	afa9616c-872c-47d8-84ff-80411a7ad75f	{"action":"login","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-05 15:41:17.498684+00	
00000000-0000-0000-0000-000000000000	287ad0c1-2cef-4142-8db1-de0c9e01d6e6	{"action":"user_updated_password","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-05 15:41:23.063579+00	
00000000-0000-0000-0000-000000000000	1542d666-8991-4349-b3ec-fb97104db5a6	{"action":"user_modified","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-05 15:41:23.064868+00	
00000000-0000-0000-0000-000000000000	e5306a98-f19c-4ca6-83be-264668691e7b	{"action":"logout","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-05 15:41:23.205893+00	
00000000-0000-0000-0000-000000000000	09ed9687-acdb-4e97-8d4e-dd0982473063	{"action":"user_confirmation_requested","actor_id":"a37ae595-5ee2-43ae-90bb-fa08a900fa74","actor_username":"joleullouttuffe-7455@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-05 15:42:08.503127+00	
00000000-0000-0000-0000-000000000000	15c40638-90d7-4758-a9ad-9d4019e20660	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 19:56:20.451255+00	
00000000-0000-0000-0000-000000000000	4b389b15-8273-4177-b4ed-aa133d0bd69c	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-05 19:56:56.754399+00	
00000000-0000-0000-0000-000000000000	42fff373-8407-4220-affd-9811c1f34c72	{"action":"login","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 19:57:08.464126+00	
00000000-0000-0000-0000-000000000000	5c34648a-d41e-4dd6-8662-fa9f50c5fe71	{"action":"logout","actor_id":"23605b07-3d7c-459e-94b8-1f6a0c7933ed","actor_username":"joutteleisopre-3760@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-05 20:17:01.33095+00	
00000000-0000-0000-0000-000000000000	91159340-3cb2-4673-8276-0f9973373306	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-05 20:17:14.607294+00	
00000000-0000-0000-0000-000000000000	63d83e5c-d5bf-4e3e-93e5-ee447d57590e	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-05 23:50:39.470237+00	
00000000-0000-0000-0000-000000000000	997c7c05-57cf-424e-af94-6f2197489634	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-05 23:50:39.486046+00	
00000000-0000-0000-0000-000000000000	bc20edd7-40f9-477d-b65f-58bdef3916e3	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 00:51:32.53532+00	
00000000-0000-0000-0000-000000000000	9c402d30-0b7e-4f49-8107-2aac0160c9d7	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 00:51:32.538783+00	
00000000-0000-0000-0000-000000000000	e6b3ddfe-fe09-40c8-a927-5004c839949c	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 02:00:55.12963+00	
00000000-0000-0000-0000-000000000000	6a60ba5f-6179-43e9-9ea7-ae23ef426097	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 02:00:55.131862+00	
00000000-0000-0000-0000-000000000000	a6cffcba-93dc-450a-b760-916eafd12215	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 03:28:04.112033+00	
00000000-0000-0000-0000-000000000000	83936ae5-690e-4b75-8770-701d9ae0c513	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 03:28:04.114267+00	
00000000-0000-0000-0000-000000000000	8147a343-9d61-42a1-bb08-9d842eb32a88	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 13:06:39.034143+00	
00000000-0000-0000-0000-000000000000	18f9eccb-2cca-49f7-808f-6935ea12dc61	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 13:06:39.044794+00	
00000000-0000-0000-0000-000000000000	e2d22b6b-6471-484e-a710-e9dec0635a11	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 14:11:51.789794+00	
00000000-0000-0000-0000-000000000000	a72530de-02bd-43b3-a905-f5aca1530c1a	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 14:11:51.797804+00	
00000000-0000-0000-0000-000000000000	b66601d9-f8e5-47a5-a466-0dd83df82912	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 15:52:04.4293+00	
00000000-0000-0000-0000-000000000000	168e532d-e146-496b-bd35-e77824c80949	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 15:52:04.435018+00	
00000000-0000-0000-0000-000000000000	2e64ed22-368b-480e-80b6-f5e7251b6204	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 16:51:17.957359+00	
00000000-0000-0000-0000-000000000000	f883cbc7-da25-4ab6-9dbd-a805d9f21a3d	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-06 16:51:17.961334+00	
00000000-0000-0000-0000-000000000000	7b93b8b9-8c14-4f0d-a37d-5820d0d914b2	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 00:58:09.729044+00	
00000000-0000-0000-0000-000000000000	efe7d257-7854-4869-82f5-f93c5ebf77cc	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 00:58:09.739685+00	
00000000-0000-0000-0000-000000000000	a5e0da9d-0c0e-4231-bed0-0c19f619541e	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-07 00:58:31.044241+00	
00000000-0000-0000-0000-000000000000	3e6d58fc-f9e2-4f10-a017-6f491fa762a1	{"action":"user_confirmation_requested","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-07 00:59:14.310291+00	
00000000-0000-0000-0000-000000000000	e06e5c9f-a4b7-4e67-bd63-094bb1c14ff9	{"action":"user_signedup","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-07 00:59:35.341795+00	
00000000-0000-0000-0000-000000000000	5aa569c2-736f-42fe-85cb-e387e10f38a6	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-07 01:31:21.217197+00	
00000000-0000-0000-0000-000000000000	2827ef93-197f-4bf9-906d-90dcd4fae7c9	{"action":"user_recovery_requested","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-07 01:31:33.064453+00	
00000000-0000-0000-0000-000000000000	0434f670-11b1-4cb6-8a34-51810248ec5d	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-07 01:31:37.914762+00	
00000000-0000-0000-0000-000000000000	4d696dfa-c818-4ae9-af8e-4750f0233b37	{"action":"user_updated_password","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-07 01:32:06.981211+00	
00000000-0000-0000-0000-000000000000	6ea167c8-c07c-4fcf-a15a-a88a3aae8c31	{"action":"user_modified","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-08-07 01:32:06.981836+00	
00000000-0000-0000-0000-000000000000	2cb4b284-dc9c-43b3-8abd-16d9abcfe0e4	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-07 01:32:07.097221+00	
00000000-0000-0000-0000-000000000000	9f61a24c-7a7c-45e3-b6b8-955815c9c0c3	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-07 01:32:30.960318+00	
00000000-0000-0000-0000-000000000000	f0919bde-ca47-4fbc-91d5-b32d23ab8186	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-07 01:33:56.299359+00	
00000000-0000-0000-0000-000000000000	2a4d825c-8af7-4c72-aa9f-196bcfdb6a80	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-07 01:34:44.821058+00	
00000000-0000-0000-0000-000000000000	0e9072e4-65f4-4ab4-a765-de39e81bb075	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-07 01:34:54.370168+00	
00000000-0000-0000-0000-000000000000	9ad8c383-0ccb-4df8-ad61-493e471c5cc8	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 04:53:14.45852+00	
00000000-0000-0000-0000-000000000000	2c997d5b-2502-4771-98a1-6046ac23fa84	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 04:53:14.462379+00	
00000000-0000-0000-0000-000000000000	22969a69-b8b4-4bba-9e9d-af83ba0a1b8d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 15:16:15.684502+00	
00000000-0000-0000-0000-000000000000	81d1269e-1153-4031-aa46-5169fffa5061	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 15:16:15.693817+00	
00000000-0000-0000-0000-000000000000	24a1d70b-d81f-4545-80bb-0a39f69c854b	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 16:14:37.894688+00	
00000000-0000-0000-0000-000000000000	32605883-6f19-4a19-bbb4-f3e9977fd73b	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 16:14:37.900887+00	
00000000-0000-0000-0000-000000000000	ad4a0273-2870-400e-824c-68635726b9d3	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 17:13:02.673812+00	
00000000-0000-0000-0000-000000000000	c61b01f7-2ca8-429c-837d-305a9dc16d83	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 17:13:02.67772+00	
00000000-0000-0000-0000-000000000000	8fbcd0c6-db82-4723-b72d-288623ff23b5	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 18:16:05.168933+00	
00000000-0000-0000-0000-000000000000	7529e056-b77f-445a-b14b-b19635b26957	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 18:16:05.173397+00	
00000000-0000-0000-0000-000000000000	f15c0656-80d9-4c25-bd88-1b0691e79cab	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 19:14:34.5277+00	
00000000-0000-0000-0000-000000000000	12c8347f-a559-4d76-aab4-7bc8804ad878	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 19:14:34.531563+00	
00000000-0000-0000-0000-000000000000	8c85f375-e746-4475-b3cf-7621aa28af74	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 20:41:24.078582+00	
00000000-0000-0000-0000-000000000000	1f9a412a-51f9-4b44-8d88-203782282c98	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 20:41:24.093968+00	
00000000-0000-0000-0000-000000000000	781d860f-76f2-4310-aac0-7eac8e713efb	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 22:26:44.51555+00	
00000000-0000-0000-0000-000000000000	ee946823-2ee3-497f-acd1-20aa7bc59e13	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-07 22:26:44.529423+00	
00000000-0000-0000-0000-000000000000	f14a7f68-6180-44a3-a6cc-812150afe31b	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-08 00:59:19.338553+00	
00000000-0000-0000-0000-000000000000	f7c093d0-ef7a-4b19-9572-bd3a1ce15603	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-08 00:59:19.342473+00	
00000000-0000-0000-0000-000000000000	3ec9a753-901b-404d-a5fd-3e6258722dfc	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-08 18:16:19.569411+00	
00000000-0000-0000-0000-000000000000	1609dd16-2a86-4231-a846-34c7b3bdb558	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-08 18:16:19.586663+00	
00000000-0000-0000-0000-000000000000	0d0cee7d-2b4f-4122-b482-95ac2142a23f	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-09 16:55:49.598253+00	
00000000-0000-0000-0000-000000000000	6322d1aa-b3da-4341-a764-23545d4b4d8e	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-09 16:55:49.618803+00	
00000000-0000-0000-0000-000000000000	62c80c5f-5125-4c1b-9adf-edfdb69600ad	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-10 15:25:20.562473+00	
00000000-0000-0000-0000-000000000000	9eebbd58-5d53-4c57-96fc-f7a83cd0af8a	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-10 15:25:20.570307+00	
00000000-0000-0000-0000-000000000000	0e8aa16a-9ab1-4e1e-a39d-a6b8e6a1416d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-10 22:52:21.957475+00	
00000000-0000-0000-0000-000000000000	73e1eaa9-6d43-425f-ad80-d4c77711d3a2	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-10 22:52:21.961532+00	
00000000-0000-0000-0000-000000000000	3c4c9a5c-9f1b-4d06-a8e5-3f0925f47ae0	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-10 22:54:16.404391+00	
00000000-0000-0000-0000-000000000000	ae8fd4d6-3c07-4c96-a0df-3c6de9b3faf2	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-10 22:55:17.611347+00	
00000000-0000-0000-0000-000000000000	c38d26fe-5f93-40f2-8812-9bdbfd6c2eca	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-11 05:44:48.298874+00	
00000000-0000-0000-0000-000000000000	11c71b80-5421-4b08-9d03-f144baf5db60	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-11 05:45:30.716941+00	
00000000-0000-0000-0000-000000000000	5b4521dd-a92b-4d60-aaec-8de7e8133d5b	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-12 00:38:03.58058+00	
00000000-0000-0000-0000-000000000000	0b5cb86a-f634-4571-b8b5-48368c2f4968	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-12 00:38:03.596171+00	
00000000-0000-0000-0000-000000000000	e1f08f18-09e6-4992-8a19-5b4529e5e4ed	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-12 02:53:34.973876+00	
00000000-0000-0000-0000-000000000000	2d5b0670-2e8b-4bb3-8056-36d6bc1ae8fc	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-12 02:53:34.985159+00	
00000000-0000-0000-0000-000000000000	269ff9b8-2aaa-4043-a165-223c5f5e5be5	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-15 00:23:55.772092+00	
00000000-0000-0000-0000-000000000000	731b5e9e-6bb7-4251-b24d-7d7a7080c114	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-15 00:25:06.1702+00	
00000000-0000-0000-0000-000000000000	6a0b7a85-3b8f-4814-a54b-deb18ee9a522	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-15 15:43:25.143377+00	
00000000-0000-0000-0000-000000000000	0d9ebaef-57a8-402a-b009-64dfeb943bb7	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-15 18:15:59.25978+00	
00000000-0000-0000-0000-000000000000	b010eab0-c87c-40a0-a8ab-e4b8f8fd38c5	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-15 18:15:59.271474+00	
00000000-0000-0000-0000-000000000000	bb48efa1-bb7e-4e9e-8d21-4b7fd5b7bcd5	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-17 00:43:44.91228+00	
00000000-0000-0000-0000-000000000000	3a41ff0d-6f7d-4596-97e5-512a1a2374db	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-17 00:43:44.931492+00	
00000000-0000-0000-0000-000000000000	893b0778-eb77-4e61-adde-5676ca8052f9	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-19 15:10:59.896594+00	
00000000-0000-0000-0000-000000000000	56819df0-721b-4654-adcd-7d60f4e224b4	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-19 15:10:59.900724+00	
00000000-0000-0000-0000-000000000000	3759f44a-4b44-4ea5-8b15-404705e7dba2	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-22 14:17:27.605625+00	
00000000-0000-0000-0000-000000000000	4a8a2076-9256-4001-b102-e0f4beb4c392	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-22 14:17:27.61801+00	
00000000-0000-0000-0000-000000000000	b3f2baa2-b093-4a90-a9a4-3af7fe5ddabb	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-22 16:06:25.95052+00	
00000000-0000-0000-0000-000000000000	50e24eab-67e5-432b-b740-d66f65c8981a	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-22 16:06:25.962484+00	
00000000-0000-0000-0000-000000000000	ad5bac0e-c700-4b47-9587-fa58d6e74b5a	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-22 16:25:03.632206+00	
00000000-0000-0000-0000-000000000000	688bbb0f-2281-4336-8247-85e9f066c4d5	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-22 16:25:15.989787+00	
00000000-0000-0000-0000-000000000000	94156af6-4138-401f-a120-841a5c3de028	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-22 16:27:47.622581+00	
00000000-0000-0000-0000-000000000000	eb02cb4e-ecf2-4fcd-9f45-1fad1b00a54e	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-22 16:28:06.973417+00	
00000000-0000-0000-0000-000000000000	469bb0b4-65a3-45d5-8aa4-c06b1233bc8f	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-22 17:01:36.192484+00	
00000000-0000-0000-0000-000000000000	c5a11556-4fa7-4eca-b241-19f4ed70c7bb	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-22 18:30:52.982968+00	
00000000-0000-0000-0000-000000000000	115b1808-aad0-4bba-b678-6bfd2347757f	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-22 18:32:03.160661+00	
00000000-0000-0000-0000-000000000000	8a96376a-3de1-488f-a4fb-bfe40de101ad	{"action":"user_confirmation_requested","actor_id":"e1ed77f6-f4ee-4ab0-8755-66c0a763dc62","actor_username":"naucrefafeddi-5710@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-22 18:32:46.345761+00	
00000000-0000-0000-0000-000000000000	3bc07931-7aa7-4098-a100-d0b36a45ba6e	{"action":"user_signedup","actor_id":"e1ed77f6-f4ee-4ab0-8755-66c0a763dc62","actor_username":"naucrefafeddi-5710@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-22 18:33:05.968261+00	
00000000-0000-0000-0000-000000000000	3b491ee5-9aaf-4c69-8a86-53e761f41872	{"action":"logout","actor_id":"e1ed77f6-f4ee-4ab0-8755-66c0a763dc62","actor_username":"naucrefafeddi-5710@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-22 18:41:37.495599+00	
00000000-0000-0000-0000-000000000000	cc1bc9f8-fb92-43c0-a233-8f0fbc0b7fd6	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-26 18:02:32.09433+00	
00000000-0000-0000-0000-000000000000	ec6e0be3-6bdf-4db1-adeb-d6ca89d26dcf	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 19:07:43.90189+00	
00000000-0000-0000-0000-000000000000	dbc986f8-4c64-4c21-9e99-615e745270c6	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 19:07:43.910755+00	
00000000-0000-0000-0000-000000000000	047e674a-0818-4342-93fd-e08749e68da9	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-26 19:07:52.338668+00	
00000000-0000-0000-0000-000000000000	8f8b174b-b918-4823-9e45-7dc3e8baf13b	{"action":"user_confirmation_requested","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-08-26 19:08:30.419011+00	
00000000-0000-0000-0000-000000000000	c90a799c-46b7-49ec-8d1d-1d0624e023f4	{"action":"user_signedup","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-26 19:08:38.883609+00	
00000000-0000-0000-0000-000000000000	4b32fe05-4e61-45a6-b2c7-cc3b6475dbba	{"action":"logout","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-26 19:24:43.84181+00	
00000000-0000-0000-0000-000000000000	e9ee6540-1d39-49b7-9042-60d090e8145f	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-26 19:24:58.913144+00	
00000000-0000-0000-0000-000000000000	1b25e8ea-0445-4c23-a561-002746ba5378	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 20:29:02.191005+00	
00000000-0000-0000-0000-000000000000	f54c40d3-ccf8-4f52-b451-ff5d4c91a616	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 20:29:02.195979+00	
00000000-0000-0000-0000-000000000000	dde2f5af-8458-4103-8d52-a859c49d51b0	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-27 14:23:07.902568+00	
00000000-0000-0000-0000-000000000000	249d5deb-39a8-458d-940e-c884f87ecc1d	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-27 14:23:07.916978+00	
00000000-0000-0000-0000-000000000000	36eb420f-ca12-4f32-8b75-538040714eef	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 16:21:05.780733+00	
00000000-0000-0000-0000-000000000000	3985ef95-b4f6-429b-bb46-fd0efafa5b23	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 16:21:05.792625+00	
00000000-0000-0000-0000-000000000000	aa14e21c-37f3-4ccb-bf9a-839886216048	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 17:27:18.930928+00	
00000000-0000-0000-0000-000000000000	f67612b3-4aa0-48ad-b7c5-7e0366b70545	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 17:27:18.93498+00	
00000000-0000-0000-0000-000000000000	839120c6-3577-4a0c-9a6c-c191ed6ebba6	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 18:43:00.005496+00	
00000000-0000-0000-0000-000000000000	46ea1a24-c328-4674-bfb9-d6ba1680cfc2	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 18:43:00.00884+00	
00000000-0000-0000-0000-000000000000	9d31eda6-4549-4ee6-abb0-74618dbeb05d	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 19:42:38.033328+00	
00000000-0000-0000-0000-000000000000	41a04fd2-850b-405f-ae3c-e57b4f513dea	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 19:42:38.036659+00	
00000000-0000-0000-0000-000000000000	636f5f91-0978-412c-bd80-a9209156f7ac	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-28 19:43:04.967265+00	
00000000-0000-0000-0000-000000000000	c00c122d-9057-4188-9910-75a2c767a53e	{"action":"login","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-28 19:43:28.465507+00	
00000000-0000-0000-0000-000000000000	95deac9e-38ad-46bb-ae1c-75b2a8c90e4a	{"action":"token_refreshed","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-01 15:33:37.652648+00	
00000000-0000-0000-0000-000000000000	dd61c966-d93b-4476-b61d-c2159e751cf1	{"action":"token_revoked","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-01 15:33:37.66614+00	
00000000-0000-0000-0000-000000000000	39d298d1-8249-4172-aada-c3aacb088738	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 12:16:34.833865+00	
00000000-0000-0000-0000-000000000000	3d6b1964-bb61-48d2-97a6-8f5bc281996d	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-02 13:40:04.40042+00	
00000000-0000-0000-0000-000000000000	02e68827-829d-49e9-8e2e-22ce12423609	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-02 13:40:04.408928+00	
00000000-0000-0000-0000-000000000000	c55f5dab-7177-4522-80eb-b6e2fca4c0a1	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-02 15:28:05.711927+00	
00000000-0000-0000-0000-000000000000	148127b1-e312-4e3c-afb0-fe446a14c676	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-02 15:28:05.721389+00	
00000000-0000-0000-0000-000000000000	4b048c88-fb2c-4eef-a058-7b243c3d915d	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 15:29:01.758444+00	
00000000-0000-0000-0000-000000000000	40e27a13-f7a6-4cc0-8e17-e886bfb97bf0	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 15:40:34.674024+00	
00000000-0000-0000-0000-000000000000	6c71afdf-b432-4ee1-bf4d-a6a64ea9a317	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 15:40:39.616247+00	
00000000-0000-0000-0000-000000000000	3d96264b-5603-46aa-9834-7087e6e66646	{"action":"user_confirmation_requested","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-09-02 16:10:34.734041+00	
00000000-0000-0000-0000-000000000000	36825dda-e7cd-4698-a263-a347351a08ba	{"action":"user_signedup","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-09-02 16:10:44.312427+00	
00000000-0000-0000-0000-000000000000	375a849d-ccc3-4866-9380-ec3ebf01d6cb	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 16:45:38.679907+00	
00000000-0000-0000-0000-000000000000	dab2ba9a-9555-451a-acc5-ff8d80693772	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 16:45:48.471675+00	
00000000-0000-0000-0000-000000000000	6177363e-8802-4899-84e4-5401d332e5ff	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 16:46:22.397633+00	
00000000-0000-0000-0000-000000000000	c8daff9e-6ae0-41ec-99a4-daf3d91bfc1b	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 16:46:30.234083+00	
00000000-0000-0000-0000-000000000000	a6ef2b46-c133-4b6a-82ae-00381d2f3bfe	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 16:46:32.874789+00	
00000000-0000-0000-0000-000000000000	ac1fbe41-6102-4aeb-8414-46f294805d6c	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 16:46:40.557243+00	
00000000-0000-0000-0000-000000000000	e10bb323-7a45-499d-9684-773a96eb55d1	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 17:02:11.585267+00	
00000000-0000-0000-0000-000000000000	fb838309-271d-4a62-8cfa-ccb14188c6d0	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 17:02:20.060855+00	
00000000-0000-0000-0000-000000000000	e32bacd1-1e2b-4dc0-bc29-696c6aa01d3c	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 17:02:32.244877+00	
00000000-0000-0000-0000-000000000000	497f2a5a-863b-4864-bb27-9003c57be15d	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 17:02:39.562601+00	
00000000-0000-0000-0000-000000000000	d7fc2399-fd01-4fb7-a0eb-40b4f01efd4f	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 17:03:04.843233+00	
00000000-0000-0000-0000-000000000000	aefb5a56-62f4-42e3-8618-a0ad1528df4d	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 17:03:14.781894+00	
00000000-0000-0000-0000-000000000000	628908f6-c927-4ee3-93eb-23c7ae31b629	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-02 18:05:41.027356+00	
00000000-0000-0000-0000-000000000000	835e2e27-818a-4364-a79c-dc63d0a06930	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-02 18:05:41.030147+00	
00000000-0000-0000-0000-000000000000	b7e0ab26-08e4-4218-92de-32de9e420406	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 18:06:41.914561+00	
00000000-0000-0000-0000-000000000000	4c39c527-2a29-4cb8-8908-a4aa7d71e093	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-02 20:32:03.967767+00	
00000000-0000-0000-0000-000000000000	16c7f386-623c-429b-9b9a-32e26a8b573a	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-02 20:32:03.973083+00	
00000000-0000-0000-0000-000000000000	97458f38-3a71-4509-a651-1ad5889991da	{"action":"logout","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 21:03:40.112919+00	
00000000-0000-0000-0000-000000000000	a267b793-fdbd-4a4c-9f4d-baab1b54c06e	{"action":"user_recovery_requested","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-02 21:04:04.782038+00	
00000000-0000-0000-0000-000000000000	aa20bd82-6f47-4869-b33b-0f4e0767fc14	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 21:04:23.853463+00	
00000000-0000-0000-0000-000000000000	cabbafbe-7416-4847-8bee-0652c5b27f5c	{"action":"user_updated_password","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-02 21:04:35.987796+00	
00000000-0000-0000-0000-000000000000	9654faa6-9edc-4e6e-b34b-12d6881f7565	{"action":"user_modified","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-02 21:04:35.988413+00	
00000000-0000-0000-0000-000000000000	986e654d-c6f1-41eb-8030-d9915983a599	{"action":"logout","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-02 21:04:36.148528+00	
00000000-0000-0000-0000-000000000000	26c0861f-a17f-4772-a137-cc45fe5e3492	{"action":"login","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-02 21:04:41.756474+00	
00000000-0000-0000-0000-000000000000	389d316f-3b0b-4778-adfb-98ac33086211	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-03 03:40:24.283708+00	
00000000-0000-0000-0000-000000000000	60dcfa85-2ad0-4fb3-a9a9-c20d7ac85f1f	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-03 03:40:24.292538+00	
00000000-0000-0000-0000-000000000000	ddd862c2-f9c4-4c6b-a0f6-5f89cbcd27a3	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-03 03:46:51.128245+00	
00000000-0000-0000-0000-000000000000	6ef4aa17-8db3-4c98-86b9-7c17061ccc81	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-03 03:46:58.335175+00	
00000000-0000-0000-0000-000000000000	21a9a345-bd49-4b1a-968c-57fcdc7bb310	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-09-03 03:47:29.827944+00	
00000000-0000-0000-0000-000000000000	dc7cc712-be90-4a09-8fa5-5b8a97e085e8	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-03 03:47:39.338383+00	
00000000-0000-0000-0000-000000000000	fe3b00e7-4c1e-48cd-89a8-d6bace84b32c	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-03 14:46:17.598432+00	
00000000-0000-0000-0000-000000000000	132003e1-7740-439c-94a9-5b56fd6c53fe	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-03 14:46:17.61367+00	
00000000-0000-0000-0000-000000000000	c801b1b8-ec5c-4bbb-b197-5391797f97d2	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-03 15:49:02.625898+00	
00000000-0000-0000-0000-000000000000	d08680e2-2551-492f-8ff3-666a2ffe95d5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-03 15:49:02.631416+00	
00000000-0000-0000-0000-000000000000	10ebdc33-7801-4546-9fe2-f730022814c0	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 13:04:17.730859+00	
00000000-0000-0000-0000-000000000000	7ef5be6a-5522-4333-b67c-e592ed35f9b4	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 13:04:17.755906+00	
00000000-0000-0000-0000-000000000000	169e5d12-844d-40af-b0fb-49bc98e8e518	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 13:22:26.966053+00	
00000000-0000-0000-0000-000000000000	9871c049-55bb-43e1-81c8-7bb9456bb86f	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 13:22:40.191136+00	
00000000-0000-0000-0000-000000000000	e6a628cd-f44c-4960-a3b0-1d210b3387c2	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 13:23:34.211141+00	
00000000-0000-0000-0000-000000000000	295b4a43-70d2-4db2-aa43-cab5de643fff	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 13:23:40.817634+00	
00000000-0000-0000-0000-000000000000	bf7dd1fb-ac9d-41d3-9039-b237ff4dc18c	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 13:26:56.168468+00	
00000000-0000-0000-0000-000000000000	e72c1d4c-bef1-4d0b-a5a8-2cfedb69bc82	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 13:27:13.824856+00	
00000000-0000-0000-0000-000000000000	621ac8f7-e1b0-416b-b767-4471027b2acd	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 13:27:17.659532+00	
00000000-0000-0000-0000-000000000000	7874dba3-e4d8-444a-be76-ab09a9523bff	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 13:27:22.5898+00	
00000000-0000-0000-0000-000000000000	e7959695-5609-4107-a110-17a0fdaf0b19	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 13:27:28.808817+00	
00000000-0000-0000-0000-000000000000	9a9d312f-a9f8-4a4e-8f66-735ed59f2fbf	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 13:27:38.172748+00	
00000000-0000-0000-0000-000000000000	65af5e30-7a71-4d87-b445-b9ad1e18e8bd	{"action":"token_refreshed","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 14:26:11.815512+00	
00000000-0000-0000-0000-000000000000	0418768b-7619-4298-9d94-7baaa88608f5	{"action":"token_revoked","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 14:26:11.819461+00	
00000000-0000-0000-0000-000000000000	3a537df3-2667-49e4-87af-501c7627f7f9	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 15:18:37.543106+00	
00000000-0000-0000-0000-000000000000	da30e932-48d2-4f4e-9ca7-37741be15afa	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 15:18:45.686228+00	
00000000-0000-0000-0000-000000000000	e8467805-3353-4d7f-a0df-67a1494d23f3	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 16:19:17.8598+00	
00000000-0000-0000-0000-000000000000	3e94bbe9-1eed-43df-a23a-0817f809596e	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 16:19:17.866595+00	
00000000-0000-0000-0000-000000000000	7f5e9bac-b15d-466e-93c3-335abd41aa76	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-05 16:20:19.312982+00	
00000000-0000-0000-0000-000000000000	84cb6e9c-6b9b-49f3-9f4a-d98a98286b73	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-05 16:20:29.295592+00	
00000000-0000-0000-0000-000000000000	7a655a9a-6d1e-455c-9623-b1020dde3f95	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 17:30:26.031376+00	
00000000-0000-0000-0000-000000000000	9b5702ac-4cc5-4271-8218-69f3d599633f	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 17:30:26.03982+00	
00000000-0000-0000-0000-000000000000	77feffdd-d8cc-4631-82e7-52ba79c82c1e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-06 12:17:56.844997+00	
00000000-0000-0000-0000-000000000000	f7d3756f-72d8-4fbe-9c15-62a900ef2916	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-06 12:17:56.857365+00	
00000000-0000-0000-0000-000000000000	409a6331-b770-4ded-a403-ad6c6c12094c	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-06 13:16:06.254881+00	
00000000-0000-0000-0000-000000000000	195e8d71-8e2f-4ea5-b651-2db79480d62e	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-06 13:16:06.260925+00	
00000000-0000-0000-0000-000000000000	e92a5334-b8a0-468d-aa3f-f001d2199721	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-06 13:41:37.574517+00	
00000000-0000-0000-0000-000000000000	402017bd-c182-4a69-8c8b-5665a36f0d48	{"action":"user_confirmation_requested","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-09-08 15:42:01.287549+00	
00000000-0000-0000-0000-000000000000	2a666a60-29ad-4a33-93fd-b830c7b78705	{"action":"user_signedup","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-09-08 15:42:13.339348+00	
00000000-0000-0000-0000-000000000000	71935c3c-9b3f-4afe-bba7-4103b52671a0	{"action":"token_refreshed","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-08 16:09:53.67062+00	
00000000-0000-0000-0000-000000000000	4daf2cb0-d5c8-4c8f-a936-9a90132d6488	{"action":"token_revoked","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-08 16:09:53.674875+00	
00000000-0000-0000-0000-000000000000	fd0e1a71-ec10-4fd9-8878-8703c6728d4d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-08 16:10:09.680103+00	
00000000-0000-0000-0000-000000000000	fb675165-fc3e-423b-b32f-e8e3893a6a57	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-08 16:10:09.681838+00	
00000000-0000-0000-0000-000000000000	a817325a-a5c0-4eb2-ab28-a397bd039f37	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-08 17:08:50.771054+00	
00000000-0000-0000-0000-000000000000	1452fe9e-03a9-474b-9d8c-7a11924d5aad	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-08 17:08:50.779762+00	
00000000-0000-0000-0000-000000000000	c994aaa7-3496-45a5-b11a-7109515a2bcd	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-09 16:08:20.657183+00	
00000000-0000-0000-0000-000000000000	53fcb335-72d4-4d41-8173-d7bd848b7ab7	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-09 16:08:20.667899+00	
00000000-0000-0000-0000-000000000000	352dacd2-1483-452c-b8b0-d80e77446f78	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 01:27:41.267008+00	
00000000-0000-0000-0000-000000000000	4eebd640-c043-488d-b3a6-ee3f653f7a2a	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 01:27:41.281188+00	
00000000-0000-0000-0000-000000000000	e062d29f-f36d-4e2f-90f0-0293f140fb94	{"action":"token_refreshed","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 01:50:32.826043+00	
00000000-0000-0000-0000-000000000000	840416ab-e920-46b2-97bd-a12472b7eba8	{"action":"token_revoked","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 01:50:32.834821+00	
00000000-0000-0000-0000-000000000000	43bea080-c367-42c6-9d7f-ecb31b27a66a	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 02:26:31.914877+00	
00000000-0000-0000-0000-000000000000	f4564959-fae0-46c4-b594-0da4489ce27d	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 02:26:31.921286+00	
00000000-0000-0000-0000-000000000000	df7260d3-92ca-4fff-9dbc-4bc92642c191	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 02:33:35.26277+00	
00000000-0000-0000-0000-000000000000	b7ff3fa7-ee23-412d-b787-4545082a228b	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 02:33:35.266016+00	
00000000-0000-0000-0000-000000000000	e130667e-c74d-4153-bd08-e24bc4bc9450	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-10 03:02:44.106586+00	
00000000-0000-0000-0000-000000000000	fb25ea11-1db6-4b8e-80c5-22e50ee124df	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-10 14:19:15.95453+00	
00000000-0000-0000-0000-000000000000	55f55c1b-cd50-4725-91f7-4f2400731890	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-10 14:48:14.11985+00	
00000000-0000-0000-0000-000000000000	427be4ec-1fb3-4d67-9394-e58b7e9a161f	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-10 14:48:29.487307+00	
00000000-0000-0000-0000-000000000000	f3a5a8a7-fd0c-40f0-8a11-ee6d38da5123	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-10 15:13:17.581482+00	
00000000-0000-0000-0000-000000000000	db3b4bd4-8ccf-4627-a901-089ef04b5a09	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-10 15:13:40.227053+00	
00000000-0000-0000-0000-000000000000	596f0be5-bee8-4da7-97e8-08dda1587cd5	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 16:18:38.672623+00	
00000000-0000-0000-0000-000000000000	a0ba3a6e-994f-46de-861e-b4590942574c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 16:18:38.677873+00	
00000000-0000-0000-0000-000000000000	c12608d3-3d11-4f49-a85e-5f208d30c38e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 17:28:47.278203+00	
00000000-0000-0000-0000-000000000000	d36cf56e-0988-4cc2-8853-4347adb544bb	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-10 17:28:47.283068+00	
00000000-0000-0000-0000-000000000000	e837f679-b718-45df-9ab1-3a7a3a14179e	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-10 18:15:29.006241+00	
00000000-0000-0000-0000-000000000000	d6e1f132-c88b-4c7f-bf97-de9e1a932b66	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-10 18:15:40.590635+00	
00000000-0000-0000-0000-000000000000	addd8526-8ec1-4399-b804-de20774d066e	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-10 18:16:19.135275+00	
00000000-0000-0000-0000-000000000000	f8b83067-caca-4961-941f-68c1592a26e9	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-11 01:02:16.667982+00	
00000000-0000-0000-0000-000000000000	296cf04f-3ec2-4f69-9069-7da6842932ec	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 02:00:51.625083+00	
00000000-0000-0000-0000-000000000000	2da7a670-a13b-4b5a-9902-a4b80d7cd98b	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 02:00:51.63145+00	
00000000-0000-0000-0000-000000000000	c3bd7779-43ef-4aca-a80d-5c5da5b3cc48	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 14:49:09.778359+00	
00000000-0000-0000-0000-000000000000	5aa3df49-3079-4c0d-bacc-a1d8e434be88	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 14:49:09.790099+00	
00000000-0000-0000-0000-000000000000	a7f65ea3-6393-496d-9870-8ad7ecb1e92b	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 15:56:03.821711+00	
00000000-0000-0000-0000-000000000000	e1710ece-cde9-4467-aa8d-901bd7f8d123	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 15:56:03.824561+00	
00000000-0000-0000-0000-000000000000	ce9fab6e-dd24-46b4-bb40-061eff3a885b	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 16:54:14.420298+00	
00000000-0000-0000-0000-000000000000	582286f4-37b6-4a4a-a163-73a458225318	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 16:54:14.423109+00	
00000000-0000-0000-0000-000000000000	463f2332-696c-476d-8baa-eeec94f4e6ee	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 18:11:16.746532+00	
00000000-0000-0000-0000-000000000000	b1921784-325b-47be-b5a6-00f33d2e7392	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-11 18:11:16.751339+00	
00000000-0000-0000-0000-000000000000	546473d8-a5e7-45a3-9ff8-86ac98d7e3e7	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-14 02:51:25.641202+00	
00000000-0000-0000-0000-000000000000	a3b57b9e-4504-42a1-95f8-f3ab91b9d7b0	{"action":"token_refreshed","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-15 16:29:20.205608+00	
00000000-0000-0000-0000-000000000000	9af3ec90-9083-48a4-b926-c3abc811d996	{"action":"token_revoked","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-15 16:29:20.220806+00	
00000000-0000-0000-0000-000000000000	be5e2bca-e173-4a51-b4f3-d5bb17d285cc	{"action":"token_refreshed","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-15 17:28:10.549627+00	
00000000-0000-0000-0000-000000000000	1d684dae-14b8-4356-b5dd-cfb7473bb71f	{"action":"token_revoked","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-15 17:28:10.558029+00	
00000000-0000-0000-0000-000000000000	197b2eeb-89f1-4a53-bd56-05c8af6ca0fb	{"action":"token_refreshed","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-15 18:27:10.413956+00	
00000000-0000-0000-0000-000000000000	64cd432a-c822-4bd5-8162-8a748d31ec4f	{"action":"token_revoked","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-15 18:27:10.417774+00	
00000000-0000-0000-0000-000000000000	e17c1142-3d15-4ca4-9c30-a6e26cd60f19	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-16 20:19:12.221367+00	
00000000-0000-0000-0000-000000000000	f13514af-6332-4fe8-969a-3f1dd3d148f6	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-16 21:17:33.201467+00	
00000000-0000-0000-0000-000000000000	33a7bd29-b106-47fb-b722-9f839c8a5daa	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-16 21:17:33.202999+00	
00000000-0000-0000-0000-000000000000	eff5e669-000e-4807-b804-9796438e1f17	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-16 22:29:26.265544+00	
00000000-0000-0000-0000-000000000000	be1c12d9-1a7f-4b77-ad25-6d675dbacdcd	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-16 22:29:26.267625+00	
00000000-0000-0000-0000-000000000000	e3440368-0632-4037-8c22-bff0157dac73	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 00:05:33.531863+00	
00000000-0000-0000-0000-000000000000	3896ed42-97ec-4a8b-b69e-c410a9796d68	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 00:05:33.536413+00	
00000000-0000-0000-0000-000000000000	cb7b6ce7-6e11-4760-9e0b-c0d851b03b9e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 00:05:35.549962+00	
00000000-0000-0000-0000-000000000000	689708c7-ef39-4577-bdaa-1041c812f50b	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 01:04:42.314935+00	
00000000-0000-0000-0000-000000000000	24efc961-a6e0-424d-a78e-ab8864531103	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 01:04:42.319999+00	
00000000-0000-0000-0000-000000000000	72a698d8-e770-4ae3-a74d-5e4aa7221970	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 02:03:42.318688+00	
00000000-0000-0000-0000-000000000000	4b256d75-d7f8-49d1-9245-43378fecdc59	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 02:03:42.323923+00	
00000000-0000-0000-0000-000000000000	e8e7d2ee-06d5-44f9-867d-1ff95de9721f	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 13:53:01.476387+00	
00000000-0000-0000-0000-000000000000	f23b5cc9-83ff-4c08-95c2-51fe19f41dbc	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 13:53:01.485588+00	
00000000-0000-0000-0000-000000000000	4d2b5746-a728-45c8-8c68-4888666b07f8	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 14:51:11.771509+00	
00000000-0000-0000-0000-000000000000	f0efe8f6-d0a0-4f43-b02f-99b3a697428c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 14:51:11.781022+00	
00000000-0000-0000-0000-000000000000	af7a63bd-2f61-4f3c-b618-fb5c087427b5	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 15:49:23.271273+00	
00000000-0000-0000-0000-000000000000	5255e4f0-c64f-41a3-b544-e4547a7d70b1	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 15:49:23.276813+00	
00000000-0000-0000-0000-000000000000	6b954231-b82a-4a40-a414-ddda8afcec0c	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 16:50:12.395277+00	
00000000-0000-0000-0000-000000000000	6bd1d52e-93a2-4fe7-baf0-d3ab4cd5e898	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 16:50:12.39936+00	
00000000-0000-0000-0000-000000000000	93bb0f5f-80b7-4e5a-8bc7-0448a554b1cb	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 17:48:45.509187+00	
00000000-0000-0000-0000-000000000000	95f1626d-91f5-4870-bcff-a348b40a8e58	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 17:48:45.513073+00	
00000000-0000-0000-0000-000000000000	4dfc85fc-056b-4a99-b383-417e534f0953	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 19:11:16.493138+00	
00000000-0000-0000-0000-000000000000	500bf399-1b48-4b3b-9ebd-246f37c2f615	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-17 19:11:16.497806+00	
00000000-0000-0000-0000-000000000000	97279e9a-68bf-4bfb-baf6-d630db3ddd1d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 02:11:55.909747+00	
00000000-0000-0000-0000-000000000000	72d980d5-a6d8-47da-b12b-f2f14a7c527d	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 02:11:55.918888+00	
00000000-0000-0000-0000-000000000000	80c7b114-a5d2-42be-bcfc-598a4980b7cc	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 03:18:02.651168+00	
00000000-0000-0000-0000-000000000000	6f58bbfc-299f-4054-b9ed-183eabbde59c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 03:18:02.655938+00	
00000000-0000-0000-0000-000000000000	37f4ec15-ac56-4687-8a1e-4bb86f988030	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 13:06:11.629981+00	
00000000-0000-0000-0000-000000000000	acffd03d-5869-446e-9a61-35e529404979	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 13:06:11.640879+00	
00000000-0000-0000-0000-000000000000	aa0b4af3-9a79-48ca-87fa-05a332817451	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 14:08:05.440838+00	
00000000-0000-0000-0000-000000000000	19feb33d-ee75-4ed3-b716-6301245453f5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 14:08:05.444929+00	
00000000-0000-0000-0000-000000000000	76dd5c00-b6f5-4806-bd1b-55c0b48caf6f	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 14:09:28.484245+00	
00000000-0000-0000-0000-000000000000	7d473946-d1b9-4565-935b-46b1a65bcd41	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 14:09:28.487095+00	
00000000-0000-0000-0000-000000000000	b51da00e-3218-4b99-8fe1-83736d544d40	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 15:06:36.285118+00	
00000000-0000-0000-0000-000000000000	b66745b1-d8c4-4e1c-ba08-118033495d60	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 15:06:36.290852+00	
00000000-0000-0000-0000-000000000000	ff8e1bef-fe48-4e13-8188-2231d9ca4847	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 15:43:02.484536+00	
00000000-0000-0000-0000-000000000000	00b68851-ab1d-4b16-a705-cf9305c61583	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 15:43:02.488169+00	
00000000-0000-0000-0000-000000000000	94d064f6-de79-4424-b6cc-65132eb1eac8	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 16:15:40.149428+00	
00000000-0000-0000-0000-000000000000	0462b3f4-ffc3-40c2-9b5e-486e59956f88	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 16:15:40.151371+00	
00000000-0000-0000-0000-000000000000	1570319e-d8e2-4703-89d6-c77fa95995ca	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 16:57:06.183251+00	
00000000-0000-0000-0000-000000000000	15f1f3e1-dd98-4b8d-8880-5114cd5351e1	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 16:57:06.186366+00	
00000000-0000-0000-0000-000000000000	716090d3-2712-4424-9bf8-45bdab955d3e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 22:12:10.091056+00	
00000000-0000-0000-0000-000000000000	481c9f11-6496-4223-844c-78590a940dd1	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 22:12:10.10171+00	
00000000-0000-0000-0000-000000000000	11562da9-bdce-4c56-be4f-a088d89cdbf3	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 23:10:51.309632+00	
00000000-0000-0000-0000-000000000000	54dda2e7-519b-4f73-9a5d-bd71dda3e79f	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-18 23:10:51.313537+00	
00000000-0000-0000-0000-000000000000	4400c990-f258-4a64-824f-701bada64241	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 00:49:35.259545+00	
00000000-0000-0000-0000-000000000000	9df04750-bf9c-453d-b1ec-ff5bc5665394	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 00:49:35.267162+00	
00000000-0000-0000-0000-000000000000	e7aa863f-2096-45d7-b8fe-d4b89fd5818c	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 01:49:03.722691+00	
00000000-0000-0000-0000-000000000000	2a4189ca-c152-4349-8e37-33188a8f1e17	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 01:49:03.727139+00	
00000000-0000-0000-0000-000000000000	1e8827cf-4aac-41e7-a872-8da0f3978a2d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 02:48:02.934277+00	
00000000-0000-0000-0000-000000000000	3d90b5cc-ba65-4289-8754-c90b9f6a3941	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 02:48:02.940186+00	
00000000-0000-0000-0000-000000000000	263a4039-9fe0-4f29-a4c1-9dc894e82f4c	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 02:53:25.944904+00	
00000000-0000-0000-0000-000000000000	5f76ee95-eaa0-43fc-a612-361b65d31f36	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 13:42:25.877449+00	
00000000-0000-0000-0000-000000000000	e4b415e1-9cba-45d3-bb50-961b1b3cb28e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 14:40:47.326444+00	
00000000-0000-0000-0000-000000000000	a81b6aaf-e02f-46a4-89be-7dd6f14bd94d	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 14:40:47.332174+00	
00000000-0000-0000-0000-000000000000	26f03178-7fc4-4ee0-88cf-68df78fde889	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 15:53:38.007611+00	
00000000-0000-0000-0000-000000000000	dea34d29-7319-47b1-89b1-5cb551de19bf	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 15:53:38.017148+00	
00000000-0000-0000-0000-000000000000	7b7a6f50-10ce-4065-88cf-bfd0b5878ee1	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 16:53:58.764068+00	
00000000-0000-0000-0000-000000000000	ffe360f4-77cf-4416-bee2-5f9dcbec9492	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 16:53:58.768553+00	
00000000-0000-0000-0000-000000000000	2610ffa3-c2de-4bad-9095-1db52328e387	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 17:52:27.725303+00	
00000000-0000-0000-0000-000000000000	57c9af9b-9ec9-4fe9-88a4-932240d418cc	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 17:52:27.735025+00	
00000000-0000-0000-0000-000000000000	c01ece6e-be10-4596-9e7a-83852a77e525	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 20:51:40.696145+00	
00000000-0000-0000-0000-000000000000	d2afe6d7-3c2b-4bb2-88d8-cae4f3e0b090	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 20:51:40.714358+00	
00000000-0000-0000-0000-000000000000	97bd51f2-281b-4579-ad27-72d1b935b9c6	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 21:50:06.286198+00	
00000000-0000-0000-0000-000000000000	aa9509fe-8ed7-404a-b014-0aca46718ccf	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 21:50:06.298124+00	
00000000-0000-0000-0000-000000000000	d7c58bc9-4f1d-4276-898c-74d099575d91	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 22:17:00.547792+00	
00000000-0000-0000-0000-000000000000	bafa0280-d639-4617-8a0d-82674a399404	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 22:17:25.680236+00	
00000000-0000-0000-0000-000000000000	3a08634b-2969-4b14-b9f8-81b94df8ec33	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 22:17:31.469822+00	
00000000-0000-0000-0000-000000000000	14d94712-3a2c-45a7-ad2b-72ded42ea00f	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 22:17:38.241922+00	
00000000-0000-0000-0000-000000000000	e50da6a1-0d4c-4fc4-b2d7-3e2325a80913	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 22:17:56.332187+00	
00000000-0000-0000-0000-000000000000	c6bac881-117a-460c-9d26-f2e90fca410d	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 22:18:01.804843+00	
00000000-0000-0000-0000-000000000000	75ef36ef-7502-42f8-992c-909b5368c484	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 22:22:36.999818+00	
00000000-0000-0000-0000-000000000000	a15222d7-89a5-4388-8906-047999b0da92	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 22:22:50.504347+00	
00000000-0000-0000-0000-000000000000	06a0bec4-d1c5-4bf4-8838-2f693a78aec3	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 22:45:08.963931+00	
00000000-0000-0000-0000-000000000000	58ab9f1a-eb1f-47e5-974d-41cec079ed55	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 22:50:44.058694+00	
00000000-0000-0000-0000-000000000000	0587c334-a08f-4f73-878b-bc781937f19b	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-19 22:50:47.626333+00	
00000000-0000-0000-0000-000000000000	089badca-4824-41b7-9b7f-6382d3ad6341	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-19 22:50:51.133207+00	
00000000-0000-0000-0000-000000000000	0e17b655-e868-4079-967e-1484c379a203	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 23:49:03.393467+00	
00000000-0000-0000-0000-000000000000	f34f4c2c-74a4-402b-9acf-a37ab862f733	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-19 23:49:03.39781+00	
00000000-0000-0000-0000-000000000000	09506958-1a88-4af8-af57-ea4e1c42ae68	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 00:47:21.295675+00	
00000000-0000-0000-0000-000000000000	657da14f-01ff-41bd-9f1c-525b78a58fa1	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 00:47:21.301451+00	
00000000-0000-0000-0000-000000000000	ff26ca81-9e1b-41a0-83f6-51f76a782eea	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 14:04:46.08844+00	
00000000-0000-0000-0000-000000000000	9f395024-3c32-41a2-be52-8a5094faf05c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 14:04:46.104675+00	
00000000-0000-0000-0000-000000000000	6b007e6a-6466-4a07-bfed-3cc71f49feb7	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 15:13:31.477547+00	
00000000-0000-0000-0000-000000000000	e46d994b-bbb6-4aa6-9a3a-77f242a4f6de	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 15:13:31.485038+00	
00000000-0000-0000-0000-000000000000	8c05c740-d24e-42b9-85dc-30b8be4cde3c	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 16:11:35.39959+00	
00000000-0000-0000-0000-000000000000	c8ec78f7-dc14-4246-a8f4-54ee397fb389	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 16:11:35.403017+00	
00000000-0000-0000-0000-000000000000	5dd28e29-ecd8-4b37-9ae1-1e5bcdc5ca6b	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 17:10:28.81603+00	
00000000-0000-0000-0000-000000000000	f28054b0-304d-41de-8260-7c809f1237b0	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 17:10:28.820217+00	
00000000-0000-0000-0000-000000000000	51b272f9-0d30-4f41-bf51-388688659081	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 18:26:17.170186+00	
00000000-0000-0000-0000-000000000000	3bc95389-902e-4158-9a70-4d4157dd6276	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 18:26:17.174138+00	
00000000-0000-0000-0000-000000000000	173678a8-9984-4c33-8b26-bd0ae866f639	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 23:01:32.711376+00	
00000000-0000-0000-0000-000000000000	42d9dbb1-dc38-4b14-8326-826247383316	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-20 23:01:32.725536+00	
00000000-0000-0000-0000-000000000000	8ef3dbb8-d0fb-4ad0-b74a-6c57f3462899	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-20 23:02:22.178759+00	
00000000-0000-0000-0000-000000000000	c3145589-d164-47f7-97e3-cede35e8a73e	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:40:23.874559+00	
00000000-0000-0000-0000-000000000000	4512e3f0-2293-4b88-94e6-cd008e18b2b5	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-20 23:02:34.457422+00	
00000000-0000-0000-0000-000000000000	324c429e-cc48-4ea0-85a2-caa3ae0e9d43	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-20 23:02:36.953414+00	
00000000-0000-0000-0000-000000000000	0e4bc1d1-7b62-4477-9425-b3a4ac7b8a32	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-20 23:02:39.156812+00	
00000000-0000-0000-0000-000000000000	a8383718-5e50-41f2-9a4a-5d3660ed4ca0	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 00:04:15.487454+00	
00000000-0000-0000-0000-000000000000	1a3ab828-6087-4ce1-84c6-cf478ee8bbec	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 00:04:15.494025+00	
00000000-0000-0000-0000-000000000000	dc0235ca-c163-4856-8d37-ef7dbe6d120f	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 01:14:42.764007+00	
00000000-0000-0000-0000-000000000000	5bcc78a9-519d-42d2-a6c8-02499175c6fd	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 01:14:42.7686+00	
00000000-0000-0000-0000-000000000000	e3665eaa-7c2b-4a58-95f4-01f54f24a94d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 02:13:51.444368+00	
00000000-0000-0000-0000-000000000000	777d40c9-fb5e-4034-abe4-f8260350d18e	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 02:13:51.448886+00	
00000000-0000-0000-0000-000000000000	d3ceb2df-c14a-43df-9f60-399476a8e8c6	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 14:11:24.182779+00	
00000000-0000-0000-0000-000000000000	9c98b816-c9df-424f-8701-b9a92e70cbaa	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 14:11:24.193825+00	
00000000-0000-0000-0000-000000000000	f9e94421-10cc-4d26-b3b8-26d84eb8714d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 15:10:12.025731+00	
00000000-0000-0000-0000-000000000000	2e1b0411-05b6-4e0f-ba75-b386b06361d6	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 15:10:12.032417+00	
00000000-0000-0000-0000-000000000000	bd47f339-ff90-4a98-b65d-8c6e7686ca90	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 16:15:02.124299+00	
00000000-0000-0000-0000-000000000000	ffebbe31-4835-43da-88fc-3db4d67989ac	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 16:15:02.127091+00	
00000000-0000-0000-0000-000000000000	91a0882f-3204-490b-91a4-a82639c534eb	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 23:20:26.561946+00	
00000000-0000-0000-0000-000000000000	763d26e7-1599-4819-9aab-aa58a9d18669	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-21 23:20:26.575044+00	
00000000-0000-0000-0000-000000000000	b65b1b6b-4303-4729-9307-161ebda3dee2	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 00:18:35.897127+00	
00000000-0000-0000-0000-000000000000	7ace5b71-6762-4e3a-add3-99bbd0d1a389	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 00:18:35.900013+00	
00000000-0000-0000-0000-000000000000	dc2f1ea5-e842-4bf5-9baa-9e4cb3a6c76d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 01:18:15.794039+00	
00000000-0000-0000-0000-000000000000	5d9c686f-3080-4976-bd8d-187210fbc8eb	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 01:18:15.812628+00	
00000000-0000-0000-0000-000000000000	75a5f86f-d881-42a3-8015-ec1c754aed10	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 03:05:46.86691+00	
00000000-0000-0000-0000-000000000000	4f45996b-441d-491d-a60d-850cf59cecf6	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 03:05:46.875569+00	
00000000-0000-0000-0000-000000000000	c6b0cf98-3bdc-4d01-8046-6b6a174e1ba0	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 13:10:50.12888+00	
00000000-0000-0000-0000-000000000000	6ae4339c-2127-4ec8-b8a9-f20f434002a5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 13:10:50.151848+00	
00000000-0000-0000-0000-000000000000	b0288ac4-2d3e-4f6b-b51a-73a72e74485a	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 15:25:59.428486+00	
00000000-0000-0000-0000-000000000000	f8ae13e7-1833-46f2-ace1-72bf31775eb2	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-22 15:25:59.441636+00	
00000000-0000-0000-0000-000000000000	0bb5868e-c302-4bf0-a21d-946727d6f893	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-22 15:56:38.70314+00	
00000000-0000-0000-0000-000000000000	344ef3ab-36d1-4178-b139-14d89753dd49	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-22 15:56:48.776565+00	
00000000-0000-0000-0000-000000000000	0756cceb-1eab-4978-8b1b-b28136dc49b1	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-22 15:56:52.637107+00	
00000000-0000-0000-0000-000000000000	fb9985ee-695a-4cd1-b518-567f2e1a17f9	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-22 15:56:55.650637+00	
00000000-0000-0000-0000-000000000000	f61e44f0-80c1-48a0-b94e-0e010489cc13	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-22 16:08:37.138679+00	
00000000-0000-0000-0000-000000000000	f8b40e4c-0c7b-4a83-8170-784feedac781	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-22 16:17:11.146795+00	
00000000-0000-0000-0000-000000000000	90f8870b-97b1-49d8-bdf8-99c7feadc4c7	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-22 16:18:59.315678+00	
00000000-0000-0000-0000-000000000000	d9a4840e-9a01-40ff-87bf-8dfb3974ed3d	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-22 17:17:08.166412+00	
00000000-0000-0000-0000-000000000000	9a12055f-fbb7-47f6-96ed-8ea589b6704d	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-22 17:17:08.171715+00	
00000000-0000-0000-0000-000000000000	b00c0c56-d352-4867-b724-c29b0e213ff7	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-22 18:15:38.079805+00	
00000000-0000-0000-0000-000000000000	c97cbed1-9ee4-4dc9-ac67-3023505be042	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-22 18:15:38.082422+00	
00000000-0000-0000-0000-000000000000	674e27b7-d5bd-40d5-b6ad-a32313e7b562	{"action":"login","actor_id":"3c278e9e-7ca6-4d16-bf51-1343d7347f81","actor_username":"proppekeppoillau-3591@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 00:39:57.562933+00	
00000000-0000-0000-0000-000000000000	db86f785-fe62-4cf3-ae6d-6f4a9dfc34b3	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-23 00:41:05.954557+00	
00000000-0000-0000-0000-000000000000	189c7281-7e3b-4886-abde-ac06a89478e4	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-23 00:41:05.959246+00	
00000000-0000-0000-0000-000000000000	5168fcff-cccb-4432-b58a-7754a702af1c	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-09-23 00:46:55.200572+00	
00000000-0000-0000-0000-000000000000	e909e34e-0782-4f9a-9ad8-730827d18e69	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 00:47:03.205445+00	
00000000-0000-0000-0000-000000000000	b072826a-c06a-4331-adf1-28c22c658f62	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 00:47:07.248737+00	
00000000-0000-0000-0000-000000000000	931954f8-fe67-4c38-a644-9a8b5103aa91	{"action":"login","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 00:47:42.499066+00	
00000000-0000-0000-0000-000000000000	45374d2d-a526-4918-bb52-9e33cf1ff1a8	{"action":"logout","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 01:08:33.319492+00	
00000000-0000-0000-0000-000000000000	2e189b13-ad37-4abf-9398-ccd6b046c428	{"action":"login","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 01:09:16.134608+00	
00000000-0000-0000-0000-000000000000	d2da84e3-7893-4b46-88c8-545d3e1d2c96	{"action":"logout","actor_id":"d77e141b-738c-4494-82df-4fc479544e1e","actor_username":"zeffefrippazo-9670@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 01:17:43.984765+00	
00000000-0000-0000-0000-000000000000	83ef38ae-f5f2-4eca-897e-d727cc58d41d	{"action":"login","actor_id":"ccf47ff3-abec-4672-8208-e78e1b90258f","actor_username":"nefeumewauhe-6084@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 01:18:24.075617+00	
00000000-0000-0000-0000-000000000000	c1c9695a-d03e-413e-9646-d586481180ba	{"action":"logout","actor_id":"ccf47ff3-abec-4672-8208-e78e1b90258f","actor_username":"nefeumewauhe-6084@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 01:27:21.768962+00	
00000000-0000-0000-0000-000000000000	c4cde2cd-3695-48e1-a6e6-66e8628ba89d	{"action":"login","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 01:27:31.173737+00	
00000000-0000-0000-0000-000000000000	78420156-5509-49cc-8107-7fbe3207c69a	{"action":"logout","actor_id":"3c23b75b-4db9-487d-a148-6b30523ce237","actor_username":"lemmakaxebre-8624@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 01:41:27.994017+00	
00000000-0000-0000-0000-000000000000	81be642e-da48-4aec-be32-e0d4a1e8eba3	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 01:41:35.397162+00	
00000000-0000-0000-0000-000000000000	d56bd713-cdd0-4222-845a-364cb7cd4d12	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 01:46:07.674292+00	
00000000-0000-0000-0000-000000000000	c1b0c589-4925-4185-a4fd-fe7ff5d8d89d	{"action":"user_confirmation_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-09-23 02:12:34.644147+00	
00000000-0000-0000-0000-000000000000	1ce2cc63-7a8f-4887-99bd-6046954688e2	{"action":"user_signedup","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-09-23 02:12:57.895799+00	
00000000-0000-0000-0000-000000000000	05030ed5-dc94-40af-95b4-37a70a1dcecc	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:12:59.168456+00	
00000000-0000-0000-0000-000000000000	fa13d248-d03b-4216-baac-3690f5359ca3	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 02:13:17.583675+00	
00000000-0000-0000-0000-000000000000	9683236f-7af0-497d-8985-5f1a12f5fa52	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:14:29.935583+00	
00000000-0000-0000-0000-000000000000	4a14ee5b-32ed-492b-94d5-b589d434ec08	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 02:14:38.527795+00	
00000000-0000-0000-0000-000000000000	95559dce-7c33-4b27-87d8-f3ca8aca2246	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:14:44.594733+00	
00000000-0000-0000-0000-000000000000	43ba8b2f-45ab-42d2-90ba-bfdd0b55953e	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:31:26.140312+00	
00000000-0000-0000-0000-000000000000	d8ef89a9-a689-412b-a715-2c705dac3de3	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 02:40:05.463858+00	
00000000-0000-0000-0000-000000000000	32b25d1d-1bd2-4854-9114-e4f4897351b2	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 02:50:42.333935+00	
00000000-0000-0000-0000-000000000000	adff0b55-14ae-4b5f-bfe3-c1fa6f115bf2	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:50:48.090748+00	
00000000-0000-0000-0000-000000000000	9d07c608-8f39-42b2-b916-3ff17bf3be8e	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 02:52:37.901614+00	
00000000-0000-0000-0000-000000000000	b76df7bb-3616-492e-9d73-53d520b8adb2	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:52:44.102581+00	
00000000-0000-0000-0000-000000000000	7f4415df-86eb-456e-b3c1-590f00cfe1ae	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 02:58:41.513012+00	
00000000-0000-0000-0000-000000000000	cc630636-696b-4eb9-a97f-e91704d7f7dd	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 02:58:48.086823+00	
00000000-0000-0000-0000-000000000000	dc624639-c88a-4f41-9a2d-eb31f1dd8ac9	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:08:02.71369+00	
00000000-0000-0000-0000-000000000000	00118f3b-ad4c-4b97-9947-d181bf832a74	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:08:10.306098+00	
00000000-0000-0000-0000-000000000000	ed72e68f-7aea-41c0-b53a-839276132519	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:08:16.994365+00	
00000000-0000-0000-0000-000000000000	319d0a53-c569-4149-bfa8-d9c43d7ef278	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:12:23.947406+00	
00000000-0000-0000-0000-000000000000	f9dfccca-e933-4032-9e8a-d929c7b2481f	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:12:37.559123+00	
00000000-0000-0000-0000-000000000000	5c87ca83-d9c5-4667-a991-427e6b4ef37a	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:12:43.941812+00	
00000000-0000-0000-0000-000000000000	c6ceae07-ac6c-4271-8cdc-c01f64fba8b2	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:16:09.99454+00	
00000000-0000-0000-0000-000000000000	0b773ae0-2fb2-4ea4-9c7c-18781c393aa9	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:16:15.859995+00	
00000000-0000-0000-0000-000000000000	8d8d2750-0fc7-46bc-8c76-d2598ab884bb	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:16:40.785708+00	
00000000-0000-0000-0000-000000000000	b95ef2b1-b1be-4c07-bf5f-04eee436e2e2	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:19:04.833369+00	
00000000-0000-0000-0000-000000000000	a9c630de-7807-41d3-92d3-3c824df147bc	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:19:10.105967+00	
00000000-0000-0000-0000-000000000000	2fb929a8-5580-4475-84a6-23ffa2401c1b	{"action":"user_updated_password","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:19:36.599404+00	
00000000-0000-0000-0000-000000000000	ffb44452-107b-4734-9564-fd42bcb86a13	{"action":"user_modified","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:19:36.599982+00	
00000000-0000-0000-0000-000000000000	408cd95e-f5f7-4d52-b488-3b00128e73ef	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:19:36.73123+00	
00000000-0000-0000-0000-000000000000	ac2dff25-2f11-47f6-8bc1-bcdb02732f57	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 03:19:45.275529+00	
00000000-0000-0000-0000-000000000000	94659baf-096c-4dfa-b59c-0f2f2406d194	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:19:48.803378+00	
00000000-0000-0000-0000-000000000000	e251cd26-fbfe-4600-a13a-425454244f17	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:20:00.855853+00	
00000000-0000-0000-0000-000000000000	70f958c0-411f-4a18-8ab4-0cf721b7afeb	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:20:39.010872+00	
00000000-0000-0000-0000-000000000000	2e1e1d75-3b02-46de-af94-444d5eca5a92	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:26:42.88252+00	
00000000-0000-0000-0000-000000000000	bf40d44b-14a7-4725-8c54-a04545e7fdef	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:26:49.53864+00	
00000000-0000-0000-0000-000000000000	e9f76406-df8f-4f7f-a467-eec527e526a4	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:26:54.040194+00	
00000000-0000-0000-0000-000000000000	815cc746-27c4-4c99-a1e9-f869056f4984	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:28:17.933939+00	
00000000-0000-0000-0000-000000000000	df3fac7f-3ef4-42ea-a58e-e249057ff224	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:28:30.819878+00	
00000000-0000-0000-0000-000000000000	dd062496-9468-475f-8f89-6c1e5b92e99c	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:32:08.201798+00	
00000000-0000-0000-0000-000000000000	0e9c3fb9-1789-4e4e-98b3-bdf835b9a05a	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:32:30.346321+00	
00000000-0000-0000-0000-000000000000	c0bd4bc6-13b0-40ff-b4a7-d7c428de9a29	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:32:34.588568+00	
00000000-0000-0000-0000-000000000000	f2be6449-855d-42f6-ab68-ce10b4d06db0	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:39:36.281812+00	
00000000-0000-0000-0000-000000000000	d8523350-50b8-419c-bd8e-4a6a355cdc8b	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:39:49.372994+00	
00000000-0000-0000-0000-000000000000	d2ba3970-ca05-454f-bfb2-9344fe679661	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:39:54.330281+00	
00000000-0000-0000-0000-000000000000	eb2b5492-7343-47f5-8d3b-5939406aa708	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 03:40:54.676793+00	
00000000-0000-0000-0000-000000000000	39ec355a-389a-416a-8601-e1a2ea9cc137	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 03:40:58.762391+00	
00000000-0000-0000-0000-000000000000	898de07a-24aa-4d21-a1cf-e93d884cece3	{"action":"token_refreshed","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-23 13:18:42.61498+00	
00000000-0000-0000-0000-000000000000	56ee5760-c915-442b-9f73-4c383bfac5c9	{"action":"token_revoked","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-23 13:18:42.620137+00	
00000000-0000-0000-0000-000000000000	b5b259fe-0487-4805-ad6d-8a85c9d79704	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:18:51.392758+00	
00000000-0000-0000-0000-000000000000	a2d6073b-b700-49fa-90c8-b5e3c967ee72	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:20:26.9436+00	
00000000-0000-0000-0000-000000000000	eaad8bfb-7666-43e7-a9bf-3bb26fb9e11e	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:20:38.198007+00	
00000000-0000-0000-0000-000000000000	d026e751-ff0f-4e91-8dd8-d3d185e106c3	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:33:11.117221+00	
00000000-0000-0000-0000-000000000000	7bf254ba-d804-4611-83c8-2df0ae030c7e	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:33:17.478954+00	
00000000-0000-0000-0000-000000000000	d599b884-b11b-40a4-9097-7bad2348ba46	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:33:30.648595+00	
00000000-0000-0000-0000-000000000000	46eb08ef-7557-4e05-99a5-418790568f41	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:48:20.509391+00	
00000000-0000-0000-0000-000000000000	14d9d558-04df-4d0f-9519-96963dbbc592	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:48:31.755632+00	
00000000-0000-0000-0000-000000000000	8e3f6858-148a-43f8-be76-b7d1d4010753	{"action":"user_updated_password","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:48:47.209988+00	
00000000-0000-0000-0000-000000000000	31facf36-04a9-484a-8e14-71775fa31fe0	{"action":"user_modified","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:48:47.210654+00	
00000000-0000-0000-0000-000000000000	0181891b-76da-4408-8b37-7f087abd3e8c	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:48:57.217059+00	
00000000-0000-0000-0000-000000000000	b9ea354c-21b5-4aaa-8c2b-a2619f3fc14a	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:49:25.319902+00	
00000000-0000-0000-0000-000000000000	f7fa9cc7-808d-4317-8dce-984289666b41	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:49:30.759546+00	
00000000-0000-0000-0000-000000000000	cc88af30-ee92-4d92-909f-8cf2d66b9759	{"action":"user_recovery_requested","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:49:39.722201+00	
00000000-0000-0000-0000-000000000000	dcdfe974-e8b2-4f97-9d32-fe91dd40919a	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:49:46.09541+00	
00000000-0000-0000-0000-000000000000	5d452ce1-29e2-475d-8275-db2bfa3c6a23	{"action":"user_updated_password","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:49:55.356713+00	
00000000-0000-0000-0000-000000000000	25790f7f-f5d5-437b-bfa2-f022483472f4	{"action":"user_modified","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:49:55.35737+00	
00000000-0000-0000-0000-000000000000	5fd6e574-78a4-4e52-8ebf-03c9e2367874	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:50:05.112866+00	
00000000-0000-0000-0000-000000000000	6d5a258a-fbd9-4688-a2b0-1972a6544935	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:50:19.00479+00	
00000000-0000-0000-0000-000000000000	5e6f7025-0269-430a-9a7e-594197a412b1	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:50:27.707908+00	
00000000-0000-0000-0000-000000000000	723f902b-dc81-452c-bc90-88c7bbbf1348	{"action":"login","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:50:30.90781+00	
00000000-0000-0000-0000-000000000000	bb6447d7-ea3c-4d1b-82aa-5b2359e4372d	{"action":"logout","actor_id":"d028ed7d-a831-42ed-acbf-582084cf6b7a","actor_username":"cosegepunu-2914@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:50:32.447009+00	
00000000-0000-0000-0000-000000000000	38822f5f-9d53-4da4-8ba4-f289df0d361e	{"action":"user_confirmation_requested","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-09-23 13:52:02.55843+00	
00000000-0000-0000-0000-000000000000	359574b0-03d8-4e39-bddb-04b78a8470d0	{"action":"user_signedup","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-09-23 13:52:15.108629+00	
00000000-0000-0000-0000-000000000000	29ab0fed-fe1e-4f08-9628-0835d77ca070	{"action":"logout","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:52:15.911573+00	
00000000-0000-0000-0000-000000000000	c9a59478-5ffd-4a89-a493-f0ebb2cc5c5e	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:52:28.935914+00	
00000000-0000-0000-0000-000000000000	e372ebeb-9b93-4996-918b-e4e689616174	{"action":"logout","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:52:56.0092+00	
00000000-0000-0000-0000-000000000000	70926e1c-76b2-4ad1-9848-d289379d6e40	{"action":"user_recovery_requested","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:53:01.840851+00	
00000000-0000-0000-0000-000000000000	b7ac4348-4d48-4112-978e-b4183ed3f004	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:53:07.36974+00	
00000000-0000-0000-0000-000000000000	0816dfe9-e7e1-46d1-a1a1-09696a7351bc	{"action":"user_updated_password","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:53:15.573688+00	
00000000-0000-0000-0000-000000000000	cc39e040-ab24-4c63-be0a-3d3ac288bcbc	{"action":"user_modified","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 13:53:15.574282+00	
00000000-0000-0000-0000-000000000000	0afe0082-50f4-46db-910b-7b8180c3bcbc	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:53:24.384162+00	
00000000-0000-0000-0000-000000000000	fdb7a145-f3cd-4c10-9168-6340d5f527bb	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 13:53:45.079087+00	
00000000-0000-0000-0000-000000000000	e96ed125-04d1-4269-870a-e299973d9283	{"action":"logout","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 13:53:46.783831+00	
00000000-0000-0000-0000-000000000000	fa608aae-f294-43ab-b4cb-a61aaaac6459	{"action":"user_recovery_requested","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:09:41.647772+00	
00000000-0000-0000-0000-000000000000	85f486d0-0a7c-4165-8034-8591ace2a557	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:09:52.965657+00	
00000000-0000-0000-0000-000000000000	f3eb3fe4-2336-42eb-b365-5a930c2cac86	{"action":"user_updated_password","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:10:11.680021+00	
00000000-0000-0000-0000-000000000000	b2fbdb34-a2a2-4771-b02c-fd6278f2d1c2	{"action":"user_modified","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:10:11.680692+00	
00000000-0000-0000-0000-000000000000	e3231b14-d982-4d7e-80a7-2a3d4b355fae	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 14:10:20.837801+00	
00000000-0000-0000-0000-000000000000	cb2c3afd-573b-410f-9a35-41e34614a6d5	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 14:11:18.473517+00	
00000000-0000-0000-0000-000000000000	fa370417-bee1-471e-8086-7d1b41e97591	{"action":"logout","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:22:31.970175+00	
00000000-0000-0000-0000-000000000000	4e17ae1d-a003-45b9-bbd0-6ae827f0d05c	{"action":"user_recovery_requested","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:22:40.410415+00	
00000000-0000-0000-0000-000000000000	1abc436f-ccbc-405a-8ab0-6b4b17a56f9f	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:22:55.541592+00	
00000000-0000-0000-0000-000000000000	c5379845-4fa2-450e-aff3-8c2821fc79f9	{"action":"user_updated_password","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:23:03.286473+00	
00000000-0000-0000-0000-000000000000	a2623458-e97a-4593-bab9-17353785a614	{"action":"user_modified","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:23:03.287182+00	
00000000-0000-0000-0000-000000000000	b7af4bf1-ba93-4dee-9051-0ed7db07379a	{"action":"login","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 14:23:07.883546+00	
00000000-0000-0000-0000-000000000000	79e38e05-1d3a-4c04-8cdb-f1c77d6ab64b	{"action":"logout","actor_id":"e334d918-2367-4b34-bf66-83a9c0b8a4aa","actor_username":"treitteubeigrizei-6265@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:23:12.097866+00	
00000000-0000-0000-0000-000000000000	eff6b63e-60b2-4c4c-862e-ec8152e458f1	{"action":"user_confirmation_requested","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-09-23 14:23:29.175747+00	
00000000-0000-0000-0000-000000000000	8900010d-9e97-418a-b48c-f401c8b3870e	{"action":"user_signedup","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-09-23 14:23:49.251561+00	
00000000-0000-0000-0000-000000000000	94571748-39e6-4cc3-b56d-65fd59fb065a	{"action":"logout","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:23:50.021142+00	
00000000-0000-0000-0000-000000000000	1ba2e882-4d43-4920-8ebc-2f4aa992fa7a	{"action":"login","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 14:24:03.94589+00	
00000000-0000-0000-0000-000000000000	d39de8a5-b542-4abf-948d-a069b7adbdb7	{"action":"logout","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:24:58.019342+00	
00000000-0000-0000-0000-000000000000	afa8cbe1-26ed-4ced-9d71-1d93b52a2c0f	{"action":"user_recovery_requested","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:25:03.734163+00	
00000000-0000-0000-0000-000000000000	c98ad2b9-0baa-490e-b01f-1b4c30cef4f1	{"action":"login","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:25:09.154078+00	
00000000-0000-0000-0000-000000000000	1262fda0-5879-47be-a24c-764e9b9b4ed0	{"action":"user_updated_password","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:25:17.415197+00	
00000000-0000-0000-0000-000000000000	bd8fc0fb-8044-49bc-8aac-375494f933fd	{"action":"user_modified","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:25:17.41581+00	
00000000-0000-0000-0000-000000000000	4f7ce992-14a1-452d-9f89-33fbf1a907a0	{"action":"login","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 14:25:23.204065+00	
00000000-0000-0000-0000-000000000000	ba514bc6-f1d5-447b-b07a-b07e097b6557	{"action":"logout","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:25:26.835742+00	
00000000-0000-0000-0000-000000000000	79b4b82a-a431-4b12-bd00-27237581d6ed	{"action":"user_recovery_requested","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:47:07.792578+00	
00000000-0000-0000-0000-000000000000	3a34c22e-f0b2-40f7-9ac8-e1ce1a385119	{"action":"login","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:47:17.818201+00	
00000000-0000-0000-0000-000000000000	28d03d25-369c-4509-aa0a-4019252a6be9	{"action":"user_updated_password","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:47:28.321852+00	
00000000-0000-0000-0000-000000000000	13a735f0-e19f-4434-abad-7a8e32279727	{"action":"user_modified","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-09-23 14:47:28.322499+00	
00000000-0000-0000-0000-000000000000	762b7fb5-e5de-4414-a875-21eb857df826	{"action":"login","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 14:47:35.493419+00	
00000000-0000-0000-0000-000000000000	fe26f6fe-c3f1-45a6-b1f9-27c2bc57ed2f	{"action":"logout","actor_id":"c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9","actor_username":"proutippoipeuji-3523@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 14:47:38.663324+00	
00000000-0000-0000-0000-000000000000	2a965991-4e31-4367-8604-0d6a0cf319d4	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 15:54:02.803364+00	
00000000-0000-0000-0000-000000000000	cfd328ba-1259-42c1-a219-93c7f18d98ec	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 15:54:38.374483+00	
00000000-0000-0000-0000-000000000000	b4b28030-ba3d-4199-9f6d-40518531dd44	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 15:54:47.753267+00	
00000000-0000-0000-0000-000000000000	e7ca15aa-954a-40c4-b17f-e2def5f719ad	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-23 15:59:28.527988+00	
00000000-0000-0000-0000-000000000000	ef5fa6ef-852d-47c9-bed1-c65c505b070e	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-23 16:00:02.933644+00	
00000000-0000-0000-0000-000000000000	43be9d0b-e2dc-4fa2-818f-d1e8aeb6c7cc	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-23 21:16:15.183415+00	
00000000-0000-0000-0000-000000000000	2e597a0f-6247-43d6-a6c6-76e8d91627db	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-23 21:16:15.185617+00	
00000000-0000-0000-0000-000000000000	944d3621-e001-4a06-ac7a-03ede4132ce0	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 02:29:40.055497+00	
00000000-0000-0000-0000-000000000000	0525725b-c2e7-4279-83c2-7a7d7ec752f0	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 02:29:40.060802+00	
00000000-0000-0000-0000-000000000000	cdc311a2-e429-47ae-8ceb-b0906790bad7	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-24 02:39:40.306795+00	
00000000-0000-0000-0000-000000000000	86f579c5-d0e4-4afd-a855-71d2059c99f5	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-24 02:39:53.651529+00	
00000000-0000-0000-0000-000000000000	6c117630-4f58-4005-b532-7f619b921eb3	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-24 03:25:41.322555+00	
00000000-0000-0000-0000-000000000000	0567e648-98e4-4653-8f23-bfbe3154127a	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-24 03:25:46.904196+00	
00000000-0000-0000-0000-000000000000	37d7fd97-2487-47d3-8507-539140a5c05e	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-24 03:25:51.232164+00	
00000000-0000-0000-0000-000000000000	49f0a8e6-df67-41ce-b29e-bb6643fd6ad4	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-24 03:25:59.063482+00	
00000000-0000-0000-0000-000000000000	629b9c3f-c7f7-4038-b4ae-77df92297350	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 11:59:20.33637+00	
00000000-0000-0000-0000-000000000000	4e0e0a91-0b6b-4531-88b5-92658b0d85e3	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 11:59:20.347886+00	
00000000-0000-0000-0000-000000000000	c6ce08be-2d01-44a3-8f91-5f6c1ef2587a	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 12:59:34.553983+00	
00000000-0000-0000-0000-000000000000	59d2d29d-f7ae-4e39-9e3d-cc8ef1f39f14	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 12:59:34.556697+00	
00000000-0000-0000-0000-000000000000	8e70c8b1-8f1c-46e4-bc52-903c84f0dc2a	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 14:19:54.409219+00	
00000000-0000-0000-0000-000000000000	da944af1-f084-4427-a60c-7a74587c2e17	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 14:19:54.417018+00	
00000000-0000-0000-0000-000000000000	60754842-c3c0-4626-8b8f-5f45ba15e0b2	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 16:43:18.27692+00	
00000000-0000-0000-0000-000000000000	cc9ee624-a76a-4228-a11d-a12197b7f9b5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 16:43:18.284404+00	
00000000-0000-0000-0000-000000000000	fb91046f-019a-41f3-8c2e-22b7473d9edc	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 17:42:00.456946+00	
00000000-0000-0000-0000-000000000000	137d37f3-12ca-4515-8351-b3e8313b7fa5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-24 17:42:00.460777+00	
00000000-0000-0000-0000-000000000000	a1bbe296-e076-4571-a39d-4748df914379	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 00:36:45.282857+00	
00000000-0000-0000-0000-000000000000	af782ef9-9fc9-4a01-89c9-c79a402a2659	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 00:36:45.292189+00	
00000000-0000-0000-0000-000000000000	2b200d3e-1fbe-44e9-a8c1-c976b20d2479	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 01:35:25.11456+00	
00000000-0000-0000-0000-000000000000	1fc38a15-a1a3-41a3-83f5-7e2e1225e99a	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 01:35:25.12009+00	
00000000-0000-0000-0000-000000000000	c721bb17-7491-46e6-a36d-75cf979e8f32	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 01:35:26.565553+00	
00000000-0000-0000-0000-000000000000	38f7fe4e-e808-470d-ad20-f9e4b54d5f8b	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 01:35:50.027231+00	
00000000-0000-0000-0000-000000000000	aa75c6ed-1517-4209-9470-171ddf05cf78	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 14:16:55.557597+00	
00000000-0000-0000-0000-000000000000	2bd29420-f2c1-4644-a797-70cead36c507	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 15:38:44.505186+00	
00000000-0000-0000-0000-000000000000	c2d2af4a-b69b-4634-ba4b-5f88ae328782	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 15:38:44.512905+00	
00000000-0000-0000-0000-000000000000	1b05788f-3761-47d0-9c33-83f41bad265f	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 00:51:50.018671+00	
00000000-0000-0000-0000-000000000000	c58c171c-bc34-40a2-b2b1-138697abde4b	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 00:51:50.026394+00	
00000000-0000-0000-0000-000000000000	c926feb3-2863-421f-bed7-e6d773ac13d7	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 01:50:31.933519+00	
00000000-0000-0000-0000-000000000000	755e591f-0be8-49a9-8274-dc8a14e3228f	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 01:50:31.937809+00	
00000000-0000-0000-0000-000000000000	64e49fcd-d996-421e-bbfb-0ae410347251	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 02:49:42.824045+00	
00000000-0000-0000-0000-000000000000	791297f7-83f0-4fac-b3d0-ae0e864f452c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 02:49:42.829724+00	
00000000-0000-0000-0000-000000000000	4a0bee9c-5609-4920-870b-6f47f7984508	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 13:40:35.523568+00	
00000000-0000-0000-0000-000000000000	9e0df9b3-5cd4-4c28-adc7-d8f572a5c7e7	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 13:40:35.533478+00	
00000000-0000-0000-0000-000000000000	425cc9d6-a627-43fa-8ebc-dc93d3999648	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-26 13:41:46.59872+00	
00000000-0000-0000-0000-000000000000	b58a3461-e570-43a5-80bf-e501bb5b2275	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-26 13:42:09.07016+00	
00000000-0000-0000-0000-000000000000	64daa151-6378-46a8-b600-708dd2ad3289	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 14:54:08.827223+00	
00000000-0000-0000-0000-000000000000	aff4950f-9a5f-45c0-9d1c-e8575dd939fa	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 14:54:08.835751+00	
00000000-0000-0000-0000-000000000000	e3017dd7-e5cb-43c8-979a-05178639c150	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 15:04:20.046995+00	
00000000-0000-0000-0000-000000000000	210e3208-2591-44b9-95f8-9ac7b4b0d854	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 15:04:20.049075+00	
00000000-0000-0000-0000-000000000000	91730a1b-b767-43c2-96d0-93384ee3be3a	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-26 15:31:44.856714+00	
00000000-0000-0000-0000-000000000000	2db775e0-685c-4a23-a3ab-00762c2d6c61	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 18:06:41.905512+00	
00000000-0000-0000-0000-000000000000	7cc29eab-26f3-41c8-8fad-14b284b1c81a	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 18:06:41.913224+00	
00000000-0000-0000-0000-000000000000	cbc87824-7acf-4497-9e75-4709bf5748d7	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 18:06:43.569054+00	
00000000-0000-0000-0000-000000000000	e0c8edf7-fd33-46ef-827c-d537ad9c8842	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-26 18:06:43.573505+00	
00000000-0000-0000-0000-000000000000	e49c7755-789f-4591-bb06-04c70015e1d0	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 00:27:11.281969+00	
00000000-0000-0000-0000-000000000000	5fd7e7ce-e87b-4e0f-9b89-eeed54eb8487	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 00:27:11.285227+00	
00000000-0000-0000-0000-000000000000	ef7b5f02-c5bf-4c94-9020-d688ed2de90d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 00:42:13.432075+00	
00000000-0000-0000-0000-000000000000	c916ffcf-5b07-4041-8993-7beff22a52da	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 00:42:13.434831+00	
00000000-0000-0000-0000-000000000000	49850c81-253b-498c-935d-bf06b7847e1e	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 01:43:12.299169+00	
00000000-0000-0000-0000-000000000000	6db9d4b2-3cf1-4b61-9126-d9d4058d3090	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 01:43:12.301951+00	
00000000-0000-0000-0000-000000000000	315cc3c7-8716-46f3-bfff-1195f1caf1e3	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 02:13:35.616385+00	
00000000-0000-0000-0000-000000000000	a7169e10-6d1e-4734-9a94-f7530ca25288	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 02:13:35.619485+00	
00000000-0000-0000-0000-000000000000	2e0e7132-9ee4-44c4-ae65-ed2e93b5df82	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 02:52:36.822695+00	
00000000-0000-0000-0000-000000000000	6be2df22-026a-42c5-a169-0e1987c6df7e	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 02:52:36.826528+00	
00000000-0000-0000-0000-000000000000	5c7bfd51-f42c-40a8-9df4-b10e0e7b8801	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 04:03:24.373836+00	
00000000-0000-0000-0000-000000000000	8a41c2da-7028-4264-8677-fc8936710676	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 04:03:24.376191+00	
00000000-0000-0000-0000-000000000000	8a530331-c6b2-4304-932d-eaa08a00acbe	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 23:49:44.678485+00	
00000000-0000-0000-0000-000000000000	eaf9039e-0651-41b9-9935-5218594f9370	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-27 23:49:44.707167+00	
00000000-0000-0000-0000-000000000000	b6d5e82c-f8e1-4494-8cd3-f98f977b77cd	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 00:52:58.483762+00	
00000000-0000-0000-0000-000000000000	0fe73148-254e-4292-9343-4063cf7e8805	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 00:52:58.489431+00	
00000000-0000-0000-0000-000000000000	75a7d755-43ff-45bb-b539-921bc9c1f2af	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 01:54:55.015886+00	
00000000-0000-0000-0000-000000000000	f80cc465-fb10-4863-a06c-8af2617aa3b8	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 01:54:55.018734+00	
00000000-0000-0000-0000-000000000000	107cb570-ccb2-4e87-b218-c631276cbba8	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 02:55:11.26558+00	
00000000-0000-0000-0000-000000000000	64cd4817-4b21-4e1f-9bfa-dd2e7011f1b4	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 02:55:11.268395+00	
00000000-0000-0000-0000-000000000000	984bd660-5780-4d8b-8ebd-041a0bd268c9	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 03:29:20.035911+00	
00000000-0000-0000-0000-000000000000	3f4038f2-265a-4966-8ac4-62fd473233b5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 03:29:20.045933+00	
00000000-0000-0000-0000-000000000000	a40774e4-2fdd-4faa-8ca0-f7de15abf7f7	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 03:57:36.283932+00	
00000000-0000-0000-0000-000000000000	3708cca3-a611-4c1a-bf80-351f787b92a6	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 03:57:36.29154+00	
00000000-0000-0000-0000-000000000000	959b8e31-0a28-415c-99a9-ebe42270384c	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 05:59:03.298831+00	
00000000-0000-0000-0000-000000000000	5d8a15b3-6518-4a5d-8bba-b43b7888730b	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 05:59:03.302762+00	
00000000-0000-0000-0000-000000000000	97b0b483-45d6-4b4d-900a-28a8747c1d78	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 06:59:33.079989+00	
00000000-0000-0000-0000-000000000000	e86af726-00fc-4ffe-bb79-f7ee74661802	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 06:59:33.09326+00	
00000000-0000-0000-0000-000000000000	2adc6713-6d8e-47bb-a7d2-bd8b79a29b9a	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 15:03:53.065587+00	
00000000-0000-0000-0000-000000000000	78c03a4e-70bf-4446-aeaa-ab880885fc3d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 15:06:05.869069+00	
00000000-0000-0000-0000-000000000000	7d47e267-b983-4736-933f-8f0950647015	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 15:06:05.872421+00	
00000000-0000-0000-0000-000000000000	293c8b52-5b65-40ce-ada2-f8d4ec55d630	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-28 15:07:08.18054+00	
00000000-0000-0000-0000-000000000000	9f230a01-feff-449e-aba8-6c6fcb56ac4d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 20:37:02.52593+00	
00000000-0000-0000-0000-000000000000	cf9b5385-d3c8-4cfa-8d30-92bf5950978a	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 20:37:02.541345+00	
00000000-0000-0000-0000-000000000000	8d4723a8-0bb3-4792-864d-94c352ce0735	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 21:35:03.148421+00	
00000000-0000-0000-0000-000000000000	8b5284e5-5cdc-44e3-a988-c9bc8e948998	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 21:35:03.151234+00	
00000000-0000-0000-0000-000000000000	1580c216-1816-4dc2-93ce-b0cf89829e99	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 22:47:22.610088+00	
00000000-0000-0000-0000-000000000000	b7dc03c3-c728-435c-881d-f9ed5cfb7bc9	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 22:47:22.613987+00	
00000000-0000-0000-0000-000000000000	cc621851-a7b3-4903-b4eb-cc18b1dc51e2	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 23:46:23.534929+00	
00000000-0000-0000-0000-000000000000	55f5f9b8-232b-4be0-ac88-e272cadc0a15	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-28 23:46:23.538305+00	
00000000-0000-0000-0000-000000000000	71221971-29b0-466a-8d14-fcfefd6cd975	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-28 23:49:52.830355+00	
00000000-0000-0000-0000-000000000000	0c1cb189-8de3-4de0-9f4e-11036ff57903	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-28 23:49:52.831266+00	
00000000-0000-0000-0000-000000000000	f8d57c03-6e2d-4a7c-9588-6125b13837c7	{"action":"user_confirmation_requested","actor_id":"db4793b9-fc50-489f-9e64-c48939606f9c","actor_username":"ps36516088@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-09-29 00:25:06.413447+00	
00000000-0000-0000-0000-000000000000	2fdbeb7a-896c-4ac5-b6ca-6c7db529b37b	{"action":"user_signedup","actor_id":"db4793b9-fc50-489f-9e64-c48939606f9c","actor_username":"ps36516088@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-09-29 00:25:21.614312+00	
00000000-0000-0000-0000-000000000000	2c28f4f5-9295-4b45-9e0e-4b65e579f6fb	{"action":"login","actor_id":"db4793b9-fc50-489f-9e64-c48939606f9c","actor_username":"ps36516088@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-29 00:25:52.608618+00	
00000000-0000-0000-0000-000000000000	826b3af9-296f-4bf6-a254-3886616df06d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 00:47:50.375911+00	
00000000-0000-0000-0000-000000000000	fd6c4a87-92b7-477a-a4c9-69111782bac6	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 00:47:50.380487+00	
00000000-0000-0000-0000-000000000000	259e5e3c-a91e-4bf9-9cc6-ab7e8a57f0dd	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 01:48:47.191768+00	
00000000-0000-0000-0000-000000000000	eacd8eb9-0217-4973-bc27-72ba49100ed8	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 01:48:47.195533+00	
00000000-0000-0000-0000-000000000000	d35b686f-dd10-45e0-8dc9-8951a3a69263	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 02:35:22.932545+00	
00000000-0000-0000-0000-000000000000	3c7ba857-3a48-44a6-bc29-6c4e532e53cc	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 02:35:22.935742+00	
00000000-0000-0000-0000-000000000000	606d8200-3c94-40ea-98d6-5de34da279fe	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 02:56:18.380899+00	
00000000-0000-0000-0000-000000000000	8771fdd0-ae0b-443e-ba6b-2548fb3ee9fd	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 02:56:18.384996+00	
00000000-0000-0000-0000-000000000000	2a183919-41c0-4581-b2b9-f0d073d23c7b	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 13:50:43.72555+00	
00000000-0000-0000-0000-000000000000	c0c6043e-a4db-44ac-8996-7018131422b6	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 13:50:43.735371+00	
00000000-0000-0000-0000-000000000000	1a20e268-86d5-4f38-98e1-55c12c2d56bc	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 14:14:17.631081+00	
00000000-0000-0000-0000-000000000000	31722fdc-a1c9-48c8-a975-ba745441f4ea	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 14:14:17.633844+00	
00000000-0000-0000-0000-000000000000	ee014260-7a44-417d-8d8d-5e9082818bbe	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 14:23:13.022117+00	
00000000-0000-0000-0000-000000000000	630cd1a6-29da-400c-a72b-6fe32c876335	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 14:23:13.02588+00	
00000000-0000-0000-0000-000000000000	03a53c07-9d18-48b4-9c62-2e099e96a83a	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 14:50:01.461937+00	
00000000-0000-0000-0000-000000000000	d13f6c94-9d00-4cab-b788-18ef11f7c24d	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 14:50:01.464096+00	
00000000-0000-0000-0000-000000000000	e43761ca-ce35-4a54-b32d-f5c300abc23e	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 15:39:31.472305+00	
00000000-0000-0000-0000-000000000000	56c54ad4-1689-4495-9de5-8c413a947f6a	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 15:39:31.480668+00	
00000000-0000-0000-0000-000000000000	c6350cba-d11c-4c11-b066-07709ef48a03	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-29 15:42:06.195461+00	
00000000-0000-0000-0000-000000000000	2ef30969-820f-472f-8ffa-36e997f77f96	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-29 15:42:06.197048+00	
00000000-0000-0000-0000-000000000000	f49d00c4-d824-4fea-ab20-1c0789460c78	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 15:48:20.695304+00	
00000000-0000-0000-0000-000000000000	d464f0cf-6b99-48a0-adc8-ccaf4409a017	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 15:48:20.698661+00	
00000000-0000-0000-0000-000000000000	464faeed-7d01-4ef4-b1fc-c1926dd6b668	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 16:46:37.709852+00	
00000000-0000-0000-0000-000000000000	266b5325-c9ec-426a-abe8-28ac5ec58e85	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 16:46:37.71294+00	
00000000-0000-0000-0000-000000000000	6aecd4f6-c911-4dba-9619-b056691a3b3c	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-29 16:50:19.026242+00	
00000000-0000-0000-0000-000000000000	9a95cdb9-53a4-4e61-9e10-011899526db8	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-29 16:50:19.027059+00	
00000000-0000-0000-0000-000000000000	6799b666-bacd-47a5-8c4b-fa8934f428bf	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 17:07:22.10774+00	
00000000-0000-0000-0000-000000000000	424100aa-5c98-4d50-a0ef-f3fd72eb36f2	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 17:07:22.110416+00	
00000000-0000-0000-0000-000000000000	e19ed6ce-6aea-4427-80d1-1a6ebd87c436	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 17:58:15.060033+00	
00000000-0000-0000-0000-000000000000	b8e5b426-405a-4652-bf16-d4a5b54a6156	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 17:58:15.064186+00	
00000000-0000-0000-0000-000000000000	279e5d18-8f98-480c-8946-5205e72115cb	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 19:01:07.08814+00	
00000000-0000-0000-0000-000000000000	bbb45eda-3a52-43e7-839f-a2e4d2a14a13	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 19:01:07.095551+00	
00000000-0000-0000-0000-000000000000	e8ec83e9-2d72-4846-a03c-cd866e554e51	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 19:59:33.078371+00	
00000000-0000-0000-0000-000000000000	913e60a1-7544-4cc3-9cf7-d8f396b3a11c	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 19:59:33.090481+00	
00000000-0000-0000-0000-000000000000	843f1a0d-3366-4b90-a71f-7b9c934e79ef	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 20:26:50.243371+00	
00000000-0000-0000-0000-000000000000	1c036f6b-518f-4ddd-b51d-2dfd5fa04901	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 20:26:50.256487+00	
00000000-0000-0000-0000-000000000000	5db2a8bd-19ee-47eb-a1d8-d14eba845434	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 20:58:04.195181+00	
00000000-0000-0000-0000-000000000000	ee7d874b-27e3-412e-a90e-2379e4c91f19	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 20:58:04.209557+00	
00000000-0000-0000-0000-000000000000	0cf89d14-b083-46ae-a708-dc49ce90aae8	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 21:56:35.366676+00	
00000000-0000-0000-0000-000000000000	a0f3aa50-4d54-42a5-a9c3-0ba0e72d2496	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 21:56:35.381035+00	
00000000-0000-0000-0000-000000000000	f7b0d02b-458e-44aa-8665-9a99fe8688af	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 23:49:51.86186+00	
00000000-0000-0000-0000-000000000000	3a467f2d-2dca-4814-a110-9f53738a6144	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-29 23:49:51.871148+00	
00000000-0000-0000-0000-000000000000	d8d9db63-a640-48b3-af56-90e39a271b63	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-29 23:50:14.562331+00	
00000000-0000-0000-0000-000000000000	4891467b-86d9-47ef-9145-b092f4109873	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-29 23:50:14.564226+00	
00000000-0000-0000-0000-000000000000	ec8f72d2-5961-41f0-9197-84ae6f63777b	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 00:48:42.403476+00	
00000000-0000-0000-0000-000000000000	06fa7467-8183-4252-86ff-5a85bf6ddf90	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 00:48:42.417652+00	
00000000-0000-0000-0000-000000000000	eb8f9962-fdc3-4f8a-8a84-822f500b1247	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 00:49:03.599228+00	
00000000-0000-0000-0000-000000000000	6df08e37-255f-4b86-a733-c61b733458db	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 00:49:03.599792+00	
00000000-0000-0000-0000-000000000000	b7510551-64e0-4107-9abc-b21d06c51723	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 00:57:53.908867+00	
00000000-0000-0000-0000-000000000000	9b089a4d-92c2-41d6-871e-1eebf3d46141	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 00:57:53.914945+00	
00000000-0000-0000-0000-000000000000	364731fe-38bc-439b-bb72-a5f5d256da51	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 01:48:03.802052+00	
00000000-0000-0000-0000-000000000000	c05aa117-a914-44f2-ae80-ca82ca6f0973	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 01:48:03.811892+00	
00000000-0000-0000-0000-000000000000	72979866-5acd-4a6c-a2a9-5e0ac612f5c4	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 01:48:03.839216+00	
00000000-0000-0000-0000-000000000000	0b957e33-1e48-4618-a49d-e6981add3a1e	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 01:48:03.840023+00	
00000000-0000-0000-0000-000000000000	5a27c436-9bce-4d19-9a74-c513a84c4bb7	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 01:57:03.610173+00	
00000000-0000-0000-0000-000000000000	e477bbc4-1f67-49c9-ac11-230cffccd4af	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 01:57:03.612424+00	
00000000-0000-0000-0000-000000000000	8a142c12-373c-48c1-a8f3-3589dce0d06c	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 02:46:43.750395+00	
00000000-0000-0000-0000-000000000000	456c711f-031e-4f84-a63b-c48e692d9198	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 02:46:43.762353+00	
00000000-0000-0000-0000-000000000000	13081c70-4b03-40d5-b40d-0c86d80ee0f4	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 02:55:05.200655+00	
00000000-0000-0000-0000-000000000000	1e6b97f4-2ae3-4948-ba46-80fef9f15692	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 02:55:05.202164+00	
00000000-0000-0000-0000-000000000000	7aca7f3b-5e30-4bcf-a2df-11889b2fd876	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 03:46:03.74488+00	
00000000-0000-0000-0000-000000000000	6451dccb-54b4-41a2-99f9-4f4dfe12438e	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 03:46:03.745685+00	
00000000-0000-0000-0000-000000000000	05b448e9-2fda-4443-805f-15775a262749	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 03:53:35.195231+00	
00000000-0000-0000-0000-000000000000	ea2974f3-292c-403c-acb8-8ff2a77ae4c5	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 03:53:35.197471+00	
00000000-0000-0000-0000-000000000000	cf3d3bd6-3830-46a4-84f9-7265b4001c60	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 04:20:31.201126+00	
00000000-0000-0000-0000-000000000000	234b53d3-8fef-41f1-ab5b-0db8737b1961	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 04:20:31.203732+00	
00000000-0000-0000-0000-000000000000	a433f4a5-842d-4c06-8e15-2a81b3e3b2af	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 04:45:03.904122+00	
00000000-0000-0000-0000-000000000000	298e1469-aeac-42e2-995c-8dc87d42c750	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 04:45:03.906387+00	
00000000-0000-0000-0000-000000000000	16682310-f532-4ea1-817c-09bf195bcb5d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 13:28:25.202156+00	
00000000-0000-0000-0000-000000000000	bc85b2b0-4ff3-4fbf-b850-491b8de31b9d	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 13:28:25.213129+00	
00000000-0000-0000-0000-000000000000	8947f867-ff27-46bc-ada5-e4c595a376bf	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 13:32:33.318757+00	
00000000-0000-0000-0000-000000000000	5c08614d-3022-4084-a953-684419faf374	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 13:32:33.320757+00	
00000000-0000-0000-0000-000000000000	dda87d2c-30f1-492a-a5be-76370425b2ce	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 13:47:56.898242+00	
00000000-0000-0000-0000-000000000000	1489f701-1281-4a2e-a9fa-7cce201c2c88	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 13:47:56.90285+00	
00000000-0000-0000-0000-000000000000	651591c1-b15d-4597-bc06-7cd3e6909794	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 14:26:47.825864+00	
00000000-0000-0000-0000-000000000000	cc405051-0d93-4458-8a31-3a006fe0de2e	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 14:26:47.826658+00	
00000000-0000-0000-0000-000000000000	c948be5f-74d0-4699-8dc5-06cb61e7aa51	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 14:32:03.191164+00	
00000000-0000-0000-0000-000000000000	df6d3bca-7e34-43ef-b2aa-ee563cd42b38	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 14:32:03.191977+00	
00000000-0000-0000-0000-000000000000	ad2b3929-be88-4d7c-a4b5-261cffdbdc5d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 14:47:03.269324+00	
00000000-0000-0000-0000-000000000000	de542df7-2282-4fbd-bb78-0d29402f17bb	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 14:47:03.270133+00	
00000000-0000-0000-0000-000000000000	48021a94-c711-49fd-866f-266254111275	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 15:26:03.255406+00	
00000000-0000-0000-0000-000000000000	48de3ced-1094-4cea-9b32-cc135b13a245	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 15:26:03.259374+00	
00000000-0000-0000-0000-000000000000	a74c83cf-a625-4ef6-85a3-eac089a26e1e	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 15:31:03.343203+00	
00000000-0000-0000-0000-000000000000	d3eaa9e2-70d7-43dc-8262-2fad70c4edbb	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 15:31:03.345865+00	
00000000-0000-0000-0000-000000000000	75c574c8-0474-4fb5-b842-b66a79a1a432	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 15:49:03.865031+00	
00000000-0000-0000-0000-000000000000	c903c0b8-13fb-42c4-800d-0455bb477ef0	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 15:49:03.865945+00	
00000000-0000-0000-0000-000000000000	82f73ee1-a01e-4ac3-9626-a18cb2e2e6f5	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:25:03.285333+00	
00000000-0000-0000-0000-000000000000	828d4637-b3fd-4f0c-81c6-ed13d8b5b593	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:25:03.291617+00	
00000000-0000-0000-0000-000000000000	85392f6d-5073-469d-84c2-6e5f3123b1d3	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:30:03.328304+00	
00000000-0000-0000-0000-000000000000	adbd80fc-e52e-4810-a9d4-30157c0b7070	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:30:03.329912+00	
00000000-0000-0000-0000-000000000000	89266f31-c09f-46fb-be25-8af8026aeb0a	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:48:03.295506+00	
00000000-0000-0000-0000-000000000000	b81e1009-4732-481b-9414-4329cdb69fe9	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:48:03.296782+00	
00000000-0000-0000-0000-000000000000	0058e6b2-ebc2-4ff2-90ab-670d6d61080b	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:54:20.49731+00	
00000000-0000-0000-0000-000000000000	dee1fa29-883a-49f8-a08f-39c794a8f93e	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 16:54:20.499524+00	
00000000-0000-0000-0000-000000000000	2129ba38-4108-4d55-8f54-876af7744847	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:24:03.49512+00	
00000000-0000-0000-0000-000000000000	3f439ec3-f576-44ed-b751-d92126aaa22d	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:24:03.499654+00	
00000000-0000-0000-0000-000000000000	cb039ceb-2527-4e09-aefe-541ea1b21a58	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:29:03.189032+00	
00000000-0000-0000-0000-000000000000	ed97b2be-74b7-4aa3-a8be-b959e25a161f	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:29:03.190503+00	
00000000-0000-0000-0000-000000000000	ad1edc93-93ed-4fa2-ad8d-a2f422c67c98	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:47:03.369351+00	
00000000-0000-0000-0000-000000000000	8fa1ca52-aa95-4e5b-a497-49cdbe7371dc	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:47:03.371637+00	
00000000-0000-0000-0000-000000000000	0b3f7825-0e15-4046-b99c-78ba01c5c0ad	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:57:25.294657+00	
00000000-0000-0000-0000-000000000000	da31052c-7126-413e-b07f-45762c4ddbd5	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 17:57:25.298482+00	
00000000-0000-0000-0000-000000000000	ed983880-d3bd-4231-b2c1-6af9f128de1e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:23:03.202038+00	
00000000-0000-0000-0000-000000000000	fa890533-c34e-46f7-b16b-705691a03ed2	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:23:03.207696+00	
00000000-0000-0000-0000-000000000000	c43c104a-98c0-4b82-b9fb-4bb443153fb8	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:28:03.392103+00	
00000000-0000-0000-0000-000000000000	f091ee8b-2804-448f-8250-6a2201b4f935	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:28:03.393721+00	
00000000-0000-0000-0000-000000000000	7f44d9f7-16a2-45ec-99a7-67642143ec6e	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:45:15.967522+00	
00000000-0000-0000-0000-000000000000	1d01cdcc-d1a4-4e6a-8521-42ced3440abb	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:45:15.969292+00	
00000000-0000-0000-0000-000000000000	7402b723-757e-4abb-9070-5ca2a911691d	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:59:21.672748+00	
00000000-0000-0000-0000-000000000000	96156cd4-57ae-461a-8e7f-62ad47896dfe	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 18:59:21.674788+00	
00000000-0000-0000-0000-000000000000	85f2cc20-1dae-4ed6-855a-f5fb6e329667	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:22:03.524301+00	
00000000-0000-0000-0000-000000000000	8c2bf7ba-7286-4c87-9b1e-4ced6de894f3	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:22:03.527618+00	
00000000-0000-0000-0000-000000000000	281b7e7b-12c3-42c1-9e0c-03bdd387f3b9	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:27:03.360401+00	
00000000-0000-0000-0000-000000000000	9080ad7a-b63e-4da4-8566-bed8b2940ff3	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:27:03.366703+00	
00000000-0000-0000-0000-000000000000	029328b5-e159-41eb-ba87-66257c4668d7	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:55:07.766709+00	
00000000-0000-0000-0000-000000000000	05ed0825-8fd7-4ac1-b993-5d222016ab2e	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:55:07.768978+00	
00000000-0000-0000-0000-000000000000	18d7b006-b685-4be1-a879-aeb9204c68e4	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:57:30.912563+00	
00000000-0000-0000-0000-000000000000	04cbefea-3162-49f4-a045-81dc9290e7a3	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 19:57:30.914176+00	
00000000-0000-0000-0000-000000000000	99d0dcdc-054e-4423-b09c-18ad37860b5e	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 20:20:51.575871+00	
00000000-0000-0000-0000-000000000000	bc05f27b-c117-4e37-8333-447fec183aaa	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 20:20:51.57733+00	
00000000-0000-0000-0000-000000000000	c5641470-beb8-42e5-8f2e-97d8a367c5a0	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 20:26:03.418853+00	
00000000-0000-0000-0000-000000000000	e1ac693e-97ba-451d-b906-096e5784abee	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 20:26:03.42097+00	
00000000-0000-0000-0000-000000000000	20663fbf-ab71-4721-a5c6-5044c37ea4be	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 20:53:07.757227+00	
00000000-0000-0000-0000-000000000000	bd05237b-b690-4d11-84c6-3acb985a7fa1	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 20:53:07.758716+00	
00000000-0000-0000-0000-000000000000	7871dbb8-d3ff-4b51-a24e-c6f675d84328	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 21:20:03.521755+00	
00000000-0000-0000-0000-000000000000	3f2cce10-aec8-4aa6-8990-19a7a2f2dd5e	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 21:20:03.523222+00	
00000000-0000-0000-0000-000000000000	3953906f-102e-4bee-a9b1-9e68ac7d033c	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 21:25:03.401151+00	
00000000-0000-0000-0000-000000000000	00358368-feec-4e8b-9a93-287cce7bc2a4	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 21:25:03.403101+00	
00000000-0000-0000-0000-000000000000	ec7ef689-7283-43db-902a-362ca6d3178c	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 22:05:47.772347+00	
00000000-0000-0000-0000-000000000000	601365ee-6504-44a2-a2a9-c1acf5aba4f6	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 22:05:47.774463+00	
00000000-0000-0000-0000-000000000000	9d8d584b-df24-4980-826e-13363966c3d6	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 22:19:03.46494+00	
00000000-0000-0000-0000-000000000000	0d1f8855-86ae-48cf-aed0-f306d7dfd059	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 22:19:03.466657+00	
00000000-0000-0000-0000-000000000000	c0cf2580-8f72-496b-8619-8978a4067ec5	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 22:23:54.534888+00	
00000000-0000-0000-0000-000000000000	319f85ab-6485-4464-a061-84759888459f	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 22:23:54.535798+00	
00000000-0000-0000-0000-000000000000	e4694aaf-f28f-43b4-9c6b-1acf911a4072	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 23:05:54.468725+00	
00000000-0000-0000-0000-000000000000	0e1092a9-a45a-4853-9ac7-944f57386c88	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 23:05:54.472646+00	
00000000-0000-0000-0000-000000000000	376fb87d-93fc-4a17-bf48-036c6e29efa9	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 23:18:03.361337+00	
00000000-0000-0000-0000-000000000000	764cae43-d012-4e72-b24d-320d205f3f3c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 23:18:03.36219+00	
00000000-0000-0000-0000-000000000000	d79a5ecf-2dbe-41a2-896f-d3345b4959af	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 23:22:33.499902+00	
00000000-0000-0000-0000-000000000000	d2f45d9f-1e56-4b6d-bd8b-4dc5a7f5f838	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-09-30 23:22:33.500737+00	
00000000-0000-0000-0000-000000000000	9bed5ec1-7797-40c0-93fa-2e0dbd4b56b1	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 00:05:03.545066+00	
00000000-0000-0000-0000-000000000000	6a816af9-76c0-4941-b3cc-e6167d7cd813	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 00:05:03.559707+00	
00000000-0000-0000-0000-000000000000	5f7fa304-6c80-4d20-b940-a6121bd98641	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 00:17:03.382358+00	
00000000-0000-0000-0000-000000000000	ade112db-c689-44cf-8f87-7ff1a74f5642	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 00:17:03.391719+00	
00000000-0000-0000-0000-000000000000	df6689a0-dc63-41ad-b3ac-f84ba7e0cdb9	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 00:22:13.516721+00	
00000000-0000-0000-0000-000000000000	f9aa7b17-57bc-457b-ab0b-2bbde13987f5	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 00:22:13.521992+00	
00000000-0000-0000-0000-000000000000	fda23dcd-d662-4310-9e39-338b0238ea97	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 01:04:03.513125+00	
00000000-0000-0000-0000-000000000000	4161db49-d3e6-4a73-90ac-c45b6e04b6ae	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 01:04:03.523529+00	
00000000-0000-0000-0000-000000000000	9b111426-2031-4a1a-8fa9-128d536696de	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 01:16:03.548066+00	
00000000-0000-0000-0000-000000000000	e6d2e5ba-2ff2-499a-9b43-ba575b9255ff	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 01:16:03.548878+00	
00000000-0000-0000-0000-000000000000	b4b15e17-b314-4bd0-a21d-fc15876ac9e6	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 02:02:12.238277+00	
00000000-0000-0000-0000-000000000000	424ff087-20e4-4b87-9498-657844891f91	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 02:02:12.246109+00	
00000000-0000-0000-0000-000000000000	d0ec1ce9-ebab-4d02-b4f1-a6d9847d7473	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 03:01:04.003978+00	
00000000-0000-0000-0000-000000000000	ccb6e27b-89c8-4e0b-908e-fd1c6a2a72d0	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 03:01:04.013613+00	
00000000-0000-0000-0000-000000000000	c235cd44-ff4d-4caa-a43d-2defcb965f2c	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 03:38:00.59286+00	
00000000-0000-0000-0000-000000000000	776602a9-454e-4d05-bdc2-141073d9d779	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 03:38:00.603913+00	
00000000-0000-0000-0000-000000000000	8ec9da0d-0101-480a-ae5e-f5f5e68a5616	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 04:00:12.908199+00	
00000000-0000-0000-0000-000000000000	b4494a65-f45b-447f-8ee7-be48fe3002ea	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 04:00:12.917599+00	
00000000-0000-0000-0000-000000000000	659e77f0-3923-4ca1-8e3a-964f3a9f9d98	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 04:01:05.393483+00	
00000000-0000-0000-0000-000000000000	58aa1a6c-2dee-461d-a34a-799086ca6130	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 04:01:05.395246+00	
00000000-0000-0000-0000-000000000000	c0d9b915-da10-4322-8c17-1af833033ca1	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 04:25:16.512964+00	
00000000-0000-0000-0000-000000000000	0028c6c8-697f-4a7c-bcfc-e0401ae06883	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 04:41:47.469521+00	
00000000-0000-0000-0000-000000000000	79768484-f7b8-4421-b063-4d90648dd973	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 04:41:58.279102+00	
00000000-0000-0000-0000-000000000000	6fa5a99f-75d3-46dc-ab9b-cde488ddc30c	{"action":"token_refreshed","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 04:43:50.594888+00	
00000000-0000-0000-0000-000000000000	a2b4fb13-6235-43f4-b85b-3e6ff1496f0e	{"action":"token_revoked","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 04:43:50.596983+00	
00000000-0000-0000-0000-000000000000	ee9f17d4-4b36-4424-bd43-50df5fef007a	{"action":"logout","actor_id":"ed716103-7c30-47f8-9d88-0a3188b9b43d","actor_username":"libros123@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 04:44:03.472913+00	
00000000-0000-0000-0000-000000000000	ecdd5376-ad49-4996-8ad7-4d9851ad433f	{"action":"user_confirmation_requested","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-01 04:47:41.018089+00	
00000000-0000-0000-0000-000000000000	906dd2cd-2484-4db5-b384-f13a393fc526	{"action":"user_signedup","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-01 04:47:48.813865+00	
00000000-0000-0000-0000-000000000000	6ec5ddf7-2338-4e8e-be2d-83887d83ab57	{"action":"user_recovery_requested","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"user"}	2025-10-01 04:47:48.887714+00	
00000000-0000-0000-0000-000000000000	3ca90bb1-6405-4b58-980a-b80d63755900	{"action":"logout","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 04:47:49.433761+00	
00000000-0000-0000-0000-000000000000	84c0eea8-98a3-4d1c-82c3-695a575962e2	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 04:48:00.325162+00	
00000000-0000-0000-0000-000000000000	c7c98e89-e3b9-493e-b650-810633fe9ec8	{"action":"login","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 04:48:01.673432+00	
00000000-0000-0000-0000-000000000000	067ed028-be9b-4f23-b407-7ec207bd0b9e	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-10-01 04:48:15.984548+00	
00000000-0000-0000-0000-000000000000	9360640e-6602-4c99-977a-47bb9d4d4c77	{"action":"user_updated_password","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"user"}	2025-10-01 04:49:06.786948+00	
00000000-0000-0000-0000-000000000000	2e3d4322-631a-466f-b4a0-9eb11d195a3a	{"action":"user_modified","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"user"}	2025-10-01 04:49:06.787611+00	
00000000-0000-0000-0000-000000000000	7d2489c1-cfdf-4a97-9906-5ba697ca2eaa	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 04:49:12.170831+00	
00000000-0000-0000-0000-000000000000	4b6233e5-b009-4688-a9d2-16c7c0124057	{"action":"token_refreshed","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 05:46:27.273054+00	
00000000-0000-0000-0000-000000000000	7aa5559b-0c73-4f8a-8259-56cd700384c9	{"action":"token_revoked","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 05:46:27.283408+00	
00000000-0000-0000-0000-000000000000	1e259728-3d1b-4144-bac9-a067712628ba	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 13:35:47.029155+00	
00000000-0000-0000-0000-000000000000	5afeb5a3-4a25-4222-930c-8bf91afd717b	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 13:35:47.039838+00	
00000000-0000-0000-0000-000000000000	6e1d1b4e-6737-4f65-aac4-fd992146664c	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 14:40:44.827362+00	
00000000-0000-0000-0000-000000000000	33cc9aa8-6bdd-4f2c-8cf6-a7f3c641a937	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 14:40:44.836171+00	
00000000-0000-0000-0000-000000000000	a43527fe-1c24-4e2f-a5a7-da48fbd43428	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 14:45:58.987969+00	
00000000-0000-0000-0000-000000000000	3788000b-785c-40dd-86fd-f66883892e9d	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 14:45:58.991425+00	
00000000-0000-0000-0000-000000000000	faebdf77-e468-4c4d-a769-67eb379ccc55	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 15:10:52.749762+00	
00000000-0000-0000-0000-000000000000	66920510-f991-42b0-ae92-8993bfa2794a	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 15:11:24.937987+00	
00000000-0000-0000-0000-000000000000	f9f869e9-8c99-4a1a-b4b1-eb8e55368976	{"action":"login","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 15:11:30.287368+00	
00000000-0000-0000-0000-000000000000	16a77d8c-f4c8-4064-a92a-a5bf08366eba	{"action":"logout","actor_id":"1166241f-43ab-44b4-8b44-94394e4a197a","actor_username":"cibressoyelli-1317@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-01 15:12:18.662471+00	
00000000-0000-0000-0000-000000000000	77f2fb00-cfd2-4010-96e9-ad120c49878d	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 15:13:01.219439+00	
00000000-0000-0000-0000-000000000000	ceffc165-ee1a-488c-b520-27c573dc5ac3	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 15:13:56.019017+00	
00000000-0000-0000-0000-000000000000	a25c25fd-f62e-4951-9124-dcaab74e10fc	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-10-01 15:14:08.90109+00	
00000000-0000-0000-0000-000000000000	f985c948-3cac-4737-a207-3f21c9e94625	{"action":"login","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 15:15:36.050568+00	
00000000-0000-0000-0000-000000000000	c220192a-8523-4e5f-b435-6c7765157efa	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-01 15:31:21.800327+00	
00000000-0000-0000-0000-000000000000	ad12fe93-065b-4f6d-86e8-874410863e13	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:12:04.044773+00	
00000000-0000-0000-0000-000000000000	a747fbab-cb9c-48ed-a275-d0882b46df85	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:12:04.056853+00	
00000000-0000-0000-0000-000000000000	f0d54441-4c08-4f8e-b6ad-eb5bc5782216	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:15:03.840243+00	
00000000-0000-0000-0000-000000000000	5b826a7d-5294-40ee-bd9d-8029f7ed1b0c	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:15:03.84176+00	
00000000-0000-0000-0000-000000000000	4d25fce1-0825-45cb-9066-70cb10d55059	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:18:57.301355+00	
00000000-0000-0000-0000-000000000000	b9b6f5a2-b239-427a-9fdc-68a7a9df9dfb	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:18:57.309841+00	
00000000-0000-0000-0000-000000000000	c7eeb231-b341-4e87-a39f-ee98bc361c34	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:29:48.747967+00	
00000000-0000-0000-0000-000000000000	13a6de41-8997-4c40-b1be-b0318c461bbd	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 16:29:48.758353+00	
00000000-0000-0000-0000-000000000000	943447fd-485f-49b4-9ec8-b40e67773029	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:13:37.690298+00	
00000000-0000-0000-0000-000000000000	d864b79a-bff6-4580-8c06-5dbe7554dd22	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:13:37.705403+00	
00000000-0000-0000-0000-000000000000	85d88113-027e-47b9-9fc0-40d24213c0b0	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:17:27.005661+00	
00000000-0000-0000-0000-000000000000	ddb82a3b-c410-4dcd-b3c9-cd8bec3a036f	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:17:27.010464+00	
00000000-0000-0000-0000-000000000000	57d682a1-7b37-40d7-8aeb-17c4e265863d	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:29:03.743925+00	
00000000-0000-0000-0000-000000000000	21f49dba-3699-4e57-b9bc-37cbbca3dbda	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:29:03.753846+00	
00000000-0000-0000-0000-000000000000	b00e71f4-7593-42ce-97c7-1b95d90aa5ce	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:34:38.291392+00	
00000000-0000-0000-0000-000000000000	9853e9d1-ad51-40ae-961c-8ff1fe70dc00	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 17:34:38.295358+00	
00000000-0000-0000-0000-000000000000	7ef61c28-9464-4102-8410-3a3f6758b3db	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:13:03.790391+00	
00000000-0000-0000-0000-000000000000	0e5d30c6-333e-42e4-b9e6-4963aaaf69b1	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:13:03.815307+00	
00000000-0000-0000-0000-000000000000	fdf3ed59-5848-4638-98f1-338f5832d1b4	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:18:39.178431+00	
00000000-0000-0000-0000-000000000000	3842d6b0-cc49-4712-9024-f64fe2648a77	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:18:39.186731+00	
00000000-0000-0000-0000-000000000000	2f876637-31ad-4ddb-9390-61f956ba7e00	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:28:03.784037+00	
00000000-0000-0000-0000-000000000000	5a0a2434-f1f6-4f62-abd2-49628b202dc7	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:28:03.787714+00	
00000000-0000-0000-0000-000000000000	1af36555-c614-4b44-bec2-b603aceaf2ce	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:59:34.00398+00	
00000000-0000-0000-0000-000000000000	8adbd2ca-2420-4642-a690-2d0d4aaa9ec9	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 18:59:34.015295+00	
00000000-0000-0000-0000-000000000000	eeb99176-7199-4e44-9401-9df40af8561d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 19:12:03.744961+00	
00000000-0000-0000-0000-000000000000	f979ddea-36a5-4617-9b9d-c0cd45a8d331	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 19:12:03.749141+00	
00000000-0000-0000-0000-000000000000	5e117194-2897-4ce7-9378-c58d9fba1027	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 19:26:13.360275+00	
00000000-0000-0000-0000-000000000000	07ad1de7-2c7d-410e-ac76-85c8e04aee82	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 19:26:13.368245+00	
00000000-0000-0000-0000-000000000000	d8332a97-1afe-4098-b76d-6eb4a7227b53	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 19:59:03.777907+00	
00000000-0000-0000-0000-000000000000	1ed6dabe-64b3-4233-8194-0ca728c264c3	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 19:59:03.788143+00	
00000000-0000-0000-0000-000000000000	0bf2da4c-4901-45ba-bfe7-90af8432842d	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:11:03.742837+00	
00000000-0000-0000-0000-000000000000	2b00645b-f19f-4d98-b11e-b03db8764c5b	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:11:03.752482+00	
00000000-0000-0000-0000-000000000000	5c0c9ed5-6a8b-4d77-96ef-b287f1eab6a9	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:18:30.561381+00	
00000000-0000-0000-0000-000000000000	872d029e-1e5e-4091-b3bb-ff23ecb22bc3	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:18:30.563751+00	
00000000-0000-0000-0000-000000000000	b9cf6548-9cf8-4c05-a026-d4942057a732	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:25:41.256546+00	
00000000-0000-0000-0000-000000000000	a369eab2-43c3-4cb4-8477-e795b8d683a5	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:25:41.265875+00	
00000000-0000-0000-0000-000000000000	ee10aa92-f36f-47b8-8ea7-cf3bcf220172	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:58:03.865037+00	
00000000-0000-0000-0000-000000000000	b3ab6ae4-6118-4ee7-8177-68ee600740b7	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 20:58:03.876675+00	
00000000-0000-0000-0000-000000000000	bd68eb27-ee7b-4cdd-82aa-9bb8f4a7b8fc	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:10:03.896033+00	
00000000-0000-0000-0000-000000000000	93c187a2-39d6-4e91-81ba-e422844df7a6	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:10:03.911184+00	
00000000-0000-0000-0000-000000000000	984a9121-499c-4167-99aa-5ee5dbee40e5	{"action":"token_refreshed","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:14:42.698288+00	
00000000-0000-0000-0000-000000000000	25469491-cc17-44ec-aa2d-35dd2d826f91	{"action":"token_revoked","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:14:42.708537+00	
00000000-0000-0000-0000-000000000000	c5b38d29-e329-4d3c-a537-45ce197f5f2c	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:16:30.936444+00	
00000000-0000-0000-0000-000000000000	8b6a7260-6fd6-44ee-9c9e-078571c12517	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:16:30.939679+00	
00000000-0000-0000-0000-000000000000	11a10362-2e4e-446d-9df7-92afa5e8b689	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:25:03.792193+00	
00000000-0000-0000-0000-000000000000	bc32a3f0-5c88-4a94-b3ca-9b12856ac8ae	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:25:03.805602+00	
00000000-0000-0000-0000-000000000000	69f6bb2e-5289-4940-99c2-7229eb7d4048	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:57:03.74742+00	
00000000-0000-0000-0000-000000000000	63e627f1-b892-4feb-a301-27579acd0f8c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 21:57:03.756743+00	
00000000-0000-0000-0000-000000000000	fa39c223-f28e-41b9-a1db-2378bb8d15a5	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 22:24:03.868653+00	
00000000-0000-0000-0000-000000000000	805acd23-6ac3-453c-b287-b99b0f589584	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 22:24:03.88093+00	
00000000-0000-0000-0000-000000000000	66dd38f3-18d6-4bdf-91ed-37ee4c0ef742	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 22:56:03.78207+00	
00000000-0000-0000-0000-000000000000	6f7ca567-e94f-421c-a4cb-85e0b3bab040	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 22:56:03.7897+00	
00000000-0000-0000-0000-000000000000	6f0bb34a-e4d1-4661-87fb-7f2f19a42603	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 23:22:33.719126+00	
00000000-0000-0000-0000-000000000000	b0a66728-9dea-4cd6-95ca-4232e97e4985	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-01 23:22:33.731713+00	
00000000-0000-0000-0000-000000000000	fd5c6445-12a1-47b0-9191-dba757354c46	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 00:24:13.942233+00	
00000000-0000-0000-0000-000000000000	caf3d592-6548-4355-8887-29f3c8809032	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 00:24:13.956441+00	
00000000-0000-0000-0000-000000000000	1290d2f2-5f2c-4070-83f3-016df1a145b1	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 01:22:17.942592+00	
00000000-0000-0000-0000-000000000000	cafa2bdf-a8fa-48b4-bb53-ed534921649d	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 01:22:17.959464+00	
00000000-0000-0000-0000-000000000000	bbb83fce-a6e0-4d7e-9ad2-44fa60d0a1bc	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 02:20:42.775007+00	
00000000-0000-0000-0000-000000000000	ebaa9a03-f812-4dcc-a269-54601b2407c9	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 02:20:42.788094+00	
00000000-0000-0000-0000-000000000000	198b47b2-bae2-47ee-817e-361ab1a6b24e	{"action":"token_refreshed","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 02:49:04.428062+00	
00000000-0000-0000-0000-000000000000	9fea902d-91fe-4793-a95e-3d42ed7f9b0a	{"action":"token_revoked","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 02:49:04.439803+00	
00000000-0000-0000-0000-000000000000	137cb4e4-a2c7-4442-8a4b-0e7f0c268f98	{"action":"logout","actor_id":"09ff1a6d-48d3-4dbf-814e-5229c6549e86","actor_username":"trajafigosso-7741@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 02:50:02.77478+00	
00000000-0000-0000-0000-000000000000	e24d6539-7407-4b97-bd36-60d1d0eb48b0	{"action":"user_confirmation_requested","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-02 02:50:34.272549+00	
00000000-0000-0000-0000-000000000000	c0efd264-35f0-432e-b2bb-a3206071f0d6	{"action":"user_signedup","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-02 02:50:49.462545+00	
00000000-0000-0000-0000-000000000000	562c79a6-8cf9-4e8d-9de5-7badb43d86d5	{"action":"logout","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 02:50:50.369571+00	
00000000-0000-0000-0000-000000000000	ad1d31c0-3ec6-4be4-8c4e-a68892c30d63	{"action":"login","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 02:53:40.023656+00	
00000000-0000-0000-0000-000000000000	e6b9f06c-4b58-434b-af03-9f784f81f4dd	{"action":"token_refreshed","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:07:44.879943+00	
00000000-0000-0000-0000-000000000000	9788c8e8-c136-4280-bd6f-2a9a3ae05eae	{"action":"token_revoked","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:07:44.890953+00	
00000000-0000-0000-0000-000000000000	de0f63b6-e358-482a-b10b-509465e4faed	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:19:12.35959+00	
00000000-0000-0000-0000-000000000000	d8105ee0-96f9-4045-b46a-8fc6e4620f30	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:19:12.365981+00	
00000000-0000-0000-0000-000000000000	7738e5dc-266f-4478-9a89-43a6506b24ca	{"action":"token_refreshed","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:53:04.019226+00	
00000000-0000-0000-0000-000000000000	563825b8-eed2-4a39-822e-cb64f944da47	{"action":"token_revoked","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:53:04.02696+00	
00000000-0000-0000-0000-000000000000	7d27b691-b89c-41f9-8d4b-45f22cc7f43c	{"action":"token_refreshed","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:12:26.824252+00	
00000000-0000-0000-0000-000000000000	079d9d86-394a-47ec-bf39-8af83a652cb0	{"action":"token_revoked","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:12:26.829417+00	
00000000-0000-0000-0000-000000000000	18fd0f1e-e2d4-4f50-823c-197c53f7e009	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:17:21.570914+00	
00000000-0000-0000-0000-000000000000	00c2ce37-277c-478f-aad8-52858286a318	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:17:21.573405+00	
00000000-0000-0000-0000-000000000000	f616e39a-31d8-42da-b19b-b5570254307a	{"action":"token_refreshed","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:52:50.469648+00	
00000000-0000-0000-0000-000000000000	c9785bf3-03a9-453a-a42b-ac414d811b02	{"action":"token_revoked","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:52:50.476675+00	
00000000-0000-0000-0000-000000000000	0d7f21d5-c4f0-4b0b-a42d-36378740eec8	{"action":"token_refreshed","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 05:10:57.421195+00	
00000000-0000-0000-0000-000000000000	e7838aa8-44d1-4527-a8ef-6af878f88dd2	{"action":"token_revoked","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 05:10:57.435932+00	
00000000-0000-0000-0000-000000000000	943f706b-631a-4045-9b80-9e3b8b8d11a3	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 05:16:04.000969+00	
00000000-0000-0000-0000-000000000000	aa75eb37-d6d1-480f-9653-2c2f27d9473b	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-02 05:16:04.00624+00	
00000000-0000-0000-0000-000000000000	a0f02135-80cc-4c25-a145-d975fd84405b	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:31:25.220798+00	
00000000-0000-0000-0000-000000000000	66ff23a8-0722-40a4-b62e-b38f440da772	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:31:46.133707+00	
00000000-0000-0000-0000-000000000000	05211550-cb7c-4415-8de4-a2aef89bc46f	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:32:27.762797+00	
00000000-0000-0000-0000-000000000000	2be5f7cf-5593-4ef5-ad71-2c07b300e886	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:34:18.307594+00	
00000000-0000-0000-0000-000000000000	05667822-41b4-42a7-92ee-d1bfec9c97dd	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:44:41.191649+00	
00000000-0000-0000-0000-000000000000	8a802b6d-37f5-4d64-a1bb-a177f027ee75	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:44:53.883716+00	
00000000-0000-0000-0000-000000000000	068c2a02-ce8e-4f2d-8b9f-9bd34f5a4558	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:44:59.897727+00	
00000000-0000-0000-0000-000000000000	77ca8289-2471-4f82-8ad7-a39a5d36e275	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:45:06.297158+00	
00000000-0000-0000-0000-000000000000	b9b84196-c8c4-4300-b867-e4ce5d9bf0a8	{"action":"login","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:45:13.830578+00	
00000000-0000-0000-0000-000000000000	d6a0d950-be40-4bcf-9036-a03bf015ace6	{"action":"logout","actor_id":"bf9f3a06-afbe-4031-b3ed-86d08af7f87b","actor_username":"meyibaprallou-7095@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:45:25.22431+00	
00000000-0000-0000-0000-000000000000	b5210cbb-bfcb-44af-b2ce-ddac831789e7	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:46:01.464676+00	
00000000-0000-0000-0000-000000000000	76767019-3e90-4c10-96af-49ef55989299	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:46:46.619223+00	
00000000-0000-0000-0000-000000000000	66c873f8-30be-478a-9739-f6d422955c30	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:46:54.629996+00	
00000000-0000-0000-0000-000000000000	a9a2e3a8-0d4e-4c1c-99ec-f15ed37f0e0f	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:47:57.471135+00	
00000000-0000-0000-0000-000000000000	71333fb8-1198-4df2-a2b3-4ee428e26725	{"action":"user_confirmation_requested","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-02 05:48:12.833122+00	
00000000-0000-0000-0000-000000000000	b8be96b4-fac8-41d4-8ccf-fbe8f97ca91d	{"action":"user_signedup","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-02 05:48:18.800467+00	
00000000-0000-0000-0000-000000000000	cd552742-5a9e-4115-87d2-48850ee02225	{"action":"login","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:48:56.831927+00	
00000000-0000-0000-0000-000000000000	c693f940-f3cd-4a8f-95b9-251205423ea7	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:49:52.986124+00	
00000000-0000-0000-0000-000000000000	8ce123e6-cd65-42b9-88c1-1b39903f7c2b	{"action":"logout","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:53:20.791731+00	
00000000-0000-0000-0000-000000000000	dd379220-df51-40a0-9525-216f3d19490c	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 05:53:23.977175+00	
00000000-0000-0000-0000-000000000000	1e6bda3b-ff88-47a6-a4a9-410369641567	{"action":"login","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 05:56:24.814184+00	
00000000-0000-0000-0000-000000000000	d6d7e241-f1af-4eff-8df7-b0d429b6e1fd	{"action":"user_confirmation_requested","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-02 06:08:07.810081+00	
00000000-0000-0000-0000-000000000000	a863d24f-50b9-4411-bdab-a42fd70ec3cf	{"action":"user_signedup","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-02 06:09:01.972547+00	
00000000-0000-0000-0000-000000000000	b68c9edc-6aa7-4988-b163-51017ebdce1a	{"action":"login","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 06:09:18.363129+00	
00000000-0000-0000-0000-000000000000	3685e05e-31d8-437d-854d-56987e9bdac6	{"action":"token_refreshed","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 06:12:47.853235+00	
00000000-0000-0000-0000-000000000000	25dd2378-18ac-4164-a230-faa258676a65	{"action":"token_revoked","actor_id":"3d2cea8e-64e1-4967-bec7-a3cec1ca135d","actor_username":"paucreijifuza-3246@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 06:12:47.857853+00	
00000000-0000-0000-0000-000000000000	01e13f0a-cd19-4192-be9f-53286ff7cd67	{"action":"login","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 06:13:07.837939+00	
00000000-0000-0000-0000-000000000000	69628790-e1b8-469f-a25e-cc77a3722eb9	{"action":"logout","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 06:32:21.493265+00	
00000000-0000-0000-0000-000000000000	ffb4c0f0-92ab-4fba-aad6-139809d2959e	{"action":"login","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 06:33:58.348772+00	
00000000-0000-0000-0000-000000000000	108c9e9c-b954-4856-82c6-41c9bedf5030	{"action":"logout","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 06:34:04.505423+00	
00000000-0000-0000-0000-000000000000	e7da6c8b-6994-4a31-83b8-4b436bdbfdb3	{"action":"login","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 06:36:36.882611+00	
00000000-0000-0000-0000-000000000000	b399290a-3cca-4c19-8b49-00d25ba66b15	{"action":"token_refreshed","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 11:13:06.378707+00	
00000000-0000-0000-0000-000000000000	50a596fe-7243-4b78-a384-5f5357fabb9f	{"action":"token_revoked","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 11:13:06.390824+00	
00000000-0000-0000-0000-000000000000	9712c66e-a61b-4632-a55f-f3c1dc9b9261	{"action":"logout","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 11:13:55.794268+00	
00000000-0000-0000-0000-000000000000	2856131a-0498-4ecb-bb2d-e929b6f790d4	{"action":"login","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 11:14:00.537488+00	
00000000-0000-0000-0000-000000000000	77f57253-c3c7-4ba4-afa6-27936dbe14d8	{"action":"token_refreshed","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 12:13:11.175535+00	
00000000-0000-0000-0000-000000000000	7b58d6ec-3617-482f-baf3-29ae7d60875f	{"action":"token_revoked","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 12:13:11.225832+00	
00000000-0000-0000-0000-000000000000	ad68ab0a-1aed-4c27-9869-141dbe909159	{"action":"logout","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 12:54:25.643971+00	
00000000-0000-0000-0000-000000000000	cff13f83-fa2e-44ff-9d48-bac7c09557f4	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 14:52:09.560606+00	
00000000-0000-0000-0000-000000000000	8a23c545-fd57-478f-8bc5-77967fd24dac	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 14:52:27.001442+00	
00000000-0000-0000-0000-000000000000	691540ed-5d47-4f83-99e4-5e10b7040db5	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 14:52:45.239436+00	
00000000-0000-0000-0000-000000000000	376b79f3-6587-4fd4-a92c-0a687a10fe61	{"action":"user_recovery_requested","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-02 14:52:56.056917+00	
00000000-0000-0000-0000-000000000000	d678b490-8d36-4044-b546-60718a635722	{"action":"login","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 14:53:39.733469+00	
00000000-0000-0000-0000-000000000000	95215351-40ab-4872-861b-7b223003e862	{"action":"token_refreshed","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 14:55:15.614549+00	
00000000-0000-0000-0000-000000000000	bdf44e32-2c19-4385-a50d-9fdccdb0dbec	{"action":"token_revoked","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 14:55:15.615157+00	
00000000-0000-0000-0000-000000000000	443ef538-0502-412a-92d6-c4b462db8546	{"action":"logout","actor_id":"3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2","actor_username":"vaubessauttegou-1519@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 14:55:42.747839+00	
00000000-0000-0000-0000-000000000000	91644234-9731-443a-b010-d124359f505c	{"action":"user_recovery_requested","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-02 14:55:54.167869+00	
00000000-0000-0000-0000-000000000000	c1296011-a90f-4935-a2a0-327d23edf141	{"action":"login","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 14:56:26.561808+00	
00000000-0000-0000-0000-000000000000	139c7f50-8180-49ae-9a52-be982caa7c07	{"action":"user_updated_password","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-02 14:56:40.625948+00	
00000000-0000-0000-0000-000000000000	b20db6a2-e429-447f-a93c-9e443b497a99	{"action":"user_modified","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-02 14:56:40.627793+00	
00000000-0000-0000-0000-000000000000	14de170c-b17c-4502-a38d-64fa6adb35ee	{"action":"login","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 14:56:48.154756+00	
00000000-0000-0000-0000-000000000000	d695bafe-aa5f-4938-9b00-7133f58d07e8	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 16:23:04.363869+00	
00000000-0000-0000-0000-000000000000	78a3ed76-b4e5-4f60-84ac-81f5570d6a04	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-10-02 16:48:04.066697+00	
00000000-0000-0000-0000-000000000000	49485875-56da-4075-9432-d22dc76715aa	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 16:48:17.656276+00	
00000000-0000-0000-0000-000000000000	af5f63ae-eaea-4658-a9ea-43bb04ce473a	{"action":"logout","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account"}	2025-10-02 16:48:21.023989+00	
00000000-0000-0000-0000-000000000000	cb5c0964-2973-44ca-a181-779888da66a7	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 16:52:15.743761+00	
00000000-0000-0000-0000-000000000000	28d51f8b-d7e5-4bad-8978-00697c85f54c	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 16:52:15.752695+00	
00000000-0000-0000-0000-000000000000	f3fcc627-e848-4ebc-af4e-f15f9802a3d6	{"action":"login","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 16:53:37.241522+00	
00000000-0000-0000-0000-000000000000	aa84eccc-fe00-44c7-b878-22608c53eca6	{"action":"login","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 17:01:12.152719+00	
00000000-0000-0000-0000-000000000000	5749d015-8e72-4989-84b4-7b48bdf29ab1	{"action":"login","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 20:23:30.680342+00	
00000000-0000-0000-0000-000000000000	ada690d7-4bf4-406a-8d72-7b44fb7b150b	{"action":"logout","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-02 20:46:43.441235+00	
00000000-0000-0000-0000-000000000000	d0d744f6-09c0-4b79-b719-b8cdfe38178a	{"action":"login","actor_id":"90cf26a8-2777-4abe-93ec-8f91db0f4737","actor_username":"katherinedowney961@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 23:20:33.578731+00	
00000000-0000-0000-0000-000000000000	b4677c1d-24f1-4522-b1e4-90a282ed9328	{"action":"token_refreshed","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-03 01:12:40.155054+00	
00000000-0000-0000-0000-000000000000	44259e88-9328-435d-a44d-73e7071f1aa2	{"action":"token_revoked","actor_id":"3e965a3e-9729-4a41-96e7-724c0763edd0","actor_username":"enrique.zepeda0017@alumnos.udg.mx","actor_via_sso":false,"log_type":"token"}	2025-10-03 01:12:40.15738+00	
00000000-0000-0000-0000-000000000000	2d5aac22-8501-48b8-9ba4-40532c7b60e4	{"action":"user_confirmation_requested","actor_id":"1695499b-b50d-4696-9127-d61a609a1c16","actor_username":"leonardosegovianozepeda@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-04 20:04:27.14824+00	
00000000-0000-0000-0000-000000000000	78261af7-1ed3-4194-9866-50b8dd315d38	{"action":"user_signedup","actor_id":"1695499b-b50d-4696-9127-d61a609a1c16","actor_username":"leonardosegovianozepeda@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-04 20:04:58.845518+00	
00000000-0000-0000-0000-000000000000	2907378d-01b0-4d3a-9121-ff8717b58766	{"action":"login","actor_id":"1695499b-b50d-4696-9127-d61a609a1c16","actor_username":"leonardosegovianozepeda@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-04 20:05:10.299705+00	
00000000-0000-0000-0000-000000000000	cc85a436-3a26-4084-9c49-c736f2cd79d2	{"action":"user_recovery_requested","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-05 21:13:41.396382+00	
00000000-0000-0000-0000-000000000000	9aa33589-73ab-4535-a794-007860c75a6d	{"action":"login","actor_id":"eb0d5b2b-0260-4f26-a399-e7496b25c94f","actor_username":"kikeesgei@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-05 21:13:54.904193+00	
00000000-0000-0000-0000-000000000000	4b829e79-bf18-4dcb-b652-c8ab4daaf795	{"action":"login","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-05 21:15:14.371329+00	
00000000-0000-0000-0000-000000000000	6ceb255f-f377-4929-9420-259649b031aa	{"action":"login","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-05 21:17:04.009485+00	
00000000-0000-0000-0000-000000000000	98f87610-83ad-4679-9ba9-9041891d2261	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-05 22:16:07.597943+00	
00000000-0000-0000-0000-000000000000	e932578a-36d0-465f-b6b0-10ef63592ff4	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-05 22:16:07.611707+00	
00000000-0000-0000-0000-000000000000	84db7370-3d98-485f-84c8-12bda25ccd6a	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-05 23:14:22.43232+00	
00000000-0000-0000-0000-000000000000	cc0e6c12-89eb-40a5-885a-38f37a8691ab	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-05 23:14:22.442886+00	
00000000-0000-0000-0000-000000000000	32734fbc-e000-49d6-8dd3-c8ade548a699	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-05 23:38:24.09516+00	
00000000-0000-0000-0000-000000000000	69998fd5-9a01-4247-8de4-16cdfc930b11	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-05 23:38:24.102065+00	
00000000-0000-0000-0000-000000000000	4acc0f80-9f2e-4c57-bc43-a364320e8234	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-11 23:32:06.409917+00	
00000000-0000-0000-0000-000000000000	91afd152-4c12-4df4-a945-f35e50eee19c	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-11 23:32:06.44281+00	
00000000-0000-0000-0000-000000000000	eb52c885-b59e-43b6-b451-4ca66e7bc40b	{"action":"token_refreshed","actor_id":"1695499b-b50d-4696-9127-d61a609a1c16","actor_username":"leonardosegovianozepeda@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 02:30:10.565554+00	
00000000-0000-0000-0000-000000000000	503fc0b6-8eb0-4d25-89ce-6deb4657e075	{"action":"token_revoked","actor_id":"1695499b-b50d-4696-9127-d61a609a1c16","actor_username":"leonardosegovianozepeda@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 02:30:10.588821+00	
00000000-0000-0000-0000-000000000000	51e24020-0854-4482-b139-43f132df3e9f	{"action":"user_confirmation_requested","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-21 15:43:47.040823+00	
00000000-0000-0000-0000-000000000000	e273c357-00aa-4566-ba7a-cca28ff20db9	{"action":"user_signedup","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-21 15:44:04.451328+00	
00000000-0000-0000-0000-000000000000	02ec125f-4a83-4a57-beb8-532a88b904c6	{"action":"logout","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-21 15:44:05.412931+00	
00000000-0000-0000-0000-000000000000	fd596684-230b-42e4-b07a-eabb2223b5d3	{"action":"user_recovery_requested","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-21 15:44:23.111088+00	
00000000-0000-0000-0000-000000000000	183b926b-303c-40bb-8b3a-cd6f45683cf0	{"action":"login","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-21 15:44:33.059875+00	
00000000-0000-0000-0000-000000000000	7342c408-ff5d-4950-b2b1-deadb502e580	{"action":"user_updated_password","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-21 15:44:44.411076+00	
00000000-0000-0000-0000-000000000000	8070a807-3835-4b42-a9af-8d0a6f23528e	{"action":"user_modified","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"user"}	2025-10-21 15:44:44.414562+00	
00000000-0000-0000-0000-000000000000	efa5ffe4-683d-427a-a6f7-4ea5ea9cbc64	{"action":"login","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-21 15:44:57.373149+00	
00000000-0000-0000-0000-000000000000	d8eb4366-d63d-47f3-8ae4-6fa3396b923d	{"action":"logout","actor_id":"fed55973-b581-43dc-88aa-da37bc9ce91f","actor_username":"dacisummonneu-7057@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-21 15:46:45.506994+00	
00000000-0000-0000-0000-000000000000	eb0d06d6-a403-498f-ba79-295130837b45	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-21 16:01:46.632462+00	
00000000-0000-0000-0000-000000000000	8b56d5eb-5a27-4314-85ac-f9844e0b6569	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 17:56:35.476661+00	
00000000-0000-0000-0000-000000000000	f185c863-a6d4-4509-96d9-07f6ca1034cd	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 17:56:35.493183+00	
00000000-0000-0000-0000-000000000000	589d5b00-9cfa-4935-b5aa-c0e7e7fa5f29	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-22 14:48:37.729888+00	
00000000-0000-0000-0000-000000000000	c03216ea-3c2f-47bf-812a-33903b3f6e82	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-22 14:48:37.768215+00	
00000000-0000-0000-0000-000000000000	947651dd-ab60-43a3-8c61-f5019943cbd0	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-22 15:47:49.445481+00	
00000000-0000-0000-0000-000000000000	5a28930f-6d9f-4947-853b-847215b9d2ee	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-22 15:47:49.472963+00	
00000000-0000-0000-0000-000000000000	8dcd2a6d-84e5-45b2-99f5-ab6169cd8403	{"action":"login","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-22 18:29:23.494033+00	
00000000-0000-0000-0000-000000000000	36af9260-9f56-4cd9-80eb-521cbe9f787d	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-23 14:29:15.834057+00	
00000000-0000-0000-0000-000000000000	669a7518-7e6c-47e4-bf3c-775a5b19859a	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-23 14:29:15.867348+00	
00000000-0000-0000-0000-000000000000	c45d4080-d7d2-4d8f-a659-88d9c4118481	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-23 16:00:41.95559+00	
00000000-0000-0000-0000-000000000000	f21c0b15-f371-4dbd-a090-b2354f1ec8ef	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-23 16:00:41.987042+00	
00000000-0000-0000-0000-000000000000	0ad8989f-a628-4843-84d7-791ecb8ca4f8	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-23 16:26:38.738074+00	
00000000-0000-0000-0000-000000000000	526ea517-e23e-4474-b2e2-45351270fa95	{"action":"user_confirmation_requested","actor_id":"cbf8243b-9c86-4686-ac07-f3643d941068","actor_username":"traffattename-3581@yopmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-10-23 16:29:23.242202+00	
00000000-0000-0000-0000-000000000000	35f28089-58bd-4b10-a0c8-8e92ff7fd983	{"action":"user_signedup","actor_id":"cbf8243b-9c86-4686-ac07-f3643d941068","actor_username":"traffattename-3581@yopmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-10-23 16:30:36.958615+00	
00000000-0000-0000-0000-000000000000	4527994e-d957-4c6c-82fc-59db76e5dbd5	{"action":"login","actor_id":"cbf8243b-9c86-4686-ac07-f3643d941068","actor_username":"traffattename-3581@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-23 16:30:56.591089+00	
00000000-0000-0000-0000-000000000000	b158a83c-ae9f-44dd-8769-aa79275bc9ac	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-23 17:10:46.716684+00	
00000000-0000-0000-0000-000000000000	cedf985f-7e60-401d-a89f-1447e77a34b2	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-28 17:44:35.007939+00	
00000000-0000-0000-0000-000000000000	120d4298-c621-4b07-9e7f-4cd76d91c1a2	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-28 17:44:35.045404+00	
00000000-0000-0000-0000-000000000000	58131a47-d4aa-4957-8edb-7339e0594168	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-28 18:42:37.751844+00	
00000000-0000-0000-0000-000000000000	8d584849-8aa1-459a-adf1-1d1a029473bd	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-28 18:42:37.767048+00	
00000000-0000-0000-0000-000000000000	2c85c67d-6392-460f-a75c-9f4e3fe47cf9	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 00:12:43.21418+00	
00000000-0000-0000-0000-000000000000	1cf17169-528f-4c29-a9f6-a3a899ed4ae7	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 00:12:43.250276+00	
00000000-0000-0000-0000-000000000000	9071b298-35f4-4e14-974b-02f5253ea12b	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 01:11:42.707302+00	
00000000-0000-0000-0000-000000000000	5a07ccd8-fa45-453d-9e9e-75007390b935	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 01:11:42.729601+00	
00000000-0000-0000-0000-000000000000	737680b6-f885-4937-8abc-8b8ff00e43f7	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 02:10:16.514616+00	
00000000-0000-0000-0000-000000000000	6696a504-442e-4f6a-b0b1-95ad0fdcc377	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 02:10:16.534539+00	
00000000-0000-0000-0000-000000000000	bdd895e0-5f69-4fa7-a1d4-3979e7f3c164	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 00:18:01.997342+00	
00000000-0000-0000-0000-000000000000	5fa8a90b-5b18-4844-8225-ee3516ac835c	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 00:18:02.032078+00	
00000000-0000-0000-0000-000000000000	f8239e40-8112-40e0-a936-b281e25498cf	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 01:16:33.928179+00	
00000000-0000-0000-0000-000000000000	4346e85e-ec69-45b4-be40-c07e70a352d4	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 01:16:33.943779+00	
00000000-0000-0000-0000-000000000000	4114e5bb-00f8-44dd-9540-ab050e3e3959	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 02:15:01.618256+00	
00000000-0000-0000-0000-000000000000	e3df4805-213d-4f93-a3ad-76cd28b16c29	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 02:15:01.638899+00	
00000000-0000-0000-0000-000000000000	f5b2d613-c137-42a9-90b4-5ddbdcb37684	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 15:52:37.432153+00	
00000000-0000-0000-0000-000000000000	c68a07c1-9423-48ab-bf26-b318c1da4c28	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 15:52:37.464762+00	
00000000-0000-0000-0000-000000000000	64b3d361-460a-4080-9089-e9cf24964872	{"action":"logout","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-30 16:01:24.381147+00	
00000000-0000-0000-0000-000000000000	c129b316-e265-4dca-b3a9-e02da3f77af6	{"action":"login","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-30 16:02:19.653137+00	
00000000-0000-0000-0000-000000000000	dec6a29d-b071-490e-83da-69173f853498	{"action":"token_refreshed","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 17:01:02.697587+00	
00000000-0000-0000-0000-000000000000	085a9ae1-6b34-4d8c-b686-f07459652e9a	{"action":"token_revoked","actor_id":"82eb2899-4641-4dfe-97dc-665ccb66cdf7","actor_username":"vattatovuwe-6463@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 17:01:02.720337+00	
00000000-0000-0000-0000-000000000000	a6661e7d-fa99-4a1f-b3bd-0a5f4c0848c3	{"action":"token_refreshed","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 01:32:37.791089+00	
00000000-0000-0000-0000-000000000000	4944437b-cefe-4d6c-87b2-7bc773b68080	{"action":"token_revoked","actor_id":"ef794a04-7430-4bda-8604-b6324ea88cde","actor_username":"pepepecas@yopmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 01:32:37.831354+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	c78066b4-db29-4251-9b8b-3962ad36594f	authenticated	authenticated	saibor.p.ly@hotmail.com	$2a$10$ckdVpiQd/HHLNoXn137d0effI9uHuTKIs93/4PnlGswZVuaywfpEe	2025-07-30 00:50:39.150365+00	\N		2025-07-30 00:50:24.396068+00		\N			\N	2025-07-30 00:50:44.965063+00	{"provider": "email", "providers": ["email"]}	{"sub": "c78066b4-db29-4251-9b8b-3962ad36594f", "email": "saibor.p.ly@hotmail.com", "full_name": "Logan A", "email_verified": true, "phone_verified": false}	\N	2025-07-30 00:50:24.33179+00	2025-07-30 00:50:44.969032+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	167c2ee3-4bea-4f9f-a128-e5313b87f9a1	authenticated	authenticated	trepabelouweu-8256@yopmail.com	$2a$10$vCFzxS1REB4Fq9xruURbPOfiJ4.N2sU/nTEVqiOWGyGS9YoVBT.SG	\N	\N	28492a67ef1533f4538c07c146e12b9a6622ae18a698bc177224a103	2025-08-01 19:46:13.773699+00		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"sub": "167c2ee3-4bea-4f9f-a128-e5313b87f9a1", "email": "trepabelouweu-8256@yopmail.com", "email_verified": false, "phone_verified": false}	\N	2025-08-01 19:46:13.725736+00	2025-08-01 19:46:14.234464+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	c8e13e66-d8d1-48c0-aab4-1de1ef5c3309	authenticated	authenticated	ceicrecefromi-9084@yopmail.com	$2a$10$3VYMYFOM8taFEJnm4k5U3OEPP/YloOJgKiOLz4xccNiBxn6uqCtXK	2025-08-02 01:19:46.813437+00	\N		2025-08-02 01:19:39.119536+00		\N			\N	2025-08-02 01:19:46.816489+00	{"provider": "email", "providers": ["email"]}	{"sub": "c8e13e66-d8d1-48c0-aab4-1de1ef5c3309", "email": "ceicrecefromi-9084@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 01:19:39.110274+00	2025-08-02 01:19:46.828875+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a37ae595-5ee2-43ae-90bb-fa08a900fa74	authenticated	authenticated	joleullouttuffe-7455@yopmail.com	$2a$10$LNL.AgfmWPx.nsEJorq82eeD7LU2UVzoyNJLpr8bHoQhkw2v.SRKC	\N	\N	6460254af351153789c9e90dde6654d232b5f5362c45afd8c74dede5	2025-08-05 15:42:08.50356+00		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"sub": "a37ae595-5ee2-43ae-90bb-fa08a900fa74", "email": "joleullouttuffe-7455@yopmail.com", "email_verified": false, "phone_verified": false}	\N	2025-08-05 15:42:08.497866+00	2025-08-05 15:42:08.890585+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	23605b07-3d7c-459e-94b8-1f6a0c7933ed	authenticated	authenticated	joutteleisopre-3760@yopmail.com	$2a$10$JcEwFUewIKbPr/Lltm8t3.me0e4Uv0205zVilIkXxejU9h3FklKbe	2025-08-03 02:12:35.4569+00	\N		\N		\N			\N	2025-08-05 19:57:08.466659+00	{"provider": "email", "providers": ["email"]}	{"sub": "23605b07-3d7c-459e-94b8-1f6a0c7933ed", "email": "joutteleisopre-3760@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-03 02:12:19.086467+00	2025-08-05 19:57:08.468423+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	e1ed77f6-f4ee-4ab0-8755-66c0a763dc62	authenticated	authenticated	naucrefafeddi-5710@yopmail.com	$2a$10$nCk4jU/gR1kQktaaF7m4peKO46SvZ7InfbN4mzYbwAiuAItRCldSO	2025-08-22 18:33:05.969481+00	\N		2025-08-22 18:32:46.349064+00		\N			\N	2025-08-22 18:33:05.974442+00	{"provider": "email", "providers": ["email"]}	{"sub": "e1ed77f6-f4ee-4ab0-8755-66c0a763dc62", "email": "naucrefafeddi-5710@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-22 18:32:46.317801+00	2025-08-22 18:33:05.980766+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3c278e9e-7ca6-4d16-bf51-1343d7347f81	authenticated	authenticated	proppekeppoillau-3591@yopmail.com	$2a$10$.oXFZxawNwLE5dfhUHFXk.K.ofzbsNCdGUmeUx8Fyf1W1Wq.b.7pi	2025-07-30 20:24:13.822273+00	\N		\N		\N			\N	2025-09-23 00:39:57.572884+00	{"provider": "email", "providers": ["email"]}	{"sub": "3c278e9e-7ca6-4d16-bf51-1343d7347f81", "email": "proppekeppoillau-3591@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-07-30 20:23:45.471614+00	2025-09-23 00:39:57.589154+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d77e141b-738c-4494-82df-4fc479544e1e	authenticated	authenticated	zeffefrippazo-9670@yopmail.com	$2a$10$/muuu3EHd0z9chw9y9LNTea/LZK8SD0nWbBoFu1nA/O2dCa0ssGke	2025-08-05 15:40:49.076657+00	\N		\N		\N			\N	2025-09-23 01:09:16.135311+00	{"provider": "email", "providers": ["email"]}	{"sub": "d77e141b-738c-4494-82df-4fc479544e1e", "email": "zeffefrippazo-9670@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-05 15:40:39.062274+00	2025-09-23 01:09:16.13861+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ccf47ff3-abec-4672-8208-e78e1b90258f	authenticated	authenticated	nefeumewauhe-6084@yopmail.com	$2a$10$GY/secTFUTR55HDbzbCZxea9NRjT2ak1YqkA1kMrbP3oI3FFsxBlS	2025-08-02 00:54:43.360233+00	\N		2025-08-02 00:52:59.960173+00		\N			\N	2025-09-23 01:18:24.077042+00	{"provider": "email", "providers": ["email"]}	{"sub": "ccf47ff3-abec-4672-8208-e78e1b90258f", "email": "nefeumewauhe-6084@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 00:52:59.943337+00	2025-09-23 01:18:24.080598+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3c23b75b-4db9-487d-a148-6b30523ce237	authenticated	authenticated	lemmakaxebre-8624@yopmail.com	$2a$10$Uu42mzba9sqqfD9.LnRZ0eoKbL0nWGgQ/Ejfk8.3QEx40QToDQyZa	2025-08-02 17:02:10.863286+00	\N		\N		2025-08-02 18:54:20.458516+00			\N	2025-09-23 01:27:31.174394+00	{"provider": "email", "providers": ["email"]}	{"sub": "3c23b75b-4db9-487d-a148-6b30523ce237", "email": "lemmakaxebre-8624@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 17:02:02.566997+00	2025-09-23 01:27:31.177828+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ed716103-7c30-47f8-9d88-0a3188b9b43d	authenticated	authenticated	libros123@yopmail.com	$2a$10$EVtVyAsyPvyk32S9YPg64.XCrvhXb8srAFFkqh/94byVMWRJ4p.iq	2025-07-30 22:02:33.049972+00	\N		\N		\N			\N	2025-09-02 21:04:41.761784+00	{"provider": "email", "providers": ["email"]}	{"sub": "ed716103-7c30-47f8-9d88-0a3188b9b43d", "email": "libros123@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-07-30 22:02:23.79155+00	2025-10-01 04:43:50.600673+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	1166241f-43ab-44b4-8b44-94394e4a197a	authenticated	authenticated	cibressoyelli-1317@yopmail.com	$2a$10$mdU0jVu/6pBKTdYIvycgde9DLjqwtnqyRfJsbLCleWAFsG19t806G	2025-08-26 19:08:38.885891+00	\N		2025-08-26 19:08:30.42265+00		\N			\N	2025-10-01 15:11:30.289383+00	{"provider": "email", "providers": ["email"]}	{"sub": "1166241f-43ab-44b4-8b44-94394e4a197a", "email": "cibressoyelli-1317@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-26 19:08:30.384329+00	2025-10-01 15:11:30.304572+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	authenticated	authenticated	meyibaprallou-7095@yopmail.com	$2a$10$wGHRhU7vKL7VoteHeHskpeNeqeKCkO7rQbaMd8/uJ4xaY7mt30Mmq	2025-08-02 01:32:20.624467+00	\N		2025-08-02 01:32:12.09326+00		\N			\N	2025-10-02 05:45:13.832597+00	{"provider": "email", "providers": ["email"]}	{"sub": "bf9f3a06-afbe-4031-b3ed-86d08af7f87b", "email": "meyibaprallou-7095@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 01:32:12.080915+00	2025-10-02 05:45:13.834466+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	authenticated	authenticated	proutippoipeuji-3523@yopmail.com	$2a$10$w3af4.s4EnRqxnflIA.Whu3t3RJcUPtlPl3LDlHiGGPMT2HCb4nYK	2025-09-23 14:23:49.254545+00	\N		\N		\N			\N	2025-09-23 14:47:35.494167+00	{"provider": "email", "providers": ["email"]}	{"sub": "c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9", "email": "proutippoipeuji-3523@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-23 14:23:29.168681+00	2025-09-23 14:47:35.496532+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	authenticated	authenticated	vaubessauttegou-1519@yopmail.com	$2a$10$vL8TU8i3kyqPsL2AlYUTDO5rw5vuFAjkMfYAPV7EyWUSk2yM4V8rS	2025-10-01 04:47:48.815113+00	\N		2025-10-01 04:47:41.021644+00		2025-10-02 14:52:56.061512+00			\N	2025-10-02 14:53:39.741006+00	{"provider": "email", "providers": ["email"]}	{"sub": "3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2", "email": "vaubessauttegou-1519@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-01 04:47:40.994229+00	2025-10-02 14:55:15.622504+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	db4793b9-fc50-489f-9e64-c48939606f9c	authenticated	authenticated	ps36516088@gmail.com	$2a$10$6oHpPDzyKhi/PFFvj1372OOfcHC3SSO6W1/y4laFWdTPMwXFSaVW2	2025-09-29 00:25:21.615578+00	\N		2025-09-29 00:25:06.420757+00		\N			\N	2025-09-29 00:25:52.61012+00	{"provider": "email", "providers": ["email"]}	{"sub": "db4793b9-fc50-489f-9e64-c48939606f9c", "email": "ps36516088@gmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-29 00:25:06.378936+00	2025-09-29 00:25:52.613937+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	09ff1a6d-48d3-4dbf-814e-5229c6549e86	authenticated	authenticated	trajafigosso-7741@yopmail.com	$2a$10$Gr3RD471gD7zR/zmrOzFm.8QKeZm8Hekfbr4Ko.3VCcR2zY1GtIum	2025-08-07 00:59:35.342403+00	\N		\N		\N			\N	2025-10-01 15:15:36.051219+00	{"provider": "email", "providers": ["email"]}	{"sub": "09ff1a6d-48d3-4dbf-814e-5229c6549e86", "email": "trajafigosso-7741@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-07 00:59:14.282387+00	2025-10-02 02:49:04.458017+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	authenticated	authenticated	paucreijifuza-3246@yopmail.com	$2a$10$KD8tFlOn1cSe8JdCjBCfeuS0PdNA6ymGbZj2wa7pV1ohf3axJGHsm	2025-10-02 02:50:49.463184+00	\N		2025-10-02 02:50:34.275416+00		\N			\N	2025-10-02 02:53:40.02592+00	{"provider": "email", "providers": ["email"]}	{"sub": "3d2cea8e-64e1-4967-bec7-a3cec1ca135d", "email": "paucreijifuza-3246@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-02 02:50:34.243691+00	2025-10-02 06:12:47.865647+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	90cf26a8-2777-4abe-93ec-8f91db0f4737	authenticated	authenticated	katherinedowney961@gmail.com	$2a$10$QFfaoi8Y2dD.wmBaJF2gCedolwIqsEECJBRL1j26xB2W10P7hf7K.	2025-10-02 06:09:01.97582+00	\N		2025-10-02 06:08:07.816411+00		\N			\N	2025-10-02 23:20:33.595078+00	{"provider": "email", "providers": ["email"]}	{"sub": "90cf26a8-2777-4abe-93ec-8f91db0f4737", "email": "katherinedowney961@gmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-02 06:08:07.784473+00	2025-10-02 23:20:33.631574+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3e965a3e-9729-4a41-96e7-724c0763edd0	authenticated	authenticated	enrique.zepeda0017@alumnos.udg.mx	$2a$10$bsq65dnF7pfbIHWNJ0euH.AHArE3/fnlR5Zzhirx/1/YKKqKLEI2m	2025-08-01 20:35:34.760805+00	\N		\N		\N			\N	2025-10-02 17:01:12.158877+00	{"provider": "email", "providers": ["email"]}	{"sub": "3e965a3e-9729-4a41-96e7-724c0763edd0", "email": "enrique.zepeda0017@alumnos.udg.mx", "email_verified": true, "phone_verified": false}	\N	2025-08-01 20:35:18.909246+00	2025-10-03 01:12:40.16702+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	eb0d5b2b-0260-4f26-a399-e7496b25c94f	authenticated	authenticated	kikeesgei@yopmail.com	$2a$10$0t/ORPrVY15DBVXcf1eVAukjKOQkN1VXkhk9qUgYyc.ahD8gZ5UrC	2025-10-02 05:48:18.801214+00	\N		2025-10-02 05:48:12.837062+00		2025-10-05 21:13:41.402723+00			\N	2025-10-05 21:13:54.909414+00	{"provider": "email", "providers": ["email"]}	{"sub": "eb0d5b2b-0260-4f26-a399-e7496b25c94f", "email": "kikeesgei@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-02 05:48:12.797925+00	2025-10-05 21:13:54.921171+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d028ed7d-a831-42ed-acbf-582084cf6b7a	authenticated	authenticated	cosegepunu-2914@yopmail.com	$2a$10$RkNdxM4VdUL.rKezTo1/L.ySteHa42ifaoLks.b6zOm6a9iWffdQK	2025-09-23 02:12:57.897146+00	\N		\N		\N			\N	2025-09-23 13:50:30.908504+00	{"provider": "email", "providers": ["email"]}	{"sub": "d028ed7d-a831-42ed-acbf-582084cf6b7a", "email": "cosegepunu-2914@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-23 02:12:34.6173+00	2025-09-23 13:50:30.909915+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	e334d918-2367-4b34-bf66-83a9c0b8a4aa	authenticated	authenticated	treitteubeigrizei-6265@yopmail.com	$2a$10$gfBTXVFCd3VuncqEmHWgkebFFqmUN/GfRrLt5hgAyreVy5Osq4wRe	2025-09-23 13:52:15.111632+00	\N		\N		\N			\N	2025-09-23 14:23:07.884217+00	{"provider": "email", "providers": ["email"]}	{"sub": "e334d918-2367-4b34-bf66-83a9c0b8a4aa", "email": "treitteubeigrizei-6265@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-23 13:52:02.543747+00	2025-09-23 14:23:07.885825+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ef794a04-7430-4bda-8604-b6324ea88cde	authenticated	authenticated	pepepecas@yopmail.com	$2a$10$XbIzrmAbp0uQKTu8/V4GqOpay2ZIcRQS24K.RSX5x2OjWop32jkhO	2025-09-08 15:42:13.339992+00	\N		\N		\N			\N	2025-10-22 18:29:23.524804+00	{"provider": "email", "providers": ["email"]}	{"sub": "ef794a04-7430-4bda-8604-b6324ea88cde", "email": "pepepecas@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-08 15:42:01.222539+00	2025-11-02 01:32:37.880908+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	fed55973-b581-43dc-88aa-da37bc9ce91f	authenticated	authenticated	dacisummonneu-7057@yopmail.com	$2a$10$CvORRm05C2PwanSK7vOfzuzCMRVZm2XLEJLN6DPddSbdl1CEEtLeq	2025-10-21 15:44:04.456293+00	\N		\N		\N			\N	2025-10-21 15:44:57.374185+00	{"provider": "email", "providers": ["email"]}	{"sub": "fed55973-b581-43dc-88aa-da37bc9ce91f", "email": "dacisummonneu-7057@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-21 15:43:47.005237+00	2025-10-21 15:44:57.375889+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	82eb2899-4641-4dfe-97dc-665ccb66cdf7	authenticated	authenticated	vattatovuwe-6463@yopmail.com	$2a$10$JGpNcodIGQgOUBYYsQ.tUO1bkFdQzR5XqtqkEuOYgeSA7rrKtvIEG	2025-09-02 16:10:44.314951+00	\N		2025-09-02 16:10:34.738793+00		\N			\N	2025-10-30 16:02:19.677714+00	{"provider": "email", "providers": ["email"]}	{"sub": "82eb2899-4641-4dfe-97dc-665ccb66cdf7", "email": "vattatovuwe-6463@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-02 16:10:34.713301+00	2025-10-30 17:01:02.762825+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	1695499b-b50d-4696-9127-d61a609a1c16	authenticated	authenticated	leonardosegovianozepeda@gmail.com	$2a$10$5b4hG8qZkIwEMAfxWlqVF.zq82jJXoRYQwcQu0kvw6Uo0n/0KSa5e	2025-10-04 20:04:58.848574+00	\N		2025-10-04 20:04:27.165884+00		\N			\N	2025-10-04 20:05:10.300414+00	{"provider": "email", "providers": ["email"]}	{"sub": "1695499b-b50d-4696-9127-d61a609a1c16", "email": "leonardosegovianozepeda@gmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-04 20:04:27.076041+00	2025-10-19 02:30:10.619893+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	cbf8243b-9c86-4686-ac07-f3643d941068	authenticated	authenticated	traffattename-3581@yopmail.com	$2a$10$oLbdK7Gl5hFOmtVLzce8BeKqKmphFfRILFukLvzHi1ZoyZaG0W7CC	2025-10-23 16:30:36.959907+00	\N		2025-10-23 16:29:23.248001+00		\N			\N	2025-10-23 16:30:56.592608+00	{"provider": "email", "providers": ["email"]}	{"sub": "cbf8243b-9c86-4686-ac07-f3643d941068", "email": "traffattename-3581@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-10-23 16:29:23.198152+00	2025-10-23 16:30:56.594973+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
c78066b4-db29-4251-9b8b-3962ad36594f	c78066b4-db29-4251-9b8b-3962ad36594f	{"sub": "c78066b4-db29-4251-9b8b-3962ad36594f", "email": "saibor.p.ly@hotmail.com", "full_name": "Logan A", "email_verified": true, "phone_verified": false}	email	2025-07-30 00:50:24.374207+00	2025-07-30 00:50:24.374262+00	2025-07-30 00:50:24.374262+00	31cc2227-2bf8-48a5-8e51-f321b0e83b33
3c278e9e-7ca6-4d16-bf51-1343d7347f81	3c278e9e-7ca6-4d16-bf51-1343d7347f81	{"sub": "3c278e9e-7ca6-4d16-bf51-1343d7347f81", "email": "proppekeppoillau-3591@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-07-30 20:23:45.50592+00	2025-07-30 20:23:45.507124+00	2025-07-30 20:23:45.507124+00	2406ac1d-7266-48a8-9cdf-8cdbd75ef1cb
ed716103-7c30-47f8-9d88-0a3188b9b43d	ed716103-7c30-47f8-9d88-0a3188b9b43d	{"sub": "ed716103-7c30-47f8-9d88-0a3188b9b43d", "email": "libros123@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-07-30 22:02:23.797347+00	2025-07-30 22:02:23.797406+00	2025-07-30 22:02:23.797406+00	3839cb95-b107-4bb1-960f-5cb613b89b62
167c2ee3-4bea-4f9f-a128-e5313b87f9a1	167c2ee3-4bea-4f9f-a128-e5313b87f9a1	{"sub": "167c2ee3-4bea-4f9f-a128-e5313b87f9a1", "email": "trepabelouweu-8256@yopmail.com", "email_verified": false, "phone_verified": false}	email	2025-08-01 19:46:13.754283+00	2025-08-01 19:46:13.754329+00	2025-08-01 19:46:13.754329+00	8049d34d-09d1-4b2f-ac26-2329c7b2a81e
3e965a3e-9729-4a41-96e7-724c0763edd0	3e965a3e-9729-4a41-96e7-724c0763edd0	{"sub": "3e965a3e-9729-4a41-96e7-724c0763edd0", "email": "enrique.zepeda0017@alumnos.udg.mx", "email_verified": true, "phone_verified": false}	email	2025-08-01 20:35:18.917663+00	2025-08-01 20:35:18.91771+00	2025-08-01 20:35:18.91771+00	eca2faf2-22f2-4d87-a028-0dbb593d7fa6
ccf47ff3-abec-4672-8208-e78e1b90258f	ccf47ff3-abec-4672-8208-e78e1b90258f	{"sub": "ccf47ff3-abec-4672-8208-e78e1b90258f", "email": "nefeumewauhe-6084@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-02 00:52:59.951716+00	2025-08-02 00:52:59.95176+00	2025-08-02 00:52:59.95176+00	7d8985bc-46c2-40c5-8dde-df6559382aab
c8e13e66-d8d1-48c0-aab4-1de1ef5c3309	c8e13e66-d8d1-48c0-aab4-1de1ef5c3309	{"sub": "c8e13e66-d8d1-48c0-aab4-1de1ef5c3309", "email": "ceicrecefromi-9084@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-02 01:19:39.115667+00	2025-08-02 01:19:39.115713+00	2025-08-02 01:19:39.115713+00	0918ad22-ec20-439d-b11b-060e58e9cbde
bf9f3a06-afbe-4031-b3ed-86d08af7f87b	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	{"sub": "bf9f3a06-afbe-4031-b3ed-86d08af7f87b", "email": "meyibaprallou-7095@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-02 01:32:12.085384+00	2025-08-02 01:32:12.08543+00	2025-08-02 01:32:12.08543+00	2233c5c3-b2d7-428a-8679-b42d65022d68
3c23b75b-4db9-487d-a148-6b30523ce237	3c23b75b-4db9-487d-a148-6b30523ce237	{"sub": "3c23b75b-4db9-487d-a148-6b30523ce237", "email": "lemmakaxebre-8624@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-02 17:02:02.582558+00	2025-08-02 17:02:02.582609+00	2025-08-02 17:02:02.582609+00	24ca96b3-99b5-4f4e-8d93-ed051da17dac
23605b07-3d7c-459e-94b8-1f6a0c7933ed	23605b07-3d7c-459e-94b8-1f6a0c7933ed	{"sub": "23605b07-3d7c-459e-94b8-1f6a0c7933ed", "email": "joutteleisopre-3760@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-03 02:12:19.091846+00	2025-08-03 02:12:19.091899+00	2025-08-03 02:12:19.091899+00	f476dcf4-d0b7-4b9d-86a0-4c97ad1cd512
d77e141b-738c-4494-82df-4fc479544e1e	d77e141b-738c-4494-82df-4fc479544e1e	{"sub": "d77e141b-738c-4494-82df-4fc479544e1e", "email": "zeffefrippazo-9670@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-05 15:40:39.103844+00	2025-08-05 15:40:39.103912+00	2025-08-05 15:40:39.103912+00	39368d7e-0145-4440-943e-2287e0909331
a37ae595-5ee2-43ae-90bb-fa08a900fa74	a37ae595-5ee2-43ae-90bb-fa08a900fa74	{"sub": "a37ae595-5ee2-43ae-90bb-fa08a900fa74", "email": "joleullouttuffe-7455@yopmail.com", "email_verified": false, "phone_verified": false}	email	2025-08-05 15:42:08.501267+00	2025-08-05 15:42:08.501314+00	2025-08-05 15:42:08.501314+00	12443ab7-956b-430a-8255-67f1af9efb5c
09ff1a6d-48d3-4dbf-814e-5229c6549e86	09ff1a6d-48d3-4dbf-814e-5229c6549e86	{"sub": "09ff1a6d-48d3-4dbf-814e-5229c6549e86", "email": "trajafigosso-7741@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-07 00:59:14.303803+00	2025-08-07 00:59:14.303854+00	2025-08-07 00:59:14.303854+00	61e012bb-a155-4e9a-bf47-6ab49863a36c
e1ed77f6-f4ee-4ab0-8755-66c0a763dc62	e1ed77f6-f4ee-4ab0-8755-66c0a763dc62	{"sub": "e1ed77f6-f4ee-4ab0-8755-66c0a763dc62", "email": "naucrefafeddi-5710@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-22 18:32:46.339647+00	2025-08-22 18:32:46.339699+00	2025-08-22 18:32:46.339699+00	13e5d358-a337-4f0c-9438-39a61e618efa
1166241f-43ab-44b4-8b44-94394e4a197a	1166241f-43ab-44b4-8b44-94394e4a197a	{"sub": "1166241f-43ab-44b4-8b44-94394e4a197a", "email": "cibressoyelli-1317@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-08-26 19:08:30.405197+00	2025-08-26 19:08:30.406472+00	2025-08-26 19:08:30.406472+00	a7df9381-c95f-4dc8-beda-95fe246c90b8
82eb2899-4641-4dfe-97dc-665ccb66cdf7	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{"sub": "82eb2899-4641-4dfe-97dc-665ccb66cdf7", "email": "vattatovuwe-6463@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-09-02 16:10:34.728049+00	2025-09-02 16:10:34.728123+00	2025-09-02 16:10:34.728123+00	335fe4f3-c86b-491f-8968-d4cffa65f752
ef794a04-7430-4bda-8604-b6324ea88cde	ef794a04-7430-4bda-8604-b6324ea88cde	{"sub": "ef794a04-7430-4bda-8604-b6324ea88cde", "email": "pepepecas@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-09-08 15:42:01.271019+00	2025-09-08 15:42:01.272323+00	2025-09-08 15:42:01.272323+00	0e2dba23-2743-4407-8636-d038c70aec60
d028ed7d-a831-42ed-acbf-582084cf6b7a	d028ed7d-a831-42ed-acbf-582084cf6b7a	{"sub": "d028ed7d-a831-42ed-acbf-582084cf6b7a", "email": "cosegepunu-2914@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-09-23 02:12:34.634034+00	2025-09-23 02:12:34.634096+00	2025-09-23 02:12:34.634096+00	f8fbca3e-c624-4e2d-ab1f-32e26b37408d
e334d918-2367-4b34-bf66-83a9c0b8a4aa	e334d918-2367-4b34-bf66-83a9c0b8a4aa	{"sub": "e334d918-2367-4b34-bf66-83a9c0b8a4aa", "email": "treitteubeigrizei-6265@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-09-23 13:52:02.549791+00	2025-09-23 13:52:02.549852+00	2025-09-23 13:52:02.549852+00	be4337db-c232-4f5a-a3bb-deda8862b40e
c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	{"sub": "c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9", "email": "proutippoipeuji-3523@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-09-23 14:23:29.172275+00	2025-09-23 14:23:29.172322+00	2025-09-23 14:23:29.172322+00	3a98d929-128b-446f-9ab7-7f5e91556084
db4793b9-fc50-489f-9e64-c48939606f9c	db4793b9-fc50-489f-9e64-c48939606f9c	{"sub": "db4793b9-fc50-489f-9e64-c48939606f9c", "email": "ps36516088@gmail.com", "email_verified": true, "phone_verified": false}	email	2025-09-29 00:25:06.404952+00	2025-09-29 00:25:06.405015+00	2025-09-29 00:25:06.405015+00	70f89de0-c72e-421f-8c0e-21cf0814ae73
3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	{"sub": "3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2", "email": "vaubessauttegou-1519@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-01 04:47:41.01228+00	2025-10-01 04:47:41.012332+00	2025-10-01 04:47:41.012332+00	a5c6c714-000c-4d5c-878d-dee7545f9023
3d2cea8e-64e1-4967-bec7-a3cec1ca135d	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	{"sub": "3d2cea8e-64e1-4967-bec7-a3cec1ca135d", "email": "paucreijifuza-3246@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-02 02:50:34.262613+00	2025-10-02 02:50:34.262671+00	2025-10-02 02:50:34.262671+00	27391444-ca84-433b-86a1-51368a35bd1d
eb0d5b2b-0260-4f26-a399-e7496b25c94f	eb0d5b2b-0260-4f26-a399-e7496b25c94f	{"sub": "eb0d5b2b-0260-4f26-a399-e7496b25c94f", "email": "kikeesgei@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-02 05:48:12.824168+00	2025-10-02 05:48:12.824228+00	2025-10-02 05:48:12.824228+00	362d0f8a-d39d-4e9c-824c-a4407da8407e
90cf26a8-2777-4abe-93ec-8f91db0f4737	90cf26a8-2777-4abe-93ec-8f91db0f4737	{"sub": "90cf26a8-2777-4abe-93ec-8f91db0f4737", "email": "katherinedowney961@gmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-02 06:08:07.804538+00	2025-10-02 06:08:07.804595+00	2025-10-02 06:08:07.804595+00	364040a1-4497-4157-b9c9-f20ec3760705
1695499b-b50d-4696-9127-d61a609a1c16	1695499b-b50d-4696-9127-d61a609a1c16	{"sub": "1695499b-b50d-4696-9127-d61a609a1c16", "email": "leonardosegovianozepeda@gmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-04 20:04:27.124182+00	2025-10-04 20:04:27.124231+00	2025-10-04 20:04:27.124231+00	377358c3-b916-40cd-8a53-2074034d5dcb
fed55973-b581-43dc-88aa-da37bc9ce91f	fed55973-b581-43dc-88aa-da37bc9ce91f	{"sub": "fed55973-b581-43dc-88aa-da37bc9ce91f", "email": "dacisummonneu-7057@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-21 15:43:47.03174+00	2025-10-21 15:43:47.031797+00	2025-10-21 15:43:47.031797+00	0947d7da-631f-4eed-adfa-449340fd801f
cbf8243b-9c86-4686-ac07-f3643d941068	cbf8243b-9c86-4686-ac07-f3643d941068	{"sub": "cbf8243b-9c86-4686-ac07-f3643d941068", "email": "traffattename-3581@yopmail.com", "email_verified": true, "phone_verified": false}	email	2025-10-23 16:29:23.228711+00	2025-10-23 16:29:23.228766+00	2025-10-23 16:29:23.228766+00	ccc733ef-6edd-4cc2-bc7d-45e58f8e563b
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id") FROM stdin;
b4457a70-0d50-4114-a3fe-d4d34627eb0f	c78066b4-db29-4251-9b8b-3962ad36594f	2025-07-30 00:50:39.155321+00	2025-07-30 00:50:39.155321+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36	177.245.200.254	\N	\N
3909d172-8c98-4cb4-847f-ac26e609227f	c78066b4-db29-4251-9b8b-3962ad36594f	2025-07-30 00:50:44.966242+00	2025-07-30 00:50:44.966242+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36	177.245.200.254	\N	\N
ea22d7f3-1640-47cc-aea4-906325eca875	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-02 14:56:26.568791+00	2025-10-02 14:56:26.568791+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	177.245.201.134	\N	\N
3768bc7e-26a9-44b0-ae86-b1ec86a003bc	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	2025-10-02 02:53:40.026024+00	2025-10-02 06:12:47.86699+00	\N	aal1	\N	2025-10-02 06:12:47.866918	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	187.201.188.240	\N	\N
5370ddbc-c506-4d5b-9bde-3e20189eb896	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-02 14:56:48.155498+00	2025-10-02 16:52:15.762908+00	\N	aal1	\N	2025-10-02 16:52:15.762836	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	189.192.233.36	\N	\N
b960fb45-6372-48b6-8038-5d1b164ea55e	db4793b9-fc50-489f-9e64-c48939606f9c	2025-09-29 00:25:21.61997+00	2025-09-29 00:25:21.61997+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	73.215.220.249	\N	\N
35c53a73-5a8c-41cf-95bf-f8e1338c5892	3c278e9e-7ca6-4d16-bf51-1343d7347f81	2025-09-23 00:39:57.572961+00	2025-09-23 00:39:57.572961+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	187.211.49.11	\N	\N
c07eefb6-d212-4c6d-bd77-45eb9262ac69	db4793b9-fc50-489f-9e64-c48939606f9c	2025-09-29 00:25:52.6102+00	2025-09-29 00:25:52.6102+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	73.215.220.249	\N	\N
67a4efbe-ad38-457d-8a4a-760cb862773e	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-10-30 16:02:19.679401+00	2025-10-30 17:01:02.775693+00	\N	aal1	\N	2025-10-30 17:01:02.775599	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	187.201.58.191	\N	\N
59a471b9-424b-4b62-80f6-f8accd5a56f7	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 23:20:33.596757+00	2025-10-02 23:20:33.596757+00	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_12 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Mobile/15E148 Safari/604.1	189.203.97.120	\N	\N
9b3eb3c5-7005-49b9-9609-8fe066e9932f	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-02 17:01:12.15897+00	2025-10-03 01:12:40.170491+00	\N	aal1	\N	2025-10-03 01:12:40.170409	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	187.201.96.191	\N	\N
05de6fbf-faa9-4d63-a0bb-c11d8bb08959	1695499b-b50d-4696-9127-d61a609a1c16	2025-10-04 20:04:58.857786+00	2025-10-04 20:04:58.857786+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	187.201.230.70	\N	\N
52e6cd6d-64e9-4b01-b29d-97c69bdea017	eb0d5b2b-0260-4f26-a399-e7496b25c94f	2025-10-05 21:13:54.909484+00	2025-10-05 21:13:54.909484+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	177.245.201.134	\N	\N
2012626d-6c88-467e-96e2-bc4b9632bd07	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-05 21:15:14.373067+00	2025-11-02 01:32:37.898287+00	\N	aal1	\N	2025-11-02 01:32:37.897544	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	177.231.10.59	\N	\N
da8d592e-33bf-48e3-988e-29cccbfc0c6f	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-05 21:17:04.010515+00	2025-10-05 23:14:22.46547+00	\N	aal1	\N	2025-10-05 23:14:22.465383	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	177.245.201.134	\N	\N
0b44c364-5b4e-4acc-8302-bde9fc2289a4	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-22 18:29:23.526062+00	2025-10-22 18:29:23.526062+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	189.192.233.59	\N	\N
8bddd4fc-5c90-409f-85f8-215dffd7c2d3	1695499b-b50d-4696-9127-d61a609a1c16	2025-10-04 20:05:10.30048+00	2025-10-19 02:30:10.633787+00	\N	aal1	\N	2025-10-19 02:30:10.633694	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	187.201.56.208	\N	\N
dbebb88e-3b0f-4dc0-9930-5250bfdca1ab	cbf8243b-9c86-4686-ac07-f3643d941068	2025-10-23 16:30:36.970386+00	2025-10-23 16:30:36.970386+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	187.201.139.103	\N	\N
e13dda12-7a21-4e19-913d-faa5e39ec096	cbf8243b-9c86-4686-ac07-f3643d941068	2025-10-23 16:30:56.592686+00	2025-10-23 16:30:56.592686+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	187.201.139.103	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
b4457a70-0d50-4114-a3fe-d4d34627eb0f	2025-07-30 00:50:39.182177+00	2025-07-30 00:50:39.182177+00	otp	d77398aa-d3cf-4338-b615-d1d5b2dea1ea
3909d172-8c98-4cb4-847f-ac26e609227f	2025-07-30 00:50:44.970023+00	2025-07-30 00:50:44.970023+00	password	5232a181-ad8a-4aeb-9255-77a81d14e785
ea22d7f3-1640-47cc-aea4-906325eca875	2025-10-02 14:56:26.574156+00	2025-10-02 14:56:26.574156+00	otp	3d97ed97-0f88-4ce8-ae32-f40c599074bc
5370ddbc-c506-4d5b-9bde-3e20189eb896	2025-10-02 14:56:48.157316+00	2025-10-02 14:56:48.157316+00	password	b16b5232-5521-40ea-8785-ea609f39cab8
9b3eb3c5-7005-49b9-9609-8fe066e9932f	2025-10-02 17:01:12.165194+00	2025-10-02 17:01:12.165194+00	password	04c29d21-f481-4108-83b3-f758a209f540
59a471b9-424b-4b62-80f6-f8accd5a56f7	2025-10-02 23:20:33.638622+00	2025-10-02 23:20:33.638622+00	password	ce89a9db-59f9-4b5d-8012-f8cea3267c95
05de6fbf-faa9-4d63-a0bb-c11d8bb08959	2025-10-04 20:04:58.89523+00	2025-10-04 20:04:58.89523+00	otp	5319f0a3-a1bc-4b8f-8034-a2578780f924
8bddd4fc-5c90-409f-85f8-215dffd7c2d3	2025-10-04 20:05:10.303683+00	2025-10-04 20:05:10.303683+00	password	171ef983-758d-4466-97c2-73bd11b72fea
52e6cd6d-64e9-4b01-b29d-97c69bdea017	2025-10-05 21:13:54.921641+00	2025-10-05 21:13:54.921641+00	otp	92586019-6eac-4a33-8c4e-88db464d8da1
2012626d-6c88-467e-96e2-bc4b9632bd07	2025-10-05 21:15:14.379368+00	2025-10-05 21:15:14.379368+00	password	52f076c4-3eb9-4e97-b94c-e8ef4386a50b
da8d592e-33bf-48e3-988e-29cccbfc0c6f	2025-10-05 21:17:04.015017+00	2025-10-05 21:17:04.015017+00	password	96f27be9-0e94-48bf-afe8-e8ede4ea9351
35c53a73-5a8c-41cf-95bf-f8e1338c5892	2025-09-23 00:39:57.59047+00	2025-09-23 00:39:57.59047+00	password	66b4470e-dbd5-400a-957a-dc8b81574478
0b44c364-5b4e-4acc-8302-bde9fc2289a4	2025-10-22 18:29:23.611285+00	2025-10-22 18:29:23.611285+00	password	96c37760-2bbe-46ac-abf5-c63f346dfbaf
dbebb88e-3b0f-4dc0-9930-5250bfdca1ab	2025-10-23 16:30:36.988843+00	2025-10-23 16:30:36.988843+00	otp	b7229a1f-bdd9-4e1c-8369-be130868cfeb
e13dda12-7a21-4e19-913d-faa5e39ec096	2025-10-23 16:30:56.595276+00	2025-10-23 16:30:56.595276+00	password	210b10d7-5aaa-4bdb-bb44-8d4df17b53db
67a4efbe-ad38-457d-8a4a-760cb862773e	2025-10-30 16:02:19.715085+00	2025-10-30 16:02:19.715085+00	password	b7dda6e6-d33c-474c-aca2-ce0c9718b83e
b960fb45-6372-48b6-8038-5d1b164ea55e	2025-09-29 00:25:21.64166+00	2025-09-29 00:25:21.64166+00	otp	7cf09f3e-5259-48ff-97ed-e50313d09008
c07eefb6-d212-4c6d-bd77-45eb9262ac69	2025-09-29 00:25:52.614243+00	2025-09-29 00:25:52.614243+00	password	eaffcc96-ce26-4a28-8416-ca59544a888e
3768bc7e-26a9-44b0-ae86-b1ec86a003bc	2025-10-02 02:53:40.036257+00	2025-10-02 02:53:40.036257+00	password	1994cf08-dbb0-42ea-9746-f025e6d21586
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
29786a51-ceeb-4fdd-a82a-749a48932eb3	167c2ee3-4bea-4f9f-a128-e5313b87f9a1	confirmation_token	28492a67ef1533f4538c07c146e12b9a6622ae18a698bc177224a103	trepabelouweu-8256@yopmail.com	2025-08-01 19:46:14.24659	2025-08-01 19:46:14.24659
a0ea6ee6-fb7d-4696-aaee-95f002f39543	a37ae595-5ee2-43ae-90bb-fa08a900fa74	confirmation_token	6460254af351153789c9e90dde6654d232b5f5362c45afd8c74dede5	joleullouttuffe-7455@yopmail.com	2025-08-05 15:42:08.892152	2025-08-05 15:42:08.892152
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	1	eo3e3ehenlog	c78066b4-db29-4251-9b8b-3962ad36594f	f	2025-07-30 00:50:39.166809+00	2025-07-30 00:50:39.166809+00	\N	b4457a70-0d50-4114-a3fe-d4d34627eb0f
00000000-0000-0000-0000-000000000000	2	74bfn7xz5s2j	c78066b4-db29-4251-9b8b-3962ad36594f	f	2025-07-30 00:50:44.968143+00	2025-07-30 00:50:44.968143+00	\N	3909d172-8c98-4cb4-847f-ac26e609227f
00000000-0000-0000-0000-000000000000	546	o467fdsfazot	3e965a3e-9729-4a41-96e7-724c0763edd0	t	2025-10-02 17:01:12.162012+00	2025-10-03 01:12:40.158001+00	\N	9b3eb3c5-7005-49b9-9609-8fe066e9932f
00000000-0000-0000-0000-000000000000	549	om4jl62wvfzn	3e965a3e-9729-4a41-96e7-724c0763edd0	f	2025-10-03 01:12:40.163714+00	2025-10-03 01:12:40.163714+00	o467fdsfazot	9b3eb3c5-7005-49b9-9609-8fe066e9932f
00000000-0000-0000-0000-000000000000	556	d6bdgirkhp3v	ef794a04-7430-4bda-8604-b6324ea88cde	f	2025-10-05 23:14:22.45371+00	2025-10-05 23:14:22.45371+00	qgdhdibbc4v7	da8d592e-33bf-48e3-988e-29cccbfc0c6f
00000000-0000-0000-0000-000000000000	553	ucofq6e6fghf	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-10-05 21:15:14.374612+00	2025-10-05 23:38:24.103908+00	\N	2012626d-6c88-467e-96e2-bc4b9632bd07
00000000-0000-0000-0000-000000000000	559	ypdbwfujtjlc	1695499b-b50d-4696-9127-d61a609a1c16	f	2025-10-19 02:30:10.606341+00	2025-10-19 02:30:10.606341+00	uik6sz7vrqiw	8bddd4fc-5c90-409f-85f8-215dffd7c2d3
00000000-0000-0000-0000-000000000000	567	3zr4gfepwjdr	ef794a04-7430-4bda-8604-b6324ea88cde	f	2025-10-22 18:29:23.566903+00	2025-10-22 18:29:23.566903+00	\N	0b44c364-5b4e-4acc-8302-bde9fc2289a4
00000000-0000-0000-0000-000000000000	570	d4id3crniiwf	cbf8243b-9c86-4686-ac07-f3643d941068	f	2025-10-23 16:30:36.981086+00	2025-10-23 16:30:36.981086+00	\N	dbebb88e-3b0f-4dc0-9930-5250bfdca1ab
00000000-0000-0000-0000-000000000000	277	rpmzz2obt4ck	3c278e9e-7ca6-4d16-bf51-1343d7347f81	f	2025-09-23 00:39:57.578986+00	2025-09-23 00:39:57.578986+00	\N	35c53a73-5a8c-41cf-95bf-f8e1338c5892
00000000-0000-0000-0000-000000000000	571	ya3z45t5odlr	cbf8243b-9c86-4686-ac07-f3643d941068	f	2025-10-23 16:30:56.594112+00	2025-10-23 16:30:56.594112+00	\N	e13dda12-7a21-4e19-913d-faa5e39ec096
00000000-0000-0000-0000-000000000000	583	u7q7cx4i42d6	82eb2899-4641-4dfe-97dc-665ccb66cdf7	f	2025-10-30 17:01:02.744158+00	2025-10-30 17:01:02.744158+00	i5nxfgaupgig	67a4efbe-ad38-457d-8a4a-760cb862773e
00000000-0000-0000-0000-000000000000	377	bmowfdo5dnye	db4793b9-fc50-489f-9e64-c48939606f9c	f	2025-09-29 00:25:21.630157+00	2025-09-29 00:25:21.630157+00	\N	b960fb45-6372-48b6-8038-5d1b164ea55e
00000000-0000-0000-0000-000000000000	378	lcebdraj6mbl	db4793b9-fc50-489f-9e64-c48939606f9c	f	2025-09-29 00:25:52.611622+00	2025-09-29 00:25:52.611622+00	\N	c07eefb6-d212-4c6d-bd77-45eb9262ac69
00000000-0000-0000-0000-000000000000	541	o66xpdtcl4xo	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-10-02 14:56:48.156203+00	2025-10-02 16:52:15.755528+00	\N	5370ddbc-c506-4d5b-9bde-3e20189eb896
00000000-0000-0000-0000-000000000000	550	nkvbadtfvl64	1695499b-b50d-4696-9127-d61a609a1c16	f	2025-10-04 20:04:58.873103+00	2025-10-04 20:04:58.873103+00	\N	05de6fbf-faa9-4d63-a0bb-c11d8bb08959
00000000-0000-0000-0000-000000000000	554	ko7lhcmlxvez	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-10-05 21:17:04.011569+00	2025-10-05 22:16:07.613588+00	\N	da8d592e-33bf-48e3-988e-29cccbfc0c6f
00000000-0000-0000-0000-000000000000	557	rtrj4p6dnb7i	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-10-05 23:38:24.105941+00	2025-10-11 23:32:06.446639+00	ucofq6e6fghf	2012626d-6c88-467e-96e2-bc4b9632bd07
00000000-0000-0000-0000-000000000000	551	uik6sz7vrqiw	1695499b-b50d-4696-9127-d61a609a1c16	t	2025-10-04 20:05:10.301203+00	2025-10-19 02:30:10.592608+00	\N	8bddd4fc-5c90-409f-85f8-215dffd7c2d3
00000000-0000-0000-0000-000000000000	529	vnpskv4hieva	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	f	2025-10-02 06:12:47.863619+00	2025-10-02 06:12:47.863619+00	kufjxiix4lrv	3768bc7e-26a9-44b0-ae86-b1ec86a003bc
00000000-0000-0000-0000-000000000000	540	cnmvf535s7c4	ef794a04-7430-4bda-8604-b6324ea88cde	f	2025-10-02 14:56:26.570152+00	2025-10-02 14:56:26.570152+00	\N	ea22d7f3-1640-47cc-aea4-906325eca875
00000000-0000-0000-0000-000000000000	584	2k4zfuzkglag	ef794a04-7430-4bda-8604-b6324ea88cde	f	2025-11-02 01:32:37.864001+00	2025-11-02 01:32:37.864001+00	k5qoq4dnancw	2012626d-6c88-467e-96e2-bc4b9632bd07
00000000-0000-0000-0000-000000000000	544	gvmwv6jij6ah	ef794a04-7430-4bda-8604-b6324ea88cde	f	2025-10-02 16:52:15.758615+00	2025-10-02 16:52:15.758615+00	o66xpdtcl4xo	5370ddbc-c506-4d5b-9bde-3e20189eb896
00000000-0000-0000-0000-000000000000	513	kufjxiix4lrv	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	t	2025-10-02 04:52:50.486111+00	2025-10-02 06:12:47.858615+00	sd77yi7hdld3	3768bc7e-26a9-44b0-ae86-b1ec86a003bc
00000000-0000-0000-0000-000000000000	548	43lvzvy7axfb	90cf26a8-2777-4abe-93ec-8f91db0f4737	f	2025-10-02 23:20:33.607838+00	2025-10-02 23:20:33.607838+00	\N	59a471b9-424b-4b62-80f6-f8accd5a56f7
00000000-0000-0000-0000-000000000000	552	7mbrokck7vn7	eb0d5b2b-0260-4f26-a399-e7496b25c94f	f	2025-10-05 21:13:54.915094+00	2025-10-05 21:13:54.915094+00	\N	52e6cd6d-64e9-4b01-b29d-97c69bdea017
00000000-0000-0000-0000-000000000000	555	qgdhdibbc4v7	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-10-05 22:16:07.622575+00	2025-10-05 23:14:22.444764+00	ko7lhcmlxvez	da8d592e-33bf-48e3-988e-29cccbfc0c6f
00000000-0000-0000-0000-000000000000	582	i5nxfgaupgig	82eb2899-4641-4dfe-97dc-665ccb66cdf7	t	2025-10-30 16:02:19.697134+00	2025-10-30 17:01:02.727165+00	\N	67a4efbe-ad38-457d-8a4a-760cb862773e
00000000-0000-0000-0000-000000000000	558	k5qoq4dnancw	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-10-11 23:32:06.473946+00	2025-11-02 01:32:37.836993+00	rtrj4p6dnb7i	2012626d-6c88-467e-96e2-bc4b9632bd07
00000000-0000-0000-0000-000000000000	507	g3ahz5witvj3	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	t	2025-10-02 02:53:40.029601+00	2025-10-02 03:53:04.029425+00	\N	3768bc7e-26a9-44b0-ae86-b1ec86a003bc
00000000-0000-0000-0000-000000000000	510	sd77yi7hdld3	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	t	2025-10-02 03:53:04.03294+00	2025-10-02 04:52:50.47931+00	g3ahz5witvj3	3768bc7e-26a9-44b0-ae86-b1ec86a003bc
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: Usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Usuarios" ("id_usuario", "nombre", "correo", "contraseña", "edad", "peso", "altura", "nivel_experiencia", "objetivo", "fecha_registro", "auth_uid", "username", "sexo", "url_avatar", "updated_at") FROM stdin;
8	\N	saibor.p.ly@hotmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	c78066b4-db29-4251-9b8b-3962ad36594f	\N	\N	\N	2025-09-24 03:20:33.472641+00
11	\N	trepabelouweu-8256@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	167c2ee3-4bea-4f9f-a128-e5313b87f9a1	\N	\N	\N	2025-09-24 03:20:33.472641+00
5	\N	ceicrecefromi-9084@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	c8e13e66-d8d1-48c0-aab4-1de1ef5c3309	\N	\N	\N	2025-09-24 03:20:33.472641+00
12	\N	joleullouttuffe-7455@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	a37ae595-5ee2-43ae-90bb-fa08a900fa74	\N	\N	\N	2025-09-24 03:20:33.472641+00
2	\N	joutteleisopre-3760@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	23605b07-3d7c-459e-94b8-1f6a0c7933ed	\N	\N	\N	2025-09-24 03:20:33.472641+00
7	\N	naucrefafeddi-5710@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	e1ed77f6-f4ee-4ab0-8755-66c0a763dc62	\N	\N	\N	2025-09-24 03:20:33.472641+00
6	Melson	proppekeppoillau-3591@yopmail.com	auth_managed	22	60.00	180.00	intermedio	hipertrofia	2025-08-26	3c278e9e-7ca6-4d16-bf51-1343d7347f81	mel	\N	\N	2025-09-24 03:20:33.472641+00
14	Julio Sama	zeffefrippazo-9670@yopmail.com	auth_managed	25	89.00	180.00	principiante	hipertrofia	2025-08-26	d77e141b-738c-4494-82df-4fc479544e1e	mel1	\N	\N	2025-09-24 03:20:33.472641+00
1	fasfas	nefeumewauhe-6084@yopmail.com	auth_managed	78	44.00	234.00	principiante	fuerza	2025-08-26	ccf47ff3-abec-4672-8208-e78e1b90258f	aaa	\N	\N	2025-09-24 03:20:33.472641+00
4	dasda	lemmakaxebre-8624@yopmail.com	auth_managed	23	55.00	156.00	intermedio	fuerza	2025-08-26	3c23b75b-4db9-487d-a148-6b30523ce237	saaaaa	masculino	\N	2025-09-24 03:20:33.472641+00
29	consegi	cosegepunu-2914@yopmail.com	auth_managed	18	68.00	170.00	principiante	fuerza	2025-09-23	d028ed7d-a831-42ed-acbf-582084cf6b7a	cosegepunu	masculino	\N	2025-09-24 03:20:33.472641+00
30	treitteu beigrizei	treitteubeigrizei-6265@yopmail.com	auth_managed	44	90.00	189.00	principiante	hipertrofia	2025-09-23	e334d918-2367-4b34-bf66-83a9c0b8a4aa	treitteubeigrizei	masculino	\N	2025-09-24 03:20:33.472641+00
31	prouti ppoipeuji	proutippoipeuji-3523@yopmail.com	auth_managed	44	44.00	190.00	intermedio	hipertrofia	2025-09-23	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	prouti	masculino	\N	2025-09-24 03:20:33.472641+00
3	Julio Sam	meyibaprallou-7095@yopmail.com	auth_managed	18	56.00	173.00	principiante	fuerza	2025-08-26	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	julione	masculino	\N	2025-09-24 03:20:33.472641+00
15	siuwi	cibressoyelli-1317@yopmail.com	auth_managed	18	80.00	173.00	avanzado	resistencia	2025-08-26	1166241f-43ab-44b4-8b44-94394e4a197a	siuu	masculino	\N	2025-09-24 03:20:33.472641+00
37	Leonardo Israel Segoviano Zepeda	leonardosegovianozepeda@gmail.com	auth_managed	17	60.50	172.00	principiante	resistencia	2025-10-04	1695499b-b50d-4696-9127-d61a609a1c16	leo_zep	masculino	\N	2025-10-04 20:06:03.592899+00
9	Enrique Zepeda	trajafigosso-7741@yopmail.com	auth_managed	25	70.00	175.00	intermedio	hipertrofia	2025-08-26	09ff1a6d-48d3-4dbf-814e-5229c6549e86	kike	masculino	https://movrcfahsutfqsjjchij.supabase.co/storage/v1/object/public/avatars/09ff1a6d-48d3-4dbf-814e-5229c6549e86/avatar_1758894236053.jpg	2025-09-27 23:50:17.741+00
20	Juana de Arco	pepepecas@yopmail.com	auth_managed	22	200.10	179.00	intermedio	hipertrofia	2025-09-08	ef794a04-7430-4bda-8604-b6324ea88cde	elmono1	masculino	\N	2025-10-05 22:39:47.179+00
13	Enrique Zepeda	enrique.zepeda0017@alumnos.udg.mx	auth_managed	22	76.00	177.00	intermedio	hipertrofia	2025-08-26	3e965a3e-9729-4a41-96e7-724c0763edd0	enrique_zepeda	masculino	https://movrcfahsutfqsjjchij.supabase.co/storage/v1/object/public/avatars/3e965a3e-9729-4a41-96e7-724c0763edd0/avatar_1759072207398.jpg	2025-10-02 01:38:45.018+00
38	prueba	dacisummonneu-7057@yopmail.com	auth_managed	22	80.50	173.00	intermedio	hipertrofia	2025-10-21	fed55973-b581-43dc-88aa-da37bc9ce91f	prueba123	masculino	\N	2025-10-21 15:46:19.640179+00
32	Edgar Jara	ps36516088@gmail.com	auth_managed	23	106.00	172.00	principiante	hipertrofia	2025-09-29	db4793b9-fc50-489f-9e64-c48939606f9c	dronorewa	masculino	\N	2025-09-29 00:26:45.620199+00
10	Pechamen Alto	libros123@yopmail.com	auth_managed	98	32.00	122.00	avanzado	resistencia	2025-08-26	ed716103-7c30-47f8-9d88-0a3188b9b43d	usuario3	femenino	\N	2025-09-24 03:20:33.472641+00
34	Kike Zepeda	paucreijifuza-3246@yopmail.com	auth_managed	22	80.00	174.00	avanzado	fuerza	2025-10-02	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	kike1	masculino	\N	2025-10-02 02:55:51.119687+00
33	Pecas Martinez	vaubessauttegou-1519@yopmail.com	auth_managed	26	155.00	123.00	intermedio	resistencia	2025-10-01	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	elpecas1	masculino	https://movrcfahsutfqsjjchij.supabase.co/storage/v1/object/public/avatars/3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2/avatar_1759297500676.png	2025-10-01 05:45:07.025+00
35	Kike Es Gei	kikeesgei@yopmail.com	auth_managed	20	89.00	164.00	avanzado	fuerza	2025-10-02	eb0d5b2b-0260-4f26-a399-e7496b25c94f	kikegei1	femenino	\N	2025-10-02 05:49:36.42447+00
19	Alondra Tonantzi Villaseñor Garcia	vattatovuwe-6463@yopmail.com	auth_managed	24	55.00	156.00	intermedio	resistencia	2025-09-02	82eb2899-4641-4dfe-97dc-665ccb66cdf7	toni777	femenino	https://movrcfahsutfqsjjchij.supabase.co/storage/v1/object/public/avatars/82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758685514777.jpg	2025-10-30 16:08:03.467+00
36	Catherine Nicole Garcia Arredondo	katherinedowney961@gmail.com	auth_managed	21	59.90	163.00	intermedio	hipertrofia	2025-10-02	90cf26a8-2777-4abe-93ec-8f91db0f4737	_cath707_	femenino	https://movrcfahsutfqsjjchij.supabase.co/storage/v1/object/public/avatars/90cf26a8-2777-4abe-93ec-8f91db0f4737/avatar_1759386046450.png	2025-10-02 06:20:53.673+00
\.


--
-- Data for Name: Amigos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Amigos" ("id_usuario1", "id_usuario2") FROM stdin;
9	19
13	19
9	32
9	13
13	33
20	33
35	36
13	20
\.


--
-- Data for Name: Ejercicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Ejercicios" ("id", "nombre", "grupo_muscular", "descripcion", "equipamento", "dificultad", "musculos_involucrados", "ejemplo") FROM stdin;
1	Press Banca con Barra	Pecho	Tumbado sobre un banco horizontal, los brazos estirados verticalmente, agarramos la barra con las manos en pronación un poco más abiertas de la anchura de los hombros. El movimiento consiste en bajar la barra hasta el pecho, sin descansar abajo, y luego subir hasta la posición inicial. La inspiración se hace durante el descenso, la expiración durante el ascenso.	Banco Plano, Barra Larga	Principiante	Tríceps, Pectoral	https://fitcron.com/wp-content/uploads/2021/03/00251301-Barbell-Bench-Press_Chest-FIX_720.gif
2	Press Banca con Mancuernas	Pecho	Túmbate de espaldas en el banco plano y coge las mancuernas con agarre en pronación (palmas hacia los pies), directamente sobre los hombros con los brazos totalmente extendidos. Las mancuernas no deben estar en contacto, si no una sobre cada pectoral. Junta los omóplatos y saca pecho ligeramente. Baja las mancuernas a ambos lados del pecho. Haz una pausa sin relajar y luego lleva las mancuernas a la posición inicial.	Banco Plano, Mancuernas	Principiante	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/02891301-Dumbbell-Bench-Press_Chest_720.gif
6	Press Frontal en Máquina	Pecho	Sentado en la máquina de press frontal, con el respaldo en vertical, ponemos las manos en pronación (palmas hacia el suelo) a una anchura un poco superior a la de los hombros. Estiramos los brazos y volvemos a la posición inicial con un movimiento controlado.	Máquina	Principiante	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/22771301-Lever-Chest-Press-VERSION-4_Chest_720.gif
7	Jalón en Pronación en Polea Alta	Espalda	Sentado de cara a la polea con la espalda recta, estira los brazos hacia arriba y coge la barra con las manos a la anchura de los hombros y las manos hacia delante.\nFlexiona los brazos llevando los codos a los costados y bajando la barra al pecho. Estira de nuevo de forma controlada.	Banco Plano, Polea	Principiante	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/01981301-Cable-Pulldown_Back_720.gif
8	Jalón en Supinación en Polea Alta	Espalda	Sentado de cara a la polea con la espalda recta, estira los brazos hacia arriba y coge la barra con las manos a la anchura de los hombros y las manos hacia atrás.\nFlexiona los brazos llevando los codos a los costados y bajando la barra hasta el pecho. Estira de nuevo de forma controlada.	Banco Plano, Polea	Principiante	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/02081301-Cable-Reverse-grip-Straight-Back-Seated-High-Row_Back_720.gif
10	Extensión de Cuádriceps en Máquina	Pierna	Sentado en la máquina con los tobillos tras el rodillo, extiende las piernas hacia delante estirando las rodillas completamente. Desciende sin descansar abajo.	Máquina	Principiante	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/05851301-Lever-Leg-Extension_Thighs_720.gif
11	Curl Femoral Horizontal en Máquina	Pierna	Tumbado hacia abajo en el banco de la máquina, con las rodillas libres y la parte trasera de los tobillos en el rodillo. Flexiona las rodillas hacia atrás 90°, manteniendo inmóvil la parte alta de la pierna, sin levantar los glúteos. Vuelve de forma controlada sin relajar el músculo.	Máquina	Principiante	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/05861301-Lever-Lying-Leg-Curl_Thighs_720.gif
12	Sentadilla en Máquina	Pierna	De pie con los pies a la anchura de los hombros y con la espalda recta agáchate flexionando las rodillas. Coge un agarre con cada mano con las palmas hacia el interior. Sube estirando las piernas y apretando glúteos arriba. Desciende lentamente sin descansar abajo.	Máquina	Principiante	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/05781301-Lever-Deadlift-plate-loaded_Thighs_720.gif
13	Elevaciones Laterales Neutras con Mancuernas	Hombro	De pie con la espalda recta y las piernas ligeramente separadas, agarra una mancuerna en cada mano con las palmas hacia el cuerpo.\nSin balanceo ni impulso, eleva las pesas hacia el lateral y flexiona ligeramente los codos, hasta que los brazos queden paralelos al suelo y las manos mirando hacia abajo. Aprieta los hombros y aguanta durante uno o dos segundos. Desciende de forma controlada sin descansar abajo.	Mancuernas	Principiante	Trapecio, Deltoides	https://fitcron.com/wp-content/uploads/2021/04/03341301-Dumbbell-Lateral-Raise_shoulder-AFIX_720.gif
15	Elevaciones Laterales en Máquina	Hombro	Con la espalda recta coge un agarre con cada mano y sin balanceo ni impulso, eleva los soportes hacia el lateral y flexiona ligeramente los codos, hasta que los brazos queden paralelos al suelo y las manos mirando hacia abajo. Aprieta los hombros y aguanta durante uno o dos segundos. Desciende de forma controlada sin descansar abajo.	Máquina	Principiante	Trapecio, Deltoides	https://fitcron.com/wp-content/uploads/2021/04/33431301-Lever-Lateral-Raise-VERSION-2_Shoulders_720.gif
16	Crunch Inferior con Rodillas Flexionadas	Abdomen	Acuéstate boca arriba con los brazos extendidos a los lados del cuerpo y las palmas hacia abajo. Mantén las piernas estiradas y los pies juntos. Contrae los músculos abdominales y glúteos mientras levantas lentamente las piernas hacia arriba, flexionando las rodillas hasta que tus muslos estén a 90 grados del torso. Asegúrate de mantener la parte baja de la espalda en contacto con el suelo en todo momento para evitar arquearla. Este ejercicio es excelente para fortalecer los músculos abdominales inferiores y mejorar la estabilidad del núcleo.	Ninguno	Principiante	Abdomen, Oblicuos	https://fitcron.com/wp-content/uploads/2024/05/01381301-Bottoms-Up-m_waist_720.gif
17	Crunch Lateral de pie en Polea Alta	Abdomen	De pie situado al lado de la polea alta, coge el agarre con una mano y ponla a la altura de la cabeza, con el brazo flexionado hacia arriba al lado del cuerpo. Encoge el torso lateralmente hacia el lado de la polea mediante la contracción de los abdominales oblicuos, sin tirar del brazo. Al terminar la serie cambia de lado.	Polea	Principiante	Abdomen, Oblicuos	https://fitcron.com/wp-content/uploads/2021/04/02231301-Cable-Side-Crunch_Waist_720.gif
14	Encogimientos Delanteros con Barra	Hombro	De pie con las piernas ligeramente separadas y la espalda recta, coge una barra por delante del cuerpo con las manos en pronación (palmas hacia atrás) a una anchura algo superior a la de los hombros. Encoge los hombros sin flexionar los brazos, subiendo y bajando el peso exclusivamente con el trapecio.	Barra Larga	Principiante	Trapecio, Deltoides	https://fitcron.com/wp-content/uploads/2021/04/00951301-Barbell-Shrug_Back_720.gif
18	Extensión Vertical en Pronación en Polea Alta	Tríceps	De pie con las piernas ligeramente separadas y la espalda recta de cara a la polea, coge la barra en pronación (palmas hacia abajo) y estira los brazos hacia abajo. Sube flexionando los codos de forma controlada sin llegar a relajar y vuelve a estirar.	Polea	Principiante	Tríceps, Antebrazo	https://fitcron.com/wp-content/uploads/2021/04/02411301-Cable-Triceps-Pushdown-V-bar-attachment_Upper-Arms_720.gif
56	Elevación de rodillas con apoyo	Todos	La forma eficiente de hacer este ejercicio es elevando las rodillas constantemente sobre la altura de la cadera, manteniendo el torso recto con los brazos apoyados en una pared.	Ninguno	Principiante	Todos	https://fitcron.com/wp-content/uploads/2021/03/36361301-High-Knee-against-wall_Cardio_720.gif
19	Patadas Traseras con Mancuernas	Tríceps	De pie, cogemos una mancuerna con una mano. La palma debe estar enfocada hacia el cuerpo. Inclinamos el cuerpo hacia delante de forma que quede casi paralelo al suelo. Podemos apoyar sobre un banco la rodilla y el brazo opuestos al lado que vamos a trabajar. El brazo debe estar cerca del cuerpo y también paralelo al suelo. Debemos de formar un ángulo recto entre el antebrazo y la parte superior del brazo.\nEmpieza el movimiento inspirando y utilizando el tríceps para levantar la mancuerna hasta que el brazo quede completamente extendido. Céntrate en mover el antebrazo. Luego, párate un poco antes de descender, expulsa el aire y empieza a bajar la mancuerna hacia la posición inicial de forma controlada.	Mancuernas	Principiante	Tríceps, Antebrazo	https://fitcron.com/wp-content/uploads/2021/04/03331301-Dumbbell-Kickback_Upper-Arms_720.gif
20	Fondos en banco	Tríceps	Coloca las manos encima del banco, plataforma o silla a la anchura de los hombros. Los pies hacia adelante en el suelo y separados a la anchura de la cadera.\nEmpieza el movimiento inspirando y flexionando los codos para descender la parte superior del cuerpo hacia el suelo, intentando llegar con los brazos a un ángulo recto de 90º. La espalda tiene que estar siempre cerca del banco.\nMantén los codos lo más cerca posible del cuerpo y flexionados hacia atrás. De esta manera evitarás que se desplacen y trabajarás solo el tríceps. De lo contrario, también estarías involucrando los hombros en el ejercicio.\nPara regresar a la posición inicial exhala y mientras asciendes coloca los brazos rectos.	Ninguno	Principiante	Tríceps, Antebrazo	https://fitcron.com/wp-content/uploads/2021/03/13991301-Bench-dip-on-floor_Upper-Arms_720.gif
21	Curl Concentrado en Supinación con Mancuerna	Bíceps	Sentado en un banco o similar, abre las piernas e inclina el cuerpo un poco hacia delante. Coge una mancuerna con la palma hacia arriba (supinación) y apoya la parte de atrás del codo en el interior del muslo. Flexiona el codo hasta llevar la mancuerna a la altura del pecho y desciende nuevamente de forma controlada.	Mancuernas	Principiante	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/02971301-Dumbbell-Concentration-Curl_Upper-Arms_720.gif
22	Curl en Martillo en Polea Baja	Bíceps	De pie con las piernas ligeramente separadas y la espalda recta, coge la cuerda con las manos a la anchura de los hombros, flexiona los codos subiendo la cuerda hasta el pecho, con los codos pegados al cuerpo. Desciende de forma controlada.	Polea	Principiante	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/01651301-Cable-Hammer-Curl-with-rope-m_Forearms_720.gif
23	Curl en Martillo en Máquina Scott	Bíceps	Sentado en la máquina Scott con el pecho apoyado, coge los agarres con las palmas de las manos enfrentadas (agarre neutro o martillo). Sube las manos flexionando los codos hasta llegar cerca de la cabeza, y desciende de forma controlada, con la parte superior de los brazos siempre bien apoyada en el banco.	Máquina	Principiante	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/16151301-Lever-Hammer-Grip-Preacher-Curl_Upper-Arms_720.gif
9	Remo Aislado con Mancuerna	Espalda	Coge una mancuerna con una mano con agarre neutro (palma hacia el interior). Inclina el cuerpo hacia delante casi paralelo al suelo. Puedes hacerlo de pie con las piernas separadas y apoyándote en algún sitio con la otra mano o sobre un banco, con la rodilla y brazo inversos al que sujeta la mancuerna apoyados sobre el banco.\nEstira el brazo hacia abajo y a continuación sube la mancuerna hasta llegar a la altura del abdomen, manteniendo el brazo pegado al cuerpo y sacando pecho al llegar arriba. Desciende lentamente y cambia de brazo al terminar la serie.	Mancuernas	Principiante	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/02921301-Dumbbell-Bent-over-Row_back_Back_720.gif
24	Aductor Externo Aislado en Máquina	Pierna	De pie en la máquina con la espalda recta, ponte el rodillo en el lateral exterior de una pierna y crúzala por delante de la de apoyo. Abre la pierna hacia fuera lateralmente empujando el peso. Después regresa lentamente a la posición inicial, sin dejar caer el peso bruscamente.	Máquina	Intermedio	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/10341301-Lever-Side-Hip-Abduction_Hips_720.gif
25	Apertura Aislada Declinada con Polea	Pecho	Tumbado sobre un banco declinado cercano a una polea baja, el brazo estirado horizontalmente, agarramos la empuñadura de forma natural (palma de la mano hacia arriba). El movimiento consiste en realizar el cierre con el brazo estirado hacia el centro del pecho. La inspiración se hace durante el descenso, la expiración durante el ascenso. La otra mano la podemos colocar bajo el banco o agarrando un lateral del mismo.	Banco Inclinable, Polea	Intermedio	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/12621301-Cable-One-Arm-Decline-Chest-Fly_Chest_720.gif
26	Aperturas Declinadas con Mancuernas	Pecho	Túmbate boca arriba sobre el banco declinado. Coge las mancuernas con las dos manos, teniendo en cuenta que las palmas deben mirar hacia el centro del cuerpo y manteniendo los brazos un poco flexionados en vertical al cuerpo. Desciende los brazos a los lados hasta bajar con las manos a la altura de los hombros.\nLos codos tienen que estar alineados entre sí, perpendiculares al cuerpo y paralelos al suelo. En el momento que espiras, regresa al centro del cuerpo sin extender los brazos ni flexionar los codos.	Banco Inclinable, Mancuernas	Intermedio	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/03021301-Dumbbell-Decline-Fly_Chest_720.gif
27	Aperturas Extendidas en Máquina	Pecho	Sentados con la espalda bien apoyada y recta, extendemos bien los brazos a los lados y agarramos las barras de la máquina con agarre neutro (palmas mirándose entre sí). A continuación realizamos el cierre manteniendo los brazos extendidos hasta llegar a tocarse ambas manos. Después retrocedemos de forma controlada sin llegar a perder la tensión (no llegar al final para descansar).	Máquina	Intermedio	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/05961301-Lever-Seated-Fly_Chest_720.gif
28	Aperturas Traseras en Pronación en Máquina	Hombro	Con la espalda recta coge un agarre con cada mano en pronación y sin balanceo ni impulso, lleva los soportes hacia los lados con los brazos rectos. Aprieta los hombros y aguanta durante uno o dos segundos. Retrocede de forma controlada a la posición inicial.	Máquina	Intermedio	Trapecio, Deltoides	https://fitcron.com/wp-content/uploads/2021/04/06021301-Lever-Seated-Reverse-Fly_Shoulders_720.gif
29	Buenos días con Barra	Pierna	Colócate de pie con las piernas separadas a la anchura algo menor a la de los hombros. Así, coge una barra tras la cabeza, exactamente bajo la zona de los trapecios. Baja el tronco hacia adelante, siempre manteniendo la espalda en una posición erecta. Al llegar al punto máximo, tu torso debe encontrarse casi paralelo al piso, todo ello sin que la espalda pierda su posición inicial y, eso sí, doblando ligeramente las rodillas y sacando los glúteos.\nPuedes mantener la posición final por uno o dos segundos, en donde sentirás cómo se tensa tu abdomen. Una vez hecho esto, regresa a la posición de inicio.	Barra Larga	Intermedio	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/00441301-Barbell-Good-Morning_Thighs_720.gif
30	Cruces en Máquina	Pecho	Sentados en la máquina con la espalda recta, ponemos las manos en pronación (palmas hacia el suelo) y los codos bien arriba, a la altura de los hombros. Empujamos hacia abajo para cerrar los brazos (sin bajar los codos por debajo de las manos) hasta prácticamente juntar las manos y volvemos a la posición inicial con un movimiento controlado.	Máquina	Intermedio	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/33441301-Lever-Crossovers_Chest_720.gif
31	Crunch Cruzado estirado	Abdomen	Acuéstate boca arriba con las piernas rectas y los pies apoyados en el suelo. Coloca las manos detrás de la cabeza. Levanta los hombros del suelo mientras contraes los abdominales. Al mismo tiempo, levanta ligeramente una pierna mientras mantienes la parte baja de la espalda en contacto con el suelo. Regresa a la posición inicial y repite, alternando la pierna en cada repetición. Este ejercicio trabaja los músculos oblicuos y abdominales.	Ninguno	Intermedio	Abdomen, Oblicuos, Cuádriceps	https://fitcron.com/wp-content/uploads/2024/05/43311301-Crunch-Single-Leg-Lift_Waist_720.gif
32	Crunch Lateral de pie con Banda	Abdomen	De pie situado al lado de una banda en algún soporte a la altura de los pies, coge el agarre con una mano con el brazo extendido al lado del cuerpo. Encoge el torso lateralmente hacia el lado de la banda. A continuación inclínate hacia el lado opuesto mediante la contracción de los abdominales oblicuos, sin tirar del brazo. Al terminar la serie cambia de lado.	Bandas	Intermedio	Abdomen, Oblicuos	https://fitcron.com/wp-content/uploads/2021/04/38411301-Band-side-bend-male_Waist_720.gif
33	Dominada	Espalda	Colgado en una barra de dominadas con las manos a una anchura algo mayor que la de los hombros y las palmas hacia delante, sube el cuerpo mediante la flexión de los brazos hasta pasar la cabeza sobre la barra. Desciende lentamente.	Otro	Intermedio	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/14291301-Wide-Grip-Pull-Up_Back_720.gif
34	Dominada Cerrada	Espalda	Colgado en una barra de dominadas con las manos a la anchura de los hombros y las palmas hacia delante, sube el cuerpo mediante la flexión de los brazos hasta pasar la cabeza sobre la barra. Desciende lentamente.	Otro	Intermedio	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/17631301-Shoulder-Grip-Pull-up_Back_720.gif
35	Abdominales en V con Mancuerna	Abdomen	Tumbado en el suelo (o colchoneta de ejercicios) sobre la espalda con los brazos estirados hacia atrás detrás de la cabeza y con las piernas extendidas. Al exhalar, flexiona la cintura al mismo tiempo que elevas las piernas y los brazos para que se junten. Las piernas deben estar estiradas y levantadas a un ángulo aproximado de 35-45 grados del suelo, y los brazos deben estar totalmente extendidos y paralelos a las piernas. La parte superior del torso debe estar levantada. Mientras inhalas, baja los brazos y las piernas de nuevo a la posición inicial.\nSostén una mancuerna entre las manos para mayor dificultad.	Mancuernas	Avanzado	Abdomen, Oblicuos	https://fitcron.com/wp-content/uploads/2021/04/33361301-Dumbbell-V-up_Waist_720.gif
36	Crunch Diagonal en Polea	Abdomen	De pie con la espalda recta y las piernas a la anchura aproximada de la cadera, ponte delante de la polea alta. Coge la cuerda con las dos manos a un lado de la cabeza, con los brazos flexionados hacia arriba. Flexiona el tronco lateralmente hacia abajo del lado contrario al de las manos, girando el torso y sin mover los brazos, apretando el abdomen.	Polea	Avanzado	Abdomen, Oblicuos	https://fitcron.com/wp-content/uploads/2021/04/01741301-Cable-Judo-Flip_waist_720.gif
37	Crunch Inferior en círculos	Abdomen	Desde una posición sentada en un banco con el cuerpo perpendicular al asiento y las piernas extendidas frente a ti, apoya las manos en el banco a los lados de tus caderas. Levanta las piernas rectas mientras las abres al ponerlas paralelas al suelo. Contrae los abdominales y eleva las piernas todo lo que puedas mientras las cierras de nuevo. Mantén la posición y desciende invirtiendo el movimiento, con el descenso controlado. Este ejercicio fortalece los músculos abdominales inferiores y contribuye a mejorar la estabilidad del core.	Banco Plano	Avanzado	Abdomen, Oblicuos, Cuádriceps	https://fitcron.com/wp-content/uploads/2024/05/43331301-Bench-Reverse-Crunch-Circle_Waist_720.gif
38	Curl Femoral Libre	Pierna	De rodillas en el suelo con los tobillos sujetos por alguna plataforma, banco o step. Trata de estirar las piernas llevando el cuerpo hacia delante hasta tumbarte en el suelo. Vuelve a la posicion inicial flexionando las piernas y dejando el cuerpo en vertical.	Otro	Avanzado	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/35071301-Self-Assisted-Inverse-Leg-Curl-VERSION-2_Thighs_720.gif
39	Curl Horizontal con giro con Mancuernas	Bíceps	Tumbado hacia arriba en un banco plano, coge una mancuerna con cada mano con las palmas hacia el cuerpo (agarre neutro) y extiende los brazos a los lados, a 45º del cuerpo. Flexiona los codos manteniendo los brazos inmovilizados, hasta llegar con las mancuernas frente al pecho, mientras giras las muñecas hacia adentro (palmas hacia arriba). Al llegar a arriba sube un poco los brazos para una mayor contracción. Desciende de forma controlada a la posición inicial.	Banco Plano, Mancuernas	Avanzado	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/03501301-Dumbbell-Lying-Supine-Curl_Forearms_720.gif
40	Dominada a una mano	Espalda	Colgado en una barra de dominadas con una mano en agarre neutro (palma hacia el interior), sube el cuerpo mediante la flexión del brazo hasta llegar con la cabeza a la barra, inclinando hacia el lado contrario del brazo para compensar el peso. Desciende lentamente. Con la otra mano puedes coger peso para añadir dificultad.	Otro	Avanzado	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/32901301-Weighted-One-Hand-Pull-up_720.gif
41	Dominada Abierta	Espalda	Colgado en una barra de dominadas con las manos a una anchura mayor que la de los hombros y las palmas hacia delante, sube el cuerpo mediante la flexión de los brazos hasta pasar la cabeza sobre la barra. Desciende lentamente.	Otro	Avanzado	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/18661301-Wide-Grip-Pull-Up-on-Dip-Cage_Back_720.gif
42	Elevaciones Laterales Declinadas Neutras con Mancuernas	Hombro	Túmbate hacia abajo en un banco declinado, apoyando el pecho en el respaldo y con los pies en el suelo. Coge las mancuernas con las manos en martillo o agarre neutro (palmas hacia el interior) por delante del cuerpo creando un ángulo de 90º entre torso y brazos. Con los codos ligeramente flexionados, eleva las mancuernas lateralmente hasta ponerlas a la altura de los hombros y desciende de nuevo de forma controlada.	Banco Inclinable, Mancuernas	Avanzado	Trapecio, Deltoides	https://fitcron.com/wp-content/uploads/2021/04/03831301-Dumbbell-Reverse-Fly_Shoulders_720.gif
55	Carrera rápida en el sitio	Todos	De pie, con los codos flexionados en un ángulo de 90 grados y los pies separados a la anchura de las caderas. Mueve el codo derecho hacia delante al mismo tiempo que subes la rodilla izquierda. Repite en el lado opuesto y mantén los lados alternados.	Ninguno	Principiante	Todos	https://fitcron.com/wp-content/uploads/2021/03/35891301-Quickly-Trot-in-place_Cardio_720.gif
43	Flexiones a una mano	Pecho	La posición será como en una flexión normal, pero colocaremos solamente una mano en el suelo. Seguidamente, será importante intentar lograr una posición que nos permita mantenernos en equilibrio usando las piernas y el brazo de apoyo extendidos.\nEl brazo que va a realizar la flexión estará a la altura del hombro, completamente extendido, y el otro brazo lo mantendremos doblado, colocándolo en nuestra zona lumbar. Las piernas estarán más separadas como cuando realizamos una flexión normal, ya que si no perderíamos el equilibrio. Deberemos descender poco a poco, hasta tocar el suelo con la barbilla, para volver a subir de nuevo.	Ninguno	Avanzado	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/07251301-Single-Arm-Push-up_Chest_720.gif
44	Elevación Completa con Barra	Hombro	De pie con la espalda recta y las piernas ligeramente separadas, coge la barra con las manos en pronación (palmas hacia abajo) a la anchura de los hombros. Con los brazos estirados, eleva la barra frontalmente hasta tenerla sobre la cabeza. Desciende de nuevo de forma controlada.	Barra Larga	Avanzado	Trapecio, Deltoides	https://fitcron.com/wp-content/uploads/2021/04/01071301-Barbell-Standing-Front-Raise-Over-Head_Shoulders_720.gif
45	Flexiones a una mano asistidas	Pecho	La posición será como en una flexión normal, pero colocaremos solamente una mano en el suelo. La otra la pondremos sobre un banco, silla o caja, apoyando toda la parte del codo y antebrazo, a modo de sujeción. Deberemos descender poco a poco, cargando el peso en la mano del suelo, para volver a subir de nuevo. Al terminar la serie cambiar de mano.	Ninguno	Avanzado	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/39641301-Twist-Push-up_Chest_720.gif
46	Fondos Imposibles	Tríceps	Se trata de colocarse en las barras paralelas apoyando los antebrazos en las mismas, y subir hasta bloquear los codos, sin utilizar balanceos ni impulsos, sólo por pura fuerza de tríceps.\nPara coger fuerza y técnica, podemos empezar desde arriba descendiendo muy lentamente, y subir de un salto si es necesario.	Otro	Avanzado	Tríceps, Antebrazo	https://fitcron.com/wp-content/uploads/2021/03/32891301-Impossible-dips_Upper-arms_720.gif
47	Peso Muerto a una pierna con Barra	Pierna	De pie con la espalda recta, sujeta la barra con las manos en pronación (palmas hacia atrás) a la anchura de los hombros, activando ligeramente las escápulas y con el pecho fuera. Levanta una pierna del suelo flexionando ligeramente hacia atrás.\nFlexiona la rodilla de apoyo de 15º a 20º, empujando la cadera hacia atrás y estirando la pierna no apoyada hacia atrás de forma que quede paralela al suelo, mientras inclinas el cuerpo hacia delante quedando también paralelo al suelo. Comienza a extender la cadera a medida que la barra asciende y vuelve en la posición inicial, contrayendo glúteos y activando ligeramente las escápulas con el pecho bien arriba y la posición anatómica natural de toda la columna.	Barra Larga	Avanzado	Glúteo, Aductor, Cuádriceps, Gemelo	https://fitcron.com/wp-content/uploads/2021/04/17561301-Barbell-Single-Leg-Deadlift_Hips_720.gif
48	Carrera en Cinta	Cardio	Una cinta de correr, cinta ergométrica, caminadora de banda o máquina de caminar es una máquina para entrenamiento físico que puede funcionar mediante propulsión eléctrica o manual, y que sirve para correr o andar sin moverse de un mismo sitio.\nColócate sobre la cinta y realiza algún programa de la misma o regula la intensidad ajustándola a tus necesidades.	Máquina	Principiante	Todos	https://fitcron.com/wp-content/uploads/2021/03/06841301-Run-equipment_Cardio_720.gif
49	Burpee	Cardio	Para realizar el ejercicio de se parte de una posición inicial en cuclillas (o sentadillas), se colocan las manos en el suelo y se mantiene la cabeza erguida. Después se desplazan las piernas hacia atrás con los pies juntos. A continuación se recogen las piernas para volver y se da un salto vertical con los brazos en alto (se puede dar una palmada por encima de la cabeza). Después vuelve a la posición de cuclillas para repetir el ejercicio.\n\nEl movimiento debe ser fluido, por lo que es importante trabajar la coordinación. Se puede dar una palmada por encima de la cabeza. Recuerda que es importante amortiguar la caída y aterrizar de la manera más suave posible.	Ninguno	Avanzado	Todos	https://fitcron.com/wp-content/uploads/2021/03/11601301-Burpee_Cardio_720.gif
50	Crunch Cruzado	Abdomen	Acuéstate boca arriba con las rodillas dobladas y los pies apoyados en el suelo. Coloca las manos detrás de la cabeza, sin entrelazar los dedos. Levanta los hombros del suelo mientras contraes los abdominales. A medida que subes, gira el torso y lleva el codo derecho hacia la rodilla izquierda, levantando también esa pierna del suelo para acortar el recorrido. Intenta tocar la rodilla con el codo mientras mantienes la parte baja de la espalda en contacto con el suelo. Regresa a la posición inicial y repite del otro lado, llevando el codo izquierdo hacia la rodilla derecha. Alterna los lados en cada repetición. Este ejercicio trabaja los músculos oblicuos y abdominales	Ninguno	Intermedio	Abdomen, Oblicuos	https://fitcron.com/wp-content/uploads/2024/05/02621301-Cross-Body-Crunch_waist_720.gif
51	Butt Kicks	Cardio	Se trata de correr sin moverte del sitio donde te encuentres, flexionando las rodillas hacia atrás lo máximo posible tratando de tocar el glúteo con el talón.	Ninguno	Principiante	Todos	https://fitcron.com/wp-content/uploads/2021/03/30371301-Butt-Kicks-male_Cardio_720.gif
52	Flexiones Abiertas	Pecho	Empezamos con el pecho y abdomen pegado al suelo y las manos apoyadas a la altura del pecho, a una anchura algo superior a la de los codos si estiramos los brazos a los lados.\nSubimos estirando los brazos con los codos en ángulo, estirando bien arriba. Al bajar tenemos que volver a tocar el suelo, sin descansar abajo. Los brazos volverán a estar en ángulo como al comienzo.	Ninguno	intermedio	Pectoral, Tríceps	https://fitcron.com/wp-content/uploads/2021/03/13111301-Wide-Hand-Push-up_Chest_720.gif
53	Jumping Jacks	Todos	Comienza de pie con los pies juntos. Con un solo movimiento, dando un pequeño salto, abre los pies hacia los lados y levanta los brazos por encima de la cabeza. Inmediatamente invierte el movimiento volviendo a la posición inicial.	Ninguno	Principiante	Todos	https://fitcron.com/wp-content/uploads/2021/03/30941301-Jumping-Jack-male_Cardio_720.gif
54	Mountain Climbers	Todos	En su ejecución, aunque sencilla, hay que ser muy cuidadoso para evitar lesiones y para obtener el máximo provecho. Para empezar hay que colocarse tumbados boca abajo en el suelo apoyando las manos con los dedos dirigidos hacia el frente a la anchura de los hombros como en una plancha isométrica con los brazos extendidos y el cuerpo apoyado sobre las palmas de las manos y los dedos de los pies de modo que el cuerpo quede en línea recta.\n\nA partir de esa postura, comienza el movimiento consistente en llevar de manera alterna las rodillas hacia el codo opuesto, es decir, elevar la rodilla izquierda hacia el codo derecho por debajo del cuerpo y la derecha hacia el codo izquierdo de igual modo. El cambio de pierna se realiza mediante salto explosivo, si bien para ejecutarlo correctamente se necesita partir de una forma física inicial adecuada. Para aquellos que están comenzando a introducirse en el mundo deportivo es mejor practicarlo marcando el gesto sin salto y modificando el ritmo.	Ninguno	Intermedio	Todos	https://fitcron.com/wp-content/uploads/2021/03/06301301-Mountain-Climber_Cardio_720.gif
57	Pre-Workout	Todos	Calentamiento para antes del entrenamiento. Importante para evitar lesiones, poner énfasis en las articulaciones y principales músculos a entrenar.	Ninguno	Principiante	Todos	https://fitcron.com/wp-content/uploads/2024/02/calentamiento.jpg
58	Post-Workout	Todos	Estiramientos para después del entrenamiento. Importante para reducir las agujetas y favorecer la recuperación muscular.	Ninguno	Principiante	Todos	https://fitcron.com/wp-content/uploads/2024/02/estiramiento.jpg
\.


--
-- Data for Name: Rutinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Rutinas" ("id_rutina", "nombre", "descripcion", "nivel_recomendado", "objetivo", "duracion_estimada", "owner_uid", "es_plantilla") FROM stdin;
1	Pechamen Alto	Aqui van los ejercicios perros para el pecho	avanzado	fuerza	120	\N	f
3	Rutina pecho superior	Esta es la rutina que utiliza Cbum	avanzado	fuerza	45	\N	f
4	Pehco	Fuerza	avanzado	fuerza	30	\N	f
66	Insert como app	ok	principiante	fuerza	12	\N	f
70	Super Altisimo	Esta está enfocada al super super alto	intermedio	fuerza	120	ed716103-7c30-47f8-9d88-0a3188b9b43d	f
71	Super Altisimo	Esta está enfocada al super super alto	intermedio	fuerza	120	ed716103-7c30-47f8-9d88-0a3188b9b43d	f
72	sad	dasdsa	principiante	fuerza	30	ed716103-7c30-47f8-9d88-0a3188b9b43d	f
113	Pecho	fuerza	principiante	fuerza	30	3e965a3e-9729-4a41-96e7-724c0763edd0	f
114	Fuerza	aaaaa	principiante	fuerza	80	1166241f-43ab-44b4-8b44-94394e4a197a	f
87	ADSA	tODAS	intermedio	hipertrofia	30	ef794a04-7430-4bda-8604-b6324ea88cde	f
190	1432	fsfsd	principiante	fuerza	30	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
191	Hiper 1	Ejemplo rutina	principiante	fuerza	30	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
192	Hiper 2	Ejemplo rutina	principiante	fuerza	30	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
115	Se pudo?	aaaaaaaa	principiante	fuerza	30	82eb2899-4641-4dfe-97dc-665ccb66cdf7	f
117	kadja	sakdnjajbds	principiante	hipertrofia	38	ef794a04-7430-4bda-8604-b6324ea88cde	f
120	CHESTERDAAAAAAAY	pecho hombro tricep	avanzado	hipertrofia	30	82eb2899-4641-4dfe-97dc-665ccb66cdf7	f
121	Pierna	ddddd	principiante	fuerza	30	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	f
124	Pechoooo	dadasda	principiante	fuerza	30	d028ed7d-a831-42ed-acbf-582084cf6b7a	f
125	proutippoipeuji	fsdfsd	principiante	fuerza	30	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	f
126	dfsd	fdsfsd	principiante	fuerza	30	09ff1a6d-48d3-4dbf-814e-5229c6549e86	f
128	Prueba user mel11	SIuuuu	avanzado	hipertrofia	30	09ff1a6d-48d3-4dbf-814e-5229c6549e86	f
129	Pechamen	a	principiante	fuerza	30	09ff1a6d-48d3-4dbf-814e-5229c6549e86	f
130	FuerzaPecho	fuerza	principiante	fuerza	30	09ff1a6d-48d3-4dbf-814e-5229c6549e86	f
131	Push	Pechamen, hombro, tripa	principiante	fuerza	60	db4793b9-fc50-489f-9e64-c48939606f9c	f
132	Pruebita	as	principiante	fuerza	30	\N	f
177	Full body y quema grasa	Esta rutina es ideal para las personas que tengan poca disponibilidad para ir al gym pero aun asi quieran entrenar todo y bajar de peso	intermedio	hipertrofia	70	\N	t
175	Cross Training	Rutina hecha para la adaptacion y empezar a crear fuerza en el cuerpo.	principiante	fuerza	50	\N	t
178	Todo en uno	Esta rutina es buena opcion si quieres entrenar un poco de todo pero sin la necesidad de hacerlo pesado.	intermedio	hipertrofia	42	\N	t
176	Estiramiento completo	Esta rutina es un conjunto de estiramientos que se deberian de llevar a cabo antes de cualquier rutina, ademas de servir como adaptacion para los nuevos usuarios.	principiante	resistencia	15	\N	t
173	Tonifica en casa	Esta rutina está diseñada para poder tonificar y entrenar todo el cuerpo desde casa, se recomienda hacerla 3 veces a la semana porque es bastante extenuante.	intermedio	resistencia	30	\N	t
180	Hombro y brazo like Arnold	Rutina destructiva de brazo completo, perfecto para combinar en el Arnold Split	avanzado	fuerza	45	\N	t
174	Core duro	Esta rutina está enfocada en fortalecer el core para todos los ejercicios en general, se puede llevar a la par de otra rutina más pesada.	principiante	fuerza	30	\N	t
181	Piernas y abdomen like Arnold	Rutina enfocada en quemar las piernas y abdomen, totalmente compatible con un Arnold Split.	avanzado	fuerza	45	\N	t
182	Power tren superior	Esta rutina está meramente enfocada en potenciar la fuerza de los musculos de tren superior, es una rutina adecuada para gente con experiencia y objetivos de aumentar fuerza.	intermedio	fuerza	60	\N	t
183	Power tren inferior	Rutina dedicada a sacar la mayor fuerza posible de las piernas como sea humanamente posible, no apto para principiantes.	intermedio	fuerza	60	\N	t
184	Push	Rutina dedicada a los empujes lo cual ayuda al pectoral y triceps	avanzado	fuerza	50	\N	t
187	Parte alta	Rutina enfocada en trabajar todo el torso y sus extremidades	intermedio	hipertrofia	45	\N	t
188	Bilbo	Rutina basada en el metodo bilbo creada para mejorar cargas en el empuje	avanzado	fuerza	45	\N	t
193	Hiper 3	Ejemplo rutina	principiante	fuerza	30	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
133	Hiper 1	Ejemplo rutina	principiante	fuerza	30	\N	t
185	Pull	Rutina enfocada en jalones, desarrollo de espalda y biceps.	avanzado	fuerza	30	\N	t
134	Hiper 2	Ejemplo rutina	principiante	fuerza	30	\N	t
194	Bilbo	Rutina basada en el metodo bilbo creada para mejorar cargas en el empuje	avanzado	fuerza	45	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
168	Acondicionamiento	Esta rutina está pensada para realizarse durante una máximo dos semanas, se recomienda hacerlo un dia y descansar el siguiente, el objetivo es acostumbrarse al ejercicio.	principiante	resistencia	50	\N	t
169	Abdomen de lavadero	Esta rutina está enfocada a la perdida de peso y definicion del abdomen, se puede realizar todos los dias si tu cuerpo te lo permite.	intermedio	resistencia	60	\N	t
179	Pecho y espalda like Arnold	Esta rutina es una bomba para el pecho y la espalda, esta es genial para hacer un Arnold Split.	avanzado	fuerza	45	\N	t
186	Leg	Esta rutina es enfocada al tren inferior para poder aislar los musculos.	avanzado	fuerza	70	\N	t
161	Hiper 1	Pecho	principiante	fuerza	30	\N	t
162	Hiper 2	qqq	principiante	fuerza	30	\N	t
163	Hiper 3	Las sala	principiante	fuerza	30	\N	t
146	ddniasd	sdadasd	principiante	fuerza	30	\N	t
136	saddd	fff	principiante	fuerza	30	\N	t
153	Pierna	legcita	avanzado	fuerza	30	\N	t
157	fdsfdsf	sdadsad	intermedio	resistencia	33	\N	t
164	bdgbdb	fwsdsdf	avanzado	fuerza	30	\N	t
135	Hiper 3	Ejemplo rutina	principiante	fuerza	30	\N	t
189	Tonifica en casa	Esta rutina está diseñada para poder tonificar y entrenar todo el cuerpo desde casa, se recomienda hacerla 3 veces a la semana porque es bastante extenuante.	intermedio	resistencia	30	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
200	pechamen	Siiiiu	principiante	fuerza	30	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	f
201	Parte alta	Rutina enfocada en trabajar todo el torso y sus extremidades	intermedio	hipertrofia	45	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	f
202	Piernas y abdomen like Arnold	Rutina enfocada en quemar las piernas y abdomen, totalmente compatible con un Arnold Split.	avanzado	fuerza	45	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	f
195	Power tren inferior	Rutina dedicada a sacar la mayor fuerza posible de las piernas como sea humanamente posible, no apto para principiantes.	intermedio	fuerza	60	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
203	Push	Rutina dedicada a los empujes lo cual ayuda al pectoral y triceps	avanzado	fuerza	50	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
204	Pull	Rutina enfocada en jalones, desarrollo de espalda y biceps.	avanzado	fuerza	30	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
205	Leg	Esta rutina es enfocada al tren inferior para poder aislar los musculos.	avanzado	fuerza	70	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	f
206	Parte alta	Rutina enfocada en trabajar todo el torso y sus extremidades	intermedio	hipertrofia	45	eb0d5b2b-0260-4f26-a399-e7496b25c94f	f
207	Piernas y abdomen like Arnold	Rutina enfocada en quemar las piernas y abdomen, totalmente compatible con un Arnold Split.	avanzado	fuerza	45	eb0d5b2b-0260-4f26-a399-e7496b25c94f	f
208	Parte alta	Rutina enfocada en trabajar todo el torso y sus extremidades	intermedio	hipertrofia	45	90cf26a8-2777-4abe-93ec-8f91db0f4737	f
209	Piernas y abdomen like Arnold	Rutina enfocada en quemar las piernas y abdomen, totalmente compatible con un Arnold Split.	avanzado	fuerza	45	90cf26a8-2777-4abe-93ec-8f91db0f4737	f
210	Full body y quema grasa	Esta rutina es ideal para las personas que tengan poca disponibilidad para ir al gym pero aun asi quieran entrenar todo y bajar de peso	intermedio	hipertrofia	70	3e965a3e-9729-4a41-96e7-724c0763edd0	f
211	Push	Rutina dedicada a los empujes lo cual ayuda al pectoral y triceps	avanzado	fuerza	50	3e965a3e-9729-4a41-96e7-724c0763edd0	f
212	Pull	Rutina enfocada en jalones, desarrollo de espalda y biceps.	avanzado	fuerza	30	3e965a3e-9729-4a41-96e7-724c0763edd0	f
213	Leg	Esta rutina es enfocada al tren inferior para poder aislar los musculos.	avanzado	fuerza	70	3e965a3e-9729-4a41-96e7-724c0763edd0	f
214	Full body y quema grasa	Esta rutina es ideal para las personas que tengan poca disponibilidad para ir al gym pero aun asi quieran entrenar todo y bajar de peso	intermedio	hipertrofia	70	90cf26a8-2777-4abe-93ec-8f91db0f4737	f
215	Todo en uno	Esta rutina es buena opcion si quieres entrenar un poco de todo pero sin la necesidad de hacerlo pesado.	intermedio	hipertrofia	42	90cf26a8-2777-4abe-93ec-8f91db0f4737	f
216	Acondicionamiento	Esta rutina está pensada para realizarse durante una máximo dos semanas, se recomienda hacerlo un dia y descansar el siguiente, el objetivo es acostumbrarse al ejercicio.	principiante	resistencia	50	90cf26a8-2777-4abe-93ec-8f91db0f4737	f
217	Pecho	ejercicios de pecho	principiante	fuerza	30	3e965a3e-9729-4a41-96e7-724c0763edd0	f
218	Push	Rutina dedicada a los empujes lo cual ayuda al pectoral y triceps	avanzado	fuerza	50	3e965a3e-9729-4a41-96e7-724c0763edd0	f
219	Pull	Rutina enfocada en jalones, desarrollo de espalda y biceps.	avanzado	fuerza	30	3e965a3e-9729-4a41-96e7-724c0763edd0	f
220	Leg	Esta rutina es enfocada al tren inferior para poder aislar los musculos.	avanzado	fuerza	70	3e965a3e-9729-4a41-96e7-724c0763edd0	f
221	pechamens	sssss	principiante	fuerza	30	82eb2899-4641-4dfe-97dc-665ccb66cdf7	f
\.


--
-- Data for Name: EjerciciosRutinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."EjerciciosRutinas" ("id_rutina", "id_ejercicio", "series", "repeticiones", "peso_sugerido", "orden") FROM stdin;
176	53	2	10	0.00	4
1	16	3	10	0.50	1
1	17	3	10	1.00	2
3	2	4	8	100.00	1
3	17	3	10	0.00	2
3	21	3	10	0.00	3
4	1	3	10	0.00	1
87	1	3	10	0.00	1
87	9	3	10	0.00	2
133	1	3	10	0.00	1
133	2	3	10	0.00	2
133	6	3	10	0.00	3
124	1	3	10	20.00	1
113	1	4	10	0.00	1
114	1	4	10	90.00	1
114	8	3	10	0.00	2
161	1	3	10	0.00	1
161	2	3	10	0.00	2
125	1	3	10	100.00	1
126	1	3	10	100.00	1
161	6	3	10	0.00	3
134	15	3	10	0.00	1
134	16	3	10	0.00	2
134	17	3	10	0.00	3
162	15	3	10	0.00	1
162	16	3	10	0.00	2
162	17	3	10	0.00	3
115	1	1	10	0.00	1
115	7	1	10	0.00	2
120	1	4	10	100.00	1
120	15	5	15	20.00	2
120	6	4	10	80.00	3
117	2	2	12	121.00	1
117	1	2	10	0.00	2
117	6	2	10	12.00	3
117	20	0	10	0.00	4
135	22	3	10	0.00	1
135	21	3	10	0.00	2
121	12	3	10	0.00	1
121	7	3	10	100.00	2
135	20	3	10	0.00	3
163	20	3	10	0.00	3
128	1	4	10	100.00	1
128	8	3	10	20.00	2
163	21	3	10	0.00	2
163	22	3	10	0.00	1
129	1	3	10	120.00	1
136	1	3	10	0.00	1
136	6	3	10	0.00	2
136	11	3	10	0.00	3
130	1	3	5	120.00	1
130	2	3	7	100.00	2
130	13	5	10	3.00	3
146	1	3	10	0.00	1
146	2	2	10	0.00	2
131	18	3	10	15.00	1
131	1	4	10	100.00	2
146	7	3	10	0.00	3
132	1	3	10	0.00	1
132	2	3	10	0.00	2
132	14	3	10	0.00	3
132	22	3	10	0.00	4
173	51	4	20	0.00	2
173	52	3	15	0.00	3
173	53	4	20	0.00	4
173	31	4	15	0.00	5
173	49	4	15	0.00	1
164	1	2	10	0.00	1
164	15	3	10	0.00	2
153	10	3	10	0.00	1
153	12	3	10	0.00	2
153	11	3	10	180.00	3
174	17	4	10	20.00	1
174	16	4	15	0.00	2
174	54	5	30	0.00	3
175	13	2	15	0.00	1
175	14	2	15	60.00	2
157	1	3	10	0.00	1
157	2	3	10	0.00	2
157	12	3	10	0.00	3
157	15	3	10	0.00	4
175	46	2	10	0.00	3
175	22	4	15	30.00	4
176	57	1	30	0.00	1
176	55	1	35	0.00	2
168	1	3	12	50.00	1
168	12	4	12	40.00	2
168	13	4	12	8.00	3
168	7	3	10	30.00	4
168	11	3	12	30.00	5
176	56	1	30	0.00	3
176	58	1	30	0.00	5
177	26	4	10	20.00	2
177	33	4	15	0.00	3
177	7	4	12	50.00	4
169	48	1	30	0.00	5
169	16	4	15	0.00	1
169	31	4	15	0.00	2
169	37	4	15	0.00	3
169	36	3	12	20.00	4
177	29	4	10	60.00	5
177	12	4	12	60.00	6
177	37	5	10	0.00	7
177	50	5	12	0.00	8
177	48	1	30	0.00	9
177	1	4	10	0.00	1
178	2	3	10	20.00	1
178	26	3	15	15.00	2
178	34	5	15	0.00	3
178	8	2	15	50.00	4
178	10	4	12	80.00	5
178	11	4	12	80.00	6
178	48	1	15	0.00	7
179	26	4	12	20.00	1
179	27	4	10	50.00	2
179	1	3	8	80.00	3
179	34	4	15	0.00	4
179	9	4	12	45.00	5
179	8	3	8	90.00	6
180	44	4	10	40.00	1
180	15	4	15	35.00	2
180	28	4	10	35.00	3
180	21	4	12	15.00	4
180	23	4	12	35.00	5
180	19	4	12	15.00	6
180	18	4	15	55.00	7
186	47	3	10	60.00	1
186	10	4	10	50.00	3
189	31	4	15	0.00	5
188	46	4	15	0.00	2
187	2	4	12	45.00	1
187	50	4	20	0.00	3
181	47	3	8	60.00	1
181	12	3	12	100.00	2
181	10	3	10	60.00	3
181	31	4	15	0.00	5
187	19	4	12	30.00	6
189	49	4	15	0.00	1
181	11	3	10	60.00	4
181	35	4	15	0.00	6
181	17	4	15	40.00	7
181	36	4	12	45.00	8
202	17	4	15	40.00	7
202	31	4	15	0.00	5
202	35	4	15	0.00	6
202	36	4	12	45.00	8
202	47	3	8	60.00	1
185	33	3	10	0.00	1
185	40	3	8	0.00	2
185	7	4	15	70.00	3
185	22	4	15	45.00	4
185	23	4	15	35.00	5
185	21	3	10	50.00	6
207	11	3	10	60.00	4
207	12	3	12	100.00	2
186	12	3	12	100.00	2
186	11	4	12	50.00	4
207	17	4	15	40.00	7
207	31	4	15	0.00	5
207	35	4	15	0.00	6
187	41	4	20	0.00	2
187	44	4	10	40.00	4
187	22	4	10	40.00	5
207	36	4	12	45.00	8
207	47	3	8	60.00	1
188	1	4	15	130.00	1
188	25	4	10	40.00	3
189	51	4	20	0.00	2
183	38	3	10	0.00	1
183	12	3	8	130.00	2
183	10	3	7	80.00	3
183	11	3	7	90.00	4
183	24	4	12	60.00	5
183	29	3	7	60.00	6
189	52	3	15	0.00	3
189	53	4	20	0.00	4
195	1	3	10	0.00	7
190	1	3	10	111.00	1
191	1	3	10	0.00	1
191	2	3	10	0.00	2
191	6	3	10	0.00	3
182	1	3	8	120.00	1
182	27	3	10	90.00	2
182	9	3	10	90.00	3
182	8	3	10	80.00	4
182	39	3	8	50.00	5
182	18	3	10	80.00	6
182	42	3	8	40.00	7
182	13	3	8	50.00	8
192	15	3	10	0.00	1
192	16	3	10	0.00	2
192	17	3	10	0.00	3
193	20	3	10	0.00	3
193	21	3	10	0.00	2
193	22	3	10	0.00	1
184	1	3	8	90.00	1
184	2	4	10	50.00	2
184	6	4	12	60.00	3
184	18	4	12	60.00	4
184	19	4	12	40.00	5
184	20	4	20	0.00	6
194	1	4	15	130.00	1
194	25	4	10	40.00	3
194	46	4	15	0.00	2
195	38	3	10	0.00	1
195	12	3	8	130.00	2
195	10	3	7	80.00	3
195	11	3	7	90.00	4
195	24	4	12	60.00	5
195	29	3	7	60.00	6
203	1	3	8	90.00	1
200	1	5	10	100.00	1
201	2	4	12	45.00	1
201	19	4	12	30.00	6
201	22	4	10	40.00	5
201	41	4	20	0.00	2
201	44	4	10	40.00	4
201	50	4	20	0.00	3
202	10	3	10	60.00	3
202	11	3	10	60.00	4
202	12	3	12	100.00	2
203	2	4	10	50.00	2
203	6	4	12	60.00	3
203	18	4	12	60.00	4
203	19	4	12	40.00	5
203	20	4	20	0.00	6
204	7	4	15	70.00	3
204	21	3	10	50.00	6
204	22	4	15	45.00	4
204	23	4	15	35.00	5
204	33	3	10	0.00	1
204	40	3	8	0.00	2
205	10	4	10	50.00	3
205	11	4	12	50.00	4
205	12	3	12	100.00	2
205	47	3	10	60.00	1
206	2	4	12	45.00	1
206	19	4	12	30.00	6
206	22	4	10	40.00	5
206	41	4	20	0.00	2
206	44	4	10	40.00	4
206	50	4	20	0.00	3
207	10	3	10	60.00	3
208	2	4	12	45.00	1
208	19	4	12	30.00	6
208	22	4	10	40.00	5
208	41	4	20	0.00	2
208	44	4	10	40.00	4
208	50	4	20	0.00	3
209	10	3	10	60.00	3
209	11	3	10	60.00	4
209	12	3	12	100.00	2
209	17	4	15	40.00	7
209	31	4	15	0.00	5
209	35	4	15	0.00	6
209	36	4	12	45.00	8
209	47	3	8	60.00	1
210	1	4	10	0.00	1
210	7	4	12	50.00	4
210	12	4	12	60.00	6
210	26	4	10	20.00	2
210	29	4	10	60.00	5
210	33	4	15	0.00	3
210	37	5	10	0.00	7
210	48	1	30	0.00	9
210	50	5	12	0.00	8
211	1	3	8	90.00	1
211	2	4	10	50.00	2
211	6	4	12	60.00	3
211	18	4	12	60.00	4
211	19	4	12	40.00	5
211	20	4	20	0.00	6
212	7	4	15	70.00	3
212	21	3	10	50.00	6
212	22	4	15	45.00	4
212	23	4	15	35.00	5
212	33	3	10	0.00	1
212	40	3	8	0.00	2
213	10	4	10	50.00	3
213	11	4	12	50.00	4
213	12	3	12	100.00	2
213	47	3	10	60.00	1
214	1	4	10	0.00	1
214	7	4	12	50.00	4
214	12	4	12	60.00	6
214	26	4	10	20.00	2
214	29	4	10	60.00	5
214	33	4	15	0.00	3
214	37	5	10	0.00	7
214	48	1	30	0.00	9
214	50	5	12	0.00	8
215	2	3	10	20.00	1
215	8	2	15	50.00	4
215	10	4	12	80.00	5
215	11	4	12	80.00	6
215	26	3	15	15.00	2
215	34	5	15	0.00	3
215	48	1	15	0.00	7
216	1	3	12	50.00	1
216	7	3	10	30.00	4
216	11	3	12	30.00	5
216	12	4	12	40.00	2
216	13	4	12	8.00	3
217	9	4	10	80.00	2
217	1	3	10	100.00	1
218	1	3	8	90.00	1
218	2	4	10	50.00	2
218	6	4	12	60.00	3
218	18	4	12	60.00	4
218	19	4	12	40.00	5
218	20	4	20	0.00	6
219	7	4	15	70.00	3
219	21	3	10	50.00	6
219	22	4	15	45.00	4
219	23	4	15	35.00	5
219	33	3	10	0.00	1
219	40	3	8	0.00	2
220	10	4	10	50.00	3
220	11	4	12	50.00	4
220	12	3	12	100.00	2
220	47	3	10	60.00	1
221	2	3	10	7.00	2
221	1	2	10	0.00	1
\.


--
-- Data for Name: EjerciciosRutinaSets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."EjerciciosRutinaSets" ("id_rutina", "id_ejercicio", "idx", "kg", "reps") FROM stdin;
128	1	1	100.00	10
128	1	2	100.00	10
128	1	3	100.00	10
128	1	4	100.00	10
128	8	1	20.00	10
120	1	1	100.00	10
120	1	2	100.00	10
120	1	3	100.00	10
120	1	4	100.00	10
120	15	1	20.00	15
120	15	2	20.00	15
120	15	3	20.00	15
120	15	4	20.00	15
120	15	5	20.00	15
120	6	1	80.00	10
120	6	2	80.00	10
120	6	3	80.00	10
120	6	4	80.00	10
121	12	1	100.00	10
117	2	1	44.00	31
117	2	2	24.00	11
117	1	1	12.00	15
117	1	2	11.00	1
117	6	1	12.00	12
117	6	2	132.00	31
121	12	2	100.00	10
121	12	3	100.00	10
121	7	1	100.00	10
121	7	2	100.00	10
121	7	3	100.00	10
128	8	2	20.00	10
128	8	3	20.00	10
129	1	1	120.00	10
129	1	2	120.00	10
129	1	3	120.00	10
130	1	1	120.00	5
130	1	2	120.00	5
130	1	3	120.00	5
130	2	1	100.00	7
130	2	2	100.00	7
130	2	3	100.00	7
115	1	1	110.00	10
115	7	1	60.00	10
130	13	1	3.00	10
130	13	2	3.00	10
130	13	3	3.00	10
130	13	4	3.00	10
130	13	5	3.00	10
131	18	1	15.00	10
131	18	2	15.00	10
131	18	3	15.00	10
131	1	1	100.00	10
131	1	2	100.00	10
131	1	3	100.00	10
131	1	4	100.00	10
132	1	1	0.00	10
132	1	2	0.00	10
132	1	3	0.00	10
132	2	1	0.00	10
132	2	2	0.00	10
132	2	3	0.00	10
132	14	1	0.00	10
132	14	2	0.00	10
132	14	3	0.00	10
132	22	1	0.00	10
132	22	2	0.00	10
132	22	3	0.00	10
133	1	1	0.00	10
133	1	2	0.00	10
133	1	3	0.00	10
133	2	1	0.00	10
124	1	1	20.00	10
124	1	2	20.00	10
124	1	3	20.00	10
125	1	1	100.00	10
125	1	2	100.00	10
125	1	3	100.00	10
126	1	1	100.00	10
126	1	2	100.00	10
126	1	3	100.00	10
133	2	2	0.00	10
133	2	3	0.00	10
133	6	1	0.00	10
133	6	2	0.00	10
133	6	3	0.00	10
134	15	1	0.00	10
134	15	2	0.00	10
134	15	3	0.00	10
134	16	1	0.00	10
134	16	2	0.00	10
134	16	3	0.00	10
134	17	1	0.00	10
134	17	2	0.00	10
134	17	3	0.00	10
135	22	1	0.00	10
135	22	2	0.00	10
135	22	3	0.00	10
135	21	1	0.00	10
135	21	2	0.00	10
135	21	3	0.00	10
135	20	1	0.00	10
135	20	2	0.00	10
135	20	3	0.00	10
136	1	1	0.00	10
136	1	2	0.00	10
136	1	3	0.00	10
136	6	1	0.00	10
136	6	2	0.00	10
136	6	3	0.00	10
136	11	1	0.00	10
136	11	2	0.00	10
136	11	3	0.00	10
146	1	1	0.00	10
146	1	2	0.00	10
146	1	3	0.00	10
146	2	1	0.00	10
146	2	2	0.00	10
146	7	1	0.00	10
146	7	2	0.00	10
146	7	3	0.00	10
153	10	1	200.00	10
153	10	2	200.00	10
153	10	3	200.00	10
153	12	1	300.00	10
153	12	2	300.00	10
153	12	3	300.00	10
153	11	1	180.00	10
153	11	2	180.00	10
153	11	3	180.00	10
157	1	1	0.00	10
157	1	2	0.00	10
157	1	3	0.00	10
157	2	1	0.00	10
157	2	2	0.00	10
157	2	3	0.00	10
157	12	1	0.00	10
157	12	2	0.00	10
157	12	3	0.00	10
157	15	1	0.00	10
157	15	2	0.00	10
157	15	3	0.00	10
164	1	1	0.00	10
164	1	2	0.00	10
164	15	1	0.00	10
164	15	2	0.00	10
164	15	3	0.00	10
168	1	1	50.00	12
168	1	2	50.00	12
168	1	3	50.00	12
168	12	1	40.00	12
168	12	2	40.00	12
168	12	3	40.00	12
168	12	4	40.00	12
168	13	1	8.00	12
168	13	2	8.00	12
168	13	3	8.00	12
168	13	4	8.00	12
169	31	1	0.00	15
169	31	2	0.00	15
169	31	3	0.00	15
169	31	4	0.00	15
168	7	1	30.00	10
168	7	2	30.00	10
168	7	3	30.00	10
169	16	1	0.00	15
169	16	2	0.00	15
169	16	3	0.00	15
169	16	4	0.00	15
168	11	1	30.00	12
168	11	2	30.00	12
168	11	3	30.00	12
169	48	1	0.00	30
169	37	1	0.00	15
169	37	2	0.00	15
169	37	3	0.00	15
169	37	4	0.00	15
169	36	1	20.00	12
169	36	2	20.00	12
169	36	3	20.00	12
173	51	1	0.00	20
173	51	2	0.00	20
173	51	3	0.00	20
173	51	4	0.00	20
173	52	1	0.00	15
173	52	2	0.00	15
173	52	3	0.00	15
173	53	1	0.00	20
173	53	2	0.00	20
173	53	3	0.00	20
173	53	4	0.00	20
173	31	1	0.00	15
173	31	2	0.00	15
173	31	3	0.00	15
173	31	4	0.00	15
173	49	1	0.00	15
173	49	2	0.00	15
173	49	3	0.00	15
173	49	4	0.00	15
174	17	1	20.00	10
174	17	2	20.00	10
174	17	3	20.00	10
174	17	4	20.00	10
174	16	1	0.00	15
174	16	2	0.00	15
174	16	3	0.00	15
174	16	4	0.00	15
174	54	1	0.00	30
174	54	2	0.00	30
174	54	3	0.00	30
174	54	4	0.00	30
174	54	5	0.00	30
175	13	1	10.50	15
175	13	2	10.50	15
175	14	1	60.00	15
175	14	2	60.00	15
175	46	1	0.00	10
175	46	2	0.00	10
175	22	1	30.00	15
175	22	2	30.00	15
175	22	3	30.00	15
175	22	4	30.00	15
176	57	1	0.00	30
176	55	1	0.00	35
176	56	1	0.00	30
176	58	1	0.00	30
176	53	1	0.00	10
176	53	2	0.00	10
177	26	1	20.00	10
177	26	2	20.00	10
177	26	3	20.00	10
177	26	4	20.00	10
177	33	1	0.00	15
177	33	2	0.00	15
177	33	3	0.00	15
177	33	4	0.00	15
177	7	1	50.00	12
177	7	2	50.00	12
177	7	3	50.00	12
177	7	4	50.00	12
177	29	1	60.00	10
177	29	2	60.00	10
177	29	3	60.00	10
177	29	4	60.00	10
177	12	1	60.00	12
177	12	2	60.00	12
177	12	3	60.00	12
177	12	4	60.00	12
177	37	1	0.00	10
177	37	2	0.00	10
177	37	3	0.00	10
177	37	4	0.00	10
177	37	5	0.00	10
177	50	1	0.00	12
177	50	2	0.00	12
177	50	3	0.00	12
177	50	4	0.00	12
177	50	5	0.00	12
177	48	1	0.00	30
177	1	1	60.00	10
177	1	2	60.00	10
177	1	3	60.00	10
177	1	4	60.00	10
178	2	1	20.00	10
178	2	2	20.00	10
178	2	3	20.00	10
178	26	1	15.00	15
178	26	2	15.00	15
178	26	3	15.00	15
178	34	1	0.00	15
178	34	2	0.00	15
178	34	3	0.00	15
178	34	4	0.00	15
178	34	5	0.00	15
178	8	1	50.00	15
178	8	2	50.00	15
178	10	1	60.00	12
178	10	2	60.00	12
178	10	3	60.00	12
178	10	4	60.00	12
178	11	1	60.00	12
178	11	2	60.00	12
178	11	3	60.00	12
178	11	4	60.00	12
178	48	1	0.00	15
179	26	1	20.00	12
179	26	2	20.00	12
179	26	3	20.00	12
179	26	4	20.00	12
179	27	1	50.00	10
179	27	2	50.00	10
179	27	3	50.00	10
179	27	4	50.00	10
179	1	1	80.00	8
179	1	2	80.00	8
179	1	3	80.00	8
179	34	1	0.00	15
179	34	2	0.00	15
179	34	3	0.00	15
179	34	4	0.00	15
179	9	1	45.00	12
179	9	2	45.00	12
179	9	3	45.00	12
179	9	4	45.00	12
179	8	1	90.00	8
179	8	2	90.00	8
179	8	3	90.00	8
180	44	1	40.00	10
180	44	2	40.00	10
180	44	3	40.00	10
180	44	4	40.00	10
180	15	1	35.00	15
180	15	2	35.00	15
180	15	3	35.00	15
180	15	4	35.00	15
180	28	1	35.00	10
180	28	2	35.00	10
180	28	3	35.00	10
180	28	4	35.00	10
180	21	1	15.00	12
180	21	2	15.00	12
180	21	3	15.00	12
180	21	4	15.00	12
180	23	1	35.00	12
180	23	2	35.00	12
180	23	3	35.00	12
180	23	4	35.00	12
180	19	1	15.00	12
180	19	2	15.00	12
180	19	3	15.00	12
180	19	4	15.00	12
180	18	1	55.00	15
180	18	2	55.00	15
180	18	3	55.00	15
180	18	4	55.00	15
181	47	1	60.00	8
181	47	2	60.00	8
181	47	3	60.00	8
181	12	1	100.00	12
181	12	2	100.00	12
181	12	3	100.00	12
181	10	1	60.00	10
181	10	2	60.00	10
181	10	3	60.00	10
181	11	1	60.00	10
181	11	2	60.00	10
181	11	3	60.00	10
181	31	1	0.00	15
181	31	2	0.00	15
181	31	3	0.00	15
181	31	4	0.00	15
181	35	1	0.00	15
181	35	2	0.00	15
181	35	3	0.00	15
181	35	4	0.00	15
181	17	1	40.00	15
181	17	2	40.00	15
181	17	3	40.00	15
181	17	4	40.00	15
181	36	1	45.00	12
181	36	2	45.00	12
181	36	3	45.00	12
181	36	4	45.00	12
183	38	1	0.00	10
183	38	2	0.00	10
183	38	3	0.00	10
183	12	1	130.00	8
183	12	2	130.00	8
183	12	3	130.00	8
183	10	1	80.00	7
183	10	2	80.00	7
183	10	3	80.00	7
183	11	1	90.00	7
183	11	2	90.00	7
183	11	3	90.00	7
183	24	1	60.00	12
183	24	2	60.00	12
183	24	3	60.00	12
183	24	4	60.00	12
183	29	1	60.00	7
183	29	2	60.00	7
183	29	3	60.00	7
182	1	1	120.00	8
182	1	2	120.00	8
182	1	3	120.00	8
182	27	1	90.00	10
182	27	2	90.00	10
182	27	3	90.00	10
182	9	1	90.00	10
182	9	2	90.00	10
182	9	3	90.00	10
182	8	1	80.00	10
182	8	2	80.00	10
182	8	3	80.00	10
182	39	1	50.00	8
182	39	2	50.00	8
182	39	3	50.00	8
182	18	1	80.00	10
182	18	2	80.00	10
182	18	3	80.00	10
182	42	1	40.00	8
182	42	2	40.00	8
182	42	3	40.00	8
182	13	1	50.00	8
182	13	2	50.00	8
182	13	3	50.00	8
184	1	1	90.00	8
184	1	2	90.00	8
184	1	3	90.00	8
184	2	1	50.00	10
184	2	2	50.00	10
184	2	3	50.00	10
184	2	4	50.00	10
184	6	1	60.00	12
184	6	2	60.00	12
184	6	3	60.00	12
184	6	4	60.00	12
184	18	1	60.00	12
184	18	2	60.00	12
184	18	3	60.00	12
184	18	4	60.00	12
184	19	1	40.00	12
184	19	2	40.00	12
184	19	3	40.00	12
184	19	4	40.00	12
184	20	1	0.00	20
184	20	2	0.00	20
184	20	3	0.00	20
184	20	4	0.00	20
185	33	1	0.00	10
185	33	2	0.00	10
185	33	3	0.00	10
185	40	1	0.00	8
185	40	2	0.00	8
185	40	3	0.00	8
185	7	1	70.00	15
185	7	2	70.00	15
185	7	3	70.00	15
185	7	4	70.00	15
185	22	1	45.00	15
185	22	2	45.00	15
185	22	3	45.00	15
185	22	4	45.00	15
185	23	1	35.00	15
185	23	2	35.00	15
185	23	3	35.00	15
185	23	4	35.00	15
185	21	1	50.00	10
185	21	2	50.00	10
185	21	3	50.00	10
186	47	1	60.00	10
186	47	2	60.00	10
186	47	3	60.00	10
186	12	1	100.00	12
186	12	2	100.00	12
186	12	3	100.00	12
186	10	1	50.00	10
186	10	2	50.00	10
186	10	3	50.00	10
186	10	4	50.00	10
186	11	1	50.00	12
186	11	2	50.00	12
186	11	3	50.00	12
186	11	4	50.00	12
187	2	1	45.00	12
187	2	2	45.00	12
187	2	3	45.00	12
187	2	4	45.00	12
187	41	1	0.00	20
187	41	2	0.00	20
187	41	3	0.00	20
187	41	4	0.00	20
187	50	1	0.00	20
187	50	2	0.00	20
187	50	3	0.00	20
187	50	4	0.00	20
187	44	1	40.00	10
187	44	2	40.00	10
187	44	3	40.00	10
187	44	4	40.00	10
187	22	1	40.00	10
187	22	2	40.00	10
187	22	3	40.00	10
187	22	4	40.00	10
187	19	1	30.00	12
187	19	2	30.00	12
187	19	3	30.00	12
187	19	4	30.00	12
188	1	1	130.00	15
188	1	2	130.00	15
188	1	3	130.00	15
188	1	4	130.00	15
188	46	1	0.00	15
188	46	2	0.00	15
188	46	3	0.00	15
188	46	4	0.00	15
188	25	1	40.00	10
188	25	2	40.00	10
188	25	3	40.00	10
188	25	4	40.00	10
190	1	1	111.00	10
190	1	2	111.00	10
190	1	3	111.00	10
200	1	1	100.00	10
200	1	2	100.00	10
200	1	3	100.00	10
200	1	4	100.00	10
200	1	5	100.00	10
195	1	1	0.00	10
195	1	2	0.00	10
195	1	3	0.00	10
195	38	1	0.00	10
195	38	2	0.00	10
195	38	3	0.00	10
195	12	1	130.00	8
195	12	2	130.00	8
195	12	3	130.00	8
195	10	1	80.00	7
195	10	2	80.00	7
195	10	3	80.00	7
195	11	1	90.00	7
195	11	2	90.00	7
195	11	3	90.00	7
195	24	1	60.00	12
195	24	2	60.00	12
195	24	3	60.00	12
195	24	4	60.00	12
195	29	1	60.00	7
195	29	2	60.00	7
195	29	3	60.00	7
217	9	1	80.00	10
217	9	2	80.00	10
217	9	3	80.00	10
217	9	4	80.00	10
217	1	1	100.00	10
217	1	2	100.00	10
217	1	3	100.00	10
221	2	1	7.00	10
221	2	2	7.00	10
221	2	3	7.00	10
221	1	1	100.00	9
221	1	2	123.00	5
\.


--
-- Data for Name: Entrenamientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Entrenamientos" ("id_sesion", "id_rutina", "owner_uid", "started_at", "ended_at", "duracion_seg", "total_volumen", "sensacion_global", "notas", "created_at") FROM stdin;
25	\N	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-20 23:03:05.726+00	2025-09-20 23:03:09.867+00	4	3000	\N	\N	2025-09-20 23:03:10.990798+00
61	128	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-26 13:42:56.703+00	2025-09-26 13:43:13.741+00	17	4800	\N	\N	2025-09-26 13:43:13.047211+00
62	117	ef794a04-7430-4bda-8604-b6324ea88cde	2025-09-26 14:55:54.782+00	2025-09-26 14:56:13.3+00	19	1628	\N	\N	2025-09-26 14:56:13.370986+00
63	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-27 02:19:57.839+00	2025-09-27 02:20:13.063+00	15	4000	\N	\N	2025-09-27 02:20:12.670295+00
64	129	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-27 03:43:06.635+00	2025-09-27 03:43:35.999+00	29	6600	\N	\N	2025-09-27 03:43:35.74673+00
65	129	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-28 00:13:48.199+00	2025-09-28 00:13:58.014+00	10	3600	\N	\N	2025-09-28 00:13:57.389033+00
66	129	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-28 03:11:08.991+00	2025-09-28 03:11:15.203+00	6	3600	\N	\N	2025-09-28 03:11:14.564169+00
68	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-28 03:29:31.36+00	2025-09-28 03:29:58.513+00	27	8700	\N	\N	2025-09-28 03:29:57.965009+00
69	115	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-28 03:31:10.956+00	2025-09-28 03:31:17.815+00	7	1700	\N	\N	2025-09-28 03:31:17.192402+00
74	129	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-28 15:39:51.257+00	2025-09-28 15:39:59.258+00	8	3600	\N	\N	2025-09-28 15:39:59.110277+00
75	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-28 23:48:56.736+00	2025-09-28 23:49:25.171+00	28	4050	\N	\N	2025-09-28 23:49:25.130912+00
20	121	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	2025-09-19 22:44:30.003+00	2025-09-19 22:44:41.612+00	12	6000	\N	\N	2025-09-19 22:44:41.711364+00
77	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-28 23:51:35.664+00	2025-09-28 23:51:44.203+00	9	1800	\N	\N	2025-09-28 23:51:44.157605+00
78	131	db4793b9-fc50-489f-9e64-c48939606f9c	2025-09-29 00:29:26.496+00	2025-09-29 00:29:49.092+00	23	150	\N	\N	2025-09-29 00:29:48.555435+00
79	126	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-29 00:30:15.713+00	2025-09-29 00:30:46.899+00	31	3600	\N	\N	2025-09-29 00:30:46.86125+00
80	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-29 01:02:50.902+00	2025-09-29 01:03:09.139+00	18	1800	\N	\N	2025-09-29 01:03:09.074372+00
81	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-29 03:17:55.2+00	2025-09-29 03:18:03.216+00	8	1800	\N	\N	2025-09-29 03:18:03.235371+00
26	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-20 23:08:02.07+00	2025-09-20 23:08:12.2+00	10	6800	\N	\N	2025-09-20 23:08:13.270186+00
27	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-20 23:08:20.691+00	2025-09-20 23:09:03.72+00	43	4470	\N	\N	2025-09-20 23:09:04.8153+00
85	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-29 15:42:11.93+00	2025-09-29 15:50:03.792+00	472	8700	\N	\N	2025-09-29 15:50:03.769251+00
86	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-30 17:07:33.595+00	2025-09-30 17:07:39.174+00	6	1800	\N	\N	2025-09-30 17:07:41.057892+00
87	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-30 18:45:16.371+00	2025-09-30 18:47:18.482+00	122	4050	\N	\N	2025-09-30 18:47:18.846702+00
88	130	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-30 18:47:33.506+00	2025-09-30 19:32:16.073+00	2683	4050	\N	\N	2025-09-30 19:32:16.467206+00
89	153	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-10-01 02:26:13.476+00	2025-10-01 02:26:33.408+00	20	20400	\N	\N	2025-10-01 02:26:33.705974+00
90	126	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-10-01 02:26:59.188+00	2025-10-01 02:27:22.77+00	24	9000	\N	\N	2025-10-01 02:27:23.051956+00
91	126	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-10-01 02:27:57.493+00	2025-10-01 02:28:11.843+00	14	3000	\N	\N	2025-10-01 02:28:12.10901+00
92	126	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-10-01 02:28:38.498+00	2025-10-01 02:29:01.303+00	23	3000	\N	\N	2025-10-01 02:29:01.600404+00
93	153	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-10-01 04:00:38.526+00	2025-10-01 04:00:47.359+00	9	6000	\N	\N	2025-10-01 04:00:47.680084+00
94	157	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	2025-10-01 04:51:15.967+00	2025-10-01 04:51:55.146+00	39	0	\N	\N	2025-10-01 04:51:54.730214+00
95	146	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-01 13:44:08.619+00	2025-10-01 13:44:43.22+00	35	2880	\N	\N	2025-10-01 13:44:43.495336+00
96	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 16:58:23.235+00	2025-10-01 16:58:57.136+00	34	1000	\N	\N	2025-10-01 16:58:58.496497+00
97	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 17:01:52.673+00	2025-10-01 17:02:32.621+00	40	6000	\N	\N	2025-10-01 17:02:33.950143+00
98	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 17:02:58.2+00	2025-10-01 17:03:09.448+00	11	2000	\N	\N	2025-10-01 17:03:10.751544+00
99	189	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	2025-10-01 21:17:20.617+00	2025-10-01 21:18:10.084+00	49	66	\N	\N	2025-10-01 21:18:09.143867+00
46	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-22 17:41:43.683+00	2025-09-22 17:59:30.945+00	1067	3000	\N	\N	2025-09-22 17:59:31.416612+00
47	124	d028ed7d-a831-42ed-acbf-582084cf6b7a	2025-09-23 02:14:10.576+00	2025-09-23 02:14:23.85+00	13	1200	\N	\N	2025-09-23 02:14:24.423196+00
48	125	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	2025-09-23 14:24:48.823+00	2025-09-23 14:24:52.87+00	4	3000	\N	\N	2025-09-23 14:24:54.327227+00
101	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 22:35:49.34+00	2025-10-01 22:36:20.679+00	31	2000	\N	\N	2025-10-01 22:36:20.891486+00
102	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-02 01:21:35.882+00	2025-10-02 01:22:03.015+00	27	600	\N	\N	2025-10-02 01:22:03.345259+00
103	200	3d2cea8e-64e1-4967-bec7-a3cec1ca135d	2025-10-02 02:57:23.489+00	2025-10-02 02:57:48.502+00	25	6000	\N	\N	2025-10-02 02:57:48.81646+00
104	207	eb0d5b2b-0260-4f26-a399-e7496b25c94f	2025-10-02 05:51:25.622+00	2025-10-02 05:51:26.709+00	1	0	\N	\N	2025-10-02 05:51:26.878807+00
105	206	eb0d5b2b-0260-4f26-a399-e7496b25c94f	2025-10-02 06:15:44.447+00	2025-10-02 06:15:46.133+00	2	0	\N	\N	2025-10-02 06:15:46.306427+00
106	207	eb0d5b2b-0260-4f26-a399-e7496b25c94f	2025-10-02 06:15:51.182+00	2025-10-02 06:16:01.739+00	11	3840	\N	\N	2025-10-02 06:16:01.856193+00
107	209	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 06:18:34.082+00	2025-10-02 06:19:59.563+00	85	13680	\N	\N	2025-10-02 06:19:57.804752+00
108	87	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-02 14:58:33.364+00	2025-10-02 14:59:34.008+00	61	4300	\N	\N	2025-10-02 14:59:34.507642+00
100	\N	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 22:15:43.688+00	2025-10-01 22:16:53.244+00	70	6800	\N	\N	2025-10-01 22:16:53.55698+00
60	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-26 02:27:36.485+00	2025-09-26 02:28:11.404+00	35	7500	\N	\N	2025-09-26 02:28:11.66814+00
10	\N	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-19 02:48:01.358+00	2025-09-19 02:48:56.256+00	582	7200	\N	\N	2025-09-19 02:48:58.24384+00
11	\N	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-19 02:49:10.656+00	2025-09-19 02:49:30.097+00	19	1000	\N	\N	2025-09-19 02:49:32.063738+00
12	\N	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-19 02:49:42.159+00	2025-09-19 02:50:12.927+00	31	6000	\N	\N	2025-09-19 02:50:15.017318+00
110	213	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-02 17:10:41.105+00	2025-10-02 17:12:04.519+00	83	1800	\N	\N	2025-10-02 17:12:12.393453+00
111	208	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 20:25:42.341+00	2025-10-02 20:26:05.108+00	23	2160	\N	\N	2025-10-02 20:26:04.555815+00
112	217	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-03 01:14:59.272+00	2025-10-03 01:15:45.308+00	46	5600	\N	\N	2025-10-03 01:15:45.453854+00
\.


--
-- Data for Name: EntrenamientoSets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."EntrenamientoSets" ("id_sesion", "id_ejercicio", "idx", "kg", "reps", "rpe", "done", "done_at") FROM stdin;
60	1	1	100	10	Muy difícil	t	2025-09-26 02:27:43.782+00
60	1	2	100	10	Moderado	t	2025-09-26 02:27:44.264+00
60	1	3	100	10	Muy difícil	t	2025-09-26 02:27:44.849+00
60	1	4	100	10	Fácil	t	2025-09-26 02:27:45.309+00
60	15	1	20	15	Muy difícil	t	2025-09-26 02:27:56.283+00
60	15	2	20	15	Difícil	t	2025-09-26 02:27:55.893+00
60	15	3	20	15	Muy difícil	t	2025-09-26 02:27:55.51+00
60	15	4	20	15	Difícil	t	2025-09-26 02:27:55.197+00
60	15	5	20	15	Al fallo	t	2025-09-26 02:27:54.564+00
60	2	1	100	10	\N	t	2025-09-26 02:28:07.264+00
60	2	2	100	10	\N	t	2025-09-26 02:28:07.631+00
60	2	3	100	10	\N	f	\N
62	2	1	44	31	Difícil	t	2025-09-26 14:56:07.146+00
62	2	2	24	11	\N	t	2025-09-26 14:56:09.595+00
62	1	1	12	15	\N	f	\N
62	1	2	11	1	\N	f	\N
47	6	1	20	10	\N	t	2025-09-23 02:14:18.198+00
47	6	2	20	10	\N	t	2025-09-23 02:14:19.313+00
47	6	3	20	10	\N	t	2025-09-23 02:14:19.872+00
47	1	1	20	10	\N	t	2025-09-23 02:14:11.691+00
47	1	2	20	10	\N	t	2025-09-23 02:14:12.237+00
25	1	1	100	10	\N	t	2025-09-20 23:03:06.92+00
25	1	2	100	10	\N	t	2025-09-20 23:03:07.432+00
25	1	3	100	10	\N	t	2025-09-20 23:03:08.079+00
25	8	1	60	10	\N	f	\N
62	6	1	12	12	\N	f	\N
62	6	2	132	31	\N	f	\N
64	1	1	120	10	Al fallo	t	2025-09-27 03:43:25.597+00
64	1	2	120	10	Al fallo	t	2025-09-27 03:43:25.325+00
25	8	2	60	10	\N	f	\N
25	8	3	60	10	\N	f	\N
25	8	4	60	10	\N	f	\N
26	1	1	100	10	\N	t	2025-09-20 23:08:04.211+00
26	1	2	100	10	\N	t	2025-09-20 23:08:03.868+00
26	1	3	100	10	\N	t	2025-09-20 23:08:04.682+00
26	1	4	100	10	\N	t	2025-09-20 23:08:05.03+00
26	15	1	20	15	\N	t	2025-09-20 23:08:06.39+00
26	15	2	20	15	\N	t	2025-09-20 23:08:06.894+00
26	15	3	20	15	\N	t	2025-09-20 23:08:07.46+00
47	1	3	20	10	\N	t	2025-09-23 02:14:12.792+00
64	1	3	120	10	Difícil	t	2025-09-27 03:43:24.672+00
26	15	4	20	15	\N	t	2025-09-20 23:08:08.17+00
26	6	1	80	10	\N	t	2025-09-20 23:08:09.342+00
26	6	2	80	10	\N	t	2025-09-20 23:08:09.816+00
64	1	4	120	10	Fácil	t	2025-09-27 03:43:24.389+00
64	7	1	60	10	Moderado	t	2025-09-27 03:43:26.641+00
64	7	2	60	10	Al fallo	t	2025-09-27 03:43:26.975+00
64	7	3	60	10	Al fallo	t	2025-09-27 03:43:31.758+00
66	1	1	120	10	Al fallo	t	2025-09-28 03:11:10.285+00
10	7	1	100	10	\N	t	2025-09-19 02:48:27.76+00
10	7	2	100	10	\N	t	2025-09-19 02:48:27.102+00
10	1	1	100	10	\N	t	2025-09-19 02:48:29.286+00
10	1	2	100	10	\N	t	2025-09-19 02:48:28.907+00
10	1	3	100	10	\N	t	2025-09-19 02:48:28.512+00
10	23	1	11	100	\N	t	2025-09-19 02:48:26.083+00
10	23	2	11	100	\N	t	2025-09-19 02:48:30.944+00
11	7	1	100	10	\N	f	\N
11	7	2	100	10	\N	f	\N
11	1	1	100	10	\N	t	2025-09-19 02:49:29.189+00
11	1	2	100	10	\N	f	\N
11	1	3	100	10	\N	f	\N
12	2	1	100	10	Fácil	t	2025-09-19 02:49:47.062+00
12	2	2	100	10	Fácil	t	2025-09-19 02:49:51.826+00
12	7	1	100	10	\N	t	2025-09-19 02:50:01.572+00
12	7	2	100	10	\N	f	\N
12	1	1	100	10	\N	t	2025-09-19 02:49:59.435+00
12	1	2	100	10	\N	t	2025-09-19 02:49:59.791+00
12	1	3	100	10	\N	t	2025-09-19 02:50:00.325+00
27	1	1	100	10	\N	t	2025-09-20 23:08:22.078+00
27	1	2	100	10	\N	t	2025-09-20 23:08:22.387+00
27	19	1	10	11	\N	t	2025-09-20 23:08:36.103+00
27	6	1	80	10	\N	t	2025-09-20 23:08:26.445+00
27	6	2	80	10	\N	t	2025-09-20 23:08:27.016+00
27	21	1	19	20	\N	t	2025-09-20 23:08:50.745+00
27	21	2	19	20	\N	t	2025-09-20 23:08:51.087+00
66	1	2	120	10	Al fallo	t	2025-09-28 03:11:10.693+00
66	1	3	120	10	Al fallo	t	2025-09-28 03:11:11.178+00
68	1	1	100	10	Muy difícil	t	2025-09-28 03:29:32.573+00
68	1	2	100	10	Muy difícil	t	2025-09-28 03:29:32.865+00
68	1	3	100	10	Al fallo	t	2025-09-28 03:29:33.369+00
68	1	4	100	10	Al fallo	t	2025-09-28 03:29:38.923+00
68	15	1	20	15	Fácil	t	2025-09-28 03:29:40.058+00
68	15	2	20	15	Fácil	t	2025-09-28 03:29:40.604+00
68	15	3	20	15	Al fallo	t	2025-09-28 03:29:41.114+00
68	15	4	20	15	Muy difícil	t	2025-09-28 03:29:41.448+00
68	15	5	20	15	Al fallo	t	2025-09-28 03:29:41.807+00
68	6	1	80	10	Al fallo	t	2025-09-28 03:29:49.764+00
68	6	2	80	10	Al fallo	t	2025-09-28 03:29:50.088+00
68	6	3	80	10	Al fallo	t	2025-09-28 03:29:51.23+00
68	6	4	80	10	Difícil	t	2025-09-28 03:29:52.031+00
74	1	1	120	10	Al fallo	t	2025-09-28 15:39:57.979+00
74	1	2	120	10	Muy difícil	t	2025-09-28 15:39:57.646+00
74	1	3	120	10	Difícil	t	2025-09-28 15:39:57.281+00
75	1	1	120	5	Difícil	t	2025-09-28 23:48:57.968+00
75	1	2	120	5	Muy difícil	t	2025-09-28 23:48:58.614+00
75	1	3	120	5	Al fallo	t	2025-09-28 23:48:58.954+00
20	12	1	100	10	\N	t	2025-09-19 22:44:31.871+00
20	12	2	100	10	\N	t	2025-09-19 22:44:32.429+00
20	12	3	100	10	\N	t	2025-09-19 22:44:33.941+00
20	7	1	100	10	\N	t	2025-09-19 22:44:35.356+00
20	7	2	100	10	\N	t	2025-09-19 22:44:37.077+00
20	7	3	100	10	\N	t	2025-09-19 22:44:36.518+00
75	2	1	100	7	Muy difícil	t	2025-09-28 23:49:06.594+00
75	2	2	100	7	Muy difícil	t	2025-09-28 23:49:07.18+00
75	2	3	100	7	Al fallo	t	2025-09-28 23:49:07.653+00
75	13	1	3	10	Difícil	t	2025-09-28 23:49:12.846+00
75	13	2	3	10	Difícil	t	2025-09-28 23:49:15.156+00
75	13	3	3	10	Muy difícil	t	2025-09-28 23:49:13.855+00
75	13	4	3	10	Muy difícil	t	2025-09-28 23:49:14.215+00
75	13	5	3	10	Al fallo	t	2025-09-28 23:49:14.688+00
77	1	1	120	5	Muy difícil	t	2025-09-28 23:51:36.937+00
77	1	2	120	5	Muy difícil	t	2025-09-28 23:51:37.228+00
46	2	1	100	10	\N	t	2025-09-22 17:59:24.457+00
46	2	2	100	10	\N	t	2025-09-22 17:59:24.825+00
46	2	3	100	10	\N	t	2025-09-22 17:59:25.438+00
61	1	1	100	10	Al fallo	t	2025-09-26 13:42:57.887+00
61	1	2	100	10	Moderado	t	2025-09-26 13:42:58.315+00
61	1	3	100	10	Muy difícil	t	2025-09-26 13:42:58.801+00
61	1	4	100	10	Al fallo	t	2025-09-26 13:42:59.597+00
61	8	1	20	10	Muy difícil	t	2025-09-26 13:43:00.471+00
61	8	2	20	10	Muy difícil	t	2025-09-26 13:43:00.804+00
61	8	3	20	10	Fácil	t	2025-09-26 13:43:01.33+00
61	8	4	20	10	Al fallo	t	2025-09-26 13:43:02.608+00
48	1	1	100	10	\N	t	2025-09-23 14:24:49.971+00
48	1	2	100	10	\N	t	2025-09-23 14:24:50.349+00
48	1	3	100	10	\N	t	2025-09-23 14:24:51.129+00
63	1	1	100	10	Al fallo	t	2025-09-27 02:19:59.183+00
63	1	2	100	10	Muy difícil	t	2025-09-27 02:19:59.583+00
63	1	3	100	10	Al fallo	t	2025-09-27 02:20:00.045+00
63	1	4	100	10	Al fallo	t	2025-09-27 02:20:00.375+00
65	1	1	120	10	Muy difícil	t	2025-09-28 00:13:49.11+00
65	1	2	120	10	Muy difícil	t	2025-09-28 00:13:49.595+00
65	1	3	120	10	Muy difícil	t	2025-09-28 00:13:50.073+00
69	1	1	110	10	Fácil	t	2025-09-28 03:31:16.553+00
69	7	1	60	10	Fácil	t	2025-09-28 03:31:17.179+00
77	1	3	120	5	Difícil	t	2025-09-28 23:51:37.64+00
77	13	1	3	10	\N	f	\N
77	13	2	3	10	\N	f	\N
77	13	3	3	10	\N	f	\N
77	13	4	3	10	\N	f	\N
77	13	5	3	10	\N	f	\N
78	18	1	15	10	Muy difícil	t	2025-09-29 00:29:36.378+00
78	18	2	15	10	\N	f	\N
78	18	3	15	10	\N	f	\N
78	1	1	100	10	\N	f	\N
78	1	2	100	10	\N	f	\N
78	1	3	100	10	\N	f	\N
78	1	4	100	10	\N	f	\N
79	1	1	120	10	Difícil	t	2025-09-29 00:30:43.782+00
79	1	2	120	10	Difícil	t	2025-09-29 00:30:43.393+00
79	1	3	120	10	Difícil	t	2025-09-29 00:30:43.061+00
80	1	1	120	5	Al fallo	t	2025-09-29 01:02:52.102+00
80	1	2	120	5	Muy difícil	t	2025-09-29 01:02:52.963+00
80	1	3	120	5	Difícil	t	2025-09-29 01:02:53.602+00
81	1	1	120	5	Difícil	t	2025-09-29 03:17:57.274+00
81	1	2	120	5	Difícil	t	2025-09-29 03:17:57.817+00
81	1	3	120	5	Difícil	t	2025-09-29 03:17:58.285+00
81	2	1	100	7	\N	f	\N
81	2	2	100	7	\N	f	\N
81	2	3	100	7	\N	f	\N
81	13	1	3	10	\N	f	\N
81	13	2	3	10	\N	f	\N
81	13	3	3	10	\N	f	\N
81	13	4	3	10	\N	f	\N
81	13	5	3	10	\N	f	\N
85	1	1	120	10	Al fallo	t	2025-09-29 15:42:28.506+00
85	1	2	120	10	Al fallo	t	2025-09-29 15:42:29.403+00
85	1	3	120	10	Al fallo	t	2025-09-29 15:42:29.867+00
85	1	4	120	10	Al fallo	t	2025-09-29 15:42:30.324+00
85	6	1	80	10	Moderado	t	2025-09-29 15:42:35.67+00
85	6	2	80	10	Muy difícil	t	2025-09-29 15:42:35.988+00
85	6	3	80	10	Difícil	t	2025-09-29 15:42:36.652+00
85	14	1	50	10	Muy difícil	t	2025-09-29 15:42:53.29+00
85	14	2	50	10	Difícil	t	2025-09-29 15:42:53.027+00
85	14	3	50	10	Al fallo	t	2025-09-29 15:42:52.734+00
86	1	1	120	5	Al fallo	t	2025-09-30 17:07:34.658+00
86	1	2	120	5	Al fallo	t	2025-09-30 17:07:34.98+00
86	1	3	120	5	Al fallo	t	2025-09-30 17:07:35.41+00
86	2	1	100	7	\N	f	\N
86	2	2	100	7	\N	f	\N
86	2	3	100	7	\N	f	\N
86	13	1	3	10	\N	f	\N
86	13	2	3	10	\N	f	\N
86	13	3	3	10	\N	f	\N
86	13	4	3	10	\N	f	\N
86	13	5	3	10	\N	f	\N
87	1	1	120	5	Difícil	t	2025-09-30 18:47:16.648+00
87	1	2	120	5	Moderado	t	2025-09-30 18:47:16.301+00
87	1	3	120	5	Difícil	t	2025-09-30 18:47:16.046+00
87	2	1	100	7	Al fallo	t	2025-09-30 18:47:08.763+00
87	2	2	100	7	Muy difícil	t	2025-09-30 18:47:08.486+00
87	2	3	100	7	Difícil	t	2025-09-30 18:47:08.247+00
87	13	1	3	10	Fácil	t	2025-09-30 18:46:46.981+00
87	13	2	3	10	Al fallo	t	2025-09-30 18:46:46.719+00
87	13	3	3	10	Fácil	t	2025-09-30 18:46:46.093+00
87	13	4	3	10	Difícil	t	2025-09-30 18:46:45.666+00
87	13	5	3	10	Al fallo	t	2025-09-30 18:46:44.485+00
88	1	1	120	5	Al fallo	t	2025-09-30 19:06:38.036+00
88	1	2	120	5	Al fallo	t	2025-09-30 19:06:37.534+00
88	1	3	120	5	Al fallo	t	2025-09-30 19:06:37.067+00
88	2	1	100	7	Muy difícil	t	2025-09-30 19:32:01.803+00
88	2	2	100	7	Fácil	t	2025-09-30 19:32:02.495+00
88	2	3	100	7	Al fallo	t	2025-09-30 19:32:03.07+00
88	13	1	3	10	Al fallo	t	2025-09-30 19:32:07.118+00
88	13	2	3	10	Al fallo	t	2025-09-30 19:32:07.439+00
88	13	3	3	10	Difícil	t	2025-09-30 19:32:08.359+00
88	13	4	3	10	Muy difícil	t	2025-09-30 19:32:08.757+00
88	13	5	3	10	Al fallo	t	2025-09-30 19:32:09.317+00
89	10	1	200	10	Al fallo	t	2025-10-01 02:26:14.722+00
89	10	2	200	10	Al fallo	t	2025-10-01 02:26:15.169+00
89	10	3	200	10	Al fallo	t	2025-10-01 02:26:15.487+00
89	12	1	300	10	Al fallo	t	2025-10-01 02:26:19.867+00
89	12	2	300	10	Al fallo	t	2025-10-01 02:26:20.137+00
89	12	3	300	10	Al fallo	t	2025-10-01 02:26:20.409+00
89	11	1	180	10	Al fallo	t	2025-10-01 02:26:31.452+00
89	11	2	180	10	Al fallo	t	2025-10-01 02:26:30.88+00
89	11	3	180	10	Al fallo	t	2025-10-01 02:26:29.748+00
90	17	1	90	20	Moderado	t	2025-10-01 02:27:17.203+00
90	17	2	90	20	Difícil	t	2025-10-01 02:27:14.929+00
90	17	3	90	20	Muy difícil	t	2025-10-01 02:27:15.7+00
90	17	4	90	20	Al fallo	t	2025-10-01 02:27:16+00
90	17	5	90	20	Al fallo	t	2025-10-01 02:27:16.464+00
91	21	1	100	10	Difícil	t	2025-10-01 02:28:06.539+00
91	21	2	100	10	Al fallo	t	2025-10-01 02:28:06.838+00
91	21	3	100	10	Difícil	t	2025-10-01 02:28:07.197+00
92	18	1	100	10	Difícil	t	2025-10-01 02:29:00.167+00
92	18	2	100	10	Muy difícil	t	2025-10-01 02:28:59.703+00
92	18	3	100	10	Al fallo	t	2025-10-01 02:28:59.303+00
93	10	1	200	10	Al fallo	t	2025-10-01 04:00:39.848+00
93	10	2	200	10	Muy difícil	t	2025-10-01 04:00:40.173+00
93	10	3	200	10	Al fallo	t	2025-10-01 04:00:40.767+00
93	12	1	300	10	\N	f	\N
93	12	2	300	10	\N	f	\N
93	12	3	300	10	\N	f	\N
93	11	1	180	10	\N	f	\N
93	11	2	180	10	\N	f	\N
93	11	3	180	10	\N	f	\N
94	1	1	0	10	Fácil	t	2025-10-01 04:51:23.594+00
94	1	2	0	10	Difícil	t	2025-10-01 04:51:24.325+00
94	1	3	0	10	Moderado	t	2025-10-01 04:51:24.884+00
94	2	1	0	10	Fácil	t	2025-10-01 04:51:26.235+00
94	2	2	0	10	Moderado	t	2025-10-01 04:51:26.838+00
94	2	3	0	10	Fácil	t	2025-10-01 04:51:27.717+00
94	12	1	0	10	Moderado	t	2025-10-01 04:51:28.746+00
94	12	2	0	10	Fácil	t	2025-10-01 04:51:29.955+00
94	12	3	0	10	Fácil	t	2025-10-01 04:51:40.335+00
94	15	1	0	10	Fácil	t	2025-10-01 04:51:46.353+00
94	15	2	0	10	Difícil	t	2025-10-01 04:51:45.701+00
94	15	3	0	10	Fácil	t	2025-10-01 04:51:45.283+00
95	1	1	50	10	Muy difícil	t	2025-10-01 13:44:14.583+00
95	1	2	70	16	Al fallo	t	2025-10-01 13:44:25.148+00
95	1	3	12	105	Al fallo	t	2025-10-01 13:44:33.492+00
95	2	1	0	10	\N	t	2025-10-01 13:44:35.284+00
95	2	2	0	10	\N	t	2025-10-01 13:44:36.163+00
95	7	1	0	10	\N	t	2025-10-01 13:44:37.652+00
95	7	2	0	10	\N	t	2025-10-01 13:44:38.34+00
95	7	3	0	10	\N	t	2025-10-01 13:44:39.332+00
96	1	1	100	10	Muy difícil	t	2025-10-01 16:58:35.977+00
96	1	2	100	10	Moderado	f	\N
96	1	3	100	10	Difícil	f	\N
96	1	4	100	10	Al fallo	f	\N
97	1	1	100	10	Al fallo	t	2025-10-01 17:02:01.235+00
97	1	2	100	10	Al fallo	t	2025-10-01 17:02:01.531+00
97	1	3	100	10	Al fallo	t	2025-10-01 17:02:01.963+00
97	2	1	100	10	Fácil	t	2025-10-01 17:02:24.039+00
97	2	2	100	10	Al fallo	t	2025-10-01 17:02:24.383+00
97	2	3	100	10	Moderado	t	2025-10-01 17:02:24.706+00
98	1	1	100	10	Muy difícil	t	2025-10-01 17:03:05.97+00
98	1	2	100	10	Al fallo	t	2025-10-01 17:03:06.213+00
98	1	3	100	10	\N	f	\N
99	49	1	1	12	\N	t	2025-10-01 21:17:30.792+00
99	51	1	1	15	\N	t	2025-10-01 21:17:40.852+00
99	52	1	1	12	\N	t	2025-10-01 21:17:42.12+00
99	53	1	1	15	\N	t	2025-10-01 21:17:43.088+00
99	31	1	1	12	\N	t	2025-10-01 21:17:44.185+00
100	2	1	45	12	Muy difícil	t	2025-10-01 22:16:02.547+00
100	2	2	45	12	Al fallo	t	2025-10-01 22:16:01.961+00
100	2	3	45	12	Difícil	t	2025-10-01 22:16:01.461+00
100	2	4	45	12	Al fallo	t	2025-10-01 22:16:00.959+00
100	41	1	0	20	Muy difícil	t	2025-10-01 22:15:59.875+00
100	41	2	0	20	Difícil	t	2025-10-01 22:15:59.311+00
100	41	3	0	20	Al fallo	t	2025-10-01 22:15:58.117+00
100	41	4	0	20	Muy difícil	t	2025-10-01 22:15:58.72+00
100	50	1	0	20	Muy difícil	t	2025-10-01 22:16:16.31+00
100	50	2	0	20	Al fallo	t	2025-10-01 22:16:15.803+00
100	50	3	0	20	Muy difícil	t	2025-10-01 22:16:15.302+00
100	50	4	0	20	Al fallo	t	2025-10-01 22:16:14.878+00
100	44	1	40	10	Al fallo	t	2025-10-01 22:16:25.612+00
100	44	2	40	10	Al fallo	t	2025-10-01 22:16:24.352+00
100	44	3	40	10	Al fallo	t	2025-10-01 22:16:24.88+00
100	44	4	40	10	Al fallo	t	2025-10-01 22:16:23.177+00
100	22	1	40	10	Al fallo	t	2025-10-01 22:16:33.481+00
100	22	2	40	10	Al fallo	t	2025-10-01 22:16:32.737+00
100	22	3	40	10	Difícil	t	2025-10-01 22:16:32.187+00
100	22	4	40	10	Muy difícil	t	2025-10-01 22:16:31.671+00
100	19	1	30	12	Al fallo	t	2025-10-01 22:16:36.533+00
100	19	2	30	12	Al fallo	t	2025-10-01 22:16:36.016+00
100	19	3	30	12	Al fallo	t	2025-10-01 22:16:35.568+00
100	19	4	30	12	Al fallo	t	2025-10-01 22:16:35.114+00
101	1	1	100	10	Muy difícil	t	2025-10-01 22:35:50.563+00
101	1	2	100	10	Al fallo	t	2025-10-01 22:36:05.131+00
101	1	3	100	10	\N	f	\N
101	1	4	100	10	\N	f	\N
102	2	1	10	10	Difícil	t	2025-10-02 01:21:52.752+00
102	2	2	10	10	Moderado	t	2025-10-02 01:21:53.184+00
102	2	3	10	10	Difícil	t	2025-10-02 01:22:01.981+00
102	2	4	10	10	Difícil	t	2025-10-02 01:22:01.438+00
102	2	5	10	10	Moderado	t	2025-10-02 01:22:00.993+00
102	2	6	10	10	Muy difícil	t	2025-10-02 01:22:00.225+00
103	1	1	100	10	Fácil	t	2025-10-02 02:57:24.997+00
103	1	2	100	10	Moderado	t	2025-10-02 02:57:27.46+00
103	1	3	100	10	Difícil	t	2025-10-02 02:57:29.852+00
103	1	4	100	10	Muy difícil	t	2025-10-02 02:57:31.326+00
103	1	5	100	10	Al fallo	t	2025-10-02 02:57:33.076+00
103	1	6	100	10	Al fallo	t	2025-10-02 02:57:37.952+00
103	1	7	100	10	\N	f	\N
104	47	1	60	8	\N	f	\N
104	47	2	60	8	\N	f	\N
104	47	3	60	8	\N	f	\N
104	12	1	100	12	\N	f	\N
104	12	2	100	12	\N	f	\N
104	12	3	100	12	\N	f	\N
104	10	1	60	10	\N	f	\N
104	10	2	60	10	\N	f	\N
104	10	3	60	10	\N	f	\N
104	11	1	60	10	\N	f	\N
104	11	2	60	10	\N	f	\N
104	11	3	60	10	\N	f	\N
104	31	1	0	15	\N	f	\N
104	31	2	0	15	\N	f	\N
104	31	3	0	15	\N	f	\N
104	31	4	0	15	\N	f	\N
104	35	1	0	15	\N	f	\N
104	35	2	0	15	\N	f	\N
104	35	3	0	15	\N	f	\N
104	35	4	0	15	\N	f	\N
104	17	1	40	15	\N	f	\N
104	17	2	40	15	\N	f	\N
104	17	3	40	15	\N	f	\N
104	17	4	40	15	\N	f	\N
104	36	1	45	12	\N	f	\N
104	36	2	45	12	\N	f	\N
104	36	3	45	12	\N	f	\N
104	36	4	45	12	\N	f	\N
105	2	1	45	12	\N	f	\N
105	2	2	45	12	\N	f	\N
105	2	3	45	12	\N	f	\N
105	2	4	45	12	\N	f	\N
105	41	1	0	20	\N	f	\N
105	41	2	0	20	\N	f	\N
105	41	3	0	20	\N	f	\N
105	41	4	0	20	\N	f	\N
105	50	1	0	20	\N	f	\N
105	50	2	0	20	\N	f	\N
105	50	3	0	20	\N	f	\N
105	50	4	0	20	\N	f	\N
105	44	1	40	10	\N	f	\N
105	44	2	40	10	\N	f	\N
105	44	3	40	10	\N	f	\N
105	44	4	40	10	\N	f	\N
105	22	1	40	10	\N	f	\N
105	22	2	40	10	\N	f	\N
105	22	3	40	10	\N	f	\N
105	22	4	40	10	\N	f	\N
105	19	1	30	12	\N	f	\N
105	19	2	30	12	\N	f	\N
105	19	3	30	12	\N	f	\N
105	19	4	30	12	\N	f	\N
106	47	1	60	8	\N	t	2025-10-02 06:15:54.759+00
106	47	2	60	8	\N	t	2025-10-02 06:15:55.343+00
106	47	3	60	8	\N	t	2025-10-02 06:15:56.057+00
106	12	1	100	12	\N	t	2025-10-02 06:15:57.27+00
106	12	2	100	12	\N	t	2025-10-02 06:15:58.071+00
106	12	3	100	12	\N	f	\N
106	10	1	60	10	\N	f	\N
106	10	2	60	10	\N	f	\N
106	10	3	60	10	\N	f	\N
106	11	1	60	10	\N	f	\N
106	11	2	60	10	\N	f	\N
106	11	3	60	10	\N	f	\N
106	31	1	0	15	\N	f	\N
106	31	2	0	15	\N	f	\N
106	31	3	0	15	\N	f	\N
106	31	4	0	15	\N	f	\N
106	35	1	0	15	\N	f	\N
106	35	2	0	15	\N	f	\N
106	35	3	0	15	\N	f	\N
106	35	4	0	15	\N	f	\N
106	17	1	40	15	\N	f	\N
106	17	2	40	15	\N	f	\N
106	17	3	40	15	\N	f	\N
106	17	4	40	15	\N	f	\N
106	36	1	45	12	\N	f	\N
106	36	2	45	12	\N	f	\N
106	36	3	45	12	\N	f	\N
106	36	4	45	12	\N	f	\N
107	47	1	60	8	Moderado	t	2025-10-02 06:19:08.533+00
107	47	2	60	8	Moderado	t	2025-10-02 06:19:09.916+00
107	47	3	60	8	Moderado	t	2025-10-02 06:19:11.128+00
107	47	4	60	8	Moderado	t	2025-10-02 06:19:12.482+00
107	12	1	100	12	Moderado	t	2025-10-02 06:19:03.297+00
107	12	2	100	12	Moderado	t	2025-10-02 06:19:04.576+00
107	12	3	100	12	Moderado	t	2025-10-02 06:19:05.756+00
107	10	1	60	10	\N	t	2025-10-02 06:19:55.521+00
107	10	2	60	10	\N	t	2025-10-02 06:19:54.345+00
107	10	3	60	10	\N	t	2025-10-02 06:19:53.181+00
107	11	1	60	10	\N	t	2025-10-02 06:19:48.775+00
107	11	2	60	10	\N	t	2025-10-02 06:19:49.908+00
107	11	3	60	10	\N	t	2025-10-02 06:19:51.156+00
107	31	1	0	15	\N	t	2025-10-02 06:19:46.383+00
107	31	2	0	15	\N	t	2025-10-02 06:19:45.093+00
107	31	3	0	15	\N	t	2025-10-02 06:19:43.742+00
107	31	4	0	15	\N	t	2025-10-02 06:19:42.234+00
107	35	1	0	15	\N	t	2025-10-02 06:19:39.567+00
107	35	2	0	15	\N	t	2025-10-02 06:19:38.502+00
107	35	3	0	15	\N	t	2025-10-02 06:19:37.109+00
107	35	4	0	15	\N	t	2025-10-02 06:19:35.45+00
107	17	1	40	15	\N	t	2025-10-02 06:19:33.942+00
107	17	2	40	15	\N	t	2025-10-02 06:19:30.602+00
107	17	3	40	15	\N	t	2025-10-02 06:19:29.268+00
107	17	4	40	15	\N	t	2025-10-02 06:19:28.221+00
107	36	1	45	12	\N	t	2025-10-02 06:19:20.462+00
107	36	2	45	12	\N	t	2025-10-02 06:19:22.164+00
107	36	3	45	12	\N	t	2025-10-02 06:19:23.522+00
107	36	4	45	12	\N	t	2025-10-02 06:19:24.854+00
108	1	1	100	10	Al fallo	t	2025-10-02 14:58:45.194+00
108	1	2	100	10	Al fallo	t	2025-10-02 14:58:46.356+00
108	1	3	100	10	Al fallo	t	2025-10-02 14:58:47.819+00
108	9	1	45	10	Al fallo	t	2025-10-02 14:58:57.558+00
108	9	2	45	10	Al fallo	t	2025-10-02 14:58:58.797+00
108	9	3	40	10	Al fallo	t	2025-10-02 14:58:59.965+00
110	47	1	60	10	Fácil	t	2025-10-02 17:10:58.335+00
110	47	2	60	10	Moderado	t	2025-10-02 17:11:02.763+00
110	47	3	60	10	Al fallo	t	2025-10-02 17:11:06.381+00
110	12	1	100	12	\N	f	\N
110	12	2	100	12	\N	f	\N
110	12	3	100	12	\N	f	\N
110	10	1	50	10	\N	f	\N
110	10	2	50	10	\N	f	\N
110	10	3	50	10	\N	f	\N
110	10	4	50	10	\N	f	\N
110	11	1	50	12	\N	f	\N
110	11	2	50	12	\N	f	\N
110	11	3	50	12	\N	f	\N
110	11	4	50	12	\N	f	\N
111	2	1	45	12	\N	t	2025-10-02 20:25:58.748+00
111	2	2	45	12	\N	t	2025-10-02 20:26:00.043+00
111	2	3	45	12	\N	t	2025-10-02 20:26:01.375+00
111	2	4	45	12	\N	t	2025-10-02 20:26:02.768+00
111	41	1	0	20	\N	f	\N
111	41	2	0	20	\N	f	\N
111	41	3	0	20	\N	f	\N
111	41	4	0	20	\N	f	\N
111	50	1	0	20	\N	f	\N
111	50	2	0	20	\N	f	\N
111	50	3	0	20	\N	f	\N
111	50	4	0	20	\N	f	\N
111	44	1	40	10	\N	f	\N
111	44	2	40	10	\N	f	\N
111	44	3	40	10	\N	f	\N
111	44	4	40	10	\N	f	\N
111	22	1	40	10	\N	f	\N
111	22	2	40	10	\N	f	\N
111	22	3	40	10	\N	f	\N
111	22	4	40	10	\N	f	\N
111	19	1	30	12	\N	f	\N
111	19	2	30	12	\N	f	\N
111	19	3	30	12	\N	f	\N
111	19	4	30	12	\N	f	\N
112	1	1	100	12	Difícil	t	2025-10-03 01:15:12.184+00
112	1	2	100	10	Muy difícil	t	2025-10-03 01:15:16.702+00
112	1	3	100	10	Muy difícil	t	2025-10-03 01:15:17.582+00
112	9	1	80	10	Muy difícil	t	2025-10-03 01:15:26.253+00
112	9	2	80	10	Moderado	t	2025-10-03 01:15:24.553+00
112	9	3	80	10	Difícil	t	2025-10-03 01:15:25.322+00
112	9	4	80	10	\N	f	\N
\.


--
-- Data for Name: Medallas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Medallas" ("id_medalla", "nombre", "descripcion", "criterio") FROM stdin;
\.


--
-- Data for Name: MedallasUsuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."MedallasUsuario" ("id_usuario", "id_medalla", "fecha_obtenida") FROM stdin;
\.


--
-- Data for Name: Programas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Programas" ("id", "nombre", "descripcion", "nivel_recomendado") FROM stdin;
1	Full_Body_Hipertrofia_Basico	Esta rutina consta de 3 rutinas las cuales se deben de hacer primero Hiper 1 luego el 2 y asi hasta hacer las 3 despues dejar descansar un dia y volver al ciclo	\N
2	Acondicionamiento_Funcional	Plan de ejercicios para adaptación, hacer durante 1 o 2 semanas segun el estado fisico, se recomienda hacerlo un dia y descansar el siguiente, el objetivo es acostumbrarse al ejercicio.	Principiante
3	Cardio_y_Abs_Intenso	Rutina perfecta para todos los que quieran mostrar six pack en verano, esta rutina se puede realizar hasta 6 veces a la semana, solo escucha a tu cuerppo y si te sientes muy cansado puedes hacerlo minimo 3 días.	Intermedio
4	Circuito_Quema_Grasa_en_Casa	Rutina adaptada a las disponibilidades del hogar, planeado para poder tonificar sin tanto presupuesto, se recomienda de 3-6 veces por semana.	Principiante
5	Core_y_Estabilidad_Total	Rutina enfocada en fortalecer el core para todos los ejercicios, se recomienda llevar a la par de otra rutina.	Principiante
6	Cross_Training_Moderado	Rutina hecha para introducir a los nuevos al ejercicio con variedad de ejercicios.	Principiante
7	Flexibilidad_y_Movilidad	Rutina ideada para preparar el cuerpo para la accion y adaptarse al ejercicio para los más nuevos, realizar 6 veces por semana.	Principiante
8	Full_Body_Quema_Grasa	Rutina especial para realizarse pocos dias a la semana y aun asi tener resultados, recomentable si solo puedes ir menos de 4 dias por semana.	Intermedio
9	Mantenimiento_Activo_General	Rutina ideal para los usuarios que solo necesitan mantenerse en su estado fisico actual o al menos no empeorar.	Intermedio
10	Arnold_Split	Este split está inspirado en el famoso culturista Arnold, la idea es hacer un dia pecho y espalda, al siguiente brazo completo y al final pierna con abs, descansar un dia y repetir el ciclo.	\N
11	Powerlifting_Basico	Rutina especial para aquellos que quieran potenciar su fuerza en general, se recomienda no entrenarla más de 4 dias a la semana.	\N
12	Push_Pull_Legs_Avanzado	Rutina dividade en 3 dias como base, uno de empuje otro de jalones y otro tren inferior, perfecto para 3 o 6 dias de entrenamiento.	\N
13	Rutina_Weider_Dividida	Rutina dinamica para alternar partes sin tanto cansansio de por medio, hacer 3 dias y descansar 1.	\N
14	Torso_Pierna_Intermedio	Rutina creada para trabajar todo el cuerpo en tan solo dos dias, ideal para las personas con poca disponibilidad de dias. Se puede realizar mas de una vez a la semana.	\N
15	Metodo_Bilbo	Rutina especializada en el desarrollo de fuerza en el tren superior, directamente relacionada con el tren de empuje, por lo cual se puede combinar con una rutina complementaria.	\N
16	Rutina_descarga	Rutina ideal para aquellos que se sientan cansados o necesitan bajar pesos para poder descansar sin perder musculo, por su dificultad baja se puede hacer hasta 5 días a la semana.\n	\N
\.


--
-- Data for Name: ProgramasRutinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProgramasRutinas" ("id", "id_programa", "id_rutina", "orden", "dia_semana") FROM stdin;
1	1	133	\N	\N
2	1	134	\N	\N
3	1	135	\N	\N
4	2	168	\N	\N
5	3	169	\N	\N
6	4	173	\N	\N
7	5	174	\N	\N
8	6	174	\N	\N
9	6	175	\N	\N
10	7	176	\N	\N
11	7	174	\N	\N
12	8	177	\N	\N
13	9	176	\N	\N
14	9	178	\N	\N
15	10	179	\N	\N
16	10	180	\N	\N
17	10	181	\N	\N
18	11	182	\N	\N
19	11	183	\N	\N
20	12	184	\N	\N
21	12	185	\N	\N
22	12	186	\N	\N
23	13	184	\N	\N
24	13	185	\N	\N
25	13	183	\N	\N
26	14	187	\N	\N
27	14	181	\N	\N
28	15	188	\N	\N
29	15	183	\N	\N
30	16	178	\N	\N
31	16	168	\N	\N
\.


--
-- Data for Name: ProgresoDeUsuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProgresoDeUsuario" ("id_progreso", "id_usuario", "fecha", "id_ejercicio", "series", "repeticiones", "peso_usado", "sensacion") FROM stdin;
\.


--
-- Data for Name: SocialComments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SocialComments" ("id_comment", "id_sesion", "author_uid", "texto", "created_at", "updated_at") FROM stdin;
18	81	09ff1a6d-48d3-4dbf-814e-5229c6549e86	Segundo comentario	2025-09-30 00:44:29.790352+00	\N
19	81	3e965a3e-9729-4a41-96e7-724c0763edd0	Wow que buen entrenamiento	2025-09-30 00:44:58.896474+00	\N
21	80	3e965a3e-9729-4a41-96e7-724c0763edd0	si estas fuerte	2025-09-30 00:57:40.328742+00	\N
22	80	82eb2899-4641-4dfe-97dc-665ccb66cdf7	alaaaa bencha	2025-09-30 00:58:15.662397+00	\N
24	85	3e965a3e-9729-4a41-96e7-724c0763edd0	Nice work	2025-09-30 02:38:32.866374+00	\N
26	85	82eb2899-4641-4dfe-97dc-665ccb66cdf7	alaaaa bencha	2025-09-30 04:18:34.80128+00	\N
27	85	3e965a3e-9729-4a41-96e7-724c0763edd0	Nice dick bro	2025-09-30 13:49:50.662071+00	\N
31	88	82eb2899-4641-4dfe-97dc-665ccb66cdf7	Hola	2025-10-01 00:41:07.6666+00	\N
35	85	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	Ah	2025-10-01 04:54:00.88974+00	\N
36	46	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	Que rico	2025-10-01 05:40:07.980358+00	\N
40	95	ef794a04-7430-4bda-8604-b6324ea88cde	sfdsdfs	2025-10-01 13:44:59.338405+00	\N
56	93	3e965a3e-9729-4a41-96e7-724c0763edd0	Buen entrenamiento	2025-10-01 16:57:14.653731+00	\N
57	93	09ff1a6d-48d3-4dbf-814e-5229c6549e86	si estas fuerte	2025-10-01 16:57:38.379343+00	\N
59	100	3e965a3e-9729-4a41-96e7-724c0763edd0	siiiiiiiiiii	2025-10-01 22:17:16.704138+00	\N
60	101	3e965a3e-9729-4a41-96e7-724c0763edd0	solucionado	2025-10-01 23:00:05.226257+00	\N
62	102	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	Ajalas	2025-10-02 03:07:55.636252+00	\N
64	104	eb0d5b2b-0260-4f26-a399-e7496b25c94f	LOL	2025-10-02 05:51:37.579178+00	\N
65	105	90cf26a8-2777-4abe-93ec-8f91db0f4737	Kike no te vi en el gym hoy, que paso ahi?	2025-10-02 06:17:59.707317+00	\N
68	112	82eb2899-4641-4dfe-97dc-665ccb66cdf7	oh yeah	2025-10-21 16:02:28.809861+00	\N
69	69	82eb2899-4641-4dfe-97dc-665ccb66cdf7	aaa	2025-10-21 18:25:07.164133+00	\N
\.


--
-- Data for Name: SocialLikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SocialLikes" ("id_like", "id_sesion", "author_uid", "created_at") FROM stdin;
6	85	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-29 23:21:12.613696+00
14	81	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-30 00:45:00.110004+00
15	80	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-30 00:57:17.562333+00
16	80	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-30 00:57:30.778518+00
83	93	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 16:57:10.23096+00
18	85	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-30 01:39:51.750081+00
86	100	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 22:17:13.071749+00
22	86	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-30 18:06:50.459965+00
24	88	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-10-01 00:41:10.979526+00
88	101	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-02 00:30:01.650316+00
90	102	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-02 04:25:59.459865+00
91	102	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	2025-10-02 05:06:47.020139+00
92	102	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-10-02 05:47:46.40173+00
93	104	eb0d5b2b-0260-4f26-a399-e7496b25c94f	2025-10-02 05:51:33.034878+00
94	104	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 06:18:09.59803+00
95	105	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 06:18:15.186169+00
34	85	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-10-01 05:39:45.095887+00
98	69	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-10-21 18:25:10.557843+00
38	94	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	2025-10-01 05:41:50.01319+00
39	95	ef794a04-7430-4bda-8604-b6324ea88cde	2025-10-01 13:44:56.019662+00
100	110	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-10-29 00:25:53.864544+00
101	112	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-10-30 16:07:17.22483+00
\.


--
-- Data for Name: SolicitudesAmistad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SolicitudesAmistad" ("id_solicitud", "solicitante_id", "destinatario_id", "estado", "mensaje", "created_at", "updated_at") FROM stdin;
7630b01b-57a4-412b-8b59-aa02623f2eda	9	19	aceptada	\N	2025-09-26 15:35:32.068927+00	2025-09-26 15:41:35.514475+00
fe20ccc9-f741-46f5-b00d-ad87a45dcec2	19	9	aceptada	\N	2025-09-26 15:42:39.407319+00	2025-09-26 15:42:52.902649+00
5323bfd7-301e-4a98-a43c-9e7e6a2dfcf9	9	19	aceptada	\N	2025-09-26 15:44:44.651934+00	2025-09-26 18:07:11.4036+00
d2a2e835-e786-4b26-a765-57b3ef02019c	9	6	pendiente	\N	2025-09-26 18:15:40.965979+00	2025-09-26 18:15:40.965979+00
e8caff85-aab0-45a3-8b8a-a0741090e852	9	13	aceptada	\N	2025-09-27 03:44:15.84447+00	2025-09-28 15:07:49.185459+00
35814f06-7047-4479-8586-79b3b50579d9	13	19	aceptada	\N	2025-09-28 15:08:00.02802+00	2025-09-28 15:08:07.866549+00
1e952700-fb5f-41fb-80c1-ce2b718f5201	32	9	aceptada	\N	2025-09-29 00:27:04.092555+00	2025-09-29 00:27:07.962529+00
16509975-86b0-4ce3-aa15-02310c397852	9	13	aceptada	\N	2025-09-30 23:07:30.783002+00	2025-09-30 23:07:50.873804+00
4b1c0bb3-7b95-4bb0-9177-e3d32df66b07	9	13	aceptada	\N	2025-09-30 23:08:42.76231+00	2025-09-30 23:08:56.746879+00
c0a1541c-5a4e-4b2c-8042-f30eb0044ca2	13	9	aceptada	\N	2025-09-30 23:18:20.174977+00	2025-09-30 23:18:25.450241+00
7034f9fb-c4b8-4ae6-b947-1698f4e324e5	9	1	pendiente	\N	2025-10-01 03:23:47.749204+00	2025-10-01 03:23:47.749204+00
b6681492-9807-4ae4-aef8-6d0497e6cc6b	13	33	aceptada	\N	2025-10-01 04:49:35.423423+00	2025-10-01 04:49:43.345871+00
63d43a8e-5c64-45bd-be51-f040abec6e57	20	33	aceptada	\N	2025-10-01 13:46:32.439656+00	2025-10-01 21:15:12.719906+00
4496f91c-8961-4337-8b14-0f9e0e1ffe89	34	9	pendiente	\N	2025-10-02 03:01:55.453575+00	2025-10-02 03:01:55.453575+00
a66d1744-8c81-4dfc-8485-27351a97709c	35	19	aceptada	\N	2025-10-02 05:50:37.891158+00	2025-10-02 05:50:43.424769+00
a7953276-5233-48c7-8ce1-903fa04c29fd	35	36	aceptada	\N	2025-10-02 06:13:25.038133+00	2025-10-02 06:14:39.007477+00
5b105048-e7b7-45db-8ea6-eaa2929a7f59	20	35	pendiente	\N	2025-10-02 16:52:57.826469+00	2025-10-02 16:52:57.826469+00
da5fe441-076d-41d5-a719-c958a83c40bb	20	13	aceptada	\N	2025-10-02 17:02:31.113555+00	2025-10-02 17:02:48.20019+00
4f443cbc-32a6-4503-9e64-15e64c47fb00	36	34	pendiente	\N	2025-10-02 23:21:17.260135+00	2025-10-02 23:21:17.260135+00
0a11e1bd-e853-487a-b926-c8966f0eab2c	36	9	pendiente	\N	2025-10-02 23:21:18.813491+00	2025-10-02 23:21:18.813491+00
bb438fd0-3768-4aca-805d-8b9ab7ae6d41	19	32	pendiente	\N	2025-10-30 01:11:29.879599+00	2025-10-30 01:11:29.879599+00
cd7acefd-85b2-4b77-b29b-fecde1f2df77	19	34	cancelada	\N	2025-10-29 02:27:08.485224+00	2025-10-30 16:05:24.758421+00
\.


--
-- Data for Name: UsuarioRutina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."UsuarioRutina" ("id", "created_at", "id_usuario", "id_rutina", "id_programa", "privada", "activa") FROM stdin;
109	2025-09-14 02:53:54.763345+00	13	113	\N	t	f
111	2025-09-15 16:31:46.968161+00	15	114	\N	t	f
15	2025-09-02 16:43:42.023708+00	\N	66	\N	t	f
22	2025-09-02 21:01:48.262579+00	10	70	\N	t	f
24	2025-09-02 21:01:57.691571+00	10	71	\N	t	f
26	2025-09-02 21:11:54.101288+00	10	72	\N	t	t
57	2025-09-08 15:42:49.098565+00	20	87	\N	t	f
113	2025-09-16 19:41:17.472519+00	19	115	\N	t	f
117	2025-09-18 14:13:05.403873+00	20	117	\N	t	f
123	2025-09-19 21:20:14.135393+00	19	120	\N	t	f
125	2025-09-19 22:44:26.623454+00	3	121	\N	t	f
131	2025-09-23 02:14:08.388553+00	29	124	\N	t	f
133	2025-09-23 14:24:47.84428+00	31	125	\N	t	f
135	2025-09-24 02:39:09.985484+00	9	126	\N	t	f
139	2025-09-26 13:42:48.706954+00	9	128	\N	t	f
141	2025-09-27 03:43:02.446592+00	9	129	\N	t	f
143	2025-09-28 23:48:52.511689+00	9	130	\N	t	f
145	2025-09-29 00:29:05.156396+00	32	131	\N	t	f
147	2025-09-30 16:54:46.687523+00	20	132	\N	t	f
149	2025-09-30 17:43:51.709906+00	20	133	\N	t	f
151	2025-09-30 17:44:09.650685+00	20	134	\N	t	f
153	2025-09-30 17:44:38.632814+00	20	135	\N	t	f
155	2025-09-30 18:08:20.631105+00	20	136	\N	t	f
175	2025-09-30 19:34:55.708771+00	20	146	\N	t	f
189	2025-10-01 02:26:09.335605+00	9	153	\N	t	f
197	2025-10-01 04:51:04.617059+00	33	157	\N	t	f
205	2025-10-01 05:43:01.934496+00	33	161	\N	t	f
207	2025-10-01 05:43:01.934496+00	33	162	\N	t	f
209	2025-10-01 05:43:01.934496+00	33	163	\N	t	f
211	2025-10-01 13:45:47.858169+00	20	164	\N	t	f
219	2025-10-01 16:49:04.516128+00	20	168	\N	t	f
221	2025-10-01 16:55:20.866644+00	20	169	\N	t	f
229	2025-10-01 17:19:15.032544+00	20	173	\N	t	f
231	2025-10-01 17:24:07.416215+00	20	174	\N	t	f
233	2025-10-01 17:39:29.138828+00	20	175	\N	t	f
235	2025-10-01 17:55:54.831164+00	20	176	\N	t	f
237	2025-10-01 18:19:51.544232+00	20	177	\N	t	f
239	2025-10-01 18:32:19.279761+00	20	178	\N	t	f
241	2025-10-01 20:23:02.710979+00	20	179	\N	t	f
243	2025-10-01 20:26:01.728634+00	20	180	\N	t	f
245	2025-10-01 20:31:04.104496+00	20	181	\N	t	f
247	2025-10-01 20:38:26.383686+00	20	182	\N	t	f
249	2025-10-01 20:40:53.044926+00	20	183	\N	t	f
251	2025-10-01 20:46:25.072505+00	20	184	\N	t	f
253	2025-10-01 20:48:19.548836+00	20	185	\N	t	f
255	2025-10-01 20:51:22.637056+00	20	186	\N	t	f
257	2025-10-01 20:58:46.751706+00	20	187	\N	t	f
259	2025-10-01 21:05:02.603321+00	20	188	\N	t	f
261	2025-10-01 21:17:09.28778+00	33	189	\N	t	f
263	2025-10-01 21:18:51.563241+00	33	190	\N	t	f
265	2025-10-01 21:19:26.020037+00	33	191	\N	t	f
267	2025-10-01 21:19:26.020037+00	33	192	\N	t	f
269	2025-10-01 21:19:26.020037+00	33	193	\N	t	f
271	2025-10-01 21:32:48.771606+00	33	194	\N	t	f
273	2025-10-01 21:32:48.771606+00	33	195	\N	t	f
283	2025-10-02 02:57:19.497479+00	34	200	\N	t	f
285	2025-10-02 03:00:10.248989+00	34	201	\N	t	f
287	2025-10-02 03:00:10.248989+00	34	202	\N	t	f
289	2025-10-02 05:11:20.663359+00	33	203	\N	t	f
291	2025-10-02 05:11:20.663359+00	33	204	\N	t	f
293	2025-10-02 05:11:20.663359+00	33	205	\N	t	f
295	2025-10-02 05:51:21.941325+00	35	206	\N	t	f
297	2025-10-02 05:51:21.941325+00	35	207	\N	t	f
299	2025-10-02 06:16:37.093541+00	36	208	\N	t	f
301	2025-10-02 06:16:37.093541+00	36	209	\N	t	f
303	2025-10-02 17:09:23.73566+00	13	210	\N	t	f
305	2025-10-02 17:10:33.634027+00	13	211	\N	t	f
307	2025-10-02 17:10:33.634027+00	13	212	\N	t	f
309	2025-10-02 17:10:33.634027+00	13	213	\N	t	f
311	2025-10-02 20:45:20.144247+00	36	214	\N	t	f
313	2025-10-02 20:46:25.761224+00	36	215	\N	t	f
315	2025-10-02 20:46:25.761224+00	36	216	\N	t	f
317	2025-10-03 01:14:19.218983+00	13	217	\N	t	f
319	2025-10-03 01:19:05.54071+00	13	218	\N	t	f
321	2025-10-03 01:19:05.54071+00	13	219	\N	t	f
323	2025-10-03 01:19:05.54071+00	13	220	\N	t	f
325	2025-10-23 14:44:24.746538+00	19	221	\N	t	f
\.


--
-- Data for Name: feedbackusuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."feedbackusuario" ("id_feedback", "id_usuario", "id_rutina", "fecha", "satisfaccion") FROM stdin;
\.


--
-- Data for Name: recomendacionesia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."recomendacionesia" ("id_recomendacion", "id_usuario", "fecha", "rutina_recomendada", "razon") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
avatars	avatars	\N	2025-09-24 03:03:27.034731+00	2025-09-24 03:03:27.034731+00	t	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
10d86b35-bf1c-4f6f-8679-017d4e97e11b	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758683130828.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:05:31.939067+00	2025-09-24 03:05:31.939067+00	2025-09-24 03:05:31.939067+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:05:32.000Z", "contentLength": 43228, "httpStatusCode": 200}	9647d5ab-405d-49bb-98f3-76f6db7a6846	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
1ae252bd-4b6a-4a7a-8789-efd1e0b8a6ee	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758683185731.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:06:26.601842+00	2025-09-24 03:06:26.601842+00	2025-09-24 03:06:26.601842+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:06:27.000Z", "contentLength": 43228, "httpStatusCode": 200}	46d36efb-cdb7-4ab2-a4dc-b0b594e58fc2	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
30890d16-2d05-43ac-bd09-d686b0ebeae6	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758683382683.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:09:43.729294+00	2025-09-24 03:09:43.729294+00	2025-09-24 03:09:43.729294+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:09:44.000Z", "contentLength": 43228, "httpStatusCode": 200}	c2aff6eb-c7d2-4f7f-b183-46d26a70c6c1	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
d37c3a07-9bf8-4099-a7d7-fde451ce58de	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758683420546.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:10:21.651257+00	2025-09-24 03:10:21.651257+00	2025-09-24 03:10:21.651257+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:10:22.000Z", "contentLength": 43228, "httpStatusCode": 200}	fa1d3c7e-8898-40db-8998-bf197041fd6b	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
5d3094df-b103-44f6-9455-4d84fe438bfe	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758683555698.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:12:36.996476+00	2025-09-24 03:12:36.996476+00	2025-09-24 03:12:36.996476+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:12:37.000Z", "contentLength": 43228, "httpStatusCode": 200}	a4fa92c2-e64c-4314-939a-9c940fbe6c0d	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
4145e2f8-a06d-465e-8845-fa27ac70e9c2	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758683706932.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:15:08.003594+00	2025-09-24 03:15:08.003594+00	2025-09-24 03:15:08.003594+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:15:08.000Z", "contentLength": 43228, "httpStatusCode": 200}	6ed4d6d5-722d-4b26-9bb7-45a045e26561	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
79a3035b-b30b-413c-b61f-e1fb7337d0d2	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758684041490.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:20:42.561525+00	2025-09-24 03:20:42.561525+00	2025-09-24 03:20:42.561525+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:20:43.000Z", "contentLength": 43228, "httpStatusCode": 200}	53468af9-9310-459b-96ed-40ce4f825705	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
5ea9b54f-939c-455c-9360-cff4834aea88	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758685501476.png	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:45:02.669018+00	2025-09-24 03:45:02.669018+00	2025-09-24 03:45:02.669018+00	{"eTag": "\\"9fc12d46771a8d9791a01451c92d253b\\"", "size": 128550, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:45:03.000Z", "contentLength": 128550, "httpStatusCode": 200}	1dcadc05-d89a-471f-bf5d-d974369182a0	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
a9ebfb56-c177-400d-86d4-4514432a1007	avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758685514777.jpg	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:45:15.720781+00	2025-09-24 03:45:15.720781+00	2025-09-24 03:45:15.720781+00	{"eTag": "\\"b30c5389d19a865843ae7e55e093a667\\"", "size": 43228, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-24T03:45:16.000Z", "contentLength": 43228, "httpStatusCode": 200}	23ddc72e-f067-446c-8c4b-37385830fba1	82eb2899-4641-4dfe-97dc-665ccb66cdf7	{}	2
822c9c91-37fa-4d13-b8cd-0996c80f4b36	avatars	09ff1a6d-48d3-4dbf-814e-5229c6549e86/avatar_1758894236053.jpg	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-26 13:43:55.836809+00	2025-09-26 13:43:55.836809+00	2025-09-26 13:43:55.836809+00	{"eTag": "\\"de9bf725599e6c46514e88b1ea383726\\"", "size": 11084, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-26T13:43:56.000Z", "contentLength": 11084, "httpStatusCode": 200}	558f84c5-769a-407b-98e3-c59e1677cb0a	09ff1a6d-48d3-4dbf-814e-5229c6549e86	{}	2
a5ddd9cd-8936-413f-915b-0629e2f46a39	avatars	3e965a3e-9729-4a41-96e7-724c0763edd0/avatar_1759072207398.jpg	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-28 15:10:07.722636+00	2025-09-28 15:10:07.722636+00	2025-09-28 15:10:07.722636+00	{"eTag": "\\"d057228140fc40bc5843687af70baa11\\"", "size": 6559, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-28T15:10:08.000Z", "contentLength": 6559, "httpStatusCode": 200}	8536beef-4ad0-4f0b-a115-da331f116b6b	3e965a3e-9729-4a41-96e7-724c0763edd0	{}	2
08de40df-ec1c-4fb2-b45f-34c49c471e93	avatars	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2/avatar_1759297500676.png	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	2025-10-01 05:45:00.753628+00	2025-10-01 05:45:00.753628+00	2025-10-01 05:45:00.753628+00	{"eTag": "\\"9051e194caea91ae73ba34bd3c552a63\\"", "size": 224662, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-10-01T05:45:01.000Z", "contentLength": 224662, "httpStatusCode": 200}	ecd5c703-c073-473c-a67e-887ea917d11b	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	{}	2
9fdd17e9-ffec-4dca-b420-6589335d2bd0	avatars	90cf26a8-2777-4abe-93ec-8f91db0f4737/avatar_1759386046450.png	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 06:20:45.175101+00	2025-10-02 06:20:45.175101+00	2025-10-02 06:20:45.175101+00	{"eTag": "\\"28b22ddd3556ed171216431d53820356\\"", "size": 279243, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-10-02T06:20:46.000Z", "contentLength": 279243, "httpStatusCode": 200}	b5a175b3-f996-4021-b921-d9007c69580c	90cf26a8-2777-4abe-93ec-8f91db0f4737	{}	2
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:05:31.939067+00	2025-09-24 03:05:31.939067+00
avatars	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-26 13:43:55.836809+00	2025-09-26 13:43:55.836809+00
avatars	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-28 15:10:07.722636+00	2025-09-28 15:10:07.722636+00
avatars	3e15b2c6-7a1f-4382-bc91-8cf7ec8034e2	2025-10-01 05:45:00.753628+00	2025-10-01 05:45:00.753628+00
avatars	90cf26a8-2777-4abe-93ec-8f91db0f4737	2025-10-02 06:20:45.175101+00	2025-10-02 06:20:45.175101+00
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 584, true);


--
-- Name: Entrenamientos_id_sesion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Entrenamientos_id_sesion_seq"', 118, true);


--
-- Name: ProgramasRutinas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ProgramasRutinas_id_seq"', 31, true);


--
-- Name: Programas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Programas_id_seq"', 16, true);


--
-- Name: SocialComments_id_comment_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."SocialComments_id_comment_seq"', 80, true);


--
-- Name: SocialLikes_id_like_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."SocialLikes_id_like_seq"', 101, true);


--
-- Name: UsuarioRutina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."UsuarioRutina_id_seq"', 326, true);


--
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ejercicios_id_ejercicio_seq"', 58, true);


--
-- Name: feedbackusuario_id_feedback_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."feedbackusuario_id_feedback_seq"', 1, false);


--
-- Name: medallas_id_medalla_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."medallas_id_medalla_seq"', 1, false);


--
-- Name: progresousuario_id_progreso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."progresousuario_id_progreso_seq"', 1, false);


--
-- Name: recomendacionesia_id_recomendacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."recomendacionesia_id_recomendacion_seq"', 1, false);


--
-- Name: rutinas_id_rutina_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."rutinas_id_rutina_seq"', 221, true);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."usuarios_id_usuario_seq"', 38, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict BfzjNX46vGdT6EL2C0V6NMYomTygS4fHM0X1nT1ms7T3GcTAYIMcXKyZZ1NuvHK

RESET ALL;
