SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict nWEQQ2FyaQa4CpoxFrg6eyt7M09HRIO2g7EX8MXbbirOWHZZUAGwTw4vP6pBbHW

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
00000000-0000-0000-0000-000000000000	ed716103-7c30-47f8-9d88-0a3188b9b43d	authenticated	authenticated	libros123@yopmail.com	$2a$10$EVtVyAsyPvyk32S9YPg64.XCrvhXb8srAFFkqh/94byVMWRJ4p.iq	2025-07-30 22:02:33.049972+00	\N		\N		\N			\N	2025-09-02 21:04:41.761784+00	{"provider": "email", "providers": ["email"]}	{"sub": "ed716103-7c30-47f8-9d88-0a3188b9b43d", "email": "libros123@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-07-30 22:02:23.79155+00	2025-09-02 21:04:41.764051+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	c8e13e66-d8d1-48c0-aab4-1de1ef5c3309	authenticated	authenticated	ceicrecefromi-9084@yopmail.com	$2a$10$3VYMYFOM8taFEJnm4k5U3OEPP/YloOJgKiOLz4xccNiBxn6uqCtXK	2025-08-02 01:19:46.813437+00	\N		2025-08-02 01:19:39.119536+00		\N			\N	2025-08-02 01:19:46.816489+00	{"provider": "email", "providers": ["email"]}	{"sub": "c8e13e66-d8d1-48c0-aab4-1de1ef5c3309", "email": "ceicrecefromi-9084@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 01:19:39.110274+00	2025-08-02 01:19:46.828875+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a37ae595-5ee2-43ae-90bb-fa08a900fa74	authenticated	authenticated	joleullouttuffe-7455@yopmail.com	$2a$10$LNL.AgfmWPx.nsEJorq82eeD7LU2UVzoyNJLpr8bHoQhkw2v.SRKC	\N	\N	6460254af351153789c9e90dde6654d232b5f5362c45afd8c74dede5	2025-08-05 15:42:08.50356+00		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"sub": "a37ae595-5ee2-43ae-90bb-fa08a900fa74", "email": "joleullouttuffe-7455@yopmail.com", "email_verified": false, "phone_verified": false}	\N	2025-08-05 15:42:08.497866+00	2025-08-05 15:42:08.890585+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	23605b07-3d7c-459e-94b8-1f6a0c7933ed	authenticated	authenticated	joutteleisopre-3760@yopmail.com	$2a$10$JcEwFUewIKbPr/Lltm8t3.me0e4Uv0205zVilIkXxejU9h3FklKbe	2025-08-03 02:12:35.4569+00	\N		\N		\N			\N	2025-08-05 19:57:08.466659+00	{"provider": "email", "providers": ["email"]}	{"sub": "23605b07-3d7c-459e-94b8-1f6a0c7933ed", "email": "joutteleisopre-3760@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-03 02:12:19.086467+00	2025-08-05 19:57:08.468423+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	e1ed77f6-f4ee-4ab0-8755-66c0a763dc62	authenticated	authenticated	naucrefafeddi-5710@yopmail.com	$2a$10$nCk4jU/gR1kQktaaF7m4peKO46SvZ7InfbN4mzYbwAiuAItRCldSO	2025-08-22 18:33:05.969481+00	\N		2025-08-22 18:32:46.349064+00		\N			\N	2025-08-22 18:33:05.974442+00	{"provider": "email", "providers": ["email"]}	{"sub": "e1ed77f6-f4ee-4ab0-8755-66c0a763dc62", "email": "naucrefafeddi-5710@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-22 18:32:46.317801+00	2025-08-22 18:33:05.980766+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ef794a04-7430-4bda-8604-b6324ea88cde	authenticated	authenticated	pepepecas@yopmail.com	$2a$10$geOHeWasF894J9vF7YQKu.scNb7cSjHlavM2AStfQmIY9zUP0lkIC	2025-09-08 15:42:13.339992+00	\N		2025-09-08 15:42:01.303396+00		\N			\N	2025-09-08 15:42:13.344504+00	{"provider": "email", "providers": ["email"]}	{"sub": "ef794a04-7430-4bda-8604-b6324ea88cde", "email": "pepepecas@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-08 15:42:01.222539+00	2025-09-18 16:57:06.191109+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	09ff1a6d-48d3-4dbf-814e-5229c6549e86	authenticated	authenticated	trajafigosso-7741@yopmail.com	$2a$10$Gr3RD471gD7zR/zmrOzFm.8QKeZm8Hekfbr4Ko.3VCcR2zY1GtIum	2025-08-07 00:59:35.342403+00	\N		\N		\N			\N	2025-09-23 16:00:02.934355+00	{"provider": "email", "providers": ["email"]}	{"sub": "09ff1a6d-48d3-4dbf-814e-5229c6549e86", "email": "trajafigosso-7741@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-07 00:59:14.282387+00	2025-09-24 02:29:40.06713+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3c278e9e-7ca6-4d16-bf51-1343d7347f81	authenticated	authenticated	proppekeppoillau-3591@yopmail.com	$2a$10$.oXFZxawNwLE5dfhUHFXk.K.ofzbsNCdGUmeUx8Fyf1W1Wq.b.7pi	2025-07-30 20:24:13.822273+00	\N		\N		\N			\N	2025-09-23 00:39:57.572884+00	{"provider": "email", "providers": ["email"]}	{"sub": "3c278e9e-7ca6-4d16-bf51-1343d7347f81", "email": "proppekeppoillau-3591@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-07-30 20:23:45.471614+00	2025-09-23 00:39:57.589154+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	1166241f-43ab-44b4-8b44-94394e4a197a	authenticated	authenticated	cibressoyelli-1317@yopmail.com	$2a$10$mdU0jVu/6pBKTdYIvycgde9DLjqwtnqyRfJsbLCleWAFsG19t806G	2025-08-26 19:08:38.885891+00	\N		2025-08-26 19:08:30.42265+00		\N			\N	2025-09-23 00:47:42.499742+00	{"provider": "email", "providers": ["email"]}	{"sub": "1166241f-43ab-44b4-8b44-94394e4a197a", "email": "cibressoyelli-1317@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-26 19:08:30.384329+00	2025-09-23 00:47:42.504888+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3e965a3e-9729-4a41-96e7-724c0763edd0	authenticated	authenticated	enrique.zepeda0017@alumnos.udg.mx	$2a$10$/r0wrlGv1Hkpal0kr40s4uIbakcp348DieA/1eCoP7p.6Do3FehLW	2025-08-01 20:35:34.760805+00	\N		2025-08-01 20:35:18.925688+00		2025-08-01 20:44:40.99238+00			\N	2025-09-22 16:18:59.317449+00	{"provider": "email", "providers": ["email"]}	{"sub": "3e965a3e-9729-4a41-96e7-724c0763edd0", "email": "enrique.zepeda0017@alumnos.udg.mx", "email_verified": true, "phone_verified": false}	\N	2025-08-01 20:35:18.909246+00	2025-09-23 00:41:05.962892+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d77e141b-738c-4494-82df-4fc479544e1e	authenticated	authenticated	zeffefrippazo-9670@yopmail.com	$2a$10$/muuu3EHd0z9chw9y9LNTea/LZK8SD0nWbBoFu1nA/O2dCa0ssGke	2025-08-05 15:40:49.076657+00	\N		\N		\N			\N	2025-09-23 01:09:16.135311+00	{"provider": "email", "providers": ["email"]}	{"sub": "d77e141b-738c-4494-82df-4fc479544e1e", "email": "zeffefrippazo-9670@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-05 15:40:39.062274+00	2025-09-23 01:09:16.13861+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ccf47ff3-abec-4672-8208-e78e1b90258f	authenticated	authenticated	nefeumewauhe-6084@yopmail.com	$2a$10$GY/secTFUTR55HDbzbCZxea9NRjT2ak1YqkA1kMrbP3oI3FFsxBlS	2025-08-02 00:54:43.360233+00	\N		2025-08-02 00:52:59.960173+00		\N			\N	2025-09-23 01:18:24.077042+00	{"provider": "email", "providers": ["email"]}	{"sub": "ccf47ff3-abec-4672-8208-e78e1b90258f", "email": "nefeumewauhe-6084@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 00:52:59.943337+00	2025-09-23 01:18:24.080598+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3c23b75b-4db9-487d-a148-6b30523ce237	authenticated	authenticated	lemmakaxebre-8624@yopmail.com	$2a$10$Uu42mzba9sqqfD9.LnRZ0eoKbL0nWGgQ/Ejfk8.3QEx40QToDQyZa	2025-08-02 17:02:10.863286+00	\N		\N		2025-08-02 18:54:20.458516+00			\N	2025-09-23 01:27:31.174394+00	{"provider": "email", "providers": ["email"]}	{"sub": "3c23b75b-4db9-487d-a148-6b30523ce237", "email": "lemmakaxebre-8624@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 17:02:02.566997+00	2025-09-23 01:27:31.177828+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	authenticated	authenticated	meyibaprallou-7095@yopmail.com	$2a$10$wGHRhU7vKL7VoteHeHskpeNeqeKCkO7rQbaMd8/uJ4xaY7mt30Mmq	2025-08-02 01:32:20.624467+00	\N		2025-08-02 01:32:12.09326+00		\N			\N	2025-09-24 03:25:46.905606+00	{"provider": "email", "providers": ["email"]}	{"sub": "bf9f3a06-afbe-4031-b3ed-86d08af7f87b", "email": "meyibaprallou-7095@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-08-02 01:32:12.080915+00	2025-09-24 03:25:46.911626+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	authenticated	authenticated	proutippoipeuji-3523@yopmail.com	$2a$10$w3af4.s4EnRqxnflIA.Whu3t3RJcUPtlPl3LDlHiGGPMT2HCb4nYK	2025-09-23 14:23:49.254545+00	\N		\N		\N			\N	2025-09-23 14:47:35.494167+00	{"provider": "email", "providers": ["email"]}	{"sub": "c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9", "email": "proutippoipeuji-3523@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-23 14:23:29.168681+00	2025-09-23 14:47:35.496532+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	82eb2899-4641-4dfe-97dc-665ccb66cdf7	authenticated	authenticated	vattatovuwe-6463@yopmail.com	$2a$10$JGpNcodIGQgOUBYYsQ.tUO1bkFdQzR5XqtqkEuOYgeSA7rrKtvIEG	2025-09-02 16:10:44.314951+00	\N		2025-09-02 16:10:34.738793+00		\N			\N	2025-09-25 14:16:55.576404+00	{"provider": "email", "providers": ["email"]}	{"sub": "82eb2899-4641-4dfe-97dc-665ccb66cdf7", "email": "vattatovuwe-6463@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-02 16:10:34.713301+00	2025-09-26 00:51:50.035405+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d028ed7d-a831-42ed-acbf-582084cf6b7a	authenticated	authenticated	cosegepunu-2914@yopmail.com	$2a$10$RkNdxM4VdUL.rKezTo1/L.ySteHa42ifaoLks.b6zOm6a9iWffdQK	2025-09-23 02:12:57.897146+00	\N		\N		\N			\N	2025-09-23 13:50:30.908504+00	{"provider": "email", "providers": ["email"]}	{"sub": "d028ed7d-a831-42ed-acbf-582084cf6b7a", "email": "cosegepunu-2914@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-23 02:12:34.6173+00	2025-09-23 13:50:30.909915+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	e334d918-2367-4b34-bf66-83a9c0b8a4aa	authenticated	authenticated	treitteubeigrizei-6265@yopmail.com	$2a$10$gfBTXVFCd3VuncqEmHWgkebFFqmUN/GfRrLt5hgAyreVy5Osq4wRe	2025-09-23 13:52:15.111632+00	\N		\N		\N			\N	2025-09-23 14:23:07.884217+00	{"provider": "email", "providers": ["email"]}	{"sub": "e334d918-2367-4b34-bf66-83a9c0b8a4aa", "email": "treitteubeigrizei-6265@yopmail.com", "email_verified": true, "phone_verified": false}	\N	2025-09-23 13:52:02.543747+00	2025-09-23 14:23:07.885825+00	\N	\N			\N		0	\N		\N	f	\N	f
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
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
b4457a70-0d50-4114-a3fe-d4d34627eb0f	c78066b4-db29-4251-9b8b-3962ad36594f	2025-07-30 00:50:39.155321+00	2025-07-30 00:50:39.155321+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36	177.245.200.254	\N
3909d172-8c98-4cb4-847f-ac26e609227f	c78066b4-db29-4251-9b8b-3962ad36594f	2025-07-30 00:50:44.966242+00	2025-07-30 00:50:44.966242+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36	177.245.200.254	\N
1b4cbc20-24cd-47a1-9fd2-7a43518625cf	ed716103-7c30-47f8-9d88-0a3188b9b43d	2025-09-02 21:04:41.761866+00	2025-09-02 21:04:41.761866+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36	177.245.200.254	\N
125caab4-c213-4231-8971-20985f557a58	ef794a04-7430-4bda-8604-b6324ea88cde	2025-09-08 15:42:13.345284+00	2025-09-18 16:57:06.192318+00	\N	aal1	\N	2025-09-18 16:57:06.192249	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	148.202.136.216	\N
5e5e0247-e859-408b-badf-0c645a820621	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-25 14:16:55.577087+00	2025-09-26 00:51:50.037936+00	\N	aal1	\N	2025-09-26 00:51:50.037868	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	187.211.49.11	\N
35c53a73-5a8c-41cf-95bf-f8e1338c5892	3c278e9e-7ca6-4d16-bf51-1343d7347f81	2025-09-23 00:39:57.572961+00	2025-09-23 00:39:57.572961+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	187.211.49.11	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
b4457a70-0d50-4114-a3fe-d4d34627eb0f	2025-07-30 00:50:39.182177+00	2025-07-30 00:50:39.182177+00	otp	d77398aa-d3cf-4338-b615-d1d5b2dea1ea
3909d172-8c98-4cb4-847f-ac26e609227f	2025-07-30 00:50:44.970023+00	2025-07-30 00:50:44.970023+00	password	5232a181-ad8a-4aeb-9255-77a81d14e785
1b4cbc20-24cd-47a1-9fd2-7a43518625cf	2025-09-02 21:04:41.764336+00	2025-09-02 21:04:41.764336+00	password	1a1bde2e-a7ed-45b7-b2f0-64caa9ef9aad
125caab4-c213-4231-8971-20985f557a58	2025-09-08 15:42:13.381388+00	2025-09-08 15:42:13.381388+00	otp	ee158fec-1f93-4fba-b9ef-08beb582d9d6
35c53a73-5a8c-41cf-95bf-f8e1338c5892	2025-09-23 00:39:57.59047+00	2025-09-23 00:39:57.59047+00	password	66b4470e-dbd5-400a-957a-dc8b81574478
5e5e0247-e859-408b-badf-0c645a820621	2025-09-25 14:16:55.611545+00	2025-09-25 14:16:55.611545+00	password	31459c4a-34e0-418c-9687-850c52d71189
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
00000000-0000-0000-0000-000000000000	185	c64mxgkzsvdh	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-09-08 15:42:13.362283+00	2025-09-09 16:08:20.670538+00	\N	125caab4-c213-4231-8971-20985f557a58
00000000-0000-0000-0000-000000000000	165	mpqtkbmdzcs5	ed716103-7c30-47f8-9d88-0a3188b9b43d	f	2025-09-02 21:04:41.762621+00	2025-09-02 21:04:41.762621+00	\N	1b4cbc20-24cd-47a1-9fd2-7a43518625cf
00000000-0000-0000-0000-000000000000	277	rpmzz2obt4ck	3c278e9e-7ca6-4d16-bf51-1343d7347f81	f	2025-09-23 00:39:57.578986+00	2025-09-23 00:39:57.578986+00	\N	35c53a73-5a8c-41cf-95bf-f8e1338c5892
00000000-0000-0000-0000-000000000000	344	2ci7xozxawcy	82eb2899-4641-4dfe-97dc-665ccb66cdf7	t	2025-09-25 14:16:55.593216+00	2025-09-25 15:38:44.514301+00	\N	5e5e0247-e859-408b-badf-0c645a820621
00000000-0000-0000-0000-000000000000	345	k6f2vuasp4ww	82eb2899-4641-4dfe-97dc-665ccb66cdf7	t	2025-09-25 15:38:44.51872+00	2025-09-26 00:51:50.027597+00	2ci7xozxawcy	5e5e0247-e859-408b-badf-0c645a820621
00000000-0000-0000-0000-000000000000	346	ymrmizbqg3ya	82eb2899-4641-4dfe-97dc-665ccb66cdf7	f	2025-09-26 00:51:50.033583+00	2025-09-26 00:51:50.033583+00	k6f2vuasp4ww	5e5e0247-e859-408b-badf-0c645a820621
00000000-0000-0000-0000-000000000000	189	dsjbitfc2nbq	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-09-09 16:08:20.679452+00	2025-09-18 14:09:28.487653+00	c64mxgkzsvdh	125caab4-c213-4231-8971-20985f557a58
00000000-0000-0000-0000-000000000000	226	zedeqotegs6k	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-09-18 14:09:28.488997+00	2025-09-18 15:43:02.489399+00	dsjbitfc2nbq	125caab4-c213-4231-8971-20985f557a58
00000000-0000-0000-0000-000000000000	228	guubn4tqmiqu	ef794a04-7430-4bda-8604-b6324ea88cde	t	2025-09-18 15:43:02.492314+00	2025-09-18 16:57:06.18692+00	zedeqotegs6k	125caab4-c213-4231-8971-20985f557a58
00000000-0000-0000-0000-000000000000	230	3lrmdfqpyw7y	ef794a04-7430-4bda-8604-b6324ea88cde	f	2025-09-18 16:57:06.189382+00	2025-09-18 16:57:06.189382+00	guubn4tqmiqu	125caab4-c213-4231-8971-20985f557a58
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
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
10	\N	libros123@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	ed716103-7c30-47f8-9d88-0a3188b9b43d	\N	\N	\N	2025-09-24 03:20:33.472641+00
8	\N	saibor.p.ly@hotmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	c78066b4-db29-4251-9b8b-3962ad36594f	\N	\N	\N	2025-09-24 03:20:33.472641+00
11	\N	trepabelouweu-8256@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	167c2ee3-4bea-4f9f-a128-e5313b87f9a1	\N	\N	\N	2025-09-24 03:20:33.472641+00
5	\N	ceicrecefromi-9084@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	c8e13e66-d8d1-48c0-aab4-1de1ef5c3309	\N	\N	\N	2025-09-24 03:20:33.472641+00
12	\N	joleullouttuffe-7455@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	a37ae595-5ee2-43ae-90bb-fa08a900fa74	\N	\N	\N	2025-09-24 03:20:33.472641+00
2	\N	joutteleisopre-3760@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	23605b07-3d7c-459e-94b8-1f6a0c7933ed	\N	\N	\N	2025-09-24 03:20:33.472641+00
7	\N	naucrefafeddi-5710@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-08-26	e1ed77f6-f4ee-4ab0-8755-66c0a763dc62	\N	\N	\N	2025-09-24 03:20:33.472641+00
20	\N	pepepecas@yopmail.com	auth_managed	\N	\N	\N	\N	\N	2025-09-08	ef794a04-7430-4bda-8604-b6324ea88cde	\N	\N	\N	2025-09-24 03:20:33.472641+00
13	Enrique Zepeda	enrique.zepeda0017@alumnos.udg.mx	auth_managed	22	1.30	123.00	intermedio	hipertrofia	2025-08-26	3e965a3e-9729-4a41-96e7-724c0763edd0	enrique	\N	\N	2025-09-24 03:20:33.472641+00
6	Melson	proppekeppoillau-3591@yopmail.com	auth_managed	22	60.00	180.00	intermedio	hipertrofia	2025-08-26	3c278e9e-7ca6-4d16-bf51-1343d7347f81	mel	\N	\N	2025-09-24 03:20:33.472641+00
15	siuwi	cibressoyelli-1317@yopmail.com	auth_managed	18	80.00	173.00	avanzado	resistencia	2025-08-26	1166241f-43ab-44b4-8b44-94394e4a197a	siu	\N	\N	2025-09-24 03:20:33.472641+00
14	Julio Sama	zeffefrippazo-9670@yopmail.com	auth_managed	25	89.00	180.00	principiante	hipertrofia	2025-08-26	d77e141b-738c-4494-82df-4fc479544e1e	mel1	\N	\N	2025-09-24 03:20:33.472641+00
1	fasfas	nefeumewauhe-6084@yopmail.com	auth_managed	78	44.00	234.00	principiante	fuerza	2025-08-26	ccf47ff3-abec-4672-8208-e78e1b90258f	aaa	\N	\N	2025-09-24 03:20:33.472641+00
4	dasda	lemmakaxebre-8624@yopmail.com	auth_managed	23	55.00	156.00	intermedio	fuerza	2025-08-26	3c23b75b-4db9-487d-a148-6b30523ce237	saaaaa	masculino	\N	2025-09-24 03:20:33.472641+00
29	consegi	cosegepunu-2914@yopmail.com	auth_managed	18	68.00	170.00	principiante	fuerza	2025-09-23	d028ed7d-a831-42ed-acbf-582084cf6b7a	cosegepunu	masculino	\N	2025-09-24 03:20:33.472641+00
30	treitteu beigrizei	treitteubeigrizei-6265@yopmail.com	auth_managed	44	90.00	189.00	principiante	hipertrofia	2025-09-23	e334d918-2367-4b34-bf66-83a9c0b8a4aa	treitteubeigrizei	masculino	\N	2025-09-24 03:20:33.472641+00
31	prouti ppoipeuji	proutippoipeuji-3523@yopmail.com	auth_managed	44	44.00	190.00	intermedio	hipertrofia	2025-09-23	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	prouti	masculino	\N	2025-09-24 03:20:33.472641+00
3	Julio Sam	meyibaprallou-7095@yopmail.com	auth_managed	18	56.00	173.00	principiante	fuerza	2025-08-26	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	julione	masculino	\N	2025-09-24 03:20:33.472641+00
9	Julio Sama	trajafigosso-7741@yopmail.com	auth_managed	25	70.00	175.00	intermedio	hipertrofia	2025-08-26	09ff1a6d-48d3-4dbf-814e-5229c6549e86	mel11	masculino	\N	2025-09-24 03:20:33.472641+00
19	Alondra Tonantzi Villaseñor Garcia	vattatovuwe-6463@yopmail.com	auth_managed	24	55.00	156.00	intermedio	resistencia	2025-09-02	82eb2899-4641-4dfe-97dc-665ccb66cdf7	toni777	femenino	https://movrcfahsutfqsjjchij.supabase.co/storage/v1/object/public/avatars/82eb2899-4641-4dfe-97dc-665ccb66cdf7/avatar_1758685514777.jpg	2025-09-24 13:12:41.022+00
\.


--
-- Data for Name: Amigos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Amigos" ("id_usuario1", "id_usuario2") FROM stdin;
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
19	Patadas Traseras con Mancuernas	Tríceps	De pie, cogemos una mancuerna con una mano. La palma debe estar enfocada hacia el cuerpo. Inclinamos el cuerpo hacia delante de forma que quede casi paralelo al suelo. Podemos apoyar sobre un banco la rodilla y el brazo opuestos al lado que vamos a trabajar. El brazo debe estar cerca del cuerpo y también paralelo al suelo. Debemos de formar un ángulo recto entre el antebrazo y la parte superior del brazo.\nEmpieza el movimiento inspirando y utilizando el tríceps para levantar la mancuerna hasta que el brazo quede completamente extendido. Céntrate en mover el antebrazo. Luego, párate un poco antes de descender, expulsa el aire y empieza a bajar la mancuerna hacia la posición inicial de forma controlada.	Mancuernas	Principiante	Tríceps, Antebrazo	https://fitcron.com/wp-content/uploads/2021/04/03331301-Dumbbell-Kickback_Upper-Arms_720.gif
20	Fondos en banco	Tríceps	Coloca las manos encima del banco, plataforma o silla a la anchura de los hombros. Los pies hacia adelante en el suelo y separados a la anchura de la cadera.\nEmpieza el movimiento inspirando y flexionando los codos para descender la parte superior del cuerpo hacia el suelo, intentando llegar con los brazos a un ángulo recto de 90º. La espalda tiene que estar siempre cerca del banco.\nMantén los codos lo más cerca posible del cuerpo y flexionados hacia atrás. De esta manera evitarás que se desplacen y trabajarás solo el tríceps. De lo contrario, también estarías involucrando los hombros en el ejercicio.\nPara regresar a la posición inicial exhala y mientras asciendes coloca los brazos rectos.	Ninguno	Principiante	Tríceps, Antebrazo	https://fitcron.com/wp-content/uploads/2021/03/13991301-Bench-dip-on-floor_Upper-Arms_720.gif
21	Curl Concentrado en Supinación con Mancuerna	Bíceps	Sentado en un banco o similar, abre las piernas e inclina el cuerpo un poco hacia delante. Coge una mancuerna con la palma hacia arriba (supinación) y apoya la parte de atrás del codo en el interior del muslo. Flexiona el codo hasta llevar la mancuerna a la altura del pecho y desciende nuevamente de forma controlada.	Mancuernas	Principiante	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/02971301-Dumbbell-Concentration-Curl_Upper-Arms_720.gif
22	Curl en Martillo en Polea Baja	Bíceps	De pie con las piernas ligeramente separadas y la espalda recta, coge la cuerda con las manos a la anchura de los hombros, flexiona los codos subiendo la cuerda hasta el pecho, con los codos pegados al cuerpo. Desciende de forma controlada.	Polea	Principiante	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/01651301-Cable-Hammer-Curl-with-rope-m_Forearms_720.gif
23	Curl en Martillo en Máquina Scott	Bíceps	Sentado en la máquina Scott con el pecho apoyado, coge los agarres con las palmas de las manos enfrentadas (agarre neutro o martillo). Sube las manos flexionando los codos hasta llegar cerca de la cabeza, y desciende de forma controlada, con la parte superior de los brazos siempre bien apoyada en el banco.	Máquina	Principiante	Antebrazo, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/16151301-Lever-Hammer-Grip-Preacher-Curl_Upper-Arms_720.gif
9	Remo Aislado con Mancuerna	Espalda	Coge una mancuerna con una mano con agarre neutro (palma hacia el interior). Inclina el cuerpo hacia delante casi paralelo al suelo. Puedes hacerlo de pie con las piernas separadas y apoyándote en algún sitio con la otra mano o sobre un banco, con la rodilla y brazo inversos al que sujeta la mancuerna apoyados sobre el banco.\nEstira el brazo hacia abajo y a continuación sube la mancuerna hasta llegar a la altura del abdomen, manteniendo el brazo pegado al cuerpo y sacando pecho al llegar arriba. Desciende lentamente y cambia de brazo al terminar la serie.	Mancuernas	Principiante	Dorsal, Trapecio, Bíceps	https://fitcron.com/wp-content/uploads/2021/04/02921301-Dumbbell-Bent-over-Row_back_Back_720.gif
\.


--
-- Data for Name: Rutinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Rutinas" ("id_rutina", "nombre", "descripcion", "nivel_recomendado", "objetivo", "duracion_estimada", "owner_uid") FROM stdin;
1	Pechamen Alto	Aqui van los ejercicios perros para el pecho	avanzado	fuerza	120	\N
3	Rutina pecho superior	Esta es la rutina que utiliza Cbum	avanzado	fuerza	45	\N
4	Pehco	Fuerza	avanzado	fuerza	30	\N
66	Insert como app	ok	principiante	fuerza	12	\N
70	Super Altisimo	Esta está enfocada al super super alto	intermedio	fuerza	120	ed716103-7c30-47f8-9d88-0a3188b9b43d
71	Super Altisimo	Esta está enfocada al super super alto	intermedio	fuerza	120	ed716103-7c30-47f8-9d88-0a3188b9b43d
72	sad	dasdsa	principiante	fuerza	30	ed716103-7c30-47f8-9d88-0a3188b9b43d
113	Pecho	fuerza	principiante	fuerza	30	3e965a3e-9729-4a41-96e7-724c0763edd0
114	Fuerza	aaaaa	principiante	fuerza	80	1166241f-43ab-44b4-8b44-94394e4a197a
87	ADSA	tODAS	intermedio	hipertrofia	30	ef794a04-7430-4bda-8604-b6324ea88cde
115	Se pudo?	aaaaaaaa	principiante	fuerza	30	82eb2899-4641-4dfe-97dc-665ccb66cdf7
117	kadja	sakdnjajbds	principiante	hipertrofia	38	ef794a04-7430-4bda-8604-b6324ea88cde
119	prueba configuracion	siu	principiante	fuerza	30	82eb2899-4641-4dfe-97dc-665ccb66cdf7
120	CHESTERDAAAAAAAY	pecho hombro tricep	avanzado	hipertrofia	30	82eb2899-4641-4dfe-97dc-665ccb66cdf7
121	Pierna	ddddd	principiante	fuerza	30	bf9f3a06-afbe-4031-b3ed-86d08af7f87b
122	Prueba	siiiu	intermedio	hipertrofia	100	82eb2899-4641-4dfe-97dc-665ccb66cdf7
124	Pechoooo	dadasda	principiante	fuerza	30	d028ed7d-a831-42ed-acbf-582084cf6b7a
125	proutippoipeuji	fsdfsd	principiante	fuerza	30	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9
126	dfsd	fdsfsd	principiante	fuerza	30	09ff1a6d-48d3-4dbf-814e-5229c6549e86
\.


--
-- Data for Name: EjerciciosRutinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."EjerciciosRutinas" ("id_rutina", "id_ejercicio", "series", "repeticiones", "peso_sugerido", "orden") FROM stdin;
122	2	3	10	10.00	3
122	1	3	10	100.00	1
1	16	3	10	0.50	1
1	17	3	10	1.00	2
3	2	4	8	100.00	1
3	17	3	10	0.00	2
3	21	3	10	0.00	3
4	1	3	10	0.00	1
87	1	3	10	0.00	1
87	9	3	10	0.00	2
122	8	4	10	60.00	2
124	1	3	10	20.00	1
113	1	4	10	0.00	1
114	1	4	10	90.00	1
114	8	3	10	0.00	2
125	1	3	10	100.00	1
126	1	3	10	100.00	1
119	6	3	10	0.00	6
119	2	3	10	0.00	3
119	9	3	10	0.00	4
119	20	3	10	0.00	5
115	1	1	10	0.00	1
115	7	1	10	0.00	2
120	1	4	10	100.00	1
120	15	5	15	20.00	2
120	6	4	10	80.00	3
117	2	2	12	121.00	1
117	1	2	10	0.00	2
117	6	2	10	12.00	3
117	20	0	10	0.00	4
121	12	3	10	0.00	1
121	7	3	10	100.00	2
\.


--
-- Data for Name: EjerciciosRutinaSets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."EjerciciosRutinaSets" ("id_rutina", "id_ejercicio", "idx", "kg", "reps") FROM stdin;
119	6	1	1.00	10
119	6	2	0.00	10
119	6	3	0.00	10
119	2	1	0.00	10
119	2	2	0.00	10
119	2	3	0.00	10
119	9	1	0.00	10
119	9	2	0.00	10
119	9	3	0.00	10
119	20	1	0.00	10
119	20	2	0.00	10
119	20	3	0.00	10
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
115	1	1	110.00	10
115	7	1	60.00	10
122	2	1	10.00	10
122	2	2	10.00	10
122	2	3	10.00	10
122	1	1	100.00	10
122	1	2	100.00	10
122	1	3	100.00	10
122	8	1	60.00	10
122	8	2	60.00	10
122	8	3	60.00	10
122	8	4	60.00	10
124	1	1	20.00	10
124	1	2	20.00	10
124	1	3	20.00	10
125	1	1	100.00	10
125	1	2	100.00	10
125	1	3	100.00	10
126	1	1	100.00	10
126	1	2	100.00	10
126	1	3	100.00	10
\.


--
-- Data for Name: Entrenamientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Entrenamientos" ("id_sesion", "id_rutina", "owner_uid", "started_at", "ended_at", "duracion_seg", "total_volumen", "sensacion_global", "notas", "created_at") FROM stdin;
10	119	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-19 02:48:01.358+00	2025-09-19 02:48:56.256+00	582	7200	\N	\N	2025-09-19 02:48:58.24384+00
11	119	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-19 02:49:10.656+00	2025-09-19 02:49:30.097+00	19	1000	\N	\N	2025-09-19 02:49:32.063738+00
12	119	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-19 02:49:42.159+00	2025-09-19 02:50:12.927+00	31	6000	\N	\N	2025-09-19 02:50:15.017318+00
20	121	bf9f3a06-afbe-4031-b3ed-86d08af7f87b	2025-09-19 22:44:30.003+00	2025-09-19 22:44:41.612+00	12	6000	\N	\N	2025-09-19 22:44:41.711364+00
25	122	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-20 23:03:05.726+00	2025-09-20 23:03:09.867+00	4	3000	\N	\N	2025-09-20 23:03:10.990798+00
26	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-20 23:08:02.07+00	2025-09-20 23:08:12.2+00	10	6800	\N	\N	2025-09-20 23:08:13.270186+00
27	120	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-20 23:08:20.691+00	2025-09-20 23:09:03.72+00	43	4470	\N	\N	2025-09-20 23:09:04.8153+00
46	113	3e965a3e-9729-4a41-96e7-724c0763edd0	2025-09-22 17:41:43.683+00	2025-09-22 17:59:30.945+00	1067	3000	\N	\N	2025-09-22 17:59:31.416612+00
47	124	d028ed7d-a831-42ed-acbf-582084cf6b7a	2025-09-23 02:14:10.576+00	2025-09-23 02:14:23.85+00	13	1200	\N	\N	2025-09-23 02:14:24.423196+00
48	125	c41d0adf-4a1e-40a8-81f8-f0791d2ed2f9	2025-09-23 14:24:48.823+00	2025-09-23 14:24:52.87+00	4	3000	\N	\N	2025-09-23 14:24:54.327227+00
49	126	09ff1a6d-48d3-4dbf-814e-5229c6549e86	2025-09-24 02:39:13.26+00	2025-09-24 02:39:23.114+00	10	3000	\N	\N	2025-09-24 02:39:23.805188+00
52	122	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-25 15:01:55.806+00	2025-09-25 15:02:22.785+00	27	5700	\N	\N	2025-09-25 15:02:22.632096+00
54	122	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-26 01:19:54.871+00	2025-09-26 01:20:00.641+00	6	3000	\N	\N	2025-09-26 01:20:00.843981+00
55	122	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-26 01:20:12.155+00	2025-09-26 01:20:15.759+00	4	3000	\N	\N	2025-09-26 01:20:15.914848+00
\.


--
-- Data for Name: EntrenamientoSets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."EntrenamientoSets" ("id_sesion", "id_ejercicio", "idx", "kg", "reps", "rpe", "done", "done_at") FROM stdin;
54	1	1	100	10	\N	t	2025-09-26 01:19:56.334+00
54	1	2	100	10	\N	t	2025-09-26 01:19:56.646+00
54	1	3	100	10	\N	t	2025-09-26 01:19:57.214+00
54	2	1	10	10	\N	f	\N
54	2	2	10	10	\N	f	\N
54	2	3	10	10	\N	f	\N
55	1	1	100	10	\N	t	2025-09-26 01:20:13.673+00
55	1	2	100	10	\N	t	2025-09-26 01:20:13.423+00
47	6	1	20	10	\N	t	2025-09-23 02:14:18.198+00
47	6	2	20	10	\N	t	2025-09-23 02:14:19.313+00
47	6	3	20	10	\N	t	2025-09-23 02:14:19.872+00
47	1	1	20	10	\N	t	2025-09-23 02:14:11.691+00
47	1	2	20	10	\N	t	2025-09-23 02:14:12.237+00
25	1	1	100	10	\N	t	2025-09-20 23:03:06.92+00
25	1	2	100	10	\N	t	2025-09-20 23:03:07.432+00
25	1	3	100	10	\N	t	2025-09-20 23:03:08.079+00
25	8	1	60	10	\N	f	\N
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
49	1	1	100	10	\N	t	2025-09-24 02:39:16.799+00
49	1	2	100	10	\N	t	2025-09-24 02:39:17.358+00
49	1	3	100	10	\N	t	2025-09-24 02:39:17.844+00
55	1	3	100	10	\N	t	2025-09-26 01:20:13.139+00
26	15	4	20	15	\N	t	2025-09-20 23:08:08.17+00
26	6	1	80	10	\N	t	2025-09-20 23:08:09.342+00
26	6	2	80	10	\N	t	2025-09-20 23:08:09.816+00
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
55	8	1	60	10	\N	f	\N
55	8	2	60	10	\N	f	\N
55	8	3	60	10	\N	f	\N
55	8	4	60	10	\N	f	\N
55	2	1	10	10	\N	f	\N
55	2	2	10	10	\N	f	\N
55	2	3	10	10	\N	f	\N
20	12	1	100	10	\N	t	2025-09-19 22:44:31.871+00
20	12	2	100	10	\N	t	2025-09-19 22:44:32.429+00
20	12	3	100	10	\N	t	2025-09-19 22:44:33.941+00
20	7	1	100	10	\N	t	2025-09-19 22:44:35.356+00
20	7	2	100	10	\N	t	2025-09-19 22:44:37.077+00
20	7	3	100	10	\N	t	2025-09-19 22:44:36.518+00
52	2	1	10	10	Fácil	t	2025-09-25 15:02:12.66+00
52	2	2	10	10	Al fallo	t	2025-09-25 15:02:13.198+00
52	2	3	10	10	Al fallo	t	2025-09-25 15:02:13.546+00
52	1	1	100	10	Al fallo	t	2025-09-25 15:01:57.773+00
52	1	2	100	10	Al fallo	t	2025-09-25 15:01:58.239+00
52	1	3	100	10	Muy difícil	t	2025-09-25 15:01:58.742+00
52	8	1	60	10	Muy difícil	t	2025-09-25 15:02:04.17+00
52	8	2	60	10	Muy difícil	t	2025-09-25 15:02:04.568+00
46	2	1	100	10	\N	t	2025-09-22 17:59:24.457+00
46	2	2	100	10	\N	t	2025-09-22 17:59:24.825+00
46	2	3	100	10	\N	t	2025-09-22 17:59:25.438+00
52	8	3	60	10	Al fallo	t	2025-09-25 15:02:05.936+00
52	8	4	60	10	Al fallo	t	2025-09-25 15:02:05.627+00
48	1	1	100	10	\N	t	2025-09-23 14:24:49.971+00
48	1	2	100	10	\N	t	2025-09-23 14:24:50.349+00
48	1	3	100	10	\N	t	2025-09-23 14:24:51.129+00
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

COPY "public"."Programas" ("id", "created_at", "nombre", "descripcion", "nivel_recomendado") FROM stdin;
\.


--
-- Data for Name: ProgramasRutinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProgramasRutinas" ("id", "created_at", "id_programa", "id_rutina", "orden", "dia_semana") FROM stdin;
\.


--
-- Data for Name: ProgresoDeUsuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProgresoDeUsuario" ("id_progreso", "id_usuario", "fecha", "id_ejercicio", "series", "repeticiones", "peso_usado", "sensacion") FROM stdin;
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
121	2025-09-19 00:50:16.759213+00	19	119	\N	t	f
123	2025-09-19 21:20:14.135393+00	19	120	\N	t	f
125	2025-09-19 22:44:26.623454+00	3	121	\N	t	f
127	2025-09-20 14:27:48.820814+00	19	122	\N	t	f
131	2025-09-23 02:14:08.388553+00	29	124	\N	t	f
133	2025-09-23 14:24:47.84428+00	31	125	\N	t	f
135	2025-09-24 02:39:09.985484+00	9	126	\N	t	f
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
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
avatars	82eb2899-4641-4dfe-97dc-665ccb66cdf7	2025-09-24 03:05:31.939067+00	2025-09-24 03:05:31.939067+00
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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 346, true);


--
-- Name: Entrenamientos_id_sesion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Entrenamientos_id_sesion_seq"', 55, true);


--
-- Name: ProgramasRutinas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ProgramasRutinas_id_seq"', 1, false);


--
-- Name: Programas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Programas_id_seq"', 1, false);


--
-- Name: UsuarioRutina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."UsuarioRutina_id_seq"', 138, true);


--
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ejercicios_id_ejercicio_seq"', 23, true);


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

SELECT pg_catalog.setval('"public"."rutinas_id_rutina_seq"', 127, true);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."usuarios_id_usuario_seq"', 31, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict nWEQQ2FyaQa4CpoxFrg6eyt7M09HRIO2g7EX8MXbbirOWHZZUAGwTw4vP6pBbHW

RESET ALL;
