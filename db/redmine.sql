--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY attachments (id, container_id, container_type, filename, disk_filename, filesize, content_type, digest, downloads, author_id, created_on, description, disk_directory) FROM stdin;
\.


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('attachments_id_seq', 1, false);


--
-- Data for Name: auth_sources; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY auth_sources (id, type, name, host, port, account, account_password, base_dn, attr_login, attr_firstname, attr_lastname, attr_mail, onthefly_register, tls, filter, timeout) FROM stdin;
\.


--
-- Name: auth_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('auth_sources_id_seq', 1, false);


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY boards (id, project_id, name, description, "position", topics_count, messages_count, last_message_id, parent_id) FROM stdin;
\.


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('boards_id_seq', 1, false);


--
-- Data for Name: changes; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changes (id, changeset_id, action, path, from_path, from_revision, revision, branch) FROM stdin;
\.


--
-- Name: changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('changes_id_seq', 1, false);


--
-- Data for Name: changeset_parents; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changeset_parents (changeset_id, parent_id) FROM stdin;
\.


--
-- Data for Name: changesets; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changesets (id, repository_id, revision, committer, committed_on, comments, commit_date, scmid, user_id) FROM stdin;
\.


--
-- Name: changesets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('changesets_id_seq', 1, false);


--
-- Data for Name: changesets_issues; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changesets_issues (changeset_id, issue_id) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY comments (id, commented_type, commented_id, author_id, comments, created_on, updated_on) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: custom_field_enumerations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_field_enumerations (id, custom_field_id, name, active, "position") FROM stdin;
\.


--
-- Name: custom_field_enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('custom_field_enumerations_id_seq', 1, false);


--
-- Data for Name: custom_fields; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields (id, type, name, field_format, possible_values, regexp, min_length, max_length, is_required, is_for_all, is_filter, "position", searchable, default_value, editable, visible, multiple, format_store, description) FROM stdin;
\.


--
-- Name: custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('custom_fields_id_seq', 1, false);


--
-- Data for Name: custom_fields_projects; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields_projects (custom_field_id, project_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields_roles (custom_field_id, role_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_trackers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields_trackers (custom_field_id, tracker_id) FROM stdin;
\.


--
-- Data for Name: custom_values; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_values (id, customized_type, customized_id, custom_field_id, value) FROM stdin;
\.


--
-- Name: custom_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('custom_values_id_seq', 1, false);


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY documents (id, project_id, category_id, title, description, created_on) FROM stdin;
\.


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('documents_id_seq', 1, false);


--
-- Data for Name: email_addresses; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY email_addresses (id, user_id, address, is_default, notify, created_on, updated_on) FROM stdin;
1	1	admin@example.net	t	t	2018-07-30 01:17:42.306885	2018-07-30 01:17:42.306885
2	5	fujiwara_kohei@nextgen.co.jp	t	t	2018-07-30 01:50:33.525984	2018-07-30 01:50:33.525984
\.


--
-- Name: email_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('email_addresses_id_seq', 2, true);


--
-- Data for Name: enabled_modules; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY enabled_modules (id, project_id, name) FROM stdin;
1	1	issue_tracking
2	1	time_tracking
3	1	news
4	1	documents
5	1	files
6	1	wiki
7	1	repository
8	1	boards
9	1	calendar
10	1	gantt
11	2	issue_tracking
12	2	time_tracking
13	2	news
14	2	documents
15	2	files
16	2	wiki
17	2	repository
18	2	boards
19	2	calendar
20	2	gantt
21	3	issue_tracking
22	3	time_tracking
23	3	news
24	3	documents
25	3	files
26	3	wiki
27	3	repository
28	3	boards
29	3	calendar
30	3	gantt
31	4	issue_tracking
32	4	time_tracking
33	4	news
34	4	documents
35	4	files
36	4	wiki
37	4	repository
38	4	boards
39	4	calendar
40	4	gantt
41	5	issue_tracking
42	5	time_tracking
43	5	news
44	5	documents
45	5	files
46	5	wiki
47	5	repository
48	5	boards
49	5	calendar
50	5	gantt
51	6	issue_tracking
52	6	time_tracking
53	6	news
54	6	documents
55	6	files
56	6	wiki
57	6	repository
58	6	boards
59	6	calendar
60	6	gantt
61	7	issue_tracking
62	7	time_tracking
63	7	news
64	7	documents
65	7	files
66	7	wiki
67	7	repository
68	7	boards
69	7	calendar
70	7	gantt
71	8	issue_tracking
72	8	time_tracking
73	8	news
74	8	documents
75	8	files
76	8	wiki
77	8	repository
78	8	boards
79	8	calendar
80	8	gantt
\.


--
-- Name: enabled_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('enabled_modules_id_seq', 80, true);


--
-- Data for Name: enumerations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY enumerations (id, name, "position", is_default, type, active, project_id, parent_id, position_name) FROM stdin;
1	低め	1	f	IssuePriority	t	\N	\N	lowest
2	通常	2	t	IssuePriority	t	\N	\N	default
3	高め	3	f	IssuePriority	t	\N	\N	high3
4	急いで	4	f	IssuePriority	t	\N	\N	high2
5	今すぐ	5	f	IssuePriority	t	\N	\N	highest
6	ユーザー文書	1	f	DocumentCategory	t	\N	\N	\N
7	技術文書	2	f	DocumentCategory	t	\N	\N	\N
8	設計作業	1	f	TimeEntryActivity	t	\N	\N	\N
9	開発作業	2	f	TimeEntryActivity	t	\N	\N	\N
\.


--
-- Name: enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('enumerations_id_seq', 9, true);


--
-- Data for Name: groups_users; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY groups_users (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: import_items; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY import_items (id, import_id, "position", obj_id, message) FROM stdin;
\.


--
-- Name: import_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('import_items_id_seq', 1, false);


--
-- Data for Name: imports; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY imports (id, type, user_id, filename, settings, total_items, finished, created_at, updated_at) FROM stdin;
\.


--
-- Name: imports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('imports_id_seq', 1, false);


--
-- Data for Name: issue_categories; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issue_categories (id, project_id, name, assigned_to_id) FROM stdin;
\.


--
-- Name: issue_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issue_categories_id_seq', 1, false);


--
-- Data for Name: issue_relations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issue_relations (id, issue_from_id, issue_to_id, relation_type, delay) FROM stdin;
\.


--
-- Name: issue_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issue_relations_id_seq', 1, false);


--
-- Data for Name: issue_statuses; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issue_statuses (id, name, is_closed, "position", default_done_ratio) FROM stdin;
3	解決	f	3	\N
5	終了	t	4	\N
8	取り下げ	t	6	\N
6	却下	f	5	\N
7	担当	f	2	\N
1	新規	f	1	\N
\.


--
-- Name: issue_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issue_statuses_id_seq', 8, true);


--
-- Data for Name: issues; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issues (id, tracker_id, project_id, subject, description, due_date, category_id, status_id, assigned_to_id, priority_id, fixed_version_id, author_id, lock_version, created_on, updated_on, start_date, done_ratio, estimated_hours, parent_id, root_id, lft, rgt, is_private, closed_on) FROM stdin;
1	2	1	Test	チケット起票のテスト	\N	\N	1	5	2	\N	5	0	2018-07-31 19:47:15.283803	2018-07-31 19:47:15.283803	2018-07-31	0	\N	\N	1	1	2	f	\N
2	2	3	PTT-1.1のインストール	\r\n	\N	\N	1	5	2	\N	5	2	2018-07-31 20:10:59.487085	2018-07-31 20:22:27.318458	2018-07-31	0	\N	\N	2	1	2	f	\N
5	2	4	通話モニタモード用にSGを改造する	GSCPを改造してしまったので、追従が必要.\r\n\r\nGSCP側の改修は #4 を参照	\N	\N	5	5	2	\N	5	3	2018-08-02 17:06:28.177066	2018-09-18 10:23:56.348698	2018-08-02	100	\N	\N	5	1	2	f	2018-09-18 10:23:56.348698
23	2	5	基本的な文法	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh4. 基本\r\n\r\n* int\r\nint int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex12\r\n* bool\r\n* byte\r\n* string \r\n* rune\r\n\r\nh4. stl\r\n\r\n* array\r\n* slice\r\n* map\r\nhashmap, set とかもこれで作れ("参考":https://qiita.com/ymotongpoo/items/83b358055a6ce532c53d)\r\n* heap\r\n* list\r\n* ring\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	\N	\N	1	\N	2	\N	5	10	2018-11-06 12:16:17.138943	2018-11-22 13:45:15.410717	2018-11-06	0	\N	\N	23	1	2	f	\N
4	2	4	通話モニタモード用にGSCPを改造する	jni を以下にしてしまったので、本家のほうもやるしかない.\r\n\r\n<pre><code class="diff">\r\ndiff --git a/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientImpl.java b/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientImpl.java\r\nindex d7329e0..042f784 100644\r\n--- a/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientImpl.java\r\n+++ b/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientImpl.java\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id:$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -44,7 +44,7 @@ public class GSCPGroupClientImpl extends GSCPClientCommon\r\n     public native void shutdown();\r\n     public native void sendRegister(String userId, String password, int expires);\r\n     public native void stopRegister(boolean bOutOfService);\r\n-    public native void sendJoin(String groupId, String userId, String audioAddress, int audioPort, boolean bQuery);\r\n+    public native void sendJoin(String groupId, String userId, String audioAddress, int audioPort, int iQueryType);\r\n     public native void sendLeave(String userId);\r\n     public native void sendStartPress(String userId, int priority);\r\n     public native void sendStopPress(String userId);\r\ndiff --git a/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientInterface.java b/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientInterface.java\r\nindex 00509e8..d376e42 100644\r\n--- a/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientInterface.java\r\n+++ b/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupClientInterface.java\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id:$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -72,10 +72,12 @@ public interface GSCPGroupClientInterface {\r\n      * @param userId           ユーザID\r\n      * @param audioAddress     音声信号受信アドレス\r\n      * @param audioPort        音声信号受信ポート番号\r\n-     * @param bQuery           true の場合, JOIN種別を「0x02: グループ存在確認」\r\n-     *                         false の場合, JOIN種別を「0x00: 新規」 とする.\r\n+     * @param iQueryType       値によってJOIN種別を以下とする.\r\n+     *                         0: 0x00（新規）\r\n+     *                         1: 0x02（グループ存在確認）\r\n+     *                         2: 0x03（加入電話通話モニタモード）\r\n      */\r\n-    void sendJoin(String groupId, String userId, String audioAddress, int audioPort, boolean bQuery);\r\n+    void sendJoin(String groupId, String userId, String audioAddress, int audioPort, int iQueryType);\r\n\r\n     /**\r\n      * グループ離脱要求の送信\r\ndiff --git a/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupInfo.java b/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupInfo.java\r\nindex 02c567e..a9f7f0b 100644\r\n--- a/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupInfo.java\r\n+++ b/lib/src/main/java/com/nextgen/nxs/ptt/gscp/GSCPGroupInfo.java\r\n@@ -18,7 +18,7 @@ public class GSCPGroupInfo {\r\n      * グループ状態情報\r\n      * @param groupId    グループID\r\n      * @param groupType  グループ種別 (0=県内,1=県外)\r\n-     * @param groupState グループ状態 (0=終了,1=開始)\r\n+     * @param groupState グループ状態 (0=終了,1=開始,2=加入電話通話モニタモードで開始)\r\n      */\r\n     public GSCPGroupInfo(String groupId, int groupType, int groupState){\r\n         this.groupId = groupId;\r\n@@ -43,6 +43,7 @@ public class GSCPGroupInfo {\r\n      * グループ状態を取り出す\r\n      * - 0: 終了\r\n      * - 1: 開始\r\n+     * - 2: 加入電話通話モニタモードで開始\r\n      */\r\n     public int getGroupState(){\r\n         return groupState;\r\ndiff --git a/lib/src/main/jni/GSCPGroupClientImpl.cpp b/lib/src/main/jni/GSCPGroupClientImpl.cpp\r\nindex cee989e..43a5784 100644\r\n--- a/lib/src/main/jni/GSCPGroupClientImpl.cpp\r\n+++ b/lib/src/main/jni/GSCPGroupClientImpl.cpp\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -85,7 +85,7 @@ JNIEXPORT void JNICALL Java_com_nextgen_nxs_ptt_gscp_GSCPGroupClientImpl_stopReg\r\n }\r\n\r\n JNIEXPORT void JNICALL Java_com_nextgen_nxs_ptt_gscp_GSCPGroupClientImpl_sendJoin\r\n-(JNIEnv* env, jobject obj, jstring groupId, jstring userId, jstring audioAddress, jint audioPort, jboolean bQuery)\r\n+(JNIEnv* env, jobject obj, jstring groupId, jstring userId, jstring audioAddress, jint audioPort, jint iQueryType)\r\n {\r\n     string cppGroupId;\r\n     jni2cpp(env, groupId, cppGroupId);\r\n@@ -93,7 +93,7 @@ JNIEXPORT void JNICALL Java_com_nextgen_nxs_ptt_gscp_GSCPGroupClientImpl_sendJoi\r\n     jni2cpp(env, userId, cppUserId);\r\n     string cppAudioAddress;\r\n     jni2cpp(env, audioAddress, cppAudioAddress);\r\n-    GSCPGroupClientImpl::s_impl.sendJoin(cppGroupId, cppUserId, cppAudioAddress, (int)audioPort, bQuery);\r\n+    GSCPGroupClientImpl::s_impl.sendJoin(cppGroupId, cppUserId, cppAudioAddress, (int)audioPort, iQueryType);\r\n }\r\n\r\n JNIEXPORT void JNICALL Java_com_nextgen_nxs_ptt_gscp_GSCPGroupClientImpl_sendLeave\r\n@@ -228,10 +228,10 @@ void GSCPGroupClientImpl::stopRegister(bool bOutOfService)\r\n     registrant->stopRegister(m_userId, bOutOfService);\r\n }\r\n\r\n-void GSCPGroupClientImpl::sendJoin(const string& groupId, const string& userId, const string& audioAddress, int audioPort, bool bQuery)\r\n+void GSCPGroupClientImpl::sendJoin(const string& groupId, const string& userId, const string& audioAddress, int audioPort, int iQueryType)\r\n {\r\n     GSCPGroupClientSessionController* sc = GSCPGroupClientSessionController::getInstance();\r\n-    m_session = sc->sendJoin(groupId, userId, audioAddress, audioPort, bQuery);\r\n+    m_session = sc->sendJoin(groupId, userId, audioAddress, audioPort, iQueryType);\r\n }\r\n\r\n void GSCPGroupClientImpl::sendLeave(const string& userId)\r\ndiff --git a/lib/src/main/jni/GSCPGroupClientImpl.hxx b/lib/src/main/jni/GSCPGroupClientImpl.hxx\r\nindex ffd38c2..40fa4cf 100644\r\n--- a/lib/src/main/jni/GSCPGroupClientImpl.hxx\r\n+++ b/lib/src/main/jni/GSCPGroupClientImpl.hxx\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -39,7 +39,7 @@ public:\r\n     void shutdown();\r\n     void sendRegister(const string& userId, const string& password, int expires);\r\n     void stopRegister(bool bOutOfService);\r\n-    void sendJoin(const string& groupId, const string& userId, const string& audioAddress, int audioPort, bool bQuery);\r\n+    void sendJoin(const string& groupId, const string& userId, const string& audioAddress, int audioPort, int iQueryType);\r\n     void sendLeave(const string& userId);\r\n     void sendStartPress(const string& userId, int priority);\r\n     void sendStopPress(const string& userId);\r\n</pre>	\N	\N	5	5	2	\N	5	6	2018-08-02 13:20:13.317021	2018-09-18 10:24:19.074288	2018-08-02	100	\N	\N	4	1	2	f	2018-09-18 10:24:04.990451
29	1	3	25045	→Group::onPeerPressOn()\r\n→Group::StateJoined::onPeerPressOn()\r\n→GroupControllerImpl::peerPressAck()\r\n→PeerSiteControllerImpl::pressAck()\r\n→new GroupPressAckEvent()\r\n→PeerSite::onGroupPressAck()\r\n→PeerSite::PrsStatePressing::onGroupPressAck() ★ここでcode決まる	\N	\N	5	\N	2	\N	5	2	2018-12-21 11:30:51.72562	2019-02-06 15:44:59.28814	2018-12-21	0	\N	\N	29	1	2	f	2019-02-06 15:44:59.28814
25	2	6	Docker インストォオオオオオオオオオル at CentOS7	魂の叫び\r\n\r\nCentOS は 7.x 以降でないと入らない.\r\n\r\n"公式手順":https://docs.docker.com/install/linux/docker-ce/centos/ を参照. では寂しいので解説\r\n\r\n"これ":https://qiita.com/sawadashota/items/2bed41598d825d488701 なんかが詳しい	\N	\N	1	\N	2	\N	5	1	2018-11-22 14:14:54.737735	2018-11-22 14:16:18.038473	2018-11-22	0	\N	\N	25	1	2	f	\N
3	2	4	nxs_ptt_gscp_jni を androidstudio するための道程	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp/\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P <passwd> -r gscpstack_<tag_name>.zip <tag_name>\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n	\N	\N	7	5	2	\N	5	17	2018-08-01 22:34:09.453406	2018-12-13 13:51:06.120851	2018-08-01	0	\N	\N	3	1	2	f	\N
33	2	8	通話録音	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 \r\n\r\nh2. 懸念事項\r\n\r\n機能呼（着信転送、ハント、ピックアップ、パークリトリーブのパターン）ではどうするか？\r\n\r\nh2. 改造\r\n\r\n基本パターンは出来た。\r\n<pre><code class="diff">\r\ndiff --git a/AppCallInfo.hxx b/AppCallInfo.hxx\r\nindex c9834b9..7fc1e7c 100644\r\n--- a/AppCallInfo.hxx\r\n+++ b/AppCallInfo.hxx\r\n@@ -1623,6 +1623,9 @@ namespace nxs_csen_application {\r\n                                  , const string& host, int port\r\n                                  , string& dst, const bool& wDisp = false);\r\n\r\n+        bool isLoggerOrig(void) const { return true; };\r\n+        bool isLoggerTerm(void) const { return true; };\r\n+\r\n     protected :\r\n         static void fillTransferPAIHeader( const ProvPAIInfo& paiinfo, const string& host,\r\n                                     int port, string& paistr );\r\ndiff --git a/CSenApplication.cpp b/CSenApplication.cpp\r\nindex 87926fd..d78f95e 100644\r\n--- a/CSenApplication.cpp\r\n+++ b/CSenApplication.cpp\r\n@@ -1,3 +1,4 @@\r\n+\r\n /*\r\n  * $Id$\r\n  *\r\n@@ -634,6 +635,9 @@ CSenApplication::configure (const Properties& props)\r\n         = props.getPropertyBool("SkipEnqueueProcedureForSinglePickupMember"\r\n                                 , false);\r\n\r\n+    // 録音用独自ヘッダーの設定.\r\n+    loggingHeaderName = props.getProperty("LoggingHeaderName", "Logging-Info");\r\n+\r\n #ifdef NXI_BUILD\r\n     work = props.getProperty("ICSCFRoutingB2BProfileId");\r\n     if (work != NULL)\r\n@@ -4499,6 +4503,9 @@ CSenApplication::doUserTermination(AppCallInfo& callInfo)\r\n         callInfo.setPCPID(req, pcpidHost, strPcpid);\r\n     }\r\n\r\n+    // 録音用独自ヘッダーの設定\r\n+    setLoggerHeader(&callInfo, req);\r\n+\r\n     callInfo.setTermUserFromTo(req.term.from, req.term.to);\r\n\r\n     callInfo.createCallRecord(req);\r\n@@ -10584,3 +10591,60 @@ CSenApplication::getNetworkHoldTerm(AppCallInfo* callInfo\r\n     // ret == true の場合, req.hostPortList が空であることはない.\r\n     return ret;\r\n }\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , ConnectToTermObj& req)\r\n+{\r\n+    const bool bLoggingOrig = callInfo->isLoggerOrig();\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, orig=[%s], term=[%s].\\n"\r\n+        , BOOLSTR(bLoggingOrig), BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingOrig)\r\n+        return;\r\n+    /* 着側は要検討\r\n+    if (bLoggingTerm)\r\n+        setLoggerHeader(callInfo.termUserId, callInfo.termUserEnterprise, req.res);\r\n+    */\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->origUserEnterpriseId;\r\n+    map["userId"] = callInfo->origUserId;\r\n+    req.term.headers[loggingHeaderName] = convertLoggerHeaderValue(map);\r\n+    return;\r\n+}\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , HeaderList& headers)\r\n+{\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, term=[%s].\\n", BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingTerm)\r\n+        return;\r\n+\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->termUserEnterpriseId;\r\n+    map["userId"] = callInfo->termUserId;\r\n+    headers.addHeader(loggingHeaderName, convertLoggerHeaderValue(map));\r\n+    return;\r\n+}\r\n+\r\n+string\r\n+CSenApplication::convertLoggerHeaderValue(const StrStrMap& map)\r\n+{\r\n+    string value;\r\n+    for (StrStrMap::const_iterator i = map.begin();\r\n+         i != map.end(); i++) {\r\n+        if (!value.empty())\r\n+            value.append(",");\r\n+        value.append(i->first);\r\n+        value.append("=");\r\n+        value.append(i->second);\r\n+    }\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::convertLoggerHeaderValue."\r\n+        " set logging header=[%s], value=[%s].\\n"\r\n+        , loggingHeaderName.c_str(), value.c_str());\r\n+    return value;\r\n+}\r\ndiff --git a/CSenApplication.hxx b/CSenApplication.hxx\r\nindex 0b96606..9a83257 100644\r\n--- a/CSenApplication.hxx\r\n+++ b/CSenApplication.hxx\r\n@@ -511,6 +511,11 @@ typedef map<string,int> StringIntMap;\r\n\r\n         /// 網保留の接続先情報取得.\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        // 録音用独自ヘッダーの設定. CSenApplicationInterfaceに追加必要？不要？\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        //void setLoggerHeader(const string& userId, const string& enterprise, LegObj& obj);\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers);\r\n+        string convertLoggerHeaderValue(const StrStrMap& map);\r\n\r\n         virtual const string& getMyHost(void) const { return myHost; };\r\n         virtual int getMyPort(void) const { return myPort; };\r\n@@ -2798,6 +2803,9 @@ typedef map<string,int> StringIntMap;\r\n         // If there is only one member, skip the enqueue procedure.\r\n         bool skipEnqueueProcedureForSinglePickupMember;\r\n\r\n+        // 録音用独自ヘッダーの設定.\r\n+        string loggingHeaderName;\r\n+\r\n #ifdef NXI_BUILD\r\n         //!< forward B2B profile ID for I-CSCF routing.\r\n         string icscfRoutingB2BProfileId;\r\ndiff --git a/CSenB2BUA.cpp b/CSenB2BUA.cpp\r\nindex ab4359e..cf99c98 100644\r\n--- a/CSenB2BUA.cpp\r\n+++ b/CSenB2BUA.cpp\r\n@@ -6256,6 +6256,8 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n\r\n     // Timer C timer開放\r\n     b2bData->clearTimerCTimer();\r\n+    // 録音用独自ヘッダーの設定追加.\r\n+    b2bData->setLoggerHeader(m_responseHeaderList);\r\n\r\n     if (b2bData->hunt_state != HuntStateType_default) {\r\n         // update state\r\n@@ -6265,6 +6267,11 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n         b2bData->hunt_state = HuntStateType_onInviteConfirmed;\r\n     }\r\n\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " isConvertEarlyMediaUpdate=[%s], isTransmittedEarlyMedia=[%s]"\r\n+        ", compareEarlyMediaContent=[%s].\\n"\r\n+        , BOOLSTR(b2bData->isConvertEarlyMediaUpdate ()), BOOLSTR(b2bData->isTransmittedEarlyMedia ())\r\n+        , BOOLSTR(b2bData->compareEarlyMediaContent (msg)));\r\n     if (b2bData->isConvertEarlyMediaUpdate () == false ||\r\n         b2bData->isTransmittedEarlyMedia () == false ||\r\n         b2bData->compareEarlyMediaContent (msg) == false) {\r\n@@ -6985,3 +6992,12 @@ CSenB2BData::setInviteParameters(const ConnectToTermObj& req\r\n\r\n     return true;\r\n }\r\n+\r\n+void\r\n+CSenB2BData::setLoggerHeader(HeaderList& headerList)\r\n+{\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenB2BData::setLoggerHeader."\r\n+        " set logger header to response.\\n");\r\n+    app->setLoggerHeader(getCallInfo(), headerList);\r\n+    return;\r\n+}\r\ndiff --git a/CSenB2BUA.hxx b/CSenB2BUA.hxx\r\nindex 5556813..862b447 100644\r\n--- a/CSenB2BUA.hxx\r\n+++ b/CSenB2BUA.hxx\r\n@@ -1083,6 +1083,8 @@ public:\r\n      */\r\n     void setTransferNotifyHeader( int iLegIdx, HeaderList& headerList );\r\n\r\n+    void setLoggerHeader(HeaderList& headerList);\r\n+\r\n protected:\r\n     void recordTime (DateTime& dateTime);\r\n     void setIncomingLegRecord (IncomingLegRecord& rec,\r\ndiff --git a/NxsCSenCCAPI.hxx b/NxsCSenCCAPI.hxx\r\nindex db4f746..431f6e0 100644\r\n--- a/NxsCSenCCAPI.hxx\r\n+++ b/NxsCSenCCAPI.hxx\r\n@@ -1935,6 +1935,14 @@ namespace nxs_csen_cc_api {\r\n          */\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& o) = 0;\r\n\r\n+        /**\r\n+         *\r\n+         *\r\n+         *\r\n+         */\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req) = 0;\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers) = 0;\r\n+\r\n         virtual const string& getMyHost(void) const = 0;\r\n         virtual int getMyPort(void) const = 0;\r\n</code></pre>	\N	\N	1	\N	2	\N	5	8	2019-01-17 15:40:52.302837	2019-01-18 18:16:14.90629	2019-01-17	0	\N	30	30	6	7	f	\N
6	2	3	dtlsmsg	任意のメッセージを dtls/udp で送信できる。\r\nこれは dtlsmsg という名の binarymsg ツールじゃねーか。\r\n\r\n書き方が複雑怪奇なので、まとめることにする。\r\n\r\nh2. 信号仕様\r\n\r\n変換表としてまとめる\r\n\r\nまずはヘッダー部分が書けるようにする\r\n情報要素の詳細はインターフェース仕様書を参照してくれ（書くの疲れた）\r\n\r\nh3. 書式\r\n\r\n\r\n|7|6|5|4|3|2|1|0|\r\n|\\8. バージョン(1 Byte)|\r\n|\\8. 信号種別(1 Byte)  |\r\n|\\8. 信号長(2 Byte)    |\r\n|\\8. 情報要素TLV (n Byte)      |\r\n\r\n\r\nh3. バージョン\r\n\r\n\r\n1（固定）\r\n\r\nh3. 信号種別\r\n\r\n|_. コード|_. 略称|\r\n|0x70|REG|\r\n|0x71|REG_ACK|\r\n|0x72|JOIN|\r\n|0x73|JOIN_ACK|\r\n|0x74|LEAVE|\r\n|0x75|LEAVE_ACK|\r\n|0x76|GNOT|\r\n|0x77|GNOT_ACK|\r\n|0x78|UNOT|\r\n|0x79|UNOT_ACK|\r\n|0x7a|PRS|\r\n|0x7b|PRS_ACK|\r\n|0x7c|SNOT|\r\n|0x7d|SNOT_ACK|\r\n|0x7e|HC|\r\n|0x7f|HC_ACK|\r\n\r\nh3. 信号長\r\n\r\nヘッダー、TLV含めた長さ\r\n	\N	\N	1	5	2	\N	5	5	2018-08-06 15:59:27.471404	2018-08-07 10:05:12.689133	2018-08-06	0	\N	\N	6	1	2	f	\N
28	1	3	PeerSite PRS の挙動	<pre>\r\n$ ./extractgscp.py NXS/log/ptt_sg0.log\r\n                  [192.168.194.68:53028]          []\r\n   1 2018/12/17 20:26:27.439 |------- G_PRS ------->|           [192.168.194.75:7003]\r\n   2 2018/12/17 20:26:27.439 |                      |------- G_PRS ------->|          [192.168.194.76:42589]\r\n   3 2018/12/17 20:26:27.681 |                      |<------------------ G_PRS -------------------|\r\n   4 2018/12/17 20:26:27.681 |                      |------- G_PRS ------->|                      |\r\n   5 2018/12/17 20:26:27.939 |------- G_PRS ------->|                      |                      |\r\n   6 2018/12/17 20:26:27.940 |                      |------- G_PRS ------->|                      |\r\n   7 2018/12/17 20:26:28.181 |                      |<------------------ G_PRS -------------------|\r\n   8 2018/12/17 20:26:28.181 |                      |------- G_PRS ------->|                      |\r\n   9 2018/12/17 20:26:28.598 |                      |<----- G_PRS_ACK -----|                      |★PRS_ACK受信後、PeerSiteにport:42589 のPRS再送しない\r\n  10 2018/12/17 20:26:28.599 |<------- G_PRS -------|                      |                      |          [192.168.194.68:54347]\r\n  11 2018/12/17 20:26:28.599 |                      |------------------------------ G_PRS ------------------------------>|\r\n  12 2018/12/17 20:26:28.600 |<------- G_PRS -------|                      |                      |                      |\r\n  13 2018/12/17 20:26:28.600 |                      |------------------------------ G_PRS ------------------------------>|\r\n  14 2018/12/17 20:26:28.600 |                      |---------------- G_PRS_ACK ----------------->|                      |\r\n  15 2018/12/17 20:26:28.600 |----- G_PRS_ACK ----->|                      |                      |                      |\r\n  16 2018/12/17 20:26:28.601 |                      |<---------------------------- G_PRS_ACK ----------------------------|\r\n  17 2018/12/17 20:26:28.601 |----- G_PRS_ACK ----->|                      |                      |                      |\r\n  18 2018/12/17 20:26:28.602 |                      |<---------------------------- G_PRS_ACK ----------------------------|\r\n  19 2018/12/17 20:26:28.939 |------- G_PRS ------->|                      |                      |                      |\r\n  20 2018/12/17 20:26:29.182 |                      |------- G_PRS ------->|                      |                      |\r\n  21 2018/12/17 20:26:30.940 |------- G_PRS ------->|                      |                      |                      |\r\n  22 2018/12/17 20:26:31.182 |                      |------- G_PRS ------->|                      |                      |\r\n</pre>\r\n\r\n* 問題\r\n** Group::StatePressing の状態で PeerSite にリクエスト送信できない\r\n   pararell に送信すべき\r\n** PeerSite の保存する userId がひとつだけ\r\n   PeerSite->userId ではなく、PeerSite->userMap にすべき？\r\n** PeerSite 送信のタイマー（タイマーTx）がGroup単位となっている。\r\n   userId 単位とすればリクエスト毎になる\r\n	\N	\N	5	5	2	\N	5	5	2018-12-18 11:20:45.945831	2019-02-06 15:49:40.647813	2018-12-18	0	\N	\N	28	1	2	f	2019-02-06 15:49:40.647813
8	1	3	dummyclient が coredump する	なんかコア吐く\r\n\r\n以下のパターン\r\n* log ディレクトリがない\r\n存在チェックしてなければ作るか、エラー出力で抜けたほうがいい\r\n* activate でコケる\r\n証明書がないと、lowerTransportが生成されずにNullアクセスするらしい\r\nこれはGSCPスタックを改修しないといけないので、ちょっと待つ\r\n\r\n<pre>\r\n(gdb) bt\r\n#0  nxs_ptt_gscp::GSCPTransportController2::activate (this=0x97c700 <nxs_ptt_gscp::GSCPTransportController2::instance>) at GSCPTransportController2.cpp:856\r\n#1  0x0000000000444c3a in nxs_ptt_gscp::GSCPClientImpl::init (this=0xdea040, prop=...) at GSCPClientImpl.cpp:45\r\n#2  0x0000000000415176 in nxs_ptt_sg::DummyLCClient::init (this=0xdea0f0, props=...) at DummyLCClient.cpp:523\r\n#3  0x00000000004107d1 in nxs_ptt_sg::DummyLCClientCUI::init (this=this@entry=0xdea0d0, props=...) at DummyLCClientCUI.cpp:31\r\n#4  0x0000000000407d04 in main (ac=<optimized out>, av=<optimized out>) at dummyclient_main.cpp:146\r\n\r\n</pre>	\N	\N	1	\N	2	\N	5	3	2018-08-07 10:31:00.933123	2018-08-07 11:00:44.257848	2018-08-07	0	\N	\N	8	1	2	f	\N
10	2	3	JOIN改造		\N	\N	5	\N	2	\N	5	2	2018-08-07 14:54:46.674589	2018-09-18 10:20:48.377292	2018-08-07	100	\N	9	9	2	3	f	2018-09-18 10:20:48.377292
13	2	4	GSCP試験機開発	* DTLS対応\r\n* binary data 通信	\N	\N	1	\N	2	\N	5	3	2018-08-10 12:54:47.569308	2018-08-10 14:00:12.584102	2018-08-10	0	\N	\N	13	1	2	f	\N
14	2	4	BinaryMessage	<pre><code class="cpp">\r\nMessage* a = msg.create();\r\na->addAttributeString(key, value);\r\na->addAttributeU16(key, value);\r\na->addAttributeByte(key, value);\r\nif (optValue.size() > 0)\r\n    a->addAttributeByteArray(key, optValue);\r\n</pre>\r\n	\N	\N	1	\N	2	\N	5	0	2018-08-15 10:41:06.509395	2018-08-15 10:41:06.509395	2018-08-15	0	\N	\N	14	1	2	f	\N
12	2	3	GNOT 改造	グループ状態に加入者通話モニタモード（0x02）を追加\r\n\r\n何をするかというか、送信に追加する。\r\n受信した時に動作分岐を追加する。	\N	\N	5	5	2	\N	5	2	2018-08-07 15:42:11.456153	2018-09-18 10:21:00.139248	2018-08-07	100	\N	9	9	6	7	f	2018-09-18 10:21:00.139248
15	2	4	Diametor	以下を要設計\r\n\r\n* ユーティリティ部分\r\n** 設定読み込み\r\n** ログ出力\r\n** バイナリリーダー\r\n\r\n* トランスポート層\r\n** SCTP\r\n** UDP\r\n** DTLS?（不要？）\r\n\r\n* アプリケーション層（Diametorプロトコル本体）\r\n** コマンド種別、レスポンス種別\r\n** AVP\r\n\r\n* クライアント向け部分\r\nリクエスト/レスポンス送信時にプロダクトから通信規格（DIA）スタックへの情報をやりとりする部分\r\n\r\n* サーバー向け通信部分\r\nリクエスト/レスポンス受信時に通信規格（DIA）スタックからプロダクトへの情報をやりとりする部分\r\n今回必要か？	\N	\N	1	\N	2	\N	5	2	2018-08-20 14:39:32.433356	2018-08-20 15:07:58.735884	2018-08-20	0	\N	\N	15	1	2	f	\N
11	2	3	PRS改造	PRS_ACK送るとき、最大発言時間を分岐\r\n* 通常発言\r\nSOデータの最大発言を使用する\r\n* 通話モニタ\r\n最大値を渡す\r\n	\N	\N	5	5	2	\N	5	5	2018-08-07 14:56:47.229188	2018-09-18 10:21:10.356282	2018-08-07	100	\N	9	9	4	5	f	2018-09-18 10:21:10.356282
9	2	3	通話モニタ機能	管理チケット	\N	\N	1	\N	2	\N	5	3	2018-08-07 14:54:16.152274	2018-09-18 10:21:10.371041	2018-08-07	100	\N	\N	9	1	8	f	\N
30	2	8	ctc 2019 開発要項	対象は以下\r\n* 時間帯転送の機能改善（1.5人月）\r\n時間帯転送の転送先を加入者毎に設定可能とする。\r\n見積り根拠:App部とDBスキーマの改造\r\n* 代表と着信転送の競合条件の変更（2.0人月）\r\nハント着信中、特定条件時に着信転送を起動させる\r\n特定条件は「着信可の全てのユーザーから特定レスポンスコードを受信した場合」\r\n見積り根拠:App、B2BUA部の改造\r\n* 通話録音（1.0人月）\r\nB5000での録音\r\n録音トリガーは SIP Message に独自ヘッダーを付与し、通知する\r\n見積り根拠:Appの改造	\N	\N	1	\N	2	\N	5	0	2019-01-17 15:39:55.513162	2019-01-17 15:39:55.513162	2019-01-17	0	\N	\N	30	1	8	f	\N
32	2	8	代表と着信転送の競合条件の変更	以下の関数でハント処理\r\n<pre>\r\nCSenApplication::forwardHunt()\r\n</pre>\r\n\r\nハント発信であっても、以下の関数を通る。\r\n<pre>\r\nCSenForwardCallScenario::onInviteFailed()\r\n</pre>\r\nで、その後にハントトリートメント処理に移る。\r\n<pre>\r\nCSenApplication::huntTreatment()\r\n</pre>\r\nこのへんで何かすればよいと思う。	\N	\N	6	\N	2	\N	5	5	2019-01-17 15:40:29.084466	2019-01-30 13:26:46.041238	2019-01-17	0	\N	30	30	4	5	f	\N
16	2	3	SO-GW開発	下書き\r\nまとめチケット\r\n\r\n* SOファイル読み込む\r\nファイル名、ファイル行のフォーマットチェックくらいしてあげる？\r\n→と思ったら、仕様書に「6.1.2 SOファイルチェック」ってのがあったわ\r\n* pttdsdumpでデータ抜き取り、形成する\r\nユーザー、グループ、グループメンバーでリスト（マップ？）が必要\r\n形成ルーチンつくる必要がありますね。\r\n\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n** ファイル削除機能\r\n「*.csv」を削除する機能にしよう\r\n\r\nh2. SOファイルフォーマット\r\n\r\nこれから作るSO-GWに食わせるSOファイルのフォーマット\r\n\r\n<pre>\r\nUSR,100000001,password11,301\r\nUSR,100000002,password12,301\r\nUSR,200000001,password21,301\r\nLGRP,3000001,east,60,301,100000001,100000002\r\nLGRP,3000002,east,70,301,100000002,200000001\r\nLGRP,3000003,east,90,301\r\nWGRP,4000001,east,60,301,3000001\r\nWGRP,4000002,east,70,301,3000001,3000002,3000003\r\nWGRP,4000003,east,90,301\r\n</pre>\r\n\r\nh3. ユーザー\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. 変更可否|\r\n|1|操作対象|USR|-|\r\n|2|値1:ユーザーID|文字列|否|\r\n|3|値2:パスワード|文字列|可|\r\n|4|値3:県警本部ID|文字列|否|\r\n\r\n\r\nh3. グループ\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. 変更可否|\r\n|1|操作対象|LGRP/WGRP|-|\r\n|2|値1:ユーザーID|文字列|否|\r\n|3|値2:マスタ拠点|west/east|否|\r\n|4|値3:最大発言時間|数値（10-300）|可|\r\n|5|値4:県警本部ID|文字列|否|\r\n|6|値5:操作対象で分岐\r\nLGRP:ユーザーID\r\nWGRP:県内グループID|文字列|可|\r\n\r\nh2. 既存SOフォーマット\r\n\r\nSO本家のデータ、\r\n送り付けられるSOファイルは後で書く\r\n\r\nh3. ユーザー\r\n\r\nこんな感じ\r\n<pre>\r\nUSR,INS,1001,1234\r\nUSR,UPD,1002,2345\r\nUSR,DEL,1003\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象ユーザー属性を示す|USR|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:ユーザーID|文字列|M|\r\n|4|値2:パスワード|文字列|INS/UPD:M, DEL:O|\r\n|5|値3:県警本部ID|文字列、使ってない？|INS:M,UPD/DEL:O|\r\n\r\nh3. グループ\r\n\r\n登録、変更で値2の種類が異なる.\r\n\r\nこんな感じ\r\n<pre>\r\nGRP,INS,9001,east,60,801,true\r\nGRP,INS,8888,east,60,801,false\r\nGRP,UPD,8889,60\r\nGRP,DEL,8890\r\n</pre>\r\n\r\nh4. グループ登録\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象、グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:マスタ拠点|west/east|INS/UPD:M,DEL:O|\r\n|5|値3:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n|6|値4:県警本部ID|文字列|INS:M,UPD/DEL:O|\r\n|7|値5:県間フラグ|true/false|INS:M,UPD/DEL:O|\r\n\r\n\r\nh4. グループ変更\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n\r\n\r\nh3. 県内グループへのユーザー操作\r\n\r\nこんな感じ\r\n<pre>\r\nLGRP_MEM,INS,8888,1001\r\nLGRP_MEM,DEL,8887,1002\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県内グループユーザー属を示す|LGRP_MEM|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n|4|値2:ユーザーID、投入済みのユーザーIDを使用せよ|文字列|M|\r\n\r\nh3. 県間グループへの県間グループ操作\r\n\r\nこんな感じ\r\n<pre>\r\nWGRP_GRP,INS,9001,8888\r\nWGRP_GRP,DEL,9002,8889\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県間グループを示す|WGRP_GRP|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県間グループID|文字列|M|\r\n|4|値2:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n\r\n	\N	\N	7	5	2	\N	5	6	2018-08-21 18:45:17.124773	2018-08-22 21:41:51.059479	2018-08-21	0	\N	\N	16	1	2	f	\N
7	2	3	LockMap replicator	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** -transientStateTimeout()- transientStateAborted()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい\r\n\r\n以下の関数も追加しないといけない。\r\n* receiveUnknownTarget()\r\n知らないターゲット名を取得してしまった場合\r\nregisterTarget() で追加しないといけない。\r\n* syncedTarget()\r\n調査中\r\n\r\nイベントキューを止める、再開するは以下の関数\r\n* ExecutorService::lockEvent()\r\n* ExecutorService::unlockEvent()\r\n	\N	\N	1	\N	2	\N	5	11	2018-08-06 18:12:49.333356	2018-09-28 15:49:59.677686	2018-08-06	0	\N	\N	7	1	2	f	\N
17	1	3	ユニットテストが通らない	純仮想化関数の引数が増えていてユニットテストが通らない\r\n\r\nテストのほうも修正が必要だが、ぐちゃぐちゃしてる。\r\n整理用\r\n\r\n<pre><code class="diff">\r\ndiff --git a/unit_test/MockGroupServerCallback.hxx b/unit_test/MockGroupServerCallback.hxx\r\nindex 856127f..4663468 100644\r\n--- a/unit_test/MockGroupServerCallback.hxx\r\n+++ b/unit_test/MockGroupServerCallback.hxx\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -19,18 +19,20 @@ class MockGroupServerCallback : public GSCPGroupServerCallbackInterface {\r\n public:\r\n     MOCK_METHOD2(notifyTransportError,\r\n                  void(const string& id, int error));\r\n-    MOCK_METHOD6(receivedRegister,\r\n+    MOCK_METHOD8(receivedRegister,\r\n                  void(int requestId\r\n                       , const string& userId\r\n                       , int expires\r\n                       , const string& signalAddress\r\n                       , int signalPort\r\n+                      , const uint8_t* restoreToken\r\n+                      , int restoreTokenLen\r\n                       , const GSCPChallengeResponse* response));\r\n     MOCK_METHOD2(expiredRegister,\r\n                  void(const string& userId, int expires));\r\n-    MOCK_METHOD6(receivedJoin,\r\n+    MOCK_METHOD7(receivedJoin,\r\n                  void(int requestId, int joinId, const string& groupId, const string& userId,\r\n-                      const string& audioAddress, int audioPort));\r\n+                      const string& audioAddress, int audioPort, QueryType queryType));\r\n     MOCK_METHOD3(expiredJoin,\r\n                  void(int requestId, const string& groupId, const string& userId));\r\n     MOCK_METHOD3(receivedLeave,\r\n@@ -40,6 +42,8 @@ public:\r\n                       int priority, char button, uint16_t seqNum));\r\n     MOCK_METHOD2(receivedPressResponse,\r\n                  void(const string& userId, GSCPCode code));\r\n+    MOCK_METHOD3(notifyRestoreToken,\r\n+                 void(const string& userId, const uint8_t* restoreToken, int restoreTokenLen));;\r\n };\r\n\r\n }  // namespace nxs_ptt_gscp\r\ndiff --git a/unit_test/MockServerCallback.hxx b/unit_test/MockServerCallback.hxx\r\nindex 5032ec3..6b4f4bd 100644\r\n--- a/unit_test/MockServerCallback.hxx\r\n+++ b/unit_test/MockServerCallback.hxx\r\n@@ -20,7 +20,7 @@ class MockServerCallback : public GSCPServerCallbackInterface {\r\n public:\r\n     MOCK_METHOD2(notifyTransportError,\r\n                  void(const string& transportId, int error));\r\n-    MOCK_METHOD8(receivedRegister,\r\n+    MOCK_METHOD10(receivedRegister,\r\n                  void(uint16_t systemNumber\r\n                       , uint32_t wirelessId\r\n                       , int expires\r\n@@ -28,15 +28,19 @@ public:\r\n                       , const string& audioAddress\r\n                       , int audioPort\r\n                       , const string& signalAddress\r\n-                      , int signalPort));\r\n+                      , int signalPort\r\n+                      , const uint8_t* restoreToken\r\n+                      , int restoreTokenLen));\r\n     MOCK_METHOD2(expiredRegister,\r\n                  void(uint32_t wirelessId, int expires));\r\n-    MOCK_METHOD5(receivedPress,\r\n-                 void(uint32_t wirelessId, int systemNumber, int priority, char button, uint16_t seqNum));\r\n+    MOCK_METHOD6(receivedPress,\r\n+                 void(int requestId, uint32_t wirelessId, int systemNumber, int priority, char button, uint16_t seqNum));\r\n     MOCK_METHOD2(receivedStatusResponse,\r\n                  void(uint32_t wirelessId, GSCPCode code));\r\n     MOCK_METHOD3(receivedInfo,\r\n                  void(int systemNumber, uint32_t wirelessId, const vector<uint8_t>& info));\r\n+    MOCK_METHOD3(notifyRestoreToken,\r\n+                 void(uint32_t wirelessId, const uint8_t* restoreToken, int restoreTokenLen));\r\n };\r\n\r\n };  // namespace nxs_ptt_gscp\r\n</pre>	\N	\N	1	5	2	\N	5	1	2018-09-28 17:18:47.94134	2018-09-28 17:28:24.960294	2018-09-28	0	\N	\N	17	1	2	f	\N
18	1	3	[PIII]DTLS初回接続不可時に拠点が切り替わらない	なんかダメなんだって\r\n\r\nsendRegisterResult:GE_TRANSPORTを返している。\r\n\r\n\r\nGSCPGroupRegistrantController::onSendRegister()\r\nGSCPGroupRegistrant::onSendRegister()\r\n\r\nGSCPClientTransaction::prepareSend()\r\nGSCPTransactionController::createConnection()\r\nDTLSClientTransport::createConnection()\r\nDTLSConnection::prepareConnect()\r\n\r\n\r\nGSCPTransactionController::sendRequest()\r\n\r\n\r\nGSCPGroupRegistrantController::transportError()\r\n※GSCPGroupClientSessionController::transportError()？\r\nTransportErrorEvent::run()\r\nGSCPGroupRegistrantController::onTransportError()\r\nGSCPGroupRegistrant::onRegisterFailed()\r\nGSCPGroupRegistrantController::onRegisterFailed()	\N	\N	7	5	2	\N	5	3	2018-10-01 22:17:26.896278	2018-10-31 11:22:07.449834	2018-10-01	0	\N	\N	18	1	2	f	\N
19	2	2	Push設定	setup.pl で pdb 設定すべし\r\n\r\nrouter.xml\r\n<pre>\r\n<?xml version="1.0" encoding="UTF-8"?>\r\n<!--\r\n      * $Id: 11f1092a17228dd83b0681525fae4fe2c70dbf1c $\r\n *\r\n * Copyright 2005-2009 NextGen, Inc. All Rights Reserved.\r\n *\r\n * This software is the proprietary information of NextGen, Inc.\r\n * Use is subject to license terms.\r\n *\r\n-->\r\n\r\n<RoutingData xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="router.xsd">\r\n    <ServerList>\r\n        <!--\r\n                     <Server id="inout2" serverprofile="default">\r\n        -->\r\n        <Server id="register_agent" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n        </Server>\r\n        <Server id="push_node" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.100:5060</HostPort> <!-- HostPort は端末の値を設定-->\r\n        </Server>\r\n        <Server id="t1ca_server" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.101:5060</HostPort> <!-- HostPort はPush着信させる端末の値を設定-->\r\n        </Server>\r\n        <Server id="csen" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.102:5060</HostPort> <!-- HostPort はレジスター登録サーバ(c1000, e1000, sipp 等) -->\r\n        </Server>\r\n    </ServerList>\r\n    <PathList>\r\n        <Path id="1" profile="default" registerprofile="default" rtpproxyid="1"/>\r\n    </PathList>\r\n    <RouteList>\r\n        <Route id="register_agent" action="egress" data="csen"/>\r\n        <Route id="push_node" action="route" data="t1ca_server"/>\r\n        <Route id="t1ca_server">\r\n            <Matching id="push_prefixcheck" action="route" data="push_route" number="prefix_push"/>\r\n            <Matching id="normal0" action="egress" data="t1ca_server" number="050"/>\r\n        </Route>\r\n        <Route id="push_route" action="push" data="t1ca_server" dmrule="del_push_prefix"/>\r\n        <Route id="csen" action="egress" data="push_node"/>\r\n    </RouteList>\r\n    <DmRuleList>\r\n        <DmRule id="del_push_prefix" target="requesturi" type="delete" param="user" delete_position="0" delete_length="11"/>\r\n    </DmRuleList>\r\n</RoutingData>\r\n\r\n</pre>\r\n\r\nビルド用環境変数\r\n<pre>\r\n# ~/.bashrc: executed by bash(1) for non-login shells.\r\n# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)\r\n# for examples\r\n\r\n# bash_completion\r\nif [ -f /etc/bash_completion ]; then\r\n    . /etc/bash_completion\r\nfi\r\n\r\n# example mcc env.\r\n\r\n# install directory var.\r\nexport INSTALLDIR=${HOME}/package/NXS-MCC\r\n\r\n# mcc compile switch\r\nexport _BUILD_64=TRUE\r\nexport USE_SNMP=TRUE\r\nexport _NOCORBA=TRUE\r\nexport USE_MEMLOG=TRUE\r\nexport USE_TLS=TRUE\r\nexport PACKAGE_OPENSSLLIB=FALSE\r\n#export PACKAGE_PGSQLLIB=FALSE\r\nexport USE_DMS=FALSE\r\n\r\n# 3rd party libraries directory\r\nexport THIRD_DIR=${HOME}/3rd_party\r\nexport CPP_DIR=/usr/local\r\nexport JAVA_DIR=/usr/local/java\r\n\r\n# boost\r\n# when Thawing boost on /usr/local directory\r\nexport BOOST_DIR=${CPP_DIR}\r\nexport BOOST_INCDIR=${BOOST_DIR}/include/boost-1_49\r\nexport BOOST_LIBDIR=${BOOST_DIR}/lib\r\n\r\n# gmock\r\n# when Thawing gmock-1.7.0 on /usr/local/java directory\r\nexport GMOCK_DIR=${CPP_DIR}/gmock-1.7.0\r\nexport GTEST_DIR=$GMOCK_DIR/gtest\r\n#export GMOCK_LIB="$GMOCK_DIR/libgmock.a $GMOCK_DIR/libgtest.a"\r\nexport GMOCK_LIB="$GMOCK_DIR/libgmock.a"\r\n\r\n# speex\r\n# when Thawing speex on /usr/local directory\r\nexport SPEEX_LIB=${CPP_DIR}/speex/lib\r\nexport SPEEX_INC=${CPP_DIR}/speex/include\r\n\r\n# xerces\r\n# when Thawing xerces on ${THIRD_DIR}/xerces-c directory\r\nexport USE_XERCES=TRUE\r\nexport XERCES_DIR=${CPP_DIR}\r\nexport XERCES_LIBDIR=${XERCES_DIR}/lib\r\nexport XERCES_INCDIR=${XERCES_DIR}/include\r\n\r\n#openssl\r\n# when using package including OS\r\nexport OPENSSL_INCDIR=/usr/include\r\nexport OPENSSL_LIBDIR=/usr/lib64\r\n\r\n# postgres\r\n# when using package including OS\r\nexport PGSQL_INCDIR=/usr/include\r\nexport PGSQL_LIBDIR=/usr/lib64\r\nexport PGSQL_BINDIR=/usr/bin\r\nexport PATH=$PGSQL_DIR/bin:$PATH\r\n\r\n# java\r\n# when using package including OS\r\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk.x86_64\r\n\r\n#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.45.x86_64/\r\nexport TOMCAT_NAME=apache-tomcat-7.0.55\r\nexport TOMCAT_DIR=${JAVA_DIR}/${TOMCAT_NAME}\r\n##5.0\r\nexport JAVA_APNS_VER=0.2.3\r\nexport JAVA_APNS_DIR=${JAVA_DIR}/java-apns\r\n##5.0 custom\r\nexport USE_MCCPUSHDB=TRUE\r\nexport JAVALIBBASE=${JAVA_DIR}\r\nexport COBERTURE_VERSION=2.0.3\r\nexport SMACK_VER=4.1.9\r\nexport SMACK_DIR=${JAVALIBBASE}/smack/smack-${SMACK_VER}\r\nexport KXML_JAR=${JAVALIBBASE}/kxml/kxml2-2.3.0.jar\r\nexport OKHTTP_JAR=${JAVALIBBASE}/okhttp/okhttp-3.9.0.jar\r\nexport JXMPP_DIR=${JAVALIBBASE}/jxmpp\r\nexport PGSQL_JAR=/usr/local/postgresql-42.1.1.jar\r\n\r\nexport APNSLIBS_DIR=${JAVALIBBASE}/apnslibs\r\nexport COMMONCLIENT_JAR=${APNSLIBS_DIR}/commons-httpclient-3.1.jar\r\nexport GSON_JAR=${APNSLIBS_DIR}/gson-2.6.2.jar\r\nexport SLF4J_API_JAR=${APNSLIBS_DIR}/slf4j-api-1.7.6.jar\r\nexport SLF4J_SIMPLE_JAR=${APNSLIBS_DIR}/slf4j-simple-1.7.6.jar\r\nexport NETTY_JAR=${APNSLIBS_DIR}/netty-all-4.1.14.Final.jar\r\nexport NETTY_TCNATIVE_JAR=${APNSLIBS_DIR}/netty-tcnative-2.0.8.Final.jar\r\nexport COMMONS_CODEC_JAR=${APNSLIBS_DIR}/commons-codec-1.10.jar\r\nexport JETTY_ALPN_AGENT_JAR=${APNSLIBS_DIR}/jetty-alpn-agent-2.0.6.jar\r\n#export ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-8.1.10.v20161026.jar\r\nexport ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-7.1.0.v20141016.jar\r\n\r\n\r\nexport PATH=$PATH:$JAVA_HOME/bin\r\n\r\n# ld path\r\nexport LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PGSQL_LIBDIR:$XERCES_LIBDIR\r\n</pre>	\N	\N	1	\N	2	\N	5	2	2018-10-18 07:12:27.552245	2018-10-18 08:56:06.918788	2018-10-18	0	\N	\N	19	1	2	f	\N
20	2	4	python による Webスクレイピング	インターネットからデータ収集をする\r\n\r\npython3\r\nurllib.reqauest.urlopen() を使って URL を開く\r\nBeautifulSoup を使え\r\n	\N	\N	7	5	2	\N	5	1	2018-11-04 23:45:34.136868	2018-11-04 23:58:46.807731	2018-11-04	0	\N	\N	20	1	2	f	\N
21	2	5	Golang install for centos	"こういう":https://qiita.com/estaro/items/23c10fe7e43a2a70e689 サイトや、"こんな":http://stupiddog.jp/note/archives/1148 もあるわけで.\r\n\r\n	\N	\N	7	5	2	\N	5	1	2018-11-06 12:02:52.434208	2018-11-06 12:04:14.229176	2018-11-06	0	\N	\N	21	1	2	f	\N
22	2	5	DB query postgresql 編	"参考":http://kudohamu.hatenablog.com/entry/2014/11/29/121328	\N	\N	1	\N	2	\N	5	0	2018-11-06 12:12:39.095442	2018-11-06 12:12:39.095442	2018-11-06	0	\N	\N	22	1	2	f	\N
24	1	3	拠点冗長先のJOIN 失敗時、PRS送信時にタイマー満了まで待ってる	GCUserAuthWaitTimeoutMSec	\N	\N	1	\N	2	\N	5	1	2018-11-15 17:42:51.635543	2018-11-15 18:11:51.242459	2018-11-15	0	\N	\N	24	1	2	f	\N
26	2	3	GNOTするまでの流れ	GCUser::synchronousUpdateGroupList()\r\nGCUserControllerImpl::synchronousBind()\r\nGroupControllerImpl::synchronousUserBind()\r\nGroup::onUserBind()\r\nGroup::State::onUserBind()\r\n\r\nGroup::StateJoined::onUserBind()\r\nGroup::userBinded()\r\nGroupControllerImpl::userBinded()\r\nGCUserControllerImpl::binded()\r\nnew BindedEvent()\r\nonGroupBinded()\r\n\r\n\r\n\r\n\r\n\r\nonGroupBinded()\r\n\r\n\r\n\r\n\r\nJoinEvent::procEvent()	\N	\N	1	\N	2	\N	5	0	2018-11-28 15:00:51.861963	2018-11-28 15:00:51.861963	2018-11-28	0	\N	\N	26	1	2	f	\N
27	2	7	dbdriver 調査	"ここ":http://takezoe.hatenablog.com/entry/2017/11/19/134208 を参考にする.\r\n\r\n* 候補一覧\r\n** slick/slick\r\n** getquill/quill\r\n** tpolecat/doobie\r\n** scalikejdbc/scalikejdbc\r\n** squeryl/squeryl	\N	\N	1	5	2	\N	5	2	2018-11-28 17:37:07.222474	2018-11-28 17:39:55.993258	2018-11-28	0	\N	\N	27	1	2	f	\N
34	1	3	SSL_new() で NULL のケース	SSL_set_options() でコアダンプする。\r\nSSL_set_options は　SSL_ctrl(){return (s->options |= larg);} のエイリアス（マクロ定義）だが、\r\nSSL_ctrl() で例外スローしているパターンはそもそもない。\r\n\r\n参照異常のアクセスと思われる。\r\nSSL_set_options() する前に *SSL を SSL_new() で生成している。\r\nこのパターンで *SSL を NULL で返すパターンがありうる。\r\n死ぬ可能性があるとすればここだと思う。\r\nまずはこの関数の調査から。\r\n	\N	\N	1	\N	2	\N	5	1	2019-02-06 11:31:13.270811	2019-02-06 13:11:49.078711	2019-02-06	0	\N	\N	34	1	2	f	\N
31	2	8	時間帯転送の機能改善	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\nユーザーアクションは、scfw_plan.action に以下を設定.\r\n<pre>\r\n        // 7~11: user scfw action 1~5.\r\n        scfw_action_user_1,\r\n        scfw_action_user_2,\r\n        scfw_action_user_3,\r\n        scfw_action_user_4,\r\n        scfw_action_user_5,\r\n</pre>\r\n\r\n起動条件は通常の時間帯転送と同じとし、\r\nオプションフラッグは、user_data.scfw_active が true,\r\n user_data.forwarding_flags bit 8 （256）が有効の場合に動作する	\N	\N	7	\N	2	\N	5	15	2019-01-17 15:40:16.841038	2019-02-07 13:27:45.124263	2019-01-17	0	\N	30	30	2	3	f	\N
\.


--
-- Name: issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issues_id_seq', 34, true);


--
-- Data for Name: journal_details; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY journal_details (id, journal_id, property, prop_key, old_value, value) FROM stdin;
1	6	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\nこれをできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n</pre>
2	11	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\nこれをできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n</pre>	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n</pre>
3	12	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n</pre>	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>
4	13	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\nOSはUbuntu(17.0.2)を使う.
5	21	attr	description	任意のメッセージを dtls/udp で送信できる。\r\nこれは dtlsmsg という名の binarymsg ツールじゃねーか。\r\n\r\n書き方が複雑怪奇なので、まとめることにする。	任意のメッセージを dtls/udp で送信できる。\r\nこれは dtlsmsg という名の binarymsg ツールじゃねーか。\r\n\r\n書き方が複雑怪奇なので、まとめることにする。\r\n\r\nh2. 信号仕様\r\n\r\n変換表としてまとめる\r\n\r\nまずはヘッダー部分が書けるようにする\r\n情報要素の詳細はインターフェース仕様書を参照してくれ（書くの疲れた）\r\n\r\nh3. 書式\r\n\r\n\r\n|7|6|5|4|3|2|1|0|\r\n|\\8. バージョン(1 Byte)|\r\n|\\8. 信号種別(1 Byte)  |\r\n|\\8. 信号長(2 Byte)    |\r\n|\\8. 情報要素TLV (n Byte)      |\r\n\r\n\r\nh3. バージョン\r\n\r\n\r\n1（固定）\r\n\r\nh3. 信号種別\r\n\r\n|_. コード|_. 略称|\r\n|0x70|REG|\r\n|0x71|REG_ACK|\r\n|0x72|JOIN|\r\n|0x73|JOIN_ACK|\r\n|0x74|LEAVE|\r\n|0x75|LEAVE_ACK|\r\n|0x76|GNOT|\r\n|0x77|GNOT_ACK|\r\n|0x78|UNOT|\r\n|0x79|UNOT_ACK|\r\n|0x7a|PRS|\r\n|0x7b|PRS_ACK|\r\n|0x7c|SNOT|\r\n|0x7d|SNOT_ACK|\r\n|0x7e|HC|\r\n|0x7f|HC_ACK|\r\n\r\nh3. 信号長\r\n\r\nヘッダー、TLV含めた長さ\r\n
6	25	attr	description	なんかコア吐く\r\n\r\n以下のパターン\r\n* log ディレクトリがない\r\n存在チェックしてなければ作るか、エラー出力で抜けたほうがいい\r\n* activate でコケる\r\nなんかこける	なんかコア吐く\r\n\r\n以下のパターン\r\n* log ディレクトリがない\r\n存在チェックしてなければ作るか、エラー出力で抜けたほうがいい\r\n* activate でコケる\r\n証明書がないと、lowerTransportが生成されずにNullアクセスするらしい\r\nこれはGSCPスタックを改修しないといけないので、ちょっと待つ
7	27	attr	description	なんかコア吐く\r\n\r\n以下のパターン\r\n* log ディレクトリがない\r\n存在チェックしてなければ作るか、エラー出力で抜けたほうがいい\r\n* activate でコケる\r\n証明書がないと、lowerTransportが生成されずにNullアクセスするらしい\r\nこれはGSCPスタックを改修しないといけないので、ちょっと待つ	なんかコア吐く\r\n\r\n以下のパターン\r\n* log ディレクトリがない\r\n存在チェックしてなければ作るか、エラー出力で抜けたほうがいい\r\n* activate でコケる\r\n証明書がないと、lowerTransportが生成されずにNullアクセスするらしい\r\nこれはGSCPスタックを改修しないといけないので、ちょっと待つ\r\n\r\n<pre>\r\n(gdb) bt\r\n#0  nxs_ptt_gscp::GSCPTransportController2::activate (this=0x97c700 <nxs_ptt_gscp::GSCPTransportController2::instance>) at GSCPTransportController2.cpp:856\r\n#1  0x0000000000444c3a in nxs_ptt_gscp::GSCPClientImpl::init (this=0xdea040, prop=...) at GSCPClientImpl.cpp:45\r\n#2  0x0000000000415176 in nxs_ptt_sg::DummyLCClient::init (this=0xdea0f0, props=...) at DummyLCClient.cpp:523\r\n#3  0x00000000004107d1 in nxs_ptt_sg::DummyLCClientCUI::init (this=this@entry=0xdea0d0, props=...) at DummyLCClientCUI.cpp:31\r\n#4  0x0000000000407d04 in main (ac=<optimized out>, av=<optimized out>) at dummyclient_main.cpp:146\r\n\r\n</pre>
8	34	attr	subject	DTLS	GSCP試験機開発
9	34	attr	description		* DTLS対応\r\n* binary data 通信
10	37	attr	description		以下を要設計\r\n\r\n* トランスポート層\r\n** SCTP\r\n** UDP\r\n** DTLS?（不要？）\r\n\r\n* アプリケーション層（Diametorプロトコル本体）\r\n** コマンド種別、レスポンス種別\r\n** AVP\r\n\r\n* クライアント向け部分\r\nリクエスト/レスポンス送信時にプロダクトから通信規格（DIA）スタックへの情報をやりとりする部分\r\n\r\n* サーバー向け通信部分\r\nリクエスト/レスポンス受信時に通信規格（DIA）スタックからプロダクトへの情報をやりとりする部分\r\n今回必要か？
65	102	attr	description		以下の関数でハント処理\r\n<pre>\r\nCSenApplication::forwardHunt()\r\n</pre>\r\n\r\nハント発信であっても、以下の関数を通る。\r\n<pre>\r\nCSenForwardCallScenario::onInviteFailed()\r\n</pre>\r\nで、その後にハントトリートメント処理に移る。\r\n<pre>\r\nCSenApplication::huntTreatment()\r\n</pre>\r\nこのへんで何かすればよいと思う。
11	38	attr	description	以下を要設計\r\n\r\n* トランスポート層\r\n** SCTP\r\n** UDP\r\n** DTLS?（不要？）\r\n\r\n* アプリケーション層（Diametorプロトコル本体）\r\n** コマンド種別、レスポンス種別\r\n** AVP\r\n\r\n* クライアント向け部分\r\nリクエスト/レスポンス送信時にプロダクトから通信規格（DIA）スタックへの情報をやりとりする部分\r\n\r\n* サーバー向け通信部分\r\nリクエスト/レスポンス受信時に通信規格（DIA）スタックからプロダクトへの情報をやりとりする部分\r\n今回必要か？	以下を要設計\r\n\r\n* ユーティリティ部分\r\n** 設定読み込み\r\n** ログ出力\r\n** バイナリリーダー\r\n\r\n* トランスポート層\r\n** SCTP\r\n** UDP\r\n** DTLS?（不要？）\r\n\r\n* アプリケーション層（Diametorプロトコル本体）\r\n** コマンド種別、レスポンス種別\r\n** AVP\r\n\r\n* クライアント向け部分\r\nリクエスト/レスポンス送信時にプロダクトから通信規格（DIA）スタックへの情報をやりとりする部分\r\n\r\n* サーバー向け通信部分\r\nリクエスト/レスポンス受信時に通信規格（DIA）スタックからプロダクトへの情報をやりとりする部分\r\n今回必要か？
12	39	attr	description	下書き\r\nまとめチケット	下書き\r\nまとめチケット\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n
13	40	attr	description	下書き\r\nまとめチケット\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n	下書き\r\nまとめチケット\r\n\r\n\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n** ファイル削除機能\r\n「*.csv」を削除する機能にしよう
14	41	attr	description	下書き\r\nまとめチケット\r\n\r\n\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n** ファイル削除機能\r\n「*.csv」を削除する機能にしよう	下書き\r\nまとめチケット\r\n\r\n* SOファイル読み込む\r\nファイル名、ファイル行のフォーマットチェックくらいしてあげる？\r\n→と思ったら、仕様書に「6.1.2 SOファイルチェック」ってのがあったわ\r\n* pttdsdumpでデータ抜き取り、形成する\r\nユーザー、グループ、グループメンバーでリスト（マップ？）が必要\r\n形成ルーチンつくる必要がありますね。\r\n\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n** ファイル削除機能\r\n「*.csv」を削除する機能にしよう\r\n\r\nh2. SOファイルフォーマット\r\n\r\nこれから作るSO-GWに食わせるSOファイルのフォーマット\r\n\r\n\r\nh2. 既存SOフォーマット\r\n\r\nSO本家のデータ、\r\n送り付けられるSOファイルは後で書く\r\n\r\nh3. ユーザー\r\n\r\nこんな感じ\r\n<pre>\r\nUSR,INS,1001,1234\r\nUSR,UPD,1002,2345\r\nUSR,DEL,1003\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象ユーザー属性を示す|USR|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:ユーザーID|文字列|M|\r\n|4|値2:パスワード|文字列|INS/UPD:M, DEL:O|\r\n|5|値3:県警本部ID|文字列、使ってない？|INS:M,UPD/DEL:O|\r\n\r\nh3. グループ\r\n\r\n登録、変更で値2の種類が異なる.\r\n\r\nこんな感じ\r\n<pre>\r\nGRP,INS,9001,east,60,801,true\r\nGRP,INS,8888,east,60,801,false\r\nGRP,UPD,8889,60\r\nGRP,DEL,8890\r\n</pre>\r\n\r\nh4. グループ登録\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象、グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:マスタ拠点|west/east|INS/UPD:M,DEL:O|\r\n|5|値3:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n|6|値4:県警本部ID|文字列|INS:M,UPD/DEL:O|\r\n|7|値5:県間フラグ|true/false|INS:M,UPD/DEL:O|\r\n\r\n\r\nh4. グループ変更\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n\r\n\r\nh3. 県内グループへのユーザー操作\r\n\r\nこんな感じ\r\n<pre>\r\nLGRP_MEM,INS,8888,1001\r\nLGRP_MEM,DEL,8887,1002\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県内グループユーザー属を示す|LGRP_MEM|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n|4|値2:ユーザーID、投入済みのユーザーIDを使用せよ|文字列|M|\r\n\r\nh3. 県間グループへの県間グループ操作\r\n\r\nこんな感じ\r\n<pre>\r\nWGRP_GRP,INS,9001,8888\r\nWGRP_GRP,DEL,9002,8889\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県間グループを示す|WGRP_GRP|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県間グループID|文字列|M|\r\n|4|値2:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n\r\n
15	42	attr	description	下書き\r\nまとめチケット\r\n\r\n* SOファイル読み込む\r\nファイル名、ファイル行のフォーマットチェックくらいしてあげる？\r\n→と思ったら、仕様書に「6.1.2 SOファイルチェック」ってのがあったわ\r\n* pttdsdumpでデータ抜き取り、形成する\r\nユーザー、グループ、グループメンバーでリスト（マップ？）が必要\r\n形成ルーチンつくる必要がありますね。\r\n\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n** ファイル削除機能\r\n「*.csv」を削除する機能にしよう\r\n\r\nh2. SOファイルフォーマット\r\n\r\nこれから作るSO-GWに食わせるSOファイルのフォーマット\r\n\r\n\r\nh2. 既存SOフォーマット\r\n\r\nSO本家のデータ、\r\n送り付けられるSOファイルは後で書く\r\n\r\nh3. ユーザー\r\n\r\nこんな感じ\r\n<pre>\r\nUSR,INS,1001,1234\r\nUSR,UPD,1002,2345\r\nUSR,DEL,1003\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象ユーザー属性を示す|USR|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:ユーザーID|文字列|M|\r\n|4|値2:パスワード|文字列|INS/UPD:M, DEL:O|\r\n|5|値3:県警本部ID|文字列、使ってない？|INS:M,UPD/DEL:O|\r\n\r\nh3. グループ\r\n\r\n登録、変更で値2の種類が異なる.\r\n\r\nこんな感じ\r\n<pre>\r\nGRP,INS,9001,east,60,801,true\r\nGRP,INS,8888,east,60,801,false\r\nGRP,UPD,8889,60\r\nGRP,DEL,8890\r\n</pre>\r\n\r\nh4. グループ登録\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象、グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:マスタ拠点|west/east|INS/UPD:M,DEL:O|\r\n|5|値3:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n|6|値4:県警本部ID|文字列|INS:M,UPD/DEL:O|\r\n|7|値5:県間フラグ|true/false|INS:M,UPD/DEL:O|\r\n\r\n\r\nh4. グループ変更\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n\r\n\r\nh3. 県内グループへのユーザー操作\r\n\r\nこんな感じ\r\n<pre>\r\nLGRP_MEM,INS,8888,1001\r\nLGRP_MEM,DEL,8887,1002\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県内グループユーザー属を示す|LGRP_MEM|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n|4|値2:ユーザーID、投入済みのユーザーIDを使用せよ|文字列|M|\r\n\r\nh3. 県間グループへの県間グループ操作\r\n\r\nこんな感じ\r\n<pre>\r\nWGRP_GRP,INS,9001,8888\r\nWGRP_GRP,DEL,9002,8889\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県間グループを示す|WGRP_GRP|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県間グループID|文字列|M|\r\n|4|値2:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n\r\n	下書き\r\nまとめチケット\r\n\r\n* SOファイル読み込む\r\nファイル名、ファイル行のフォーマットチェックくらいしてあげる？\r\n→と思ったら、仕様書に「6.1.2 SOファイルチェック」ってのがあったわ\r\n* pttdsdumpでデータ抜き取り、形成する\r\nユーザー、グループ、グループメンバーでリスト（マップ？）が必要\r\n形成ルーチンつくる必要がありますね。\r\n\r\n\r\n* その他\r\n** Active 判定\r\nNXS/bin/nxs.sh status の結果を切り抜く\r\nactive-isoでも動いていいかな？\r\n** 二重起動\r\nファイル作ってチェックするって書いてる。\r\npsコマンドでプロセスチェックでいいやろ。\r\n** SO投入コマンド結果\r\n結果ファイル名を考える\r\n** 保守コマンド\r\n開始・停止のコマンドが必要なんだと。めんどくさい。\r\n** ファイル削除機能\r\n「*.csv」を削除する機能にしよう\r\n\r\nh2. SOファイルフォーマット\r\n\r\nこれから作るSO-GWに食わせるSOファイルのフォーマット\r\n\r\n<pre>\r\nUSR,100000001,password11,301\r\nUSR,100000002,password12,301\r\nUSR,200000001,password21,301\r\nLGRP,3000001,east,60,301,100000001,100000002\r\nLGRP,3000002,east,70,301,100000002,200000001\r\nLGRP,3000003,east,90,301\r\nWGRP,4000001,east,60,301,3000001\r\nWGRP,4000002,east,70,301,3000001,3000002,3000003\r\nWGRP,4000003,east,90,301\r\n</pre>\r\n\r\nh3. ユーザー\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. 変更可否|\r\n|1|操作対象|USR|-|\r\n|2|値1:ユーザーID|文字列|否|\r\n|3|値2:パスワード|文字列|可|\r\n|4|値3:県警本部ID|文字列|否|\r\n\r\n\r\nh3. グループ\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. 変更可否|\r\n|1|操作対象|LGRP/WGRP|-|\r\n|2|値1:ユーザーID|文字列|否|\r\n|3|値2:マスタ拠点|west/east|否|\r\n|4|値3:最大発言時間|数値（10-300）|可|\r\n|5|値4:県警本部ID|文字列|否|\r\n|6|値5:操作対象で分岐\r\nLGRP:ユーザーID\r\nWGRP:県内グループID|文字列|可|\r\n\r\nh2. 既存SOフォーマット\r\n\r\nSO本家のデータ、\r\n送り付けられるSOファイルは後で書く\r\n\r\nh3. ユーザー\r\n\r\nこんな感じ\r\n<pre>\r\nUSR,INS,1001,1234\r\nUSR,UPD,1002,2345\r\nUSR,DEL,1003\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象ユーザー属性を示す|USR|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:ユーザーID|文字列|M|\r\n|4|値2:パスワード|文字列|INS/UPD:M, DEL:O|\r\n|5|値3:県警本部ID|文字列、使ってない？|INS:M,UPD/DEL:O|\r\n\r\nh3. グループ\r\n\r\n登録、変更で値2の種類が異なる.\r\n\r\nこんな感じ\r\n<pre>\r\nGRP,INS,9001,east,60,801,true\r\nGRP,INS,8888,east,60,801,false\r\nGRP,UPD,8889,60\r\nGRP,DEL,8890\r\n</pre>\r\n\r\nh4. グループ登録\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象、グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:マスタ拠点|west/east|INS/UPD:M,DEL:O|\r\n|5|値3:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n|6|値4:県警本部ID|文字列|INS:M,UPD/DEL:O|\r\n|7|値5:県間フラグ|true/false|INS:M,UPD/DEL:O|\r\n\r\n\r\nh4. グループ変更\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:グループ属性を示す|GRP|M|\r\n|2|操作種別|INS/UPD/DEL|M|\r\n|3|値1:グループID|文字列|M|\r\n|4|値2:最大発言時間|数値（10-300）|INS:M,UPD/DEL:O|\r\n\r\n\r\nh3. 県内グループへのユーザー操作\r\n\r\nこんな感じ\r\n<pre>\r\nLGRP_MEM,INS,8888,1001\r\nLGRP_MEM,DEL,8887,1002\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県内グループユーザー属を示す|LGRP_MEM|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n|4|値2:ユーザーID、投入済みのユーザーIDを使用せよ|文字列|M|\r\n\r\nh3. 県間グループへの県間グループ操作\r\n\r\nこんな感じ\r\n<pre>\r\nWGRP_GRP,INS,9001,8888\r\nWGRP_GRP,DEL,9002,8889\r\n</pre>\r\n\r\n|_. フィールド|_. データ内容|_. 値|_. M/O|\r\n|1|操作対象:県間グループを示す|WGRP_GRP|M|\r\n|2|操作種別|INS/DEL|M|\r\n|3|値1:県間グループID|文字列|M|\r\n|4|値2:県内グループID、投入済みのグループIDを使用せよ|文字列|M|\r\n\r\n
16	45	attr	status_id	1	5
17	45	attr	done_ratio	0	100
18	46	attr	status_id	1	5
19	46	attr	assigned_to_id	\N	5
20	46	attr	done_ratio	0	100
21	47	attr	status_id	1	5
22	47	attr	assigned_to_id	\N	5
23	47	attr	done_ratio	0	100
24	48	attr	status_id	7	5
25	48	attr	done_ratio	0	100
26	49	attr	status_id	1	5
27	49	attr	assigned_to_id	\N	5
28	49	attr	done_ratio	0	100
29	51	attr	description	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\n\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** transientStateTimeout()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** transientStateTimeout()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい
67	106	attr	description		CSenApplication::findSCFWPlan()で時間帯転送設定する
30	54	attr	description	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** transientStateTimeout()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** -transientStateTimeout()- transientStateAborted()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい
31	55	attr	description	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** -transientStateTimeout()- transientStateAborted()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** -transientStateTimeout()- transientStateAborted()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい\r\n\r\n以下の関数も追加しないといけない。\r\n* receiveUnknownTarget()\r\n知らないターゲット名を取得してしまった場合\r\nregisterTarget() で追加しないといけない。\r\n* syncedTarget()\r\n調査中\r\n
32	57	attr	description	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** -transientStateTimeout()- transientStateAborted()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい\r\n\r\n以下の関数も追加しないといけない。\r\n* receiveUnknownTarget()\r\n知らないターゲット名を取得してしまった場合\r\nregisterTarget() で追加しないといけない。\r\n* syncedTarget()\r\n調査中\r\n	系切り替え時の対応のため。\r\n\r\n系切り替え直後はLockMapに書き込まない\r\nreplication 中、LockMapにかきこまない（書き込み中 slaveと Master は同じデータにしたい）\r\n\r\nreplication中にデータ更新が必要な場合、処理をBufferingする必要がある\r\n一番簡単なのはイベントキューを止めること\r\n\r\nコールバッククラスから呼ばれる以下の関数への対応が必要\r\n使い方のサンプルとしては、 nxs_ds::ServerImpl にある setReplicator() を参照\r\n* CallBack\r\n** initialSyncStarted()\r\n同期開始\r\n書き込み不可\r\n** initialSyncFinished()\r\n同期終了\r\n書き込み可\r\n** -transientStateTimeout()- transientStateAborted()\r\n同期失敗（タイムアウト）\r\n書き込み可\r\n\r\n同期失敗後、同期可能になった場合、再度initialSyncStarted()が呼ばれる\r\nこの時に処理が必要\r\nこれは後回しでもいい\r\n\r\n以下の関数も追加しないといけない。\r\n* receiveUnknownTarget()\r\n知らないターゲット名を取得してしまった場合\r\nregisterTarget() で追加しないといけない。\r\n* syncedTarget()\r\n調査中\r\n\r\nイベントキューを止める、再開するは以下の関数\r\n* ExecutorService::lockEvent()\r\n* ExecutorService::unlockEvent()\r\n
33	62	attr	description	純仮想化関数の引数が増えていてユニットテストが通らない\r\n\r\nテストのほうも修正が必要だが、ぐちゃぐちゃしてる。\r\n整理用	純仮想化関数の引数が増えていてユニットテストが通らない\r\n\r\nテストのほうも修正が必要だが、ぐちゃぐちゃしてる。\r\n整理用\r\n\r\n<pre><code class="diff">\r\ndiff --git a/unit_test/MockGroupServerCallback.hxx b/unit_test/MockGroupServerCallback.hxx\r\nindex 856127f..4663468 100644\r\n--- a/unit_test/MockGroupServerCallback.hxx\r\n+++ b/unit_test/MockGroupServerCallback.hxx\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -19,18 +19,20 @@ class MockGroupServerCallback : public GSCPGroupServerCallbackInterface {\r\n public:\r\n     MOCK_METHOD2(notifyTransportError,\r\n                  void(const string& id, int error));\r\n-    MOCK_METHOD6(receivedRegister,\r\n+    MOCK_METHOD8(receivedRegister,\r\n                  void(int requestId\r\n                       , const string& userId\r\n                       , int expires\r\n                       , const string& signalAddress\r\n                       , int signalPort\r\n+                      , const uint8_t* restoreToken\r\n+                      , int restoreTokenLen\r\n                       , const GSCPChallengeResponse* response));\r\n     MOCK_METHOD2(expiredRegister,\r\n                  void(const string& userId, int expires));\r\n-    MOCK_METHOD6(receivedJoin,\r\n+    MOCK_METHOD7(receivedJoin,\r\n                  void(int requestId, int joinId, const string& groupId, const string& userId,\r\n-                      const string& audioAddress, int audioPort));\r\n+                      const string& audioAddress, int audioPort, QueryType queryType));\r\n     MOCK_METHOD3(expiredJoin,\r\n                  void(int requestId, const string& groupId, const string& userId));\r\n     MOCK_METHOD3(receivedLeave,\r\n@@ -40,6 +42,8 @@ public:\r\n                       int priority, char button, uint16_t seqNum));\r\n     MOCK_METHOD2(receivedPressResponse,\r\n                  void(const string& userId, GSCPCode code));\r\n+    MOCK_METHOD3(notifyRestoreToken,\r\n+                 void(const string& userId, const uint8_t* restoreToken, int restoreTokenLen));;\r\n };\r\n\r\n }  // namespace nxs_ptt_gscp\r\ndiff --git a/unit_test/MockServerCallback.hxx b/unit_test/MockServerCallback.hxx\r\nindex 5032ec3..6b4f4bd 100644\r\n--- a/unit_test/MockServerCallback.hxx\r\n+++ b/unit_test/MockServerCallback.hxx\r\n@@ -20,7 +20,7 @@ class MockServerCallback : public GSCPServerCallbackInterface {\r\n public:\r\n     MOCK_METHOD2(notifyTransportError,\r\n                  void(const string& transportId, int error));\r\n-    MOCK_METHOD8(receivedRegister,\r\n+    MOCK_METHOD10(receivedRegister,\r\n                  void(uint16_t systemNumber\r\n                       , uint32_t wirelessId\r\n                       , int expires\r\n@@ -28,15 +28,19 @@ public:\r\n                       , const string& audioAddress\r\n                       , int audioPort\r\n                       , const string& signalAddress\r\n-                      , int signalPort));\r\n+                      , int signalPort\r\n+                      , const uint8_t* restoreToken\r\n+                      , int restoreTokenLen));\r\n     MOCK_METHOD2(expiredRegister,\r\n                  void(uint32_t wirelessId, int expires));\r\n-    MOCK_METHOD5(receivedPress,\r\n-                 void(uint32_t wirelessId, int systemNumber, int priority, char button, uint16_t seqNum));\r\n+    MOCK_METHOD6(receivedPress,\r\n+                 void(int requestId, uint32_t wirelessId, int systemNumber, int priority, char button, uint16_t seqNum));\r\n     MOCK_METHOD2(receivedStatusResponse,\r\n                  void(uint32_t wirelessId, GSCPCode code));\r\n     MOCK_METHOD3(receivedInfo,\r\n                  void(int systemNumber, uint32_t wirelessId, const vector<uint8_t>& info));\r\n+    MOCK_METHOD3(notifyRestoreToken,\r\n+                 void(uint32_t wirelessId, const uint8_t* restoreToken, int restoreTokenLen));\r\n };\r\n\r\n };  // namespace nxs_ptt_gscp\r\n</pre>
34	63	attr	description	なんかダメなんだって	なんかダメなんだって\r\n\r\nsendRegisterResult:GE_TRANSPORTを返している。\r\n\r\n\r\nGSCPGroupRegistrantController::onSendRegister()\r\nGSCPGroupRegistrant::onSendRegister()\r\n\r\nGSCPClientTransaction::prepareSend()\r\nGSCPTransactionController::createConnection()\r\nDTLSClientTransport::createConnection()\r\nDTLSConnection::prepareConnect()\r\n\r\n\r\nGSCPTransactionController::sendRequest()\r\n\r\n\r\nGSCPGroupRegistrantController::transportError()\r\n※GSCPGroupClientSessionController::transportError()？\r\nTransportErrorEvent::run()\r\nGSCPGroupRegistrantController::onTransportError()\r\nGSCPGroupRegistrant::onRegisterFailed()\r\nGSCPGroupRegistrantController::onRegisterFailed()
35	64	attr	description	setup.pl で pdb 設定すべし\r\n\r\nrouter.xml\r\n<pre>\r\n<?xml version="1.0" encoding="UTF-8"?>\r\n<!--\r\n * $Id: 11f1092a17228dd83b0681525fae4fe2c70dbf1c $\r\n *\r\n * Copyright 2005-2009 NextGen, Inc. All Rights Reserved.\r\n *\r\n * This software is the proprietary information of NextGen, Inc.\r\n * Use is subject to license terms.\r\n *\r\n-->\r\n\r\n<RoutingData xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="router.xsd">\r\n    <ServerList>\r\n        <!--\r\n        <Server id="inout2" serverprofile="default">\r\n        -->\r\n        <Server id="register_agent" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n        </Server>\r\n        <Server id="push_node" serverprofile="in" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.100:5061</HostPort> <!-- HostPort は端末の値を設定-->\r\n        </Server>\r\n        <Server id="t1ca_server" serverprofile="out" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.88:5102</HostPort>\r\n        </Server>\r\n    </ServerList>\r\n    <PathList>\r\n        <Path id="1" profile="default" registerprofile="default" rtpproxyid="1"/>\r\n    </PathList>\r\n    <RouteList>\r\n        <Route id="register_agent" action="egress" data="csen"/>\r\n        <Route id="push_node" action="route" data="t1ca_server"/>\r\n        <Route id="t1ca_server">\r\n            <Matching id="push_prefixcheck" action="route" data="push_route" number="prefix_push"/>\r\n            <Matching id="normal0" action="egress" data="t1ca_server" number="050"/>\r\n        </Route>\r\n        <Route id="push_route" action="push" data="t1ca_server" dmrule="del_push_prefix"/>\r\n        <Route id="csen" action="egress" data="push_node"/>\r\n    </RouteList>\r\n    <DmRuleList>\r\n        <DmRule id="del_push_prefix" target="requesturi" type="delete" param="user" delete_position="0" delete_length="11"/>\r\n    </DmRuleList>\r\n</RoutingData>\r\n\r\n</pre>	setup.pl で pdb 設定すべし\r\n\r\nrouter.xml\r\n<pre>\r\n<?xml version="1.0" encoding="UTF-8"?>\r\n<!--\r\n * $Id: 11f1092a17228dd83b0681525fae4fe2c70dbf1c $\r\n *\r\n * Copyright 2005-2009 NextGen, Inc. All Rights Reserved.\r\n *\r\n * This software is the proprietary information of NextGen, Inc.\r\n * Use is subject to license terms.\r\n *\r\n-->\r\n\r\n<RoutingData xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="router.xsd">\r\n    <ServerList>\r\n        <!--\r\n        <Server id="inout2" serverprofile="default">\r\n        -->\r\n        <Server id="register_agent" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n        </Server>\r\n        <Server id="push_node" serverprofile="in" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.100:5061</HostPort> <!-- HostPort は端末の値を設定-->\r\n        </Server>\r\n        <Server id="t1ca_server" serverprofile="out" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.88:5102</HostPort>\r\n        </Server>\r\n    </ServerList>\r\n    <PathList>\r\n        <Path id="1" profile="default" registerprofile="default" rtpproxyid="1"/>\r\n    </PathList>\r\n    <RouteList>\r\n        <Route id="register_agent" action="egress" data="csen"/>\r\n        <Route id="push_node" action="route" data="t1ca_server"/>\r\n        <Route id="t1ca_server">\r\n            <Matching id="push_prefixcheck" action="route" data="push_route" number="prefix_push"/>\r\n            <Matching id="normal0" action="egress" data="t1ca_server" number="050"/>\r\n        </Route>\r\n        <Route id="push_route" action="push" data="t1ca_server" dmrule="del_push_prefix"/>\r\n        <Route id="csen" action="egress" data="push_node"/>\r\n    </RouteList>\r\n    <DmRuleList>\r\n        <DmRule id="del_push_prefix" target="requesturi" type="delete" param="user" delete_position="0" delete_length="11"/>\r\n    </DmRuleList>\r\n</RoutingData>\r\n\r\n</pre>\r\n\r\nビルド用環境変数\r\n<pre>\r\n# ~/.bashrc: executed by bash(1) for non-login shells.\r\n# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)\r\n# for examples\r\n\r\n# bash_completion\r\nif [ -f /etc/bash_completion ]; then\r\n    . /etc/bash_completion\r\nfi\r\n\r\n# example mcc env.\r\n\r\n# install directory var.\r\nexport INSTALLDIR=${HOME}/package/NXS-MCC\r\n\r\n# mcc compile switch\r\nexport _BUILD_64=TRUE\r\nexport USE_SNMP=TRUE\r\nexport _NOCORBA=TRUE\r\nexport USE_MEMLOG=TRUE\r\nexport USE_TLS=TRUE\r\nexport PACKAGE_OPENSSLLIB=FALSE\r\n#export PACKAGE_PGSQLLIB=FALSE\r\nexport USE_DMS=FALSE\r\n\r\n# 3rd party libraries directory\r\nexport THIRD_DIR=${HOME}/3rd_party\r\nexport CPP_DIR=/usr/local\r\nexport JAVA_DIR=/usr/local/java\r\n\r\n# boost\r\n# when Thawing boost on /usr/local directory\r\nexport BOOST_DIR=${CPP_DIR}\r\nexport BOOST_INCDIR=${BOOST_DIR}/include/boost-1_49\r\nexport BOOST_LIBDIR=${BOOST_DIR}/lib\r\n\r\n# gmock\r\n# when Thawing gmock-1.7.0 on /usr/local/java directory\r\nexport GMOCK_DIR=${CPP_DIR}/gmock-1.7.0\r\nexport GTEST_DIR=$GMOCK_DIR/gtest\r\n#export GMOCK_LIB="$GMOCK_DIR/libgmock.a $GMOCK_DIR/libgtest.a"\r\nexport GMOCK_LIB="$GMOCK_DIR/libgmock.a"\r\n\r\n# speex\r\n# when Thawing speex on /usr/local directory\r\nexport SPEEX_LIB=${CPP_DIR}/speex/lib\r\nexport SPEEX_INC=${CPP_DIR}/speex/include\r\n\r\n# xerces\r\n# when Thawing xerces on ${THIRD_DIR}/xerces-c directory\r\nexport USE_XERCES=TRUE\r\nexport XERCES_DIR=${CPP_DIR}\r\nexport XERCES_LIBDIR=${XERCES_DIR}/lib\r\nexport XERCES_INCDIR=${XERCES_DIR}/include\r\n\r\n#openssl\r\n# when using package including OS\r\nexport OPENSSL_INCDIR=/usr/include\r\nexport OPENSSL_LIBDIR=/usr/lib64\r\n\r\n# postgres\r\n# when using package including OS\r\nexport PGSQL_INCDIR=/usr/include\r\nexport PGSQL_LIBDIR=/usr/lib64\r\nexport PGSQL_BINDIR=/usr/bin\r\nexport PATH=$PGSQL_DIR/bin:$PATH\r\n\r\n# java\r\n# when using package including OS\r\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk.x86_64\r\n\r\n#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.45.x86_64/\r\nexport TOMCAT_NAME=apache-tomcat-7.0.55\r\nexport TOMCAT_DIR=${JAVA_DIR}/${TOMCAT_NAME}\r\n##5.0\r\nexport JAVA_APNS_VER=0.2.3\r\nexport JAVA_APNS_DIR=${JAVA_DIR}/java-apns\r\n##5.0 custom\r\nexport USE_MCCPUSHDB=TRUE\r\nexport JAVALIBBASE=${JAVA_DIR}\r\nexport COBERTURE_VERSION=2.0.3\r\nexport SMACK_VER=4.1.9\r\nexport SMACK_DIR=${JAVALIBBASE}/smack/smack-${SMACK_VER}\r\nexport KXML_JAR=${JAVALIBBASE}/kxml/kxml2-2.3.0.jar\r\nexport OKHTTP_JAR=${JAVALIBBASE}/okhttp/okhttp-3.9.0.jar\r\nexport JXMPP_DIR=${JAVALIBBASE}/jxmpp\r\nexport PGSQL_JAR=/usr/local/postgresql-42.1.1.jar\r\n\r\nexport APNSLIBS_DIR=${JAVALIBBASE}/apnslibs\r\nexport COMMONCLIENT_JAR=${APNSLIBS_DIR}/commons-httpclient-3.1.jar\r\nexport GSON_JAR=${APNSLIBS_DIR}/gson-2.6.2.jar\r\nexport SLF4J_API_JAR=${APNSLIBS_DIR}/slf4j-api-1.7.6.jar\r\nexport SLF4J_SIMPLE_JAR=${APNSLIBS_DIR}/slf4j-simple-1.7.6.jar\r\nexport NETTY_JAR=${APNSLIBS_DIR}/netty-all-4.1.14.Final.jar\r\nexport NETTY_TCNATIVE_JAR=${APNSLIBS_DIR}/netty-tcnative-2.0.8.Final.jar\r\nexport COMMONS_CODEC_JAR=${APNSLIBS_DIR}/commons-codec-1.10.jar\r\nexport JETTY_ALPN_AGENT_JAR=${APNSLIBS_DIR}/jetty-alpn-agent-2.0.6.jar\r\n#export ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-8.1.10.v20161026.jar\r\nexport ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-7.1.0.v20141016.jar\r\n\r\n\r\nexport PATH=$PATH:$JAVA_HOME/bin\r\n\r\n# ld path\r\nexport LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PGSQL_LIBDIR:$XERCES_LIBDIR\r\n</pre>
36	65	attr	description	setup.pl で pdb 設定すべし\r\n\r\nrouter.xml\r\n<pre>\r\n<?xml version="1.0" encoding="UTF-8"?>\r\n<!--\r\n * $Id: 11f1092a17228dd83b0681525fae4fe2c70dbf1c $\r\n *\r\n * Copyright 2005-2009 NextGen, Inc. All Rights Reserved.\r\n *\r\n * This software is the proprietary information of NextGen, Inc.\r\n * Use is subject to license terms.\r\n *\r\n-->\r\n\r\n<RoutingData xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="router.xsd">\r\n    <ServerList>\r\n        <!--\r\n        <Server id="inout2" serverprofile="default">\r\n        -->\r\n        <Server id="register_agent" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n        </Server>\r\n        <Server id="push_node" serverprofile="in" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.100:5061</HostPort> <!-- HostPort は端末の値を設定-->\r\n        </Server>\r\n        <Server id="t1ca_server" serverprofile="out" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.88:5102</HostPort>\r\n        </Server>\r\n    </ServerList>\r\n    <PathList>\r\n        <Path id="1" profile="default" registerprofile="default" rtpproxyid="1"/>\r\n    </PathList>\r\n    <RouteList>\r\n        <Route id="register_agent" action="egress" data="csen"/>\r\n        <Route id="push_node" action="route" data="t1ca_server"/>\r\n        <Route id="t1ca_server">\r\n            <Matching id="push_prefixcheck" action="route" data="push_route" number="prefix_push"/>\r\n            <Matching id="normal0" action="egress" data="t1ca_server" number="050"/>\r\n        </Route>\r\n        <Route id="push_route" action="push" data="t1ca_server" dmrule="del_push_prefix"/>\r\n        <Route id="csen" action="egress" data="push_node"/>\r\n    </RouteList>\r\n    <DmRuleList>\r\n        <DmRule id="del_push_prefix" target="requesturi" type="delete" param="user" delete_position="0" delete_length="11"/>\r\n    </DmRuleList>\r\n</RoutingData>\r\n\r\n</pre>\r\n\r\nビルド用環境変数\r\n<pre>\r\n# ~/.bashrc: executed by bash(1) for non-login shells.\r\n# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)\r\n# for examples\r\n\r\n# bash_completion\r\nif [ -f /etc/bash_completion ]; then\r\n    . /etc/bash_completion\r\nfi\r\n\r\n# example mcc env.\r\n\r\n# install directory var.\r\nexport INSTALLDIR=${HOME}/package/NXS-MCC\r\n\r\n# mcc compile switch\r\nexport _BUILD_64=TRUE\r\nexport USE_SNMP=TRUE\r\nexport _NOCORBA=TRUE\r\nexport USE_MEMLOG=TRUE\r\nexport USE_TLS=TRUE\r\nexport PACKAGE_OPENSSLLIB=FALSE\r\n#export PACKAGE_PGSQLLIB=FALSE\r\nexport USE_DMS=FALSE\r\n\r\n# 3rd party libraries directory\r\nexport THIRD_DIR=${HOME}/3rd_party\r\nexport CPP_DIR=/usr/local\r\nexport JAVA_DIR=/usr/local/java\r\n\r\n# boost\r\n# when Thawing boost on /usr/local directory\r\nexport BOOST_DIR=${CPP_DIR}\r\nexport BOOST_INCDIR=${BOOST_DIR}/include/boost-1_49\r\nexport BOOST_LIBDIR=${BOOST_DIR}/lib\r\n\r\n# gmock\r\n# when Thawing gmock-1.7.0 on /usr/local/java directory\r\nexport GMOCK_DIR=${CPP_DIR}/gmock-1.7.0\r\nexport GTEST_DIR=$GMOCK_DIR/gtest\r\n#export GMOCK_LIB="$GMOCK_DIR/libgmock.a $GMOCK_DIR/libgtest.a"\r\nexport GMOCK_LIB="$GMOCK_DIR/libgmock.a"\r\n\r\n# speex\r\n# when Thawing speex on /usr/local directory\r\nexport SPEEX_LIB=${CPP_DIR}/speex/lib\r\nexport SPEEX_INC=${CPP_DIR}/speex/include\r\n\r\n# xerces\r\n# when Thawing xerces on ${THIRD_DIR}/xerces-c directory\r\nexport USE_XERCES=TRUE\r\nexport XERCES_DIR=${CPP_DIR}\r\nexport XERCES_LIBDIR=${XERCES_DIR}/lib\r\nexport XERCES_INCDIR=${XERCES_DIR}/include\r\n\r\n#openssl\r\n# when using package including OS\r\nexport OPENSSL_INCDIR=/usr/include\r\nexport OPENSSL_LIBDIR=/usr/lib64\r\n\r\n# postgres\r\n# when using package including OS\r\nexport PGSQL_INCDIR=/usr/include\r\nexport PGSQL_LIBDIR=/usr/lib64\r\nexport PGSQL_BINDIR=/usr/bin\r\nexport PATH=$PGSQL_DIR/bin:$PATH\r\n\r\n# java\r\n# when using package including OS\r\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk.x86_64\r\n\r\n#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.45.x86_64/\r\nexport TOMCAT_NAME=apache-tomcat-7.0.55\r\nexport TOMCAT_DIR=${JAVA_DIR}/${TOMCAT_NAME}\r\n##5.0\r\nexport JAVA_APNS_VER=0.2.3\r\nexport JAVA_APNS_DIR=${JAVA_DIR}/java-apns\r\n##5.0 custom\r\nexport USE_MCCPUSHDB=TRUE\r\nexport JAVALIBBASE=${JAVA_DIR}\r\nexport COBERTURE_VERSION=2.0.3\r\nexport SMACK_VER=4.1.9\r\nexport SMACK_DIR=${JAVALIBBASE}/smack/smack-${SMACK_VER}\r\nexport KXML_JAR=${JAVALIBBASE}/kxml/kxml2-2.3.0.jar\r\nexport OKHTTP_JAR=${JAVALIBBASE}/okhttp/okhttp-3.9.0.jar\r\nexport JXMPP_DIR=${JAVALIBBASE}/jxmpp\r\nexport PGSQL_JAR=/usr/local/postgresql-42.1.1.jar\r\n\r\nexport APNSLIBS_DIR=${JAVALIBBASE}/apnslibs\r\nexport COMMONCLIENT_JAR=${APNSLIBS_DIR}/commons-httpclient-3.1.jar\r\nexport GSON_JAR=${APNSLIBS_DIR}/gson-2.6.2.jar\r\nexport SLF4J_API_JAR=${APNSLIBS_DIR}/slf4j-api-1.7.6.jar\r\nexport SLF4J_SIMPLE_JAR=${APNSLIBS_DIR}/slf4j-simple-1.7.6.jar\r\nexport NETTY_JAR=${APNSLIBS_DIR}/netty-all-4.1.14.Final.jar\r\nexport NETTY_TCNATIVE_JAR=${APNSLIBS_DIR}/netty-tcnative-2.0.8.Final.jar\r\nexport COMMONS_CODEC_JAR=${APNSLIBS_DIR}/commons-codec-1.10.jar\r\nexport JETTY_ALPN_AGENT_JAR=${APNSLIBS_DIR}/jetty-alpn-agent-2.0.6.jar\r\n#export ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-8.1.10.v20161026.jar\r\nexport ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-7.1.0.v20141016.jar\r\n\r\n\r\nexport PATH=$PATH:$JAVA_HOME/bin\r\n\r\n# ld path\r\nexport LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PGSQL_LIBDIR:$XERCES_LIBDIR\r\n</pre>	setup.pl で pdb 設定すべし\r\n\r\nrouter.xml\r\n<pre>\r\n<?xml version="1.0" encoding="UTF-8"?>\r\n<!--\r\n      * $Id: 11f1092a17228dd83b0681525fae4fe2c70dbf1c $\r\n *\r\n * Copyright 2005-2009 NextGen, Inc. All Rights Reserved.\r\n *\r\n * This software is the proprietary information of NextGen, Inc.\r\n * Use is subject to license terms.\r\n *\r\n-->\r\n\r\n<RoutingData xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="router.xsd">\r\n    <ServerList>\r\n        <!--\r\n                     <Server id="inout2" serverprofile="default">\r\n        -->\r\n        <Server id="register_agent" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n        </Server>\r\n        <Server id="push_node" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.100:5060</HostPort> <!-- HostPort は端末の値を設定-->\r\n        </Server>\r\n        <Server id="t1ca_server" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.101:5060</HostPort> <!-- HostPort はPush着信させる端末の値を設定-->\r\n        </Server>\r\n        <Server id="csen" serverprofile="default" ivrid="ivr01" pathid="1" transport="default"\r\n            mediaproto="rtp" rtpifid="1">\r\n            <HostPort id="1">192.168.28.102:5060</HostPort> <!-- HostPort はレジスター登録サーバ(c1000, e1000, sipp 等) -->\r\n        </Server>\r\n    </ServerList>\r\n    <PathList>\r\n        <Path id="1" profile="default" registerprofile="default" rtpproxyid="1"/>\r\n    </PathList>\r\n    <RouteList>\r\n        <Route id="register_agent" action="egress" data="csen"/>\r\n        <Route id="push_node" action="route" data="t1ca_server"/>\r\n        <Route id="t1ca_server">\r\n            <Matching id="push_prefixcheck" action="route" data="push_route" number="prefix_push"/>\r\n            <Matching id="normal0" action="egress" data="t1ca_server" number="050"/>\r\n        </Route>\r\n        <Route id="push_route" action="push" data="t1ca_server" dmrule="del_push_prefix"/>\r\n        <Route id="csen" action="egress" data="push_node"/>\r\n    </RouteList>\r\n    <DmRuleList>\r\n        <DmRule id="del_push_prefix" target="requesturi" type="delete" param="user" delete_position="0" delete_length="11"/>\r\n    </DmRuleList>\r\n</RoutingData>\r\n\r\n</pre>\r\n\r\nビルド用環境変数\r\n<pre>\r\n# ~/.bashrc: executed by bash(1) for non-login shells.\r\n# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)\r\n# for examples\r\n\r\n# bash_completion\r\nif [ -f /etc/bash_completion ]; then\r\n    . /etc/bash_completion\r\nfi\r\n\r\n# example mcc env.\r\n\r\n# install directory var.\r\nexport INSTALLDIR=${HOME}/package/NXS-MCC\r\n\r\n# mcc compile switch\r\nexport _BUILD_64=TRUE\r\nexport USE_SNMP=TRUE\r\nexport _NOCORBA=TRUE\r\nexport USE_MEMLOG=TRUE\r\nexport USE_TLS=TRUE\r\nexport PACKAGE_OPENSSLLIB=FALSE\r\n#export PACKAGE_PGSQLLIB=FALSE\r\nexport USE_DMS=FALSE\r\n\r\n# 3rd party libraries directory\r\nexport THIRD_DIR=${HOME}/3rd_party\r\nexport CPP_DIR=/usr/local\r\nexport JAVA_DIR=/usr/local/java\r\n\r\n# boost\r\n# when Thawing boost on /usr/local directory\r\nexport BOOST_DIR=${CPP_DIR}\r\nexport BOOST_INCDIR=${BOOST_DIR}/include/boost-1_49\r\nexport BOOST_LIBDIR=${BOOST_DIR}/lib\r\n\r\n# gmock\r\n# when Thawing gmock-1.7.0 on /usr/local/java directory\r\nexport GMOCK_DIR=${CPP_DIR}/gmock-1.7.0\r\nexport GTEST_DIR=$GMOCK_DIR/gtest\r\n#export GMOCK_LIB="$GMOCK_DIR/libgmock.a $GMOCK_DIR/libgtest.a"\r\nexport GMOCK_LIB="$GMOCK_DIR/libgmock.a"\r\n\r\n# speex\r\n# when Thawing speex on /usr/local directory\r\nexport SPEEX_LIB=${CPP_DIR}/speex/lib\r\nexport SPEEX_INC=${CPP_DIR}/speex/include\r\n\r\n# xerces\r\n# when Thawing xerces on ${THIRD_DIR}/xerces-c directory\r\nexport USE_XERCES=TRUE\r\nexport XERCES_DIR=${CPP_DIR}\r\nexport XERCES_LIBDIR=${XERCES_DIR}/lib\r\nexport XERCES_INCDIR=${XERCES_DIR}/include\r\n\r\n#openssl\r\n# when using package including OS\r\nexport OPENSSL_INCDIR=/usr/include\r\nexport OPENSSL_LIBDIR=/usr/lib64\r\n\r\n# postgres\r\n# when using package including OS\r\nexport PGSQL_INCDIR=/usr/include\r\nexport PGSQL_LIBDIR=/usr/lib64\r\nexport PGSQL_BINDIR=/usr/bin\r\nexport PATH=$PGSQL_DIR/bin:$PATH\r\n\r\n# java\r\n# when using package including OS\r\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk.x86_64\r\n\r\n#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.45.x86_64/\r\nexport TOMCAT_NAME=apache-tomcat-7.0.55\r\nexport TOMCAT_DIR=${JAVA_DIR}/${TOMCAT_NAME}\r\n##5.0\r\nexport JAVA_APNS_VER=0.2.3\r\nexport JAVA_APNS_DIR=${JAVA_DIR}/java-apns\r\n##5.0 custom\r\nexport USE_MCCPUSHDB=TRUE\r\nexport JAVALIBBASE=${JAVA_DIR}\r\nexport COBERTURE_VERSION=2.0.3\r\nexport SMACK_VER=4.1.9\r\nexport SMACK_DIR=${JAVALIBBASE}/smack/smack-${SMACK_VER}\r\nexport KXML_JAR=${JAVALIBBASE}/kxml/kxml2-2.3.0.jar\r\nexport OKHTTP_JAR=${JAVALIBBASE}/okhttp/okhttp-3.9.0.jar\r\nexport JXMPP_DIR=${JAVALIBBASE}/jxmpp\r\nexport PGSQL_JAR=/usr/local/postgresql-42.1.1.jar\r\n\r\nexport APNSLIBS_DIR=${JAVALIBBASE}/apnslibs\r\nexport COMMONCLIENT_JAR=${APNSLIBS_DIR}/commons-httpclient-3.1.jar\r\nexport GSON_JAR=${APNSLIBS_DIR}/gson-2.6.2.jar\r\nexport SLF4J_API_JAR=${APNSLIBS_DIR}/slf4j-api-1.7.6.jar\r\nexport SLF4J_SIMPLE_JAR=${APNSLIBS_DIR}/slf4j-simple-1.7.6.jar\r\nexport NETTY_JAR=${APNSLIBS_DIR}/netty-all-4.1.14.Final.jar\r\nexport NETTY_TCNATIVE_JAR=${APNSLIBS_DIR}/netty-tcnative-2.0.8.Final.jar\r\nexport COMMONS_CODEC_JAR=${APNSLIBS_DIR}/commons-codec-1.10.jar\r\nexport JETTY_ALPN_AGENT_JAR=${APNSLIBS_DIR}/jetty-alpn-agent-2.0.6.jar\r\n#export ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-8.1.10.v20161026.jar\r\nexport ALPN_BOOT_JAR=${APNSLIBS_DIR}/alpn-boot-7.1.0.v20141016.jar\r\n\r\n\r\nexport PATH=$PATH:$JAVA_HOME/bin\r\n\r\n# ld path\r\nexport LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PGSQL_LIBDIR:$XERCES_LIBDIR\r\n</pre>
37	67	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\nOSはUbuntu(17.0.2)を使う.	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/tag\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgnustl_shared.so\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n
38	68	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/tag\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgnustl_shared.so\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/tag\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P passwd -r gscpstack_tag.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgnustl_shared.so\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n
39	69	attr	description		インターネットからデータ収集をする\r\n\r\npython3\r\nurllib.reqauest.urlopen() を使って URL を開く\r\nBeautifulSoup を使え\r\n
40	70	attr	description	"こういう":https://qiita.com/estaro/items/23c10fe7e43a2a70e689 サイトもあるわけで.\r\n\r\n	"こういう":https://qiita.com/estaro/items/23c10fe7e43a2a70e689 サイトや、"こんな":http://stupiddog.jp/note/archives/1148 もあるわけで.\r\n\r\n
41	71	attr	description	適宜アップデート	適宜アップデート\r\n\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
42	72	attr	description	適宜アップデート\r\n\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
43	73	attr	description	適宜アップデート\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
68	107	attr	description	CSenApplication::findSCFWPlan()で時間帯転送設定する	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）
44	74	attr	description	適宜アップデート\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: URL:"https://golang.org/"\r\nエディターでAtomを使う場合、「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
45	75	attr	description	適宜アップデート\r\n\r\n公式: URL:"https://golang.org/"\r\nエディターでAtomを使う場合、「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: URL:"https://golang.org/"\r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
46	76	attr	subject	JOIN 時のエラー	拠点冗長先のJOIN 失敗時、PRS送信時にタイマー満了まで待ってる
47	77	attr	description	適宜アップデート\r\n\r\n公式: URL:"https://golang.org/"\r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
48	78	attr	description	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh3. 宣言\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\n* string\r\n* int\r\n* bool\r\n* array\r\n* slice\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
49	79	attr	description	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\n* string\r\n* int\r\n* bool\r\n* array\r\n* slice\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh4. 基本\r\n\r\n* int\r\nint int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex12\r\n* bool\r\n* byte\r\n* string \r\n* rune\r\n\r\nh4. stl\r\n\r\n* array\r\n* slice\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
69	108	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()
50	80	attr	description	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh4. 基本\r\n\r\n* int\r\nint int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex12\r\n* bool\r\n* byte\r\n* string \r\n* rune\r\n\r\nh4. stl\r\n\r\n* array\r\n* slice\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh4. 基本\r\n\r\n* int\r\nint int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex12\r\n* bool\r\n* byte\r\n* string \r\n* rune\r\n\r\nh4. stl\r\n\r\n* array\r\n* slice\r\n* map\r\nhashmap とかもこれで作れ\r\n* heap\r\n* list\r\n* ring\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
51	81	attr	description	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh4. 基本\r\n\r\n* int\r\nint int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex12\r\n* bool\r\n* byte\r\n* string \r\n* rune\r\n\r\nh4. stl\r\n\r\n* array\r\n* slice\r\n* map\r\nhashmap とかもこれで作れ\r\n* heap\r\n* list\r\n* ring\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>	適宜アップデート\r\n\r\n公式: "URL":https://golang.org/ \r\nエディターでAtomを使う場合、Atom パッケージ「Go-Plus」を使うとよいらしい\r\n\r\nh2. 規則\r\n\r\nh2. 変数\r\n\r\nh3. 種類\r\n\r\nh4. 基本\r\n\r\n* int\r\nint int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex12\r\n* bool\r\n* byte\r\n* string \r\n* rune\r\n\r\nh4. stl\r\n\r\n* array\r\n* slice\r\n* map\r\nhashmap, set とかもこれで作れ("参考":https://qiita.com/ymotongpoo/items/83b358055a6ce532c53d)\r\n* heap\r\n* list\r\n* ring\r\n\r\nh3. 宣言\r\n\r\nh4. 基本形\r\n\r\n<pre>\r\nvar value var_type\r\n</pre>\r\n\r\nh4. 宣言と代入\r\n\r\n<pre>\r\nvalue := var_value\r\n</pre>\r\n\r\nh2. 標準ライブラリ\r\n\r\nh2. 関数\r\n\r\n<pre>\r\nfunc function_name(var_name0 var_type[, var_name1 var_type, ...]) (ret_val0 ret_type[, ret_val0 ret_type, ...]) {\r\n    proc\r\n    return ret_val\r\n}\r\n</pre>\r\n\r\nh2. 実行\r\n\r\nh3. Go 実行\r\n\r\n自作パッケージを使うときの何か\r\n\r\n実行時、GOPATHを追加する\r\n<pre>\r\n$tree\r\n.\r\n└── src\r\n    ├── main.go\r\n    └── sqlquery\r\n        └── postgresql.go\r\n\r\n$ export GOPATH=${GOPATH}:$(pwd)\r\n$ go run src/main.go\r\n</pre>
52	82	attr	description	魂の叫び\r\n\r\nCentOS は 7.x 以降でないと入らない	魂の叫び\r\n\r\nCentOS は 7.x 以降でないと入らない.\r\n\r\n"公式手順":https://docs.docker.com/install/linux/docker-ce/centos/ を参照. では寂しいので解説\r\n\r\n"これ":https://qiita.com/sawadashota/items/2bed41598d825d488701 なんかが詳しい
53	83	attr	description		"ここ":http://takezoe.hatenablog.com/entry/2017/11/19/134208 を参考にする.\r\n\r\n* 候補一覧\r\n** slick/slick\r\n** getquill/quill\r\n** tpolecat/doobie\r\n** scalikejdbc/scalikejdbc\r\n** squeryl/squeryl
54	85	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/tag\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P passwd -r gscpstack_tag.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgnustl_shared.so\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P passwd -r gscpstack_tag.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n
61	97	attr	description	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 
55	86	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P passwd -r gscpstack_tag.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp/\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P passwd -r gscpstack_tag.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n
56	87	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp/\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P passwd -r gscpstack_tag.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp/\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P <passwd> -r gscpstack_<tag>.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n
57	88	attr	description	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp/\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P <passwd> -r gscpstack_<tag>.zip tag\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n	まとめチケット\r\n\r\nWiki: [[nxs_ptt_gscp_jniのビルド]]\r\n\r\n"これ":https://redmine.rd.nextgen-inc.com/projects/nxs_ptt_gscp_jni/wiki/%E3%83%93%E3%83%AB%E3%83%89%E6%83%85%E5%A0%B1 をできるようにする.\r\n<pre>\r\n./gradlew buildUtil\r\n./gradlew buildOpenSSL\r\n./gradlew makeJni\r\n./gradlew linkGscpMk\r\n./gradlew lib:build\r\njavac lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java\r\n\r\nmkdir -p work/com/nextgen/nxs/ptt/gscp\r\ncp -fp lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.class work/com/nextgen/nxs/ptt/gscp\r\ncd work; jar cvf gscp.jar com\r\n</pre>\r\n\r\n提出するときは、さらに以下の手順を追加\r\n<pre>\r\n\r\nexport INSTALLDIR=~/work/PTT/<tag_name>\r\nmkdir ${INSTALLDIR}\r\n./deploy.sh ${INSTALLDIR}\r\nmkdir -p ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp\r\ncp -a lib/src/main/java/com/nextgen/nxs/ptt/gscp/*.java ${INSTALLDIR}/java/com/nextgen/nxs/ptt/gscp/\r\ncd ${INSTALLDIR}\r\nmv gscp.jar gscp_jar.bin\r\ncd .. && zip -P <passwd> -r gscpstack_<tag_name>.zip <tag_name>\r\n</pre>\r\n\r\n\r\nOSはUbuntu(17.0.2)を使う.\r\n\r\n\r\nこうなれば正解\r\n<pre>\r\n$ tree\r\n.\r\n├── gscp_jar.bin\r\n├── java\r\n│   └── com\r\n│       └── nextgen\r\n│           └── nxs\r\n│               └── ptt\r\n│                   └── gscp\r\n│                       ├── GSCPClientCallbackInterface.java\r\n│                       ├── GSCPClientCommon.java\r\n│                       ├── GSCPClientImpl.java\r\n│                       ├── GSCPClientInterface.java\r\n│                       ├── GSCPCode.java\r\n│                       ├── GSCPGroupClientCallbackInterface.java\r\n│                       ├── GSCPGroupClientImpl.java\r\n│                       ├── GSCPGroupClientInterface.java\r\n│                       ├── GSCPGroupCode.java\r\n│                       ├── GSCPGroupInfo.java\r\n│                       └── GSCPGroupMemberInfo.java\r\n├── libgscp.so\r\n└── libnxsutil.so\r\n\r\n6 directories, 15 files\r\n\r\n</pre>\r\n\r\n
58	92	attr	description	→Group::onPeerPressOn()\r\n→Group::StateJoined::onPeerPressOn()\r\n→GroupControllerImpl::peerPressAck()\r\n→PeerSiteControllerImpl::pressAck()\r\n→new GroupPressAckEvent()\r\n→PeerSite::onGroupPressAck()	→Group::onPeerPressOn()\r\n→Group::StateJoined::onPeerPressOn()\r\n→GroupControllerImpl::peerPressAck()\r\n→PeerSiteControllerImpl::pressAck()\r\n→new GroupPressAckEvent()\r\n→PeerSite::onGroupPressAck()\r\n→PeerSite::PrsStatePressing::onGroupPressAck() ★ここでcode決まる
59	93	attr	parent_id	\N	30
60	94	attr	description		\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中
62	99	attr	description	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 \r\n\r\nh2. 懸念事項\r\n\r\n機能呼（着信転送、ハント、ピックアップ、パークリトリーブのパターン）ではどうするか？\r\n\r\nh2. 改造\r\n\r\n基本パターンは出来た。\r\n<pre><code class="diff">\r\ndiff --git a/APIConverters.cpp b/APIConverters.cpp\r\nindex 4d5ec55..91ad5f5 100644\r\n--- a/APIConverters.cpp\r\n+++ b/APIConverters.cpp\r\n@@ -1,280 +1,280 @@\r\n-/*\r\n- * $Id$\r\n- *\r\n- * Copyright 2007-2014 NextGen, Inc. All Rights Reserved.\r\n- *\r\n- * This software is the proprietary information of NextGen, Inc.\r\n- * Use is subject to license terms.\r\n- *\r\n- */\r\n-\r\n-#include "Logger.hxx"\r\n-using namespace nxs_util;\r\n-\r\n-#include "CSenB2BUA.hxx"\r\n-#include "APIConverters.hxx"\r\n-\r\n-/*------------------------------------------------------------------------*\r\n- * Converters from SipClass to NxsCSenCCAPI\r\n- *------------------------------------------------------------------------*/\r\n-\r\n-void\r\n-setOperationBaseObj (OperationBaseObj& req, CSenB2BData& b2bData)\r\n-{\r\n-    req.msgid = b2bData.nextMsgId ();\r\n-    req.b2bcallid = b2bData.getB2BCallID ();\r\n-    req.callInfo = b2bData.getCallInfo ();\r\n-    req.b2bData = &b2bData;\r\n-    LOG (LOGGER_LEVEL_DEBUG, "setOperationBaseObj."\r\n-         " msgid=[%d], b2bcallid=[%s].\\n",\r\n-         req.msgid, req.b2bcallid.c_str ());\r\n-}\r\n-\r\n-void\r\n-setLegObjFromSipMessageExt (LegObj& leg, const SipMessageExt* msg)\r\n-{\r\n-  const SocketAddress* srcaddr = msg->getPresetPeer ();\r\n-  if (srcaddr != NULL) {\r\n-    leg.host = srcaddr->getAddressString ();\r\n-    leg.port = srcaddr->getPort ();\r\n-  }\r\n-  convertURI (leg.requestURI, msg->getRequestURI ());\r\n-  convertFromTo (leg.from, msg->getFrom ());\r\n-  convertFromTo (leg.to, msg->getTo ());\r\n-  setContactUser (leg.contactUser, msg);\r\n-  setContent (leg.content, leg.contentType, msg);\r\n-  setHeaders (leg.headers, msg);\r\n-  if (!msg->getVias().empty ()) {\r\n-    leg.vias = msg->getVias();\r\n-  }\r\n-}\r\n-\r\n-void\r\n-setDialogResponseObjFromSipMessageExt (DialogResponseObj& res,\r\n[fujiwara@bk64 nxs_cxas]$\r\n[fujiwara@bk64 nxs_cxas]$\r\n[fujiwara@bk64 nxs_cxas]$\r\n[fujiwara@bk64 nxs_cxas]$ git diff -w\r\ndiff --git a/AppCallInfo.hxx b/AppCallInfo.hxx\r\nindex c9834b9..7fc1e7c 100644\r\n--- a/AppCallInfo.hxx\r\n+++ b/AppCallInfo.hxx\r\n@@ -1623,6 +1623,9 @@ namespace nxs_csen_application {\r\n                                  , const string& host, int port\r\n                                  , string& dst, const bool& wDisp = false);\r\n\r\n+        bool isLoggerOrig(void) const { return true; };\r\n+        bool isLoggerTerm(void) const { return true; };\r\n+\r\n     protected :\r\n         static void fillTransferPAIHeader( const ProvPAIInfo& paiinfo, const string& host,\r\n                                     int port, string& paistr );\r\ndiff --git a/CSenApplication.cpp b/CSenApplication.cpp\r\nindex 87926fd..d78f95e 100644\r\n--- a/CSenApplication.cpp\r\n+++ b/CSenApplication.cpp\r\n@@ -1,3 +1,4 @@\r\n+\r\n /*\r\n  * $Id$\r\n  *\r\n@@ -634,6 +635,9 @@ CSenApplication::configure (const Properties& props)\r\n         = props.getPropertyBool("SkipEnqueueProcedureForSinglePickupMember"\r\n                                 , false);\r\n\r\n+    // 録音用独自ヘッダーの設定.\r\n+    loggingHeaderName = props.getProperty("LoggingHeaderName", "Logging-Info");\r\n+\r\n #ifdef NXI_BUILD\r\n     work = props.getProperty("ICSCFRoutingB2BProfileId");\r\n     if (work != NULL)\r\n@@ -4499,6 +4503,9 @@ CSenApplication::doUserTermination(AppCallInfo& callInfo)\r\n         callInfo.setPCPID(req, pcpidHost, strPcpid);\r\n     }\r\n\r\n+    // 録音用独自ヘッダーの設定\r\n+    setLoggerHeader(&callInfo, req);\r\n+\r\n     callInfo.setTermUserFromTo(req.term.from, req.term.to);\r\n\r\n     callInfo.createCallRecord(req);\r\n@@ -10584,3 +10591,60 @@ CSenApplication::getNetworkHoldTerm(AppCallInfo* callInfo\r\n     // ret == true の場合, req.hostPortList が空であることはない.\r\n     return ret;\r\n }\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , ConnectToTermObj& req)\r\n+{\r\n+    const bool bLoggingOrig = callInfo->isLoggerOrig();\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, orig=[%s], term=[%s].\\n"\r\n+        , BOOLSTR(bLoggingOrig), BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingOrig)\r\n+        return;\r\n+    /* 着側は要検討\r\n+    if (bLoggingTerm)\r\n+        setLoggerHeader(callInfo.termUserId, callInfo.termUserEnterprise, req.res);\r\n+    */\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->origUserEnterpriseId;\r\n+    map["userId"] = callInfo->origUserId;\r\n+    req.term.headers[loggingHeaderName] = convertLoggerHeaderValue(map);\r\n+    return;\r\n+}\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , HeaderList& headers)\r\n+{\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, term=[%s].\\n", BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingTerm)\r\n+        return;\r\n+\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->termUserEnterpriseId;\r\n+    map["userId"] = callInfo->termUserId;\r\n+    headers.addHeader(loggingHeaderName, convertLoggerHeaderValue(map));\r\n+    return;\r\n+}\r\n+\r\n+string\r\n+CSenApplication::convertLoggerHeaderValue(const StrStrMap& map)\r\n+{\r\n+    string value;\r\n+    for (StrStrMap::const_iterator i = map.begin();\r\n+         i != map.end(); i++) {\r\n+        if (!value.empty())\r\n+            value.append(",");\r\n+        value.append(i->first);\r\n+        value.append("=");\r\n+        value.append(i->second);\r\n+    }\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::convertLoggerHeaderValue."\r\n+        " set logging header=[%s], value=[%s].\\n"\r\n+        , loggingHeaderName.c_str(), value.c_str());\r\n+    return value;\r\n+}\r\ndiff --git a/CSenApplication.hxx b/CSenApplication.hxx\r\nindex 0b96606..9a83257 100644\r\n--- a/CSenApplication.hxx\r\n+++ b/CSenApplication.hxx\r\n@@ -511,6 +511,11 @@ typedef map<string,int> StringIntMap;\r\n\r\n         /// 網保留の接続先情報取得.\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        // 録音用独自ヘッダーの設定. CSenApplicationInterfaceに追加必要？不要？\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        //void setLoggerHeader(const string& userId, const string& enterprise, LegObj& obj);\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers);\r\n+        string convertLoggerHeaderValue(const StrStrMap& map);\r\n\r\n         virtual const string& getMyHost(void) const { return myHost; };\r\n         virtual int getMyPort(void) const { return myPort; };\r\n@@ -2798,6 +2803,9 @@ typedef map<string,int> StringIntMap;\r\n         // If there is only one member, skip the enqueue procedure.\r\n         bool skipEnqueueProcedureForSinglePickupMember;\r\n\r\n+        // 録音用独自ヘッダーの設定.\r\n+        string loggingHeaderName;\r\n+\r\n #ifdef NXI_BUILD\r\n         //!< forward B2B profile ID for I-CSCF routing.\r\n         string icscfRoutingB2BProfileId;\r\ndiff --git a/CSenB2BUA.cpp b/CSenB2BUA.cpp\r\nindex ab4359e..8ddab38 100644\r\n--- a/CSenB2BUA.cpp\r\n+++ b/CSenB2BUA.cpp\r\n@@ -6256,6 +6256,19 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n\r\n     // Timer C timer開放\r\n     b2bData->clearTimerCTimer();\r\n+    // 録音用独自ヘッダーの設定追加.\r\n+    //app->setLoggerHeader(b2bData->getCallInfo(), m_responseHeaderList);\r\n+    const string* tmp0 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp0) ? tmp0->c_str() : "null");\r\n+    b2bData->setLoggerHeader(m_responseHeaderList);\r\n+    const string* tmp1 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp1) ? tmp1->c_str() : "null");\r\n+    m_responseHeaderList.addHeader("Logging-Info2", "hogehoge=fugafuga");\r\n+    const string* tmp2 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp2) ? tmp2->c_str() : "null");\r\n\r\n     if (b2bData->hunt_state != HuntStateType_default) {\r\n         // update state\r\n@@ -6265,6 +6278,11 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n         b2bData->hunt_state = HuntStateType_onInviteConfirmed;\r\n     }\r\n\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " isConvertEarlyMediaUpdate=[%s], isTransmittedEarlyMedia=[%s]"\r\n+        ", compareEarlyMediaContent=[%s].\\n"\r\n+        , BOOLSTR(b2bData->isConvertEarlyMediaUpdate ()), BOOLSTR(b2bData->isTransmittedEarlyMedia ())\r\n+        , BOOLSTR(b2bData->compareEarlyMediaContent (msg)));\r\n     if (b2bData->isConvertEarlyMediaUpdate () == false ||\r\n         b2bData->isTransmittedEarlyMedia () == false ||\r\n         b2bData->compareEarlyMediaContent (msg) == false) {\r\n@@ -6985,3 +7003,12 @@ CSenB2BData::setInviteParameters(const ConnectToTermObj& req\r\n\r\n     return true;\r\n }\r\n+\r\n+void\r\n+CSenB2BData::setLoggerHeader(HeaderList& headerList)\r\n+{\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenB2BData::setLoggerHeader."\r\n+        " set logger header to response.\\n");\r\n+    app->setLoggerHeader(getCallInfo(), headerList);\r\n+    return;\r\n+}\r\ndiff --git a/CSenB2BUA.hxx b/CSenB2BUA.hxx\r\nindex 5556813..862b447 100644\r\n--- a/CSenB2BUA.hxx\r\n+++ b/CSenB2BUA.hxx\r\n@@ -1083,6 +1083,8 @@ public:\r\n      */\r\n     void setTransferNotifyHeader( int iLegIdx, HeaderList& headerList );\r\n\r\n+    void setLoggerHeader(HeaderList& headerList);\r\n+\r\n protected:\r\n     void recordTime (DateTime& dateTime);\r\n     void setIncomingLegRecord (IncomingLegRecord& rec,\r\ndiff --git a/NxsCSenCCAPI.hxx b/NxsCSenCCAPI.hxx\r\nindex db4f746..431f6e0 100644\r\n--- a/NxsCSenCCAPI.hxx\r\n+++ b/NxsCSenCCAPI.hxx\r\n@@ -1935,6 +1935,14 @@ namespace nxs_csen_cc_api {\r\n          */\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& o) = 0;\r\n\r\n+        /**\r\n+         *\r\n+         *\r\n+         *\r\n+         */\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req) = 0;\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers) = 0;\r\n+\r\n         virtual const string& getMyHost(void) const = 0;\r\n         virtual int getMyPort(void) const = 0;\r\n\r\n</code></pre>
63	100	attr	description	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 \r\n\r\nh2. 懸念事項\r\n\r\n機能呼（着信転送、ハント、ピックアップ、パークリトリーブのパターン）ではどうするか？\r\n\r\nh2. 改造\r\n\r\n基本パターンは出来た。\r\n<pre><code class="diff">\r\ndiff --git a/APIConverters.cpp b/APIConverters.cpp\r\nindex 4d5ec55..91ad5f5 100644\r\n--- a/APIConverters.cpp\r\n+++ b/APIConverters.cpp\r\n@@ -1,280 +1,280 @@\r\n-/*\r\n- * $Id$\r\n- *\r\n- * Copyright 2007-2014 NextGen, Inc. All Rights Reserved.\r\n- *\r\n- * This software is the proprietary information of NextGen, Inc.\r\n- * Use is subject to license terms.\r\n- *\r\n- */\r\n-\r\n-#include "Logger.hxx"\r\n-using namespace nxs_util;\r\n-\r\n-#include "CSenB2BUA.hxx"\r\n-#include "APIConverters.hxx"\r\n-\r\n-/*------------------------------------------------------------------------*\r\n- * Converters from SipClass to NxsCSenCCAPI\r\n- *------------------------------------------------------------------------*/\r\n-\r\n-void\r\n-setOperationBaseObj (OperationBaseObj& req, CSenB2BData& b2bData)\r\n-{\r\n-    req.msgid = b2bData.nextMsgId ();\r\n-    req.b2bcallid = b2bData.getB2BCallID ();\r\n-    req.callInfo = b2bData.getCallInfo ();\r\n-    req.b2bData = &b2bData;\r\n-    LOG (LOGGER_LEVEL_DEBUG, "setOperationBaseObj."\r\n-         " msgid=[%d], b2bcallid=[%s].\\n",\r\n-         req.msgid, req.b2bcallid.c_str ());\r\n-}\r\n-\r\n-void\r\n-setLegObjFromSipMessageExt (LegObj& leg, const SipMessageExt* msg)\r\n-{\r\n-  const SocketAddress* srcaddr = msg->getPresetPeer ();\r\n-  if (srcaddr != NULL) {\r\n-    leg.host = srcaddr->getAddressString ();\r\n-    leg.port = srcaddr->getPort ();\r\n-  }\r\n-  convertURI (leg.requestURI, msg->getRequestURI ());\r\n-  convertFromTo (leg.from, msg->getFrom ());\r\n-  convertFromTo (leg.to, msg->getTo ());\r\n-  setContactUser (leg.contactUser, msg);\r\n-  setContent (leg.content, leg.contentType, msg);\r\n-  setHeaders (leg.headers, msg);\r\n-  if (!msg->getVias().empty ()) {\r\n-    leg.vias = msg->getVias();\r\n-  }\r\n-}\r\n-\r\n-void\r\n-setDialogResponseObjFromSipMessageExt (DialogResponseObj& res,\r\n[fujiwara@bk64 nxs_cxas]$\r\n[fujiwara@bk64 nxs_cxas]$\r\n[fujiwara@bk64 nxs_cxas]$\r\n[fujiwara@bk64 nxs_cxas]$ git diff -w\r\ndiff --git a/AppCallInfo.hxx b/AppCallInfo.hxx\r\nindex c9834b9..7fc1e7c 100644\r\n--- a/AppCallInfo.hxx\r\n+++ b/AppCallInfo.hxx\r\n@@ -1623,6 +1623,9 @@ namespace nxs_csen_application {\r\n                                  , const string& host, int port\r\n                                  , string& dst, const bool& wDisp = false);\r\n\r\n+        bool isLoggerOrig(void) const { return true; };\r\n+        bool isLoggerTerm(void) const { return true; };\r\n+\r\n     protected :\r\n         static void fillTransferPAIHeader( const ProvPAIInfo& paiinfo, const string& host,\r\n                                     int port, string& paistr );\r\ndiff --git a/CSenApplication.cpp b/CSenApplication.cpp\r\nindex 87926fd..d78f95e 100644\r\n--- a/CSenApplication.cpp\r\n+++ b/CSenApplication.cpp\r\n@@ -1,3 +1,4 @@\r\n+\r\n /*\r\n  * $Id$\r\n  *\r\n@@ -634,6 +635,9 @@ CSenApplication::configure (const Properties& props)\r\n         = props.getPropertyBool("SkipEnqueueProcedureForSinglePickupMember"\r\n                                 , false);\r\n\r\n+    // 録音用独自ヘッダーの設定.\r\n+    loggingHeaderName = props.getProperty("LoggingHeaderName", "Logging-Info");\r\n+\r\n #ifdef NXI_BUILD\r\n     work = props.getProperty("ICSCFRoutingB2BProfileId");\r\n     if (work != NULL)\r\n@@ -4499,6 +4503,9 @@ CSenApplication::doUserTermination(AppCallInfo& callInfo)\r\n         callInfo.setPCPID(req, pcpidHost, strPcpid);\r\n     }\r\n\r\n+    // 録音用独自ヘッダーの設定\r\n+    setLoggerHeader(&callInfo, req);\r\n+\r\n     callInfo.setTermUserFromTo(req.term.from, req.term.to);\r\n\r\n     callInfo.createCallRecord(req);\r\n@@ -10584,3 +10591,60 @@ CSenApplication::getNetworkHoldTerm(AppCallInfo* callInfo\r\n     // ret == true の場合, req.hostPortList が空であることはない.\r\n     return ret;\r\n }\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , ConnectToTermObj& req)\r\n+{\r\n+    const bool bLoggingOrig = callInfo->isLoggerOrig();\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, orig=[%s], term=[%s].\\n"\r\n+        , BOOLSTR(bLoggingOrig), BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingOrig)\r\n+        return;\r\n+    /* 着側は要検討\r\n+    if (bLoggingTerm)\r\n+        setLoggerHeader(callInfo.termUserId, callInfo.termUserEnterprise, req.res);\r\n+    */\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->origUserEnterpriseId;\r\n+    map["userId"] = callInfo->origUserId;\r\n+    req.term.headers[loggingHeaderName] = convertLoggerHeaderValue(map);\r\n+    return;\r\n+}\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , HeaderList& headers)\r\n+{\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, term=[%s].\\n", BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingTerm)\r\n+        return;\r\n+\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->termUserEnterpriseId;\r\n+    map["userId"] = callInfo->termUserId;\r\n+    headers.addHeader(loggingHeaderName, convertLoggerHeaderValue(map));\r\n+    return;\r\n+}\r\n+\r\n+string\r\n+CSenApplication::convertLoggerHeaderValue(const StrStrMap& map)\r\n+{\r\n+    string value;\r\n+    for (StrStrMap::const_iterator i = map.begin();\r\n+         i != map.end(); i++) {\r\n+        if (!value.empty())\r\n+            value.append(",");\r\n+        value.append(i->first);\r\n+        value.append("=");\r\n+        value.append(i->second);\r\n+    }\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::convertLoggerHeaderValue."\r\n+        " set logging header=[%s], value=[%s].\\n"\r\n+        , loggingHeaderName.c_str(), value.c_str());\r\n+    return value;\r\n+}\r\ndiff --git a/CSenApplication.hxx b/CSenApplication.hxx\r\nindex 0b96606..9a83257 100644\r\n--- a/CSenApplication.hxx\r\n+++ b/CSenApplication.hxx\r\n@@ -511,6 +511,11 @@ typedef map<string,int> StringIntMap;\r\n\r\n         /// 網保留の接続先情報取得.\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        // 録音用独自ヘッダーの設定. CSenApplicationInterfaceに追加必要？不要？\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        //void setLoggerHeader(const string& userId, const string& enterprise, LegObj& obj);\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers);\r\n+        string convertLoggerHeaderValue(const StrStrMap& map);\r\n\r\n         virtual const string& getMyHost(void) const { return myHost; };\r\n         virtual int getMyPort(void) const { return myPort; };\r\n@@ -2798,6 +2803,9 @@ typedef map<string,int> StringIntMap;\r\n         // If there is only one member, skip the enqueue procedure.\r\n         bool skipEnqueueProcedureForSinglePickupMember;\r\n\r\n+        // 録音用独自ヘッダーの設定.\r\n+        string loggingHeaderName;\r\n+\r\n #ifdef NXI_BUILD\r\n         //!< forward B2B profile ID for I-CSCF routing.\r\n         string icscfRoutingB2BProfileId;\r\ndiff --git a/CSenB2BUA.cpp b/CSenB2BUA.cpp\r\nindex ab4359e..8ddab38 100644\r\n--- a/CSenB2BUA.cpp\r\n+++ b/CSenB2BUA.cpp\r\n@@ -6256,6 +6256,19 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n\r\n     // Timer C timer開放\r\n     b2bData->clearTimerCTimer();\r\n+    // 録音用独自ヘッダーの設定追加.\r\n+    //app->setLoggerHeader(b2bData->getCallInfo(), m_responseHeaderList);\r\n+    const string* tmp0 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp0) ? tmp0->c_str() : "null");\r\n+    b2bData->setLoggerHeader(m_responseHeaderList);\r\n+    const string* tmp1 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp1) ? tmp1->c_str() : "null");\r\n+    m_responseHeaderList.addHeader("Logging-Info2", "hogehoge=fugafuga");\r\n+    const string* tmp2 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp2) ? tmp2->c_str() : "null");\r\n\r\n     if (b2bData->hunt_state != HuntStateType_default) {\r\n         // update state\r\n@@ -6265,6 +6278,11 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n         b2bData->hunt_state = HuntStateType_onInviteConfirmed;\r\n     }\r\n\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " isConvertEarlyMediaUpdate=[%s], isTransmittedEarlyMedia=[%s]"\r\n+        ", compareEarlyMediaContent=[%s].\\n"\r\n+        , BOOLSTR(b2bData->isConvertEarlyMediaUpdate ()), BOOLSTR(b2bData->isTransmittedEarlyMedia ())\r\n+        , BOOLSTR(b2bData->compareEarlyMediaContent (msg)));\r\n     if (b2bData->isConvertEarlyMediaUpdate () == false ||\r\n         b2bData->isTransmittedEarlyMedia () == false ||\r\n         b2bData->compareEarlyMediaContent (msg) == false) {\r\n@@ -6985,3 +7003,12 @@ CSenB2BData::setInviteParameters(const ConnectToTermObj& req\r\n\r\n     return true;\r\n }\r\n+\r\n+void\r\n+CSenB2BData::setLoggerHeader(HeaderList& headerList)\r\n+{\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenB2BData::setLoggerHeader."\r\n+        " set logger header to response.\\n");\r\n+    app->setLoggerHeader(getCallInfo(), headerList);\r\n+    return;\r\n+}\r\ndiff --git a/CSenB2BUA.hxx b/CSenB2BUA.hxx\r\nindex 5556813..862b447 100644\r\n--- a/CSenB2BUA.hxx\r\n+++ b/CSenB2BUA.hxx\r\n@@ -1083,6 +1083,8 @@ public:\r\n      */\r\n     void setTransferNotifyHeader( int iLegIdx, HeaderList& headerList );\r\n\r\n+    void setLoggerHeader(HeaderList& headerList);\r\n+\r\n protected:\r\n     void recordTime (DateTime& dateTime);\r\n     void setIncomingLegRecord (IncomingLegRecord& rec,\r\ndiff --git a/NxsCSenCCAPI.hxx b/NxsCSenCCAPI.hxx\r\nindex db4f746..431f6e0 100644\r\n--- a/NxsCSenCCAPI.hxx\r\n+++ b/NxsCSenCCAPI.hxx\r\n@@ -1935,6 +1935,14 @@ namespace nxs_csen_cc_api {\r\n          */\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& o) = 0;\r\n\r\n+        /**\r\n+         *\r\n+         *\r\n+         *\r\n+         */\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req) = 0;\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers) = 0;\r\n+\r\n         virtual const string& getMyHost(void) const = 0;\r\n         virtual int getMyPort(void) const = 0;\r\n\r\n</code></pre>	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 \r\n\r\nh2. 懸念事項\r\n\r\n機能呼（着信転送、ハント、ピックアップ、パークリトリーブのパターン）ではどうするか？\r\n\r\nh2. 改造\r\n\r\n基本パターンは出来た。\r\n<pre><code class="diff">\r\ndiff --git a/AppCallInfo.hxx b/AppCallInfo.hxx\r\nindex c9834b9..7fc1e7c 100644\r\n--- a/AppCallInfo.hxx\r\n+++ b/AppCallInfo.hxx\r\n@@ -1623,6 +1623,9 @@ namespace nxs_csen_application {\r\n                                  , const string& host, int port\r\n                                  , string& dst, const bool& wDisp = false);\r\n\r\n+        bool isLoggerOrig(void) const { return true; };\r\n+        bool isLoggerTerm(void) const { return true; };\r\n+\r\n     protected :\r\n         static void fillTransferPAIHeader( const ProvPAIInfo& paiinfo, const string& host,\r\n                                     int port, string& paistr );\r\ndiff --git a/CSenApplication.cpp b/CSenApplication.cpp\r\nindex 87926fd..d78f95e 100644\r\n--- a/CSenApplication.cpp\r\n+++ b/CSenApplication.cpp\r\n@@ -1,3 +1,4 @@\r\n+\r\n /*\r\n  * $Id$\r\n  *\r\n@@ -634,6 +635,9 @@ CSenApplication::configure (const Properties& props)\r\n         = props.getPropertyBool("SkipEnqueueProcedureForSinglePickupMember"\r\n                                 , false);\r\n\r\n+    // 録音用独自ヘッダーの設定.\r\n+    loggingHeaderName = props.getProperty("LoggingHeaderName", "Logging-Info");\r\n+\r\n #ifdef NXI_BUILD\r\n     work = props.getProperty("ICSCFRoutingB2BProfileId");\r\n     if (work != NULL)\r\n@@ -4499,6 +4503,9 @@ CSenApplication::doUserTermination(AppCallInfo& callInfo)\r\n         callInfo.setPCPID(req, pcpidHost, strPcpid);\r\n     }\r\n\r\n+    // 録音用独自ヘッダーの設定\r\n+    setLoggerHeader(&callInfo, req);\r\n+\r\n     callInfo.setTermUserFromTo(req.term.from, req.term.to);\r\n\r\n     callInfo.createCallRecord(req);\r\n@@ -10584,3 +10591,60 @@ CSenApplication::getNetworkHoldTerm(AppCallInfo* callInfo\r\n     // ret == true の場合, req.hostPortList が空であることはない.\r\n     return ret;\r\n }\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , ConnectToTermObj& req)\r\n+{\r\n+    const bool bLoggingOrig = callInfo->isLoggerOrig();\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, orig=[%s], term=[%s].\\n"\r\n+        , BOOLSTR(bLoggingOrig), BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingOrig)\r\n+        return;\r\n+    /* 着側は要検討\r\n+    if (bLoggingTerm)\r\n+        setLoggerHeader(callInfo.termUserId, callInfo.termUserEnterprise, req.res);\r\n+    */\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->origUserEnterpriseId;\r\n+    map["userId"] = callInfo->origUserId;\r\n+    req.term.headers[loggingHeaderName] = convertLoggerHeaderValue(map);\r\n+    return;\r\n+}\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , HeaderList& headers)\r\n+{\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, term=[%s].\\n", BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingTerm)\r\n+        return;\r\n+\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->termUserEnterpriseId;\r\n+    map["userId"] = callInfo->termUserId;\r\n+    headers.addHeader(loggingHeaderName, convertLoggerHeaderValue(map));\r\n+    return;\r\n+}\r\n+\r\n+string\r\n+CSenApplication::convertLoggerHeaderValue(const StrStrMap& map)\r\n+{\r\n+    string value;\r\n+    for (StrStrMap::const_iterator i = map.begin();\r\n+         i != map.end(); i++) {\r\n+        if (!value.empty())\r\n+            value.append(",");\r\n+        value.append(i->first);\r\n+        value.append("=");\r\n+        value.append(i->second);\r\n+    }\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::convertLoggerHeaderValue."\r\n+        " set logging header=[%s], value=[%s].\\n"\r\n+        , loggingHeaderName.c_str(), value.c_str());\r\n+    return value;\r\n+}\r\ndiff --git a/CSenApplication.hxx b/CSenApplication.hxx\r\nindex 0b96606..9a83257 100644\r\n--- a/CSenApplication.hxx\r\n+++ b/CSenApplication.hxx\r\n@@ -511,6 +511,11 @@ typedef map<string,int> StringIntMap;\r\n\r\n         /// 網保留の接続先情報取得.\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        // 録音用独自ヘッダーの設定. CSenApplicationInterfaceに追加必要？不要？\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        //void setLoggerHeader(const string& userId, const string& enterprise, LegObj& obj);\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers);\r\n+        string convertLoggerHeaderValue(const StrStrMap& map);\r\n\r\n         virtual const string& getMyHost(void) const { return myHost; };\r\n         virtual int getMyPort(void) const { return myPort; };\r\n@@ -2798,6 +2803,9 @@ typedef map<string,int> StringIntMap;\r\n         // If there is only one member, skip the enqueue procedure.\r\n         bool skipEnqueueProcedureForSinglePickupMember;\r\n\r\n+        // 録音用独自ヘッダーの設定.\r\n+        string loggingHeaderName;\r\n+\r\n #ifdef NXI_BUILD\r\n         //!< forward B2B profile ID for I-CSCF routing.\r\n         string icscfRoutingB2BProfileId;\r\ndiff --git a/CSenB2BUA.cpp b/CSenB2BUA.cpp\r\nindex ab4359e..8ddab38 100644\r\n--- a/CSenB2BUA.cpp\r\n+++ b/CSenB2BUA.cpp\r\n@@ -6256,6 +6256,19 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n\r\n     // Timer C timer開放\r\n     b2bData->clearTimerCTimer();\r\n+    // 録音用独自ヘッダーの設定追加.\r\n+    //app->setLoggerHeader(b2bData->getCallInfo(), m_responseHeaderList);\r\n+    const string* tmp0 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp0) ? tmp0->c_str() : "null");\r\n+    b2bData->setLoggerHeader(m_responseHeaderList);\r\n+    const string* tmp1 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp1) ? tmp1->c_str() : "null");\r\n+    m_responseHeaderList.addHeader("Logging-Info2", "hogehoge=fugafuga");\r\n+    const string* tmp2 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp2) ? tmp2->c_str() : "null");\r\n\r\n     if (b2bData->hunt_state != HuntStateType_default) {\r\n         // update state\r\n@@ -6265,6 +6278,11 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n         b2bData->hunt_state = HuntStateType_onInviteConfirmed;\r\n     }\r\n\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " isConvertEarlyMediaUpdate=[%s], isTransmittedEarlyMedia=[%s]"\r\n+        ", compareEarlyMediaContent=[%s].\\n"\r\n+        , BOOLSTR(b2bData->isConvertEarlyMediaUpdate ()), BOOLSTR(b2bData->isTransmittedEarlyMedia ())\r\n+        , BOOLSTR(b2bData->compareEarlyMediaContent (msg)));\r\n     if (b2bData->isConvertEarlyMediaUpdate () == false ||\r\n         b2bData->isTransmittedEarlyMedia () == false ||\r\n         b2bData->compareEarlyMediaContent (msg) == false) {\r\n@@ -6985,3 +7003,12 @@ CSenB2BData::setInviteParameters(const ConnectToTermObj& req\r\n\r\n     return true;\r\n }\r\n+\r\n+void\r\n+CSenB2BData::setLoggerHeader(HeaderList& headerList)\r\n+{\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenB2BData::setLoggerHeader."\r\n+        " set logger header to response.\\n");\r\n+    app->setLoggerHeader(getCallInfo(), headerList);\r\n+    return;\r\n+}\r\ndiff --git a/CSenB2BUA.hxx b/CSenB2BUA.hxx\r\nindex 5556813..862b447 100644\r\n--- a/CSenB2BUA.hxx\r\n+++ b/CSenB2BUA.hxx\r\n@@ -1083,6 +1083,8 @@ public:\r\n      */\r\n     void setTransferNotifyHeader( int iLegIdx, HeaderList& headerList );\r\n\r\n+    void setLoggerHeader(HeaderList& headerList);\r\n+\r\n protected:\r\n     void recordTime (DateTime& dateTime);\r\n     void setIncomingLegRecord (IncomingLegRecord& rec,\r\ndiff --git a/NxsCSenCCAPI.hxx b/NxsCSenCCAPI.hxx\r\nindex db4f746..431f6e0 100644\r\n--- a/NxsCSenCCAPI.hxx\r\n+++ b/NxsCSenCCAPI.hxx\r\n@@ -1935,6 +1935,14 @@ namespace nxs_csen_cc_api {\r\n          */\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& o) = 0;\r\n\r\n+        /**\r\n+         *\r\n+         *\r\n+         *\r\n+         */\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req) = 0;\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers) = 0;\r\n+\r\n         virtual const string& getMyHost(void) const = 0;\r\n         virtual int getMyPort(void) const = 0;\r\n\r\n</code></pre>
64	101	attr	description	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 \r\n\r\nh2. 懸念事項\r\n\r\n機能呼（着信転送、ハント、ピックアップ、パークリトリーブのパターン）ではどうするか？\r\n\r\nh2. 改造\r\n\r\n基本パターンは出来た。\r\n<pre><code class="diff">\r\ndiff --git a/AppCallInfo.hxx b/AppCallInfo.hxx\r\nindex c9834b9..7fc1e7c 100644\r\n--- a/AppCallInfo.hxx\r\n+++ b/AppCallInfo.hxx\r\n@@ -1623,6 +1623,9 @@ namespace nxs_csen_application {\r\n                                  , const string& host, int port\r\n                                  , string& dst, const bool& wDisp = false);\r\n\r\n+        bool isLoggerOrig(void) const { return true; };\r\n+        bool isLoggerTerm(void) const { return true; };\r\n+\r\n     protected :\r\n         static void fillTransferPAIHeader( const ProvPAIInfo& paiinfo, const string& host,\r\n                                     int port, string& paistr );\r\ndiff --git a/CSenApplication.cpp b/CSenApplication.cpp\r\nindex 87926fd..d78f95e 100644\r\n--- a/CSenApplication.cpp\r\n+++ b/CSenApplication.cpp\r\n@@ -1,3 +1,4 @@\r\n+\r\n /*\r\n  * $Id$\r\n  *\r\n@@ -634,6 +635,9 @@ CSenApplication::configure (const Properties& props)\r\n         = props.getPropertyBool("SkipEnqueueProcedureForSinglePickupMember"\r\n                                 , false);\r\n\r\n+    // 録音用独自ヘッダーの設定.\r\n+    loggingHeaderName = props.getProperty("LoggingHeaderName", "Logging-Info");\r\n+\r\n #ifdef NXI_BUILD\r\n     work = props.getProperty("ICSCFRoutingB2BProfileId");\r\n     if (work != NULL)\r\n@@ -4499,6 +4503,9 @@ CSenApplication::doUserTermination(AppCallInfo& callInfo)\r\n         callInfo.setPCPID(req, pcpidHost, strPcpid);\r\n     }\r\n\r\n+    // 録音用独自ヘッダーの設定\r\n+    setLoggerHeader(&callInfo, req);\r\n+\r\n     callInfo.setTermUserFromTo(req.term.from, req.term.to);\r\n\r\n     callInfo.createCallRecord(req);\r\n@@ -10584,3 +10591,60 @@ CSenApplication::getNetworkHoldTerm(AppCallInfo* callInfo\r\n     // ret == true の場合, req.hostPortList が空であることはない.\r\n     return ret;\r\n }\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , ConnectToTermObj& req)\r\n+{\r\n+    const bool bLoggingOrig = callInfo->isLoggerOrig();\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, orig=[%s], term=[%s].\\n"\r\n+        , BOOLSTR(bLoggingOrig), BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingOrig)\r\n+        return;\r\n+    /* 着側は要検討\r\n+    if (bLoggingTerm)\r\n+        setLoggerHeader(callInfo.termUserId, callInfo.termUserEnterprise, req.res);\r\n+    */\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->origUserEnterpriseId;\r\n+    map["userId"] = callInfo->origUserId;\r\n+    req.term.headers[loggingHeaderName] = convertLoggerHeaderValue(map);\r\n+    return;\r\n+}\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , HeaderList& headers)\r\n+{\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, term=[%s].\\n", BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingTerm)\r\n+        return;\r\n+\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->termUserEnterpriseId;\r\n+    map["userId"] = callInfo->termUserId;\r\n+    headers.addHeader(loggingHeaderName, convertLoggerHeaderValue(map));\r\n+    return;\r\n+}\r\n+\r\n+string\r\n+CSenApplication::convertLoggerHeaderValue(const StrStrMap& map)\r\n+{\r\n+    string value;\r\n+    for (StrStrMap::const_iterator i = map.begin();\r\n+         i != map.end(); i++) {\r\n+        if (!value.empty())\r\n+            value.append(",");\r\n+        value.append(i->first);\r\n+        value.append("=");\r\n+        value.append(i->second);\r\n+    }\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::convertLoggerHeaderValue."\r\n+        " set logging header=[%s], value=[%s].\\n"\r\n+        , loggingHeaderName.c_str(), value.c_str());\r\n+    return value;\r\n+}\r\ndiff --git a/CSenApplication.hxx b/CSenApplication.hxx\r\nindex 0b96606..9a83257 100644\r\n--- a/CSenApplication.hxx\r\n+++ b/CSenApplication.hxx\r\n@@ -511,6 +511,11 @@ typedef map<string,int> StringIntMap;\r\n\r\n         /// 網保留の接続先情報取得.\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        // 録音用独自ヘッダーの設定. CSenApplicationInterfaceに追加必要？不要？\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        //void setLoggerHeader(const string& userId, const string& enterprise, LegObj& obj);\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers);\r\n+        string convertLoggerHeaderValue(const StrStrMap& map);\r\n\r\n         virtual const string& getMyHost(void) const { return myHost; };\r\n         virtual int getMyPort(void) const { return myPort; };\r\n@@ -2798,6 +2803,9 @@ typedef map<string,int> StringIntMap;\r\n         // If there is only one member, skip the enqueue procedure.\r\n         bool skipEnqueueProcedureForSinglePickupMember;\r\n\r\n+        // 録音用独自ヘッダーの設定.\r\n+        string loggingHeaderName;\r\n+\r\n #ifdef NXI_BUILD\r\n         //!< forward B2B profile ID for I-CSCF routing.\r\n         string icscfRoutingB2BProfileId;\r\ndiff --git a/CSenB2BUA.cpp b/CSenB2BUA.cpp\r\nindex ab4359e..8ddab38 100644\r\n--- a/CSenB2BUA.cpp\r\n+++ b/CSenB2BUA.cpp\r\n@@ -6256,6 +6256,19 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n\r\n     // Timer C timer開放\r\n     b2bData->clearTimerCTimer();\r\n+    // 録音用独自ヘッダーの設定追加.\r\n+    //app->setLoggerHeader(b2bData->getCallInfo(), m_responseHeaderList);\r\n+    const string* tmp0 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp0) ? tmp0->c_str() : "null");\r\n+    b2bData->setLoggerHeader(m_responseHeaderList);\r\n+    const string* tmp1 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp1) ? tmp1->c_str() : "null");\r\n+    m_responseHeaderList.addHeader("Logging-Info2", "hogehoge=fugafuga");\r\n+    const string* tmp2 = m_responseHeaderList.getHeaderValue("Logging-Info");\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " LoggerHeader value=[%s].\\n", (tmp2) ? tmp2->c_str() : "null");\r\n\r\n     if (b2bData->hunt_state != HuntStateType_default) {\r\n         // update state\r\n@@ -6265,6 +6278,11 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n         b2bData->hunt_state = HuntStateType_onInviteConfirmed;\r\n     }\r\n\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " isConvertEarlyMediaUpdate=[%s], isTransmittedEarlyMedia=[%s]"\r\n+        ", compareEarlyMediaContent=[%s].\\n"\r\n+        , BOOLSTR(b2bData->isConvertEarlyMediaUpdate ()), BOOLSTR(b2bData->isTransmittedEarlyMedia ())\r\n+        , BOOLSTR(b2bData->compareEarlyMediaContent (msg)));\r\n     if (b2bData->isConvertEarlyMediaUpdate () == false ||\r\n         b2bData->isTransmittedEarlyMedia () == false ||\r\n         b2bData->compareEarlyMediaContent (msg) == false) {\r\n@@ -6985,3 +7003,12 @@ CSenB2BData::setInviteParameters(const ConnectToTermObj& req\r\n\r\n     return true;\r\n }\r\n+\r\n+void\r\n+CSenB2BData::setLoggerHeader(HeaderList& headerList)\r\n+{\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenB2BData::setLoggerHeader."\r\n+        " set logger header to response.\\n");\r\n+    app->setLoggerHeader(getCallInfo(), headerList);\r\n+    return;\r\n+}\r\ndiff --git a/CSenB2BUA.hxx b/CSenB2BUA.hxx\r\nindex 5556813..862b447 100644\r\n--- a/CSenB2BUA.hxx\r\n+++ b/CSenB2BUA.hxx\r\n@@ -1083,6 +1083,8 @@ public:\r\n      */\r\n     void setTransferNotifyHeader( int iLegIdx, HeaderList& headerList );\r\n\r\n+    void setLoggerHeader(HeaderList& headerList);\r\n+\r\n protected:\r\n     void recordTime (DateTime& dateTime);\r\n     void setIncomingLegRecord (IncomingLegRecord& rec,\r\ndiff --git a/NxsCSenCCAPI.hxx b/NxsCSenCCAPI.hxx\r\nindex db4f746..431f6e0 100644\r\n--- a/NxsCSenCCAPI.hxx\r\n+++ b/NxsCSenCCAPI.hxx\r\n@@ -1935,6 +1935,14 @@ namespace nxs_csen_cc_api {\r\n          */\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& o) = 0;\r\n\r\n+        /**\r\n+         *\r\n+         *\r\n+         *\r\n+         */\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req) = 0;\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers) = 0;\r\n+\r\n         virtual const string& getMyHost(void) const = 0;\r\n         virtual int getMyPort(void) const = 0;\r\n\r\n</code></pre>	\r\nh2. INVITE付与時\r\n\r\nnxs_sip::SipSessionController の sendInvite() に渡す pHeaderList に、独自ヘッダーを与えておけば勝手に設定してくれそう。\r\nCSenB2BUA::forwardCall() から直前で渡している。\r\nCSenB2BUAのメンバ関数 appreq に設定しておけば、行けそう。\r\nconnectToTerm(const ConnectToTermObj& req)から appreq を生成するが、\r\nこの req は CSenApplication:: 内部で生成可能。\r\nCSenApplication::doUserTermination() から cc->connectToTerm() する\r\n\r\nh2. 200 OK 時\r\n\r\n検討中\r\n\r\n着側からの 200 OK 受信から、発側への 200 OK 送信まで、\r\nSIP スタックや B2BUA スタックなどのスタック周りしか通らない。\r\nかろうじて継承した CSenB2BUA を叩いている。\r\n通知を増やすのか、などの考慮が必要 \r\n\r\nh2. 懸念事項\r\n\r\n機能呼（着信転送、ハント、ピックアップ、パークリトリーブのパターン）ではどうするか？\r\n\r\nh2. 改造\r\n\r\n基本パターンは出来た。\r\n<pre><code class="diff">\r\ndiff --git a/AppCallInfo.hxx b/AppCallInfo.hxx\r\nindex c9834b9..7fc1e7c 100644\r\n--- a/AppCallInfo.hxx\r\n+++ b/AppCallInfo.hxx\r\n@@ -1623,6 +1623,9 @@ namespace nxs_csen_application {\r\n                                  , const string& host, int port\r\n                                  , string& dst, const bool& wDisp = false);\r\n\r\n+        bool isLoggerOrig(void) const { return true; };\r\n+        bool isLoggerTerm(void) const { return true; };\r\n+\r\n     protected :\r\n         static void fillTransferPAIHeader( const ProvPAIInfo& paiinfo, const string& host,\r\n                                     int port, string& paistr );\r\ndiff --git a/CSenApplication.cpp b/CSenApplication.cpp\r\nindex 87926fd..d78f95e 100644\r\n--- a/CSenApplication.cpp\r\n+++ b/CSenApplication.cpp\r\n@@ -1,3 +1,4 @@\r\n+\r\n /*\r\n  * $Id$\r\n  *\r\n@@ -634,6 +635,9 @@ CSenApplication::configure (const Properties& props)\r\n         = props.getPropertyBool("SkipEnqueueProcedureForSinglePickupMember"\r\n                                 , false);\r\n\r\n+    // 録音用独自ヘッダーの設定.\r\n+    loggingHeaderName = props.getProperty("LoggingHeaderName", "Logging-Info");\r\n+\r\n #ifdef NXI_BUILD\r\n     work = props.getProperty("ICSCFRoutingB2BProfileId");\r\n     if (work != NULL)\r\n@@ -4499,6 +4503,9 @@ CSenApplication::doUserTermination(AppCallInfo& callInfo)\r\n         callInfo.setPCPID(req, pcpidHost, strPcpid);\r\n     }\r\n\r\n+    // 録音用独自ヘッダーの設定\r\n+    setLoggerHeader(&callInfo, req);\r\n+\r\n     callInfo.setTermUserFromTo(req.term.from, req.term.to);\r\n\r\n     callInfo.createCallRecord(req);\r\n@@ -10584,3 +10591,60 @@ CSenApplication::getNetworkHoldTerm(AppCallInfo* callInfo\r\n     // ret == true の場合, req.hostPortList が空であることはない.\r\n     return ret;\r\n }\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , ConnectToTermObj& req)\r\n+{\r\n+    const bool bLoggingOrig = callInfo->isLoggerOrig();\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, orig=[%s], term=[%s].\\n"\r\n+        , BOOLSTR(bLoggingOrig), BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingOrig)\r\n+        return;\r\n+    /* 着側は要検討\r\n+    if (bLoggingTerm)\r\n+        setLoggerHeader(callInfo.termUserId, callInfo.termUserEnterprise, req.res);\r\n+    */\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->origUserEnterpriseId;\r\n+    map["userId"] = callInfo->origUserId;\r\n+    req.term.headers[loggingHeaderName] = convertLoggerHeaderValue(map);\r\n+    return;\r\n+}\r\n+\r\n+void\r\n+CSenApplication::setLoggerHeader(const AppCallInfo* callInfo\r\n+                                 , HeaderList& headers)\r\n+{\r\n+    const bool bLoggingTerm = callInfo->isLoggerTerm();\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::setLoggerHeader."\r\n+        " logging header, term=[%s].\\n", BOOLSTR(bLoggingTerm));\r\n+    if (!bLoggingTerm)\r\n+        return;\r\n+\r\n+    StrStrMap map;\r\n+    map["enterprise"] = callInfo->termUserEnterpriseId;\r\n+    map["userId"] = callInfo->termUserId;\r\n+    headers.addHeader(loggingHeaderName, convertLoggerHeaderValue(map));\r\n+    return;\r\n+}\r\n+\r\n+string\r\n+CSenApplication::convertLoggerHeaderValue(const StrStrMap& map)\r\n+{\r\n+    string value;\r\n+    for (StrStrMap::const_iterator i = map.begin();\r\n+         i != map.end(); i++) {\r\n+        if (!value.empty())\r\n+            value.append(",");\r\n+        value.append(i->first);\r\n+        value.append("=");\r\n+        value.append(i->second);\r\n+    }\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenApplication::convertLoggerHeaderValue."\r\n+        " set logging header=[%s], value=[%s].\\n"\r\n+        , loggingHeaderName.c_str(), value.c_str());\r\n+    return value;\r\n+}\r\ndiff --git a/CSenApplication.hxx b/CSenApplication.hxx\r\nindex 0b96606..9a83257 100644\r\n--- a/CSenApplication.hxx\r\n+++ b/CSenApplication.hxx\r\n@@ -511,6 +511,11 @@ typedef map<string,int> StringIntMap;\r\n\r\n         /// 網保留の接続先情報取得.\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        // 録音用独自ヘッダーの設定. CSenApplicationInterfaceに追加必要？不要？\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req);\r\n+        //void setLoggerHeader(const string& userId, const string& enterprise, LegObj& obj);\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers);\r\n+        string convertLoggerHeaderValue(const StrStrMap& map);\r\n\r\n         virtual const string& getMyHost(void) const { return myHost; };\r\n         virtual int getMyPort(void) const { return myPort; };\r\n@@ -2798,6 +2803,9 @@ typedef map<string,int> StringIntMap;\r\n         // If there is only one member, skip the enqueue procedure.\r\n         bool skipEnqueueProcedureForSinglePickupMember;\r\n\r\n+        // 録音用独自ヘッダーの設定.\r\n+        string loggingHeaderName;\r\n+\r\n #ifdef NXI_BUILD\r\n         //!< forward B2B profile ID for I-CSCF routing.\r\n         string icscfRoutingB2BProfileId;\r\ndiff --git a/CSenB2BUA.cpp b/CSenB2BUA.cpp\r\nindex ab4359e..cf99c98 100644\r\n--- a/CSenB2BUA.cpp\r\n+++ b/CSenB2BUA.cpp\r\n@@ -6256,6 +6256,8 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n\r\n     // Timer C timer開放\r\n     b2bData->clearTimerCTimer();\r\n+    // 録音用独自ヘッダーの設定追加.\r\n+    b2bData->setLoggerHeader(m_responseHeaderList);\r\n\r\n     if (b2bData->hunt_state != HuntStateType_default) {\r\n         // update state\r\n@@ -6265,6 +6267,11 @@ CSenForwardCallScenario::onInviteConfirmed (int legIndex,\r\n         b2bData->hunt_state = HuntStateType_onInviteConfirmed;\r\n     }\r\n\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenForwardCallScenario::onInviteConfirmed."\r\n+        " isConvertEarlyMediaUpdate=[%s], isTransmittedEarlyMedia=[%s]"\r\n+        ", compareEarlyMediaContent=[%s].\\n"\r\n+        , BOOLSTR(b2bData->isConvertEarlyMediaUpdate ()), BOOLSTR(b2bData->isTransmittedEarlyMedia ())\r\n+        , BOOLSTR(b2bData->compareEarlyMediaContent (msg)));\r\n     if (b2bData->isConvertEarlyMediaUpdate () == false ||\r\n         b2bData->isTransmittedEarlyMedia () == false ||\r\n         b2bData->compareEarlyMediaContent (msg) == false) {\r\n@@ -6985,3 +6992,12 @@ CSenB2BData::setInviteParameters(const ConnectToTermObj& req\r\n\r\n     return true;\r\n }\r\n+\r\n+void\r\n+CSenB2BData::setLoggerHeader(HeaderList& headerList)\r\n+{\r\n+    LOG(LOGGER_LEVEL_DEBUG, "CSenB2BData::setLoggerHeader."\r\n+        " set logger header to response.\\n");\r\n+    app->setLoggerHeader(getCallInfo(), headerList);\r\n+    return;\r\n+}\r\ndiff --git a/CSenB2BUA.hxx b/CSenB2BUA.hxx\r\nindex 5556813..862b447 100644\r\n--- a/CSenB2BUA.hxx\r\n+++ b/CSenB2BUA.hxx\r\n@@ -1083,6 +1083,8 @@ public:\r\n      */\r\n     void setTransferNotifyHeader( int iLegIdx, HeaderList& headerList );\r\n\r\n+    void setLoggerHeader(HeaderList& headerList);\r\n+\r\n protected:\r\n     void recordTime (DateTime& dateTime);\r\n     void setIncomingLegRecord (IncomingLegRecord& rec,\r\ndiff --git a/NxsCSenCCAPI.hxx b/NxsCSenCCAPI.hxx\r\nindex db4f746..431f6e0 100644\r\n--- a/NxsCSenCCAPI.hxx\r\n+++ b/NxsCSenCCAPI.hxx\r\n@@ -1935,6 +1935,14 @@ namespace nxs_csen_cc_api {\r\n          */\r\n         virtual bool getNetworkHoldTerm(nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& o) = 0;\r\n\r\n+        /**\r\n+         *\r\n+         *\r\n+         *\r\n+         */\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, ConnectToTermObj& req) = 0;\r\n+        virtual void setLoggerHeader(const nxs_csen_application::AppCallInfo* callInfo, HeaderList& headers) = 0;\r\n+\r\n         virtual const string& getMyHost(void) const = 0;\r\n         virtual int getMyPort(void) const = 0;\r\n</code></pre>
66	105	attr	status_id	1	6
70	109	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\nで、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n
71	110	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\nで、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n
72	111	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address
73	112	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない
74	113	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;
75	114	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>
76	115	attr	description	SSL_set_options() でコアダンプする。\r\nSSL_set_options は　SSL_ctrl(){return (s->options |= larg);} のエイリアス（マクロ定義）だが、\r\nSSL_ctrl() で例外スローしているパターンはそもそもない。\r\n\r\n参照異常のアクセスと思われる。\r\nSSL_set_options() する前に *SSL を SSL_new() で生成している。\r\nこのパターンで *SSL を NULL で返すパターンがありうる。\r\n死ぬ可能性があるとすればここだと思う。\r\n	SSL_set_options() でコアダンプする。\r\nSSL_set_options は　SSL_ctrl(){return (s->options |= larg);} のエイリアス（マクロ定義）だが、\r\nSSL_ctrl() で例外スローしているパターンはそもそもない。\r\n\r\n参照異常のアクセスと思われる。\r\nSSL_set_options() する前に *SSL を SSL_new() で生成している。\r\nこのパターンで *SSL を NULL で返すパターンがありうる。\r\n死ぬ可能性があるとすればここだと思う。\r\nまずはこの関数の調査から。\r\n
77	116	attr	status_id	1	5
78	117	attr	status_id	7	3
79	118	attr	status_id	3	5
80	119	attr	status_id	1	7
81	120	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\nオプションフラッグは、user_data.option_flags の bit 22 （4194304） を使用する
82	121	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\nオプションフラッグは、user_data.option_flags の bit 22 （4194304） を使用する	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\n起動条件は通常の時間帯転送と同じとし、\r\nオプションフラッグは、user_data.scfw_active が true,\r\n user_data.forwarding_flags bit 8 （256）が有効の場合に動作する
83	122	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_addr_index,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\n起動条件は通常の時間帯転送と同じとし、\r\nオプションフラッグは、user_data.scfw_active が true,\r\n user_data.forwarding_flags bit 8 （256）が有効の場合に動作する	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\n起動条件は通常の時間帯転送と同じとし、\r\nオプションフラッグは、user_data.scfw_active が true,\r\n user_data.forwarding_flags bit 8 （256）が有効の場合に動作する
84	124	attr	description	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\n起動条件は通常の時間帯転送と同じとし、\r\nオプションフラッグは、user_data.scfw_active が true,\r\n user_data.forwarding_flags bit 8 （256）が有効の場合に動作する	共有型、独立型かは csenb2bua.conf の設定\r\n\r\nCSenApplication::findSCFWPlan()で時間帯転送設定する\r\nが、あんまり関なさそう（時間帯転送設定から、転送種別を設定してるだけだから。今回の転送先の設定は関係ない？）\r\n\r\n実際の時間帯転送の転送処理は以下の関数から起動し、\r\nCSenApplication::scheduleCallForwarding()\r\n転送処理は以下の関数\r\nCSenApplication::callForwarding()\r\n\r\n\r\n転送番号の設定は、以下の関数で決定\r\nCSenApplication::callForwarding()\r\n→CSenApplication::getForwardingNumber()\r\n* 独立型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr を設定する。\r\n* 共有型の場合\r\n上の関数で、case Forwarding_Scheduleの時に\r\ncallInfo.scfwPlan.forwarding_addr_index で分岐（そもそもこれなに？）。\r\nこれが0以下の場合、さらにcallInfo.termUser.scfw_forwarding_addr_indexをaddr_indexとする\r\nここからgetSCFWFollowMeNumber()する（DBの転送先番号一覧から、インデックスでマッチするやつをとる）。\r\n\r\n転送先番号一覧は、DBスキーマでは以下をSELECT\r\nscfw_forwarding_address\r\nただし、これは画面からは使っていない\r\n\r\n\r\n転送プランの取得SQL\r\n<pre>\r\nSELECT \r\n    action,\r\n    forwarding_addr,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\nFROM\r\n    user_scfw_plan\r\nWHERE\r\n    user_id='%s' AND index='%d'\r\n;\r\n</pre>\r\n\r\nユーザーアクションは、scfw_plan.action に以下を設定.\r\n<pre>\r\n        // 7~11: user scfw action 1~5.\r\n        scfw_action_user_1,\r\n        scfw_action_user_2,\r\n        scfw_action_user_3,\r\n        scfw_action_user_4,\r\n        scfw_action_user_5,\r\n</pre>\r\n\r\n起動条件は通常の時間帯転送と同じとし、\r\nオプションフラッグは、user_data.scfw_active が true,\r\n user_data.forwarding_flags bit 8 （256）が有効の場合に動作する
\.


--
-- Name: journal_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('journal_details_id_seq', 84, true);


--
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY journals (id, journalized_id, journalized_type, user_id, notes, created_on, private_notes) FROM stdin;
4	3	Issue	5	local.properties おいても以下エラー。\r\n<pre>\r\n$ ./gradlew buildUtil\r\n\r\nFAILURE: Build failed with an exception.\r\n\r\n* What went wrong:\r\nA problem occurred configuring project ':app'.\r\n> Exception thrown while executing model rule: BaseComponentModelPlugin.Rules#createAndroidComponents(ModelMap<AndroidComponentSpec>, ServiceRegistry, AndroidConfig, AndroidConfig, ModelMap<BuildType>, ModelMap<ProductFlavor>, ModelMap<SigningConfig>, VariantFactory, TaskManager, Project, AndroidBuilder, SdkHandler, ExtraModelInfo, Boolean)\r\n   > Failed to find target with hash string 'android-25' in: /home/fujiwara/Android/Sdk\r\n\r\n* Try:\r\nRun with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.\r\n\r\nBUILD FAILED\r\n\r\nTotal time: 0.936 secs\r\n</pre>\r\n\r\nbuild SDK のバージョンが違う（無い）と言われる\r\nSDKをインストールしてもいいが、\r\n適切なものを選びたいので app/build.gradle, lib/build.gradle の compileSdkVersion, buildToolsVersion の値を変更\r\n\r\n<pre><code class="diff">\r\ndiff --git a/app/build.gradle b/app/build.gradle\r\nindex 7a10f46..83225f6 100644\r\n--- a/app/build.gradle\r\n+++ b/app/build.gradle\r\n@@ -15,8 +15,8 @@ model {\r\n         }\r\n     }\r\n     android {\r\n-        compileSdkVersion 25\r\n-        buildToolsVersion "25.0.2"\r\n+        compileSdkVersion 26\r\n+        buildToolsVersion "28.0.1"\r\n\r\n         defaultConfig {\r\n             applicationId "com.nextgen.nxs.ptt.gscp.tester"\r\ndiff --git a/lib/build.gradle b/lib/build.gradle\r\nindex 81c32f0..c37b565 100755\r\n--- a/lib/build.gradle\r\n+++ b/lib/build.gradle\r\n@@ -3,7 +3,7 @@ apply plugin: 'com.android.model.library'\r\n\r\n def util_path = file(project(':util').projectDir).absolutePath\r\n def openssl_path = file(project(':openssl').projectDir).absolutePath\r\n-def TAG_nxs_ptt_gscp = "fix_21874"\r\n+def TAG_nxs_ptt_gscp = "develop"^M\r\n def REPO_gscp = 'git@bitbucket.org:nextgen-rd/nxs_ptt_gscp.git'\r\n //def target_name = targetPlatform.getName();\r\n\r\n@@ -88,8 +88,8 @@ model {\r\n         }\r\n     }\r\n     android {\r\n-        compileSdkVersion 25\r\n-        buildToolsVersion "25.0.2"\r\n+        compileSdkVersion 26\r\n+        buildToolsVersion "28.0.1"\r\n\r\n         defaultConfig {\r\n             minSdkVersion.apiLevel 15\r\ndiff --git a/util/build.gradle b/util/build.gradle\r\nindex 6f2dafa..9b3c773 100755\r\n--- a/util/build.gradle\r\n+++ b/util/build.gradle\r\n@@ -1,4 +1,4 @@\r\n-def TAG_util = "mod_19711"\r\n+def TAG_util = "B5000_6_4_32"\r\n def REPO_util = 'git@bitbucket.org:nextgen-rd/nxs_util.git'\r\n\r\n task cleanUtil(type: Exec) {\r\n</pre>	2018-08-02 10:50:48.952594	f
1	2	Issue	5	setup.pl インストール\r\n\r\n以下コメントアウト\r\n* hugepage\r\n* CPU core 数チェック（2か所）\r\n\r\n手順は以下の通り\r\n<pre>\r\n$ ./setup.pl sg mg\r\nTarget(s): sg mg\r\nNIC: ens3 ens4 ens5\r\n=== Input parameters ===\r\nDual NIC [n]?:\r\nNW1 NIC [ens3]?:\r\nPrivate NW NIC [ens3]?:\r\nLicense NIC [ens3]?:\r\nRedundant [y]?: n\r\nService protocol on ens3 [v4]?:\r\nNW1 (MYIPADDRESS) Address: 192.168.194.68/22\r\nPrivate NW (PRIVATEIPADDRESS) Address: 192.168.194.68/22\r\n=== SG settings ===\r\nMy region(west or east) [west]?:\r\nPeer site remote address []?: 192.168.194.68\r\nMG control host [192.168.194.68]?:\r\n=== MG settings ===\r\nmax interfaces [200]?:\r\nmax service logics [200]?:\r\nmax service table size [5000]?:\r\nmax terminations [110000]?:\r\nmax destination table size(max group size) [10000]?:\r\ndefault group table size [1000]?:\r\nmax neighbors [200]?:\r\nSNMP Manager Address [${LOCALHOST}]?:\r\nSNMP Community Name [public]?:\r\n=== Print parameters ===\r\nDual NIC: no\r\nNW1 NIC: ens3\r\nLicense NIC: ens3\r\nRedundant: no\r\nNW1 Address: 192.168.194.68/22\r\nPrivate NW Address: 192.168.194.68/22\r\n=== SG settings ===\r\nMy region: west\r\nPeer site remote address: 192.168.194.68\r\nMG control host: 192.168.194.68\r\n=== MG settings ===\r\nmax interfaces: 200\r\nmax service logics: 200\r\nmax service tables: 5000\r\nmax terminations: 110000\r\nmax source tables: 110000\r\nmax destination tables: 10000\r\ndefault group entries: 1000\r\nmax neighbors: 200\r\nSNMP Manager Address: ${LOCALHOST}\r\nSNMP Community Name: public\r\nOK [y]?:\r\n===================================================================\r\nSet IRQBALANCE_BANNED_CPUS of /etc/sysconfig/irqbalance to '1'\r\n                                      or (include md core) '1'.\r\n===================================================================\r\n\r\n</pre>	2018-07-31 20:11:41.164102	f
5	3	Issue	5	AndroidStudio の compileSdkVersion, buildToolsVersion のバージョンがわからん。となったら以下をみればいい（デフォルトで）。\r\n* compileSdkVersion\r\nAndroid/Sdk/platforms\r\n* buildToolsVersion \r\nAndroid/Sdk/build-tools	2018-08-02 10:53:12.620406	f
6	3	Issue	5		2018-08-02 10:53:43.114277	f
2	2	Issue	5	以下の設定\r\n\r\n* ptt_mg.conf\r\n** 追加\r\nTransportControllerGArpMode = notSend\r\nengine.socket = hogehoge\r\n※ここの文字列はなんでもいい\r\n\r\n* env.sh\r\n** 追加\r\nDTLSPRIVATEKEYPASSWORD\r\n** 削除\r\nDTLSCERTFILEPATH\r\n\r\n* mg_nic_list.dat\r\n"割り込み番号" "インターフェース名" use\r\n※この割り込み番号はdmesgから取得\r\n<pre>\r\ndmesg |grep 52:54:00:e6:03:78\r\n</pre>\r\n\r\n* mgiflist.txt\r\n0 1 ens3 - 192.168.194.68 22 192.168.192.1 52:54:00:E6:03:78\r\n\r\n* mp.conf は不要	2018-07-31 20:22:27.323431	f
3	3	Issue	5	Utilをビルドしようとすると、最初に以下のエラー\r\n<pre>\r\n$ ./gradlew buildUtil\r\nFAILURE: Build failed with an exception.\r\n\r\n* Where:\r\nBuild file '/home/fujiwara/work/PTT/nxs_ptt_gscp_jni/app/build.gradle' line: 2\r\n\r\n* What went wrong:\r\nA problem occurred evaluating project ':app'.\r\n> Failed to apply plugin [class 'com.android.build.gradle.model.BaseComponentModelPlugin']\r\n   > SDK location not found. Define location with sdk.dir in the local.properties file or with an ANDROID_HOME environment variable.\r\n\r\n* Try:\r\nRun with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.\r\n\r\nBUILD FAILED\r\n\r\nTotal time: 0.992 secs\r\n</pre>\r\n\r\nnxs_ptt_gscp_jni/ に local.properties が必要\r\n<pre>\r\n$ cat local.properties\r\nsdk.dir=/home/fujiwara/Android/Sdk\r\nndk.dir=/usr/local/android-ndk-r15c\r\n</pre>	2018-08-02 10:11:45.549408	f
7	3	Issue	5	Opensslをビルドするとき、特に気にしなくていい\r\nバージョンの指定を変えたいので、以下の部分をいじるとくらい\r\n\r\n<pre><code class="diff">\r\nopenssl/build.gradle\r\n\r\ndiff --git a/openssl/build.gradle b/openssl/build.gradle\r\nindex 665222f..06fad08 100755\r\n--- a/openssl/build.gradle\r\n+++ b/openssl/build.gradle\r\n@@ -1,6 +1,6 @@\r\n //apply plugin: 'com.android.library'\r\n\r\n-def version = 'openssl-1.0.2j'\r\n+def version = 'openssl-1.0.2o'\r\n def archive = version + '.tar.gz'\r\n // see reference https://wiki.openssl.org/index.php/Android\r\n // see https://wiki.openssl.org/images/7/70/Setenv-android.sh\r\n</pre>	2018-08-02 10:59:27.001952	f
8	3	Issue	5	./gradlew linkGscpMk, ./gradlew lib:build までは順調\r\n./gradlew lib:build　で死ぬ\r\n\r\nlib/build/reports/lint-results.xmlをみるとSDKのバージョンが合ってないところがあるとか言われる\r\n\r\n<pre>\r\n        message="This support library should not use a different version (25) than the `compileSdkVersion` (26)"\r\n        category="Correctness"\r\n        priority="8"\r\n        summary="Incompatible Gradle Versions"\r\n        explanation="There are some combinations of libraries, or tools and libraries, that are incompatible, or can lead to bugs. One such incompatibility is compiling with a version of the Android support libraries that is not the latest version (or in particular, a version lower than your `targetSdkVersion`.)"\r\n</pre>\r\n\r\nappcompat のバージョンをあげてやればいい？	2018-08-02 11:11:21.942778	f
9	3	Issue	5	appcompat-v7のバージョンをみたかったらここ\r\nAndroid/Sdk/extras/android/m2repository/com/android/support/appcompat-v7/	2018-08-02 11:47:25.653606	f
10	3	Issue	5	build　Tools のメジャーバージョン以上の appcompat を使えばいける\r\n<pre><code class="diff">\r\ndiff --git a/lib/build.gradle b/lib/build.gradle\r\nindex 81c32f0..ed29848 100755\r\n\r\n-    compile 'com.android.support:appcompat-v7:25.2.0'\r\n+    compile 'com.android.support:appcompat-v7:26.0.0-alpha1'^M\r\n</pre>\r\n\r\nalphaとか書いてて気色悪い.\r\nmaven からとってくるべきだが、記述がよくわからない。\r\n<pre>\r\nhttps://mvnrepository.com/artifact/com.android.support/appcompat-v7?repo=google\r\n</pre>\r\n\r\n	2018-08-02 12:25:19.622693	f
11	3	Issue	5		2018-08-02 12:35:15.609046	f
12	3	Issue	5		2018-08-02 12:38:51.295645	f
13	3	Issue	5		2018-08-02 12:51:34.291049	f
29	11	Issue	5	大事な話が抜けている。\r\n\r\n* PRS_ACK\r\nGSCPスタックの sendPressResponse() から送信\r\n* PRS\r\nGSCPスタックの sendPress() から送信\r\n\r\n上の関数は、アプリ（SG）からはgscpCtrlから呼ぶ	2018-08-07 15:06:21.907048	f
14	4	Issue	5	ag したらこいつらが引っかかった\r\n<pre><code class="cpp">\r\n$ ag bQuery\r\nGSCPGroupClientImpl.hxx\r\n51:                  , bool bQuery=false);\r\n\r\nGSCPGroupClientImpl.cpp\r\n140:                              , bool bQuery)\r\n143:    m_session = sc->sendJoin(groupId, userId, audioAddress, audioPort, bQuery);\r\n\r\nGSCPGroupClientInterface.hxx\r\n221:     * @param[in] bQuery true の場合, JOIN種別を JoinType_query とする.\r\n228:                          , bool bQuery=false)=0;\r\n\r\nGSCPGroupClientSession.cpp\r\n79:                                   , bool bQuery)\r\n85:        , audioPort, BOOLSTR(bQuery));\r\n99:    bool result = sendJoin(bQuery);\r\n522:GSCPGroupClientSession::sendJoin(bool bQuery)\r\n540:    if (bQuery) {\r\n\r\nGSCPGroupClientSession.hxx\r\n86:                    , bool bQuery);\r\n101:    bool sendJoin(bool bQuery=false);\r\n\r\nGSCPGroupClientSessionController.cpp\r\n193:                                           , bool bQuery)\r\n203:            bool ret = session->onSendJoin(groupId, audioAddress, audioPort, bQuery);\r\n217:            bool ret = session->onSendJoin(groupId, audioAddress, audioPort, bQuery);\r\n\r\nGSCPGroupClientSessionController.hxx\r\n317:                 , bool bQuery);\r\n\r\nGSCPGroupServerImpl.cpp\r\n277:                                  , bool bQuery)\r\n279:    m_callback->receivedJoin(requestId, joinId, groupId, userId, audioAddress, audioPort, bQuery);\r\n\r\nGSCPGroupServerImpl.hxx\r\n96:                              , bool bQuery);\r\n\r\nGSCPGroupServerInterface.hxx\r\n76:     * @param[in] bQuery true の場合, グループ通信存在確認の JOIN\r\n85:                              , bool bQuery)=0;\r\n\r\nGSCPGroupServerSession.cpp\r\n142:        bool bQuery = (type == JoinType_query) ? true : false;\r\n144:        m_controller->receivedJoin(requestId, m_joinId, m_groupId, m_userId, m_remoteAudioAddress, m_remoteAudioPort, bQuery);\r\n\r\nGSCPGroupServerSessionController.hxx\r\n37:                              , bool bQuery)=0;\r\n241:                      , bool bQuery);\r\n\r\nGSCPGroupServerSessionController.cpp\r\n347:                                               , bool bQuery)\r\n349:    m_callback->receivedJoin(requestId, joinId, groupId, userId, audioAddress, audioPort, bQuery);\r\n</pre>	2018-08-02 13:28:25.740352	f
15	4	Issue	5	見づらいので、編集対象のファイルをまとめる\r\n\r\nGSCPGroupClientImpl.hxx\r\nGSCPGroupClientImpl.cpp\r\nGSCPGroupClientInterface.hxx\r\nGSCPGroupClientSession.cpp\r\nGSCPGroupClientSession.hxx\r\nGSCPGroupClientSessionController.cpp\r\nGSCPGroupClientSessionController.hxx\r\nGSCPGroupServerImpl.hxx\r\nGSCPGroupServerInterface.hxx\r\nGSCPGroupServerSession.cpp\r\nGSCPGroupServerImpl.cpp\r\nGSCPGroupServerSessionController.hxx\r\nGSCPGroupServerSessionController.cpp\r\n	2018-08-02 13:36:52.986838	f
16	4	Issue	5	やること\r\n\r\n* bQuery → iQueryType\r\n* JoinType に JoinType_monitor 追加\r\n* enum QueryType を追加\r\n* getQueryType() 関数を追加	2018-08-02 13:56:24.131102	f
17	4	Issue	5	結局こうなった。\r\n<pre><code class="diff">\r\ndiff --git a/GSCPDef.hxx b/GSCPDef.hxx\r\nindex 5cfbae6..e5cdd3b 100644\r\n--- a/GSCPDef.hxx\r\n+++ b/GSCPDef.hxx\r\n@@ -131,6 +131,14 @@ enum JoinType {\r\n     JoinType_new = 0x00,        //!< 新規\r\n     JoinType_refresh = 0x01,    //!< セッション更新\r\n     JoinType_query = 0x02,      //!< グループ存在確認\r\n+    JoinType_monitor = 0x03,    //!< モニタグループ\r\n+};\r\n+\r\n+// QueryTypeの値定義\r\n+enum QueryType {\r\n+    QueryType_new = 0,     //!< 新規\r\n+    QueryType_query = 1,   //!< グループ存在確認\r\n+    QueryType_monitor = 2, //!< 加入電話通話モニタモード\r\n };\r\n \r\n /**\r\ndiff --git a/GSCPGroupClientImpl.cpp b/GSCPGroupClientImpl.cpp\r\nindex d758e09..8a77108 100644\r\n--- a/GSCPGroupClientImpl.cpp\r\n+++ b/GSCPGroupClientImpl.cpp\r\n@@ -137,10 +137,10 @@ GSCPGroupClientImpl::sendJoin(const string& groupId\r\n                               , const string& userId\r\n                               , const string& audioAddress\r\n                               , int audioPort\r\n-                              , bool bQuery)\r\n+                              , int iQueryType)\r\n {\r\n     GSCPGroupClientSessionController* sc = GSCPGroupClientSessionController::getInstance();\r\n-    m_session = sc->sendJoin(groupId, userId, audioAddress, audioPort, bQuery);\r\n+    m_session = sc->sendJoin(groupId, userId, audioAddress, audioPort, iQueryType);\r\n }\r\n \r\n void GSCPGroupClientImpl::sendLeave(const string& userId)\r\ndiff --git a/GSCPGroupClientImpl.hxx b/GSCPGroupClientImpl.hxx\r\nindex 388f0c1..487f6e8 100644\r\n--- a/GSCPGroupClientImpl.hxx\r\n+++ b/GSCPGroupClientImpl.hxx\r\n@@ -1,7 +1,7 @@\r\n /*\r\n  * $Id$\r\n  *\r\n- * Copyright 2016 NextGen, Inc. All Rights Reserved.\r\n+ * Copyright 2016-2018 NextGen, Inc. All Rights Reserved.\r\n  *\r\n  * This software is the proprietary information of NextGen, Inc.\r\n  * Use is subject to license terms.\r\n@@ -40,7 +40,7 @@ public:\r\n                        , int bindPort=-1\r\n                        , const string& transportId=""\r\n                        , const string& bindAddr="");\r\n-        void shutdown();\r\n+    void shutdown();\r\n     void sendRegister(const string& userId, const string& password, uint16_t expires,\r\n                       const string& serverHost, int serverPort, const string& transportId="");\r\n     void stopRegister(const string& userId, bool bOutOfService=false);\r\n@@ -48,7 +48,7 @@ public:\r\n                   , const string& userId\r\n                   , const string& audioAddress\r\n                   , int audioPort\r\n-                  , bool bQuery=false);\r\n+                  , int iQueryType=0);\r\n     void sendLeave(const string& userId);\r\n     void sendStartPress(const string& userId, int priority);\r\n     void sendStopPress(const string& userId);\r\ndiff --git a/GSCPGroupClientInterface.hxx b/GSCPGroupClientInterface.hxx\r\nindex 8efef08..cdeb04e 100644\r\n--- a/GSCPGroupClientInterface.hxx\r\n+++ b/GSCPGroupClientInterface.hxx\r\n@@ -218,14 +218,16 @@ public:\r\n      * @param[in] userId ユーザID\r\n      * @param[in] audioAddress 音声信号受信アドレス\r\n      * @param[in] audioPort 音声信号受信ポート番号\r\n-     * @param[in] bQuery true の場合, JOIN種別を JoinType_query とする.\r\n-     *                   false の場合, JOIN種別を JoinType_new とする.\r\n+     * @param[in] iQueryType i値によってJOIN種別を以下とする.\r\n+     *                   0: JOIN種別を JoinType_new\r\n+     *                   1: JOIN種別を JoinType_query\r\n+     *                   2: JOIN種別を JoinType_monitor\r\n      */\r\n     virtual void sendJoin(const string& groupId\r\n                           , const string& userId\r\n                           , const string& audioAddress\r\n                           , int audioPort\r\n-                          , bool bQuery=false)=0;\r\n+                          , int iQueryType=0)=0;\r\n \r\n     /**\r\n      * グループ離脱要求の送信\r\ndiff --git a/GSCPGroupClientSession.cpp b/GSCPGroupClientSession.cpp\r\nindex 75219e7..250a66f 100644\r\n--- a/GSCPGroupClientSession.cpp\r\n+++ b/GSCPGroupClientSession.cpp\r\n@@ -76,13 +76,13 @@ bool\r\n GSCPGroupClientSession::onSendJoin(const string& groupId\r\n                                    , const string& audioAddress\r\n                                    , int audioPort\r\n-                                   , bool bQuery)\r\n+                                   , int iQueryType)\r\n {\r\n     LOG(LOGGER_LEVEL_DEBUG,"GSCPGroupClientSession::onSendJoin. sending,"\r\n         " session-id=%d, user-id=[%s], group-id=[%s], audio-address=[%s],"\r\n         " audio-port=%d, query=[%s]\\n",\r\n         m_key, m_userId.c_str(), groupId.c_str(), audioAddress.c_str()\r\n-        , audioPort, BOOLSTR(bQuery));\r\n+        , audioPort, queryTypeString(iQueryType));\r\n     if (m_state != GroupClientSession_idle &&\r\n         m_groupId != groupId) {\r\n         LOG(LOGGER_LEVEL_MINOR,"GSCPGroupClientSession::onSendJoin."\r\n@@ -96,7 +96,7 @@ GSCPGroupClientSession::onSendJoin(const string& groupId\r\n     m_audioAddress = audioAddress;\r\n     m_audioPort = audioPort;\r\n \r\n-    bool result = sendJoin(bQuery);\r\n+    bool result = sendJoin(iQueryType);\r\n     if (result) {\r\n         if (m_connectionId != -1) {\r\n             GSCPGroupClientSessionController* controller = GSCPGroupClientSessionController::getInstance();\r\n@@ -519,7 +519,7 @@ GSCPGroupClientSession::onGroupReleasedSub(void)\r\n }\r\n \r\n bool\r\n-GSCPGroupClientSession::sendJoin(bool bQuery)\r\n+GSCPGroupClientSession::sendJoin(int iQueryType)\r\n {\r\n     GSCPMessage msg;\r\n     msg.setType(GSCP_GC_JOIN_REQ);\r\n@@ -537,12 +537,31 @@ GSCPGroupClientSession::sendJoin(bool bQuery)\r\n     msg.addAttributeU16(ATTR_SESSION_ID, (uint16_t)m_key);\r\n \r\n     JoinType type = JoinType_new;\r\n+    /*\r\n     if (bQuery) {\r\n         type = JoinType_query;\r\n     } else {\r\n         if (m_state != GroupClientSession_idle)\r\n             type = JoinType_refresh;\r\n     }\r\n+    */\r\n+    switch (iQueryType) {\r\n+    case QueryType_new:\r\n+        if (m_state != GroupClientSession_idle)\r\n+            type = JoinType_refresh;\r\n+        break;\r\n+    case QueryType_query:\r\n+        type = JoinType_query;\r\n+        break;\r\n+    case QueryType_monitor:\r\n+        if (m_state != GroupClientSession_idle)\r\n+            type = JoinType_refresh;\r\n+        else\r\n+            type = JoinType_monitor;\r\n+        break;\r\n+    default:\r\n+        return false;\r\n+    }\r\n     msg.addAttributeByte(ATTR_JOIN_TYPE, type);\r\n \r\n     GSCPTransactionController* tsc = GSCPTransactionController::getInstance();\r\n@@ -620,6 +639,20 @@ const char* GSCPGroupClientSession::stateString()\r\n     }\r\n }\r\n \r\n+const char* GSCPGroupClientSession::queryTypeString(int iQueryType)\r\n+{\r\n+    switch (iQueryType) {\r\n+    case QueryType_new:\r\n+        return "new";\r\n+    case QueryType_query:\r\n+        return "query";\r\n+    case QueryType_monitor:\r\n+        return "monitor";\r\n+    default:\r\n+        return "unknown";\r\n+    }\r\n+}\r\n+\r\n void\r\n GSCPGroupClientSession::cacheRecvPrsReq(const GSCPMessage& msg, int requestId)\r\n {\r\ndiff --git a/GSCPGroupClientSession.hxx b/GSCPGroupClientSession.hxx\r\nindex 75750b4..f84bf71 100644\r\n--- a/GSCPGroupClientSession.hxx\r\n+++ b/GSCPGroupClientSession.hxx\r\n@@ -83,7 +83,7 @@ public:\r\n     bool onSendJoin(const string& groupid\r\n                     , const string& audioAddress\r\n                     , int audioPort\r\n-                    , bool bQuery);\r\n+                    , int iQueryType);\r\n     bool onSendLeave();\r\n     bool onStartPress(int priority);\r\n     bool onStopPress();\r\n@@ -98,12 +98,13 @@ public:\r\n     void onExpireTimeout();\r\n     void onGroupReleased(const string& groupId);\r\n \r\n-    bool sendJoin(bool bQuery=false);\r\n+    bool sendJoin(int iQueryType=0);\r\n     PressInfo* createPressInfo(uint8_t button);\r\n     PressInfo* findPressInfo(int requestId);\r\n     void removePressInfo(PressInfo*);\r\n \r\n     const char* stateString();\r\n+    const char* queryTypeString(int iQueryType);\r\n \r\n     void onConnectedDTLS(int connectionId);\r\n     void onReconnectedDTLS(int connectionId);\r\ndiff --git a/GSCPGroupClientSessionController.cpp b/GSCPGroupClientSessionController.cpp\r\nindex 559b80c..8286067 100644\r\n--- a/GSCPGroupClientSessionController.cpp\r\n+++ b/GSCPGroupClientSessionController.cpp\r\n@@ -190,7 +190,7 @@ GSCPGroupClientSessionController::sendJoin(const string& groupId\r\n                                            , const string& userId\r\n                                            , const string& audioAddress\r\n                                            , int audioPort\r\n-                                           , bool bQuery)\r\n+                                           , int iQueryType)\r\n {\r\n     int id = getUserIdMap(userId);\r\n     if (id < 0) {\r\n@@ -200,7 +200,7 @@ GSCPGroupClientSessionController::sendJoin(const string& groupId\r\n         if (m_sessionMap.addWithNumbering(session)) {\r\n             id = session->getKey();\r\n             setUserIdMap(userId,id);\r\n-            bool ret = session->onSendJoin(groupId, audioAddress, audioPort, bQuery);\r\n+            bool ret = session->onSendJoin(groupId, audioAddress, audioPort, iQueryType);\r\n             m_sessionMap.release(session);\r\n             if (ret == false)\r\n                 id = -1;\r\n@@ -214,7 +214,7 @@ GSCPGroupClientSessionController::sendJoin(const string& groupId\r\n     } else {\r\n         GSCPGroupClientSession* session = m_sessionMap.get(id);\r\n         if (session) {\r\n-            bool ret = session->onSendJoin(groupId, audioAddress, audioPort, bQuery);\r\n+            bool ret = session->onSendJoin(groupId, audioAddress, audioPort, iQueryType);\r\n             m_sessionMap.release(session);\r\n             if (ret == false)\r\n                 id = -1;\r\ndiff --git a/GSCPGroupClientSessionController.hxx b/GSCPGroupClientSessionController.hxx\r\nindex 7e58526..a51f19f 100644\r\n--- a/GSCPGroupClientSessionController.hxx\r\n+++ b/GSCPGroupClientSessionController.hxx\r\n@@ -314,7 +314,7 @@ public:\r\n                  , const string& userId\r\n                  , const string& audioAddress\r\n                  , int audioPort\r\n-                 , bool bQuery);\r\n+                 , int iQueryType);\r\n     bool sendLeave(const string& userId);\r\n     bool sendStartPress(const string& userId, int priority);\r\n     bool sendStopPress(const string& userId);\r\ndiff --git a/GSCPGroupServerImpl.cpp b/GSCPGroupServerImpl.cpp\r\nindex d50a1a5..86d1567 100644\r\n--- a/GSCPGroupServerImpl.cpp\r\n+++ b/GSCPGroupServerImpl.cpp\r\n@@ -274,9 +274,9 @@ GSCPGroupServerImpl::receivedJoin(int requestId\r\n                                   , const string& userId\r\n                                   , const string& audioAddress\r\n                                   , int audioPort\r\n-                                  , bool bQuery)\r\n+                                  , int iQueryType)\r\n {\r\n-    m_callback->receivedJoin(requestId, joinId, groupId, userId, audioAddress, audioPort, bQuery);\r\n+    m_callback->receivedJoin(requestId, joinId, groupId, userId, audioAddress, audioPort, iQueryType);\r\n }\r\n \r\n void GSCPGroupServerImpl::expiredJoin(int requestId, const string& groupId, const string& userId)\r\ndiff --git a/GSCPGroupServerImpl.hxx b/GSCPGroupServerImpl.hxx\r\nindex 447c96a..d8cde33 100644\r\n--- a/GSCPGroupServerImpl.hxx\r\n+++ b/GSCPGroupServerImpl.hxx\r\n@@ -93,7 +93,7 @@ public:\r\n                               , const string& userId\r\n                               , const string& audioAddress\r\n                               , int audioPort\r\n-                              , bool bQuery);\r\n+                              , int iQueryType);\r\n     virtual void expiredJoin(int requestId, const string& groupId, const string& userId);\r\n     virtual void receivedLeave(int requestId, const string& groupId, const string& userId);\r\n     virtual void receivedPress(int requestId, const string& groupId, const string& userId,\r\ndiff --git a/GSCPGroupServerInterface.hxx b/GSCPGroupServerInterface.hxx\r\nindex 6eb3dbd..d88d7e2 100644\r\n--- a/GSCPGroupServerInterface.hxx\r\n+++ b/GSCPGroupServerInterface.hxx\r\n@@ -73,8 +73,10 @@ public:\r\n      * @param[in] userId       ユーザID (文字列)\r\n      * @param[in] audioAddress 端末側音声信号アドレス\r\n      * @param[in] audioPort    端末側音声信号ポート番号\r\n-     * @param[in] bQuery true の場合, グループ通信存在確認の JOIN\r\n-     *                   false の場合, 新規 or セッション更新の JOIN\r\n+     * @param[in] iQueryType   値によって以下の処理.\r\n+     *                         0: 新規 or セッション更新の JOIN\r\n+     *                         1: グループ通信存在確認の JOIN\r\n+     *                         2: 通話モニタとしての新規 or セッション更新 JOIN\r\n      */\r\n     virtual void receivedJoin(int requestId\r\n                               , int joinId\r\n@@ -82,7 +84,7 @@ public:\r\n                               , const string& userId\r\n                               , const string& audioAddress\r\n                               , int audioPort\r\n-                              , bool bQuery)=0;\r\n+                              , int iQueryType)=0;\r\n \r\n     /**\r\n      * グループ参加要求(JOIN)のExpire通知\r\ndiff --git a/GSCPGroupServerSession.cpp b/GSCPGroupServerSession.cpp\r\nindex 424f538..38c4b7a 100644\r\n--- a/GSCPGroupServerSession.cpp\r\n+++ b/GSCPGroupServerSession.cpp\r\n@@ -139,9 +139,26 @@ void GSCPGroupServerSession::onReceiveJoinRequest(const GSCPMessage& msg, int re\r\n         return;\r\n     }\r\n     if (notify) {\r\n-        bool bQuery = (type == JoinType_query) ? true : false;\r\n+        int iQueryType = 0;\r\n+        switch (type) {\r\n+        case JoinType_new:\r\n+            iQueryType = 0;\r\n+            break;\r\n+        case JoinType_query:\r\n+            iQueryType = 1;\r\n+            break;\r\n+        case JoinType_monitor:\r\n+            iQueryType = 2;\r\n+            break;\r\n+        case JoinType_refresh:\r\n+            // グループ状態で分岐したい.\r\n+            iQueryType = (m_state == 0) ? 0 : 2;\r\n+            break;\r\n+        default:\r\n+            break;\r\n+        }\r\n         addReceiveMessage(requestId, GSCP_GC_JOIN_ACK);\r\n-        m_controller->receivedJoin(requestId, m_joinId, m_groupId, m_userId, m_remoteAudioAddress, m_remoteAudioPort, bQuery);\r\n+        m_controller->receivedJoin(requestId, m_joinId, m_groupId, m_userId, m_remoteAudioAddress, m_remoteAudioPort, iQueryType);\r\n     } else {\r\n         LOG(LOGGER_LEVEL_DEBUG,"GSCPGroupServerSession::onReceiveJoinRequest. refresh JOIN,"\r\n             " request-id=%d, user-id=[%s]\\n", requestId, m_userId.c_str());\r\ndiff --git a/GSCPGroupServerSession.hxx b/GSCPGroupServerSession.hxx\r\nindex 1f14c9b..626d54c 100644\r\n--- a/GSCPGroupServerSession.hxx\r\n+++ b/GSCPGroupServerSession.hxx\r\n@@ -37,6 +37,7 @@ public:\r\n         GroupServerSession_joined = 2,\r\n         GroupServerSession_leaving = 3,\r\n         GroupServerSession_terminated = 4,\r\n+        GroupServerSession_monitorjoined = 5,\r\n     } GroupServerSessionState;\r\n public:\r\n     GSCPGroupServerSession(const string& userId, GSCPGroupServerSessionController* controller);\r\ndiff --git a/GSCPGroupServerSessionController.cpp b/GSCPGroupServerSessionController.cpp\r\nindex 245fb29..158bbfb 100644\r\n--- a/GSCPGroupServerSessionController.cpp\r\n+++ b/GSCPGroupServerSessionController.cpp\r\n@@ -344,9 +344,9 @@ GSCPGroupServerSessionController::receivedJoin(int requestId\r\n                                                , const string& userId\r\n                                                , const string& audioAddress\r\n                                                , int audioPort\r\n-                                               , bool bQuery)\r\n+                                               , int iQueryType)\r\n {\r\n-    m_callback->receivedJoin(requestId, joinId, groupId, userId, audioAddress, audioPort, bQuery);\r\n+    m_callback->receivedJoin(requestId, joinId, groupId, userId, audioAddress, audioPort, iQueryType);\r\n }\r\n \r\n void GSCPGroupServerSessionController::expiredJoin(int requestId, const string& groupId, const string& userId)\r\ndiff --git a/GSCPGroupServerSessionController.hxx b/GSCPGroupServerSessionController.hxx\r\nindex ddcc4d5..c11df5d 100644\r\n--- a/GSCPGroupServerSessionController.hxx\r\n+++ b/GSCPGroupServerSessionController.hxx\r\n@@ -34,7 +34,7 @@ public:\r\n                               , const string& userId\r\n                               , const string& audioAddress\r\n                               , int audioPort\r\n-                              , bool bQuery)=0;\r\n+                              , int iQueryType)=0;\r\n     virtual void expiredJoin(int requestId, const string& groupId, const string& userId)=0;\r\n     virtual void receivedLeave(int requestId, const string& groupId, const string& userId)=0;\r\n     virtual void receivedPress(int requestId, const string& groupId, const string& userId,\r\n@@ -238,7 +238,7 @@ public:\r\n                       , const string& userId\r\n                       , const string& audioAddress\r\n                       , int audioPort\r\n-                      , bool bQuery);\r\n+                      , int iQueryType);\r\n     void expiredJoin(int requestId, const string& groupId, const string& userId);\r\n     void receivedLeave(int requestId, const string& groupId, const string& userId);\r\n     void receivedPress(int requestId, const string& groupId, const string& userId,\r\n\r\n</pre>	2018-08-02 17:01:16.140559	f
18	5	Issue	5	bQuery 意外とある\r\n\r\n<pre>\r\n$ ag bQuery\r\nGCUserController.hxx\r\n102:            bQuery = false;\r\n110:            bQuery = src.bQuery;\r\n118:        bool bQuery;\r\n141:                            , bool bQuery) = 0;\r\n\r\nGCUser.hxx\r\n239:        bool bQuery;\r\n\r\nGCUser.cpp\r\n190:        , join.mediaIp.c_str(), join.mediaPort, BOOLSTR(join.bQuery));\r\n1448:    user->bQuery = join.bQuery;\r\n1470:        user->ctrl->onJoin(user->joinedGroupId, user->userId, user->bQuery);\r\n\r\nGCUserControllerImpl.cpp\r\n532:                                   , bool bQuery)\r\n535:    putEvent(new JoinEvent(this, userId, tid, sid, groupId, audioAddress, audioPort, bQuery));\r\n832:                             , bool bQuery)\r\n834:    groupCtrl->onUserJoin(groupId, userId, bQuery);\r\n\r\nGCUserControllerImpl.hxx\r\n260:                      , bool bQuery)\r\n267:                join.bQuery = bQuery;\r\n279:            bool bQuery;\r\n951:                                  , bool bQuery);\r\n1046:                            , bool bQuery);\r\n\r\nGCUserToGroupIf.hxx\r\n25:                                , bool bQuery) = 0;\r\n\r\nGroup.cpp\r\n76:Group::onUserJoin(const gcuserid_t& userId, bool bQuery)\r\n81:        , BOOLSTR(bQuery));\r\n82:    return state->onUserJoin(userId, bQuery);\r\n1061:Group::State::onUserJoin(const gcuserid_t& userId, bool bQuery)\r\n1064:        group->enqueue(new UserJoinEvent(userId, bQuery));\r\n1255:Group::StateIdle::onUserJoin(const gcuserid_t& userId, bool bQuery)\r\n1257:    if (bQuery) {\r\n1405:Group::StateJoined::onUserJoin(const gcuserid_t& userId, bool bQuery)\r\n\r\nGroup.hxx\r\n128:        bool onUserJoin(const gcuserid_t& userId, bool bQuery);\r\n265:            virtual bool onUserJoin(const gcuserid_t& userId, bool bQuery);\r\n299:            virtual bool onUserJoin(const gcuserid_t& userId, bool bQuery);\r\n327:            virtual bool onUserJoin(const gcuserid_t& userId, bool bQuery);\r\n393:            UserJoinEvent(const gcuserid_t& userId, bool bQuery) {\r\n395:                this->bQuery = bQuery;\r\n398:            virtual bool run(Group* group) { return group->onUserJoin(userId, bQuery); };\r\n401:            bool bQuery;\r\n\r\nGroupControllerImpl.cpp\r\n402:                                , bool bQuery)\r\n404:    putEvent(new UserJoinEvent(this, groupId, userId, bQuery));\r\n\r\nGroupControllerImpl.hxx\r\n254:                          , bool bQuery)\r\n256:                this->bQuery = bQuery;\r\n260:                return group->onUserJoin(userId, bQuery);\r\n266:            bool bQuery;\r\n647:                                , bool bQuery);\r\n\r\ntest_tools/DummyClientWebAPI.cpp\r\n370:        bool bQuery = false;\r\n373:            bQuery = i->second.get<bool>();\r\n374:        ret = ctrl->gcCtrl->commandJoin(userId, groupId, bQuery, err);\r\n\r\ntest_tools/DummyGCClientCUI.cpp\r\n217:    bool bQuery = false;\r\n219:        bQuery = true;\r\n222:    bool ret = ctrl->commandJoin(userId, groupId, bQuery, errmsg);\r\n\r\ntest_tools/DummyGCClient.hxx\r\n176:                         , bool bQuery\r\n233:                      , bool bQuery=false);\r\n\r\ntest_tools/DummyGCClient.cpp\r\n109:                        , bool bQuery)\r\n111:    gscpCtrl->sendJoin(groupId, userId, addr, port, bQuery);\r\n591:                           , bool bQuery\r\n600:    sendJoin(groupId, userId, mediaLocalHost, client->getLocalPort(), bQuery);\r\n\r\nunit_test/GCUserControllerMock.hxx\r\n41:                                  , bool bQuery));\r\n\r\nunit_test/GCUserTest.cpp\r\n89:    join.bQuery = false;\r\n\r\n</pre>	2018-08-02 17:31:57.027163	f
19	5	Issue	5	対象ファイルは以下にまとめる\r\n\r\nGCUserController.hxx\r\nGCUser.hxx\r\nGCUser.cpp\r\nGCUserControllerImpl.cpp\r\nGCUserControllerImpl.hxx\r\nGCUserToGroupIf.hxx\r\nGroup.cpp\r\nGroup.hxx\r\nGroupControllerImpl.cpp\r\nGroupControllerImpl.hxx\r\n\r\n\r\n\r\n\r\n	2018-08-02 17:37:38.342836	f
20	6	Issue	5	JOIN\r\n<pre>\r\nバージョン（01）JOIN(72) 信号長(002a(42))\r\n=== TLV ===\r\nコマンドシーケンス（01）\r\n情報長(02:固定) コマンドシーケンス番号(1817)\r\nGID: (10)nextgenCL1\r\nUID: ( 8)nextgen1\r\n音声 IP addr: 192.168.198.148\r\n音声 IP port: 2788\r\n暗号キー: (00)\r\nJOIN種別: 通話モニタ\r\n</pre>\r\n↓\r\n<pre>\r\n01 72 00 2a\r\n01\r\n02 12 11\r\n30 0a 6e 65 78 74 67 65 6e 4c 47 31\r\n31 08 6e 65 78 74 67 65 6e 31\r\n07 04\r\nc0 a8 c6 94\r\n08 02\r\n1b 58\r\n0f 00\r\n</pre>	2018-08-06 17:12:08.003035	f
30	11	Issue	5	GSCPからはGSCPGroupServerSessionController::sendPressResponse()より\r\n<pre>\r\nevent->maxTalkTime = maxTalkTime\r\n</pre>\r\nしてる	2018-08-07 15:26:04.057015	f
21	6	Issue	5		2018-08-06 19:25:20.249997	f
22	6	Issue	5	PRS\r\n\r\n<pre>\r\n01 7a 00 1a\r\n0b 02 00 01\r\n30 04 38 38 38 38\r\n31 04 31 30 30 31\r\n0c 01 01\r\n0d 01 07\r\n</pre>	2018-08-06 19:36:44.024041	f
24	6	Issue	5	REG\r\n<pre>\r\n01 70 00 15\r\n01 02 00 01\r\n02 01 02\r\n31 04 31 30 30 31\r\n05 02 0e 10\r\n</pre>	2018-08-07 10:05:12.69501	f
25	8	Issue	5		2018-08-07 10:41:51.287589	f
26	8	Issue	5	ちなみに、lowerTransport が生成されるまで\r\n\r\nDummyLCClient::init()\r\n→GSCPClientImpl::init()\r\n→GSCPTransportController2::initClient()\r\n→GSCPTransportController2::initCommon()\r\n→GSCPTransportController2::initLowerTransport()：ここ\r\n\r\nCA　Failed\r\n\r\nGSCPTransportController2::initClient()\r\n→DTLSClientContext::init()\r\n→DTLSClientContext::setCaCertsFile()	2018-08-07 11:00:19.300122	f
27	8	Issue	5		2018-08-07 11:00:44.263749	f
31	11	Issue	5	Group::startTalking()で通話開始\r\nprsToAllUsers()で通知\r\n\r\nタイマーも開始	2018-08-07 15:28:05.016866	f
23	6	Issue	5	通話モニタ用の試したいJOINはこれだと思う\r\n\r\n<pre>\r\n01 72 00 23\r\n01 02 00 01\r\n30 04 38 38 38 38\r\n31 04 31 30 30 31\r\n07 04 c0 a8 c2 44\r\n08 02 1b 58\r\n0f 00\r\n16 01 03\r\n</pre>\r\n\r\n暗号化キー（0x0f）じゃなくて、SessionIDじゃない？(0x32)\r\n\r\n<pre>\r\n01 72 00 25\r\n01 02 00 01\r\n30 04 38 38 38 38\r\n31 04 31 30 30 31\r\n07 04 c0 a8 c2 44\r\n08 02 1b 58\r\n32 02 00 01\r\n16 01 03\r\n</pre>	2018-08-06 19:45:33.231184	f
28	11	Issue	5	Group.hxx 内の init() で　maxTalkingTime を設定している。\r\n\r\nGroupControllerImpl::GroupMap::create()で init() を呼んでいる。\r\n渡す値はgroupData->maxTalkingTimeとなっている。\r\n<pre><code class="cpp">\r\nGCGroupData* groupData = (GCGroupData*)data;\r\n</pre>	2018-08-07 14:59:53.105479	f
32	12	Issue	5	Group::gnotToAllUsers()\r\nctrl->userGroupNotify()\r\nGroupControllerImpl::userGroupNotify()\r\n	2018-08-07 15:59:01.79654	f
33	10	Issue	5	GSCPGroupServerSession.cppで処理\r\nGSCPGroupServerSessionController::receivedJoin()\r\nGSCPGroupServerSessionUser::receivedJoin()\r\n\r\nでアプリケーション（SG）レイヤーに通知\r\n※callback　setCallback(GSCPGroupServerSessionUser* cb)でset	2018-08-07 16:12:15.691712	f
34	13	Issue	5		2018-08-10 12:55:30.728288	f
35	13	Issue	5	python前提\r\n\r\nbinary変換はbinasciiを使う\r\n\r\nDTLSは以下のモジュールを使う\r\n<pre><code class="python">\r\nimport ssl\r\nfrom socket import socket, AF_INET, SOCK_DGRAM\r\nfrom dtls import do_patch\r\n</pre>	2018-08-10 12:57:34.280058	f
36	13	Issue	5	規定クラスで長さ、値、\r\n敬称先でオーバーライドする。\r\n\r\nこんな感じ\r\n<pre><code class="python">\r\nclass TLVBase(object):\r\n    __init__(self, code, value):\r\n    self.code = code\r\n    self.value = value\r\n    self.length = self.getLen(value)\r\n\r\n    def getLen(v):\r\n        return v\r\n\r\n    def getCode():\r\n        return self.code\r\n\r\n    def getVal():\r\n        return self.value\r\n\r\n    def getLen():\r\n        return self.length\r\n</pre>\r\n	2018-08-10 14:00:12.58989	f
37	15	Issue	5		2018-08-20 15:05:32.201745	f
38	15	Issue	5		2018-08-20 15:07:58.742357	f
39	16	Issue	5		2018-08-21 19:06:15.033964	f
40	16	Issue	5		2018-08-21 19:08:20.950353	f
41	16	Issue	5		2018-08-21 22:12:41.188233	f
42	16	Issue	5		2018-08-21 22:29:46.63424	f
43	16	Issue	5	\r\n<pre><code class="python">\r\n#!/usr/bin/python\r\n\r\ndef so(file):\r\n    users, lgroups, wgroups= readSoFile(file)\r\n    lSoUsers, lSoLGroups, lWGroups = getSOData()\r\n\r\n    # check insert or not\r\n    for user in user:\r\n        for old in lSoUser:\r\n            bFind = false\r\n            if user[userid] == old[userid] and user[id2] == old[id2]:\r\n                bFind = true\r\n        if not bFind:\r\n            setInsertList(user)\r\n\r\n    # check update or not.\r\n    for user in users:\r\n        for old in lSoUsers:\r\n            if user[userid] == old[userid] \\\r\n                and user[id2] == old[id2]:\r\n                print "exist %s" % user[userid]\r\n                if user[pass] != old[pass]: \r\n                    print "need update %s, pass:%s->%s." % (user[userid],old[pass],user[pass])\r\n                    setUpdateUser(user)\r\n                break;\r\n\r\n    # check delete or not.\r\n\r\n\r\ndef main():\r\n    files = glob.glob('*.')\r\n    for file in files:\r\n        so(file)\r\n\r\n\r\n</pre>	2018-08-21 22:54:13.301291	f
44	16	Issue	5	これで一発じゃねーか。\r\n\r\n<pre><code class="python">\r\n\r\n# user.\r\ndef test(old, new):\r\n    # update\r\n    co = set(old) & set(new)\r\n    for key in co:\r\n        updateUser(new[key])\r\n    # delete\r\n    df = set(old) - set(new)\r\n    for key in df:\r\n        delete(old[key])\r\n    # insert\r\n    ad = set(new) - set(old)\r\n    for key in ad:\r\n        insertUser(new[new])\r\n\r\n# group.\r\ndef test_group(oldG, newG, oldM, newM):\r\n    # update\r\n    co = set(oldG) & set(newG)\r\n    for gid in co:\r\n        updatemem(gid, oldG[gid].bWired, oldM[gid], newM[gid])\r\n        updateGroup(newG[gid])\r\n    # delete\r\n    df = set(oldG) - set(newG)\r\n    for gid in df:\r\n        for mem in list(oldM[gid]):\r\n            delmem(gid, oldG[gid], mem)\r\n        deleteGroup(oldG[gid])\r\n    # insert\r\n    ad = set(newG) - set(oldG)\r\n    for gid in ad:\r\n        insertGroup(newG[gid])\r\n        for mem in list(oldM[gid]):\r\n            addmem(gid, newG[gid], mem)\r\n\r\n# member of lgroup and wgroup.\r\ndef updatemem(gid, bWired, old_mems, new_mems):\r\n\r\n    df = old_mems - new_mems\r\n    ad = new_mems - old_mems\r\n\r\n    for mem in df:\r\n        delmem(gid, bWired, mem)\r\n    for user in ad:\r\n        addmem(gid, bWired, mem)\r\n\r\ndef insertUser(user):\r\n    print "USR,INS,%s,%s" % (user.userid, user.passwd)\r\n\r\ndef updateUser(user):\r\n    print "USR,UPD,%s,%s" % (user.userid, user.passwd)\r\n\r\ndef deleteUser(user):\r\n    print "USR,DEL,%s" % (user.userid)\r\n\r\ndef insertGroup(group):\r\n    print "GRP,INS,%s,%s,%s,%s,%s" % (group.gid, group.toAreaString(), group.maxTalkingTime, group.baseid, group.toWiredString())\r\n\r\ndef updateGroup(group)\r\n    print "GRP,UPD,%s,%s" % (group.gid, group.maxTalkingTime)\r\n\r\ndef deleteGroup(group)\r\n    print "GRP,DEL,%s" % (group.gid)\r\n\r\ndef addmem(gid, bWired, mem):\r\n    print buildMemStr(gid, bWired, true, mem)\r\n\r\ndef delmem(gid, bWired, mem):\r\n    print buildMemStr(gid, bWired, false, mem)\r\n\r\ndef buildMemStr(gid, bWired, bAdd, mem):\r\n    rStr = str("")\r\n    rStr += "WGRP_GRP" if bWired else "LGRP_MEM"\r\n    rStr += ","\r\n    rStr += "INS" if bAdd else "DEL"\r\n    rStr += ","\r\n    rStr += "%s,%s" % (gid,mem.key)\r\n    return rStr\r\n\r\n</pre>	2018-08-22 21:41:51.064428	f
45	10	Issue	5	終わり	2018-09-18 10:20:48.411345	f
46	12	Issue	5	終わり	2018-09-18 10:21:00.158839	f
47	11	Issue	5	終わり	2018-09-18 10:21:10.38217	f
48	5	Issue	5		2018-09-18 10:23:56.355273	f
49	4	Issue	5		2018-09-18 10:24:04.996403	f
50	4	Issue	5	結局enum にした	2018-09-18 10:24:19.079402	f
51	7	Issue	5		2018-09-18 10:34:38.108073	f
52	7	Issue	5	nxs_ptt_sg にある setReplicator() は以下のソースにある。\r\n* CCControllerImpl.cpp\r\n* CCUControllerImpl.cpp\r\n* CryptoKeyManagerImpl.cpp\r\n* GCService.cpp\r\n* GCUserControllerImpl.cpp\r\n* GroupControllerImpl.cpp\r\n* LCService.cpp\r\n* LCUserControllerImpl.cpp\r\n* PeerSiteControllerImpl.cpp\r\n* PttSg.cpp\r\n\r\n対応必要かどうかはソースから確認する。	2018-09-18 10:37:55.097337	f
53	7	Issue	5	藤原 公平 wrote:\r\n> nxs_ptt_sg にある setReplicator() は以下のソースにある。\r\n> * CCControllerImpl.cpp\r\n> * CCUControllerImpl.cpp\r\n> * CryptoKeyManagerImpl.cpp\r\n> * GCService.cpp\r\n> * GCUserControllerImpl.cpp\r\n> * GroupControllerImpl.cpp\r\n> * LCService.cpp\r\n> * LCUserControllerImpl.cpp\r\n> * PeerSiteControllerImpl.cpp\r\n> * PttSg.cpp\r\n> \r\n> 対応必要かどうかはソースから確認する。\r\n\r\nPttSg, -CryptoKeyManagerImpl- 以外はターゲットをレジストしているだけの様子	2018-09-18 10:52:38.244373	f
54	7	Issue	5	関数名が違う.\r\n\r\nnxs_rpc::LockMapReplicator::TargetCallback の関数ヘッダーの説明も違う.	2018-09-18 14:44:16.700125	f
55	7	Issue	5		2018-09-18 15:22:07.994991	f
56	7	Issue	5	register target 名は以下\r\n* DATA_NAME_CC\r\nCCControllerImpl\r\n* DATA_NAME_CCU\r\nCCUControllerImpl\r\n* DATA_NAME_SRTPKEY\r\nCryptoKeyManagerImpl\r\n* DATA_NAME_GCUSERDTLSINFO\r\nGCUserControllerImpl\r\n* DATA_NAME_GROUP\r\nsetReplicator\r\n* DATA_NAME_LCUSERDTLSINFO\r\nLCUserControllerImpl::DTLSReplicator\r\n* DATA_NAME_PEERSITE\r\nsetReplicator\r\n\r\nGCService は条件分岐や	2018-09-18 15:33:05.681011	f
57	7	Issue	5		2018-09-18 17:25:02.084269	f
58	7	Issue	5	ExecutorService \r\n<pre>\r\n../nxs_ptt_sg/CCControllerImpl.hxx:        nxs_util::ScheduledExecutorService* executor;\r\n../nxs_ptt_sg/CCUControllerImpl.hxx:        nxs_util::ExecutorService* executor;\r\n../nxs_ptt_sg/CCUTransactionImpl.hxx:        ScheduledExecutorService* executor;\r\n../nxs_ptt_sg/DummyGCClient.hxx:        ExecutorService* executor;\r\n../nxs_ptt_sg/DummyLCClient.hxx:        ExecutorService* executor;\r\n../nxs_ptt_sg/GCUserControllerImpl.hxx:        nxs_util::ScheduledExecutorService* executor;\r\n../nxs_ptt_sg/GroupControllerImpl.hxx:        nxs_util::ScheduledExecutorService* executor;\r\n../nxs_ptt_sg/LCUserControllerImpl.hxx:        nxs_util::ScheduledExecutorService* executor;\r\n../nxs_ptt_sg/MGManagerImpl.hxx:            nxs_util::ExecutorService* executor;\r\n../nxs_ptt_sg/MgLostPIC.hxx:        nxs_util::ScheduledExecutorService* m_pExecutor;\r\n../nxs_ptt_sg/PeerSiteControllerImpl.hxx:        nxs_util::ScheduledExecutorService* executor;\r\n\r\n</pre>	2018-09-20 11:53:40.760749	f
59	7	Issue	5	* LCService.hxx\r\nCCControllerImpl ccCtrl\r\nLCUserControllerImpl lcUserCtrl\r\nCCUControllerImpl ccuCtrl\r\nCCUTransportImpl tc\r\n\r\n* GCService\r\nGCUserControllerImpl userCtrl\r\nGroupControllerImpl groupCtrl\r\nPeerSiteControllerImpl peerSiteCtrl	2018-09-20 19:01:49.7693	f
60	7	Issue	5	DTLSReplicatorに関しては、そもそも追従は不要\r\n\r\nDTLS情報をコピーするための機能だったようだが、コピーするための関数が呼び出されてない。\r\n\r\nI/Fだけが存在する残骸なので、削除する。	2018-09-28 15:45:03.961441	f
78	23	Issue	5		2018-11-22 13:33:58.243541	f
61	7	Issue	5	削除対象は以下\r\n\r\n* クラス\r\n** GCUserControllerImpl::DTLSReplicator\r\n** LCUserControllerImpl::DTLSReplicator\r\n\r\n* 関数\r\n** ptt_sg\r\n*** GCUserControllerImpl\r\n**** updatedTermination()\r\n**** removedTermination()\r\n**** updatedSession()\r\n**** removedSession()\r\n*** LCUserControllerImpl\r\n**** updatedTermination()\r\n**** removedTermination()\r\n** ptt_gscp\r\n*** GSCPServerInterface\r\n**** updatedTermination()\r\n**** removedTermination()\r\n*** GSCPGroupServerInterface\r\n**** updatedTermination()\r\n**** removedTermination()\r\n**** updatedSession()\r\n**** removedSession()	2018-09-28 15:49:59.683746	f
62	17	Issue	5		2018-09-28 17:28:24.967162	f
63	18	Issue	5		2018-10-02 02:42:18.036023	f
64	19	Issue	5		2018-10-18 08:46:51.780283	f
65	19	Issue	5		2018-10-18 08:56:06.92601	f
79	23	Issue	5		2018-11-22 13:37:38.28494	f
80	23	Issue	5		2018-11-22 13:43:21.07943	f
66	18	Issue	5	GSCPGroupRegistrantController::sendRegister()から\r\n別スレッドを起動してRegisterを送信\r\n\r\nGSCPTransportController2::Connection::onEventTimeout() でTimeoutイベントを実行.\r\nこの時、GSCPTransportError code にTransportError_DTLSConnectionLostを設定している。\r\n※TransportError_DTLSHandshakeTimeout　がenum 定義されてるが、これじゃないのか\r\n\r\nGSCPGroupRegistrantController::transportError()で\r\n\r\nGSCPGroupRegistrantController::onTransportError()　あたりでGSCPTransportErrorの値を評価していて、\r\n* TransportError_DTLSHandshakeTimeout\r\n* TransportError_DTLSHandshakeFailure\r\nE_DTLS_HANDSHAKE\r\n* TransportError_DTLSConnectionLost\r\nE_TRANSPORT\r\n* TransportError_WrongMessage\r\nE_BAD_ATTRIBUTE\r\n* others\r\nE_INTERNAL_CONFLICT	2018-10-31 10:26:20.966783	f
67	3	Issue	5		2018-11-02 18:09:46.378149	f
68	3	Issue	5		2018-11-02 18:27:26.941797	f
69	20	Issue	5		2018-11-04 23:58:46.821859	f
70	21	Issue	5		2018-11-06 12:04:14.236558	f
71	23	Issue	5		2018-11-06 14:03:33.127586	f
72	23	Issue	5		2018-11-06 14:29:42.160936	f
73	23	Issue	5		2018-11-06 14:41:33.475001	f
74	23	Issue	5		2018-11-06 14:46:35.414986	f
75	23	Issue	5		2018-11-06 14:47:59.243032	f
76	24	Issue	5		2018-11-15 18:11:51.253249	f
77	23	Issue	5		2018-11-22 13:26:11.008782	f
81	23	Issue	5		2018-11-22 13:45:15.415613	f
82	25	Issue	5		2018-11-22 14:16:18.043967	f
83	27	Issue	5		2018-11-28 17:39:29.867294	f
84	27	Issue	5	quill を使おうかな。と思ったが、 scalikejdbc を使えという事らしい。	2018-11-28 17:39:55.998829	f
85	3	Issue	5		2018-12-13 13:47:46.567419	f
86	3	Issue	5		2018-12-13 13:49:05.403807	f
87	3	Issue	5		2018-12-13 13:50:11.739284	f
88	3	Issue	5		2018-12-13 13:51:06.126248	f
89	28	Issue	5	startTimerTx()をUserId毎に開始・停止できるようにする。\r\nstartTimerTx(void), stopTimerTx(void)　自体は GroupImpl->Group で定義された関数をオーバーライドしているので、\r\nそっちの編集から必要\r\n\r\n-Group内の userMap から、UserId をキーに user を特定し、各User毎にTimerTxの開始・停止を設定する-\r\nGroup class には user に関連する情報も操作権限もない。\r\nなので、GroupController（ctrl） を介して、userController（userCtrl） から user にアクセスする。	2018-12-18 14:05:15.918957	f
90	28	Issue	5	藤原 公平 wrote:\r\n> -Group内の userMap から、UserId をキーに user を特定し、各User毎にTimerTxの開始・停止を設定する-\r\n> Group class には user に関連する情報も操作権限もない。\r\n> なので、GroupController（ctrl） を介して、userController（userCtrl） から user にアクセスする。\r\n\r\nPRS 送信の管理は peerSite, Group 間の問題なので、Group内で管理しないとだめ？\r\nその場合は map<userId, Timer> で管理していくしかない	2018-12-18 15:22:06.418191	f
102	32	Issue	5		2019-01-18 20:06:33.94257	f
103	32	Issue	5	書くならここか？\r\n<pre>\r\nCSenApplication::process_forwardHuntResult()\r\n</pre>	2019-01-18 20:18:37.825319	f
91	28	Issue	5	* User 毎に PeerSite の Press 管理するために\r\n受信したPRSv ACKと元のPRSを紐づけるキーがない\r\n\r\n管理中のプレスキュー：userId, priority, on/off, bPeer\r\n\r\n* パターン1\r\nGSCPの改修あり\r\nプレスシーケンスと紐づけられれば一番良いが\r\nリクエストIDをつけて、それと紐づける？\r\n期間：1週間ちょいくらい？\r\n\r\n* パターン2\r\nGroup毎で受信するリクエストは1つだけ。の前提で,ユーザーIDのチェックする\r\n同一ユーザーから連続して異なるシーケンス番号のPRSを受信すると、\r\n同じ条件とは限らなくなる\r\n期間：1週間くらい\r\n\r\n* パターン3\r\nPeerSiteに対して\r\nGroupControllerImpl::peerPressOn()\r\n→PeerSiteControllerImpl::pressOn()\r\n→ new PressOnEvent()\r\n→PeerSite::onGroupPressOn()\r\n→PeerSiteControllerImpl::sendPressOn()\r\n あたりで （無条件？group 毎？に） lock する？ \r\n\r\n\r\n→GSCPGroupServerExchangeInterface→GSCPGroupServerExchangeImpl::sendPress()\r\n→GSCPTransactionController::sendRequest()\r\n→GSCPClientTransaction::onSendRequest()\r\n→GSCPClientTransaction::sendMessage()	2018-12-20 12:45:09.020629	f
92	29	Issue	5		2018-12-21 11:32:39.391077	f
93	32	Issue	5		2019-01-17 15:40:36.738231	f
94	33	Issue	5		2019-01-17 15:56:13.993431	f
104	32	Issue	5	同報ハントとシーケンシャルハントは通るルートが異なるらしい\r\n<pre>\r\nprocess_forkingHuntResult()\r\n</pre>	2019-01-18 20:26:58.258951	f
95	33	Issue	5	発側は CSenApplication::findUser() で callInfo.origUser の設定をする。\r\nなので、ここをいじらないといけない。\r\nそれかオプションフラッグに追加されることを前提にする？\r\n\r\n独自ヘッダー案：\r\nRecord-Info: enterprise=XXX, userId=YYY	2019-01-17 18:08:09.310419	f
96	33	Issue	5	INVITE にはのった。なので、これでよさそう。\r\n<pre>\r\n[2019/01/17 22:10:16.494] DBG < INVITE sip:01paif111002@192.168.28.88:5102 SIP/2.0\r\n[2019/01/17 22:10:16.494] DBG < Via: SIP/2.0/UDP 192.168.194.93:5060;branch=z9hG4bKKzDWpJ9x\r\n[2019/01/17 22:10:16.494] DBG < From: "tel_displayname_1001" <sip:tel_subscriber_1001@192.168.194.93:5060>;tag=ef0d8418\r\n[2019/01/17 22:10:16.494] DBG < To: <sip:rewrite_01paif111002@192.168.194.93:5060>\r\n[2019/01/17 22:10:16.494] DBG < Call-ID: 2000--_6b8b4567\r\n[2019/01/17 22:10:16.494] DBG < CSeq: 412427398 INVITE\r\n[2019/01/17 22:10:16.494] DBG < Max-Forwards: 70\r\n[2019/01/17 22:10:16.494] DBG < Contact: <sip:CSEN@192.168.194.93:5060>\r\n[2019/01/17 22:10:16.494] DBG < Logging-Info: userId=01paif111001,enterprise=c1k1\r\n[2019/01/17 22:10:16.494] DBG < Content-Length: 0\r\n[2019/01/17 22:10:16.494] DBG <\r\n</pre>\r\n\r\n200 OKのせるには要検討（どうやってレスポンスへのヘッダー設定するか、そもそも謎）	2019-01-17 22:12:12.919241	f
97	33	Issue	5		2019-01-18 14:36:35.719901	f
99	33	Issue	5		2019-01-18 18:12:53.313031	f
100	33	Issue	5		2019-01-18 18:13:52.972056	f
101	33	Issue	5		2019-01-18 18:16:14.93422	f
98	33	Issue	5	着側は以下の流れを通して200OK返す\r\nB2BData::onInviteConfirmed()\r\n...\r\nCSenForwardCallScenario::onInviteConfirmed()\r\n...\r\nCSenB2BData::setHeaderList()\r\n\r\nこのタイミングでヘッダーを設定できれば着側に独自ヘッダーの設定可能	2019-01-18 14:43:41.027881	f
105	32	Issue	5	俺はやらなくてよくなった	2019-01-30 13:26:46.079997	f
106	31	Issue	5		2019-01-30 13:34:01.305842	f
107	31	Issue	5		2019-01-30 13:50:37.546367	f
108	31	Issue	5		2019-01-30 13:56:10.635516	f
109	31	Issue	5		2019-01-30 13:59:49.056641	f
110	31	Issue	5		2019-01-30 14:06:22.705865	f
111	31	Issue	5		2019-01-30 14:11:37.700662	f
112	31	Issue	5		2019-01-30 14:32:50.034481	f
113	31	Issue	5		2019-01-30 14:45:22.920169	f
114	31	Issue	5		2019-01-30 14:45:41.033067	f
115	34	Issue	5	SSL_new(SSL_CTX *ctx)が NULL 足りえる場合\r\n* ctx: NULL\r\n* ctx->method\r\n* SSL の malloc()失敗\r\n\r\n	2019-02-06 13:11:49.088471	f
116	29	Issue	5		2019-02-06 15:44:59.294939	f
117	28	Issue	5		2019-02-06 15:49:34.55676	f
118	28	Issue	5		2019-02-06 15:49:40.654998	f
119	31	Issue	5		2019-02-06 15:52:17.834664	f
120	31	Issue	5		2019-02-07 10:16:12.137896	f
121	31	Issue	5		2019-02-07 12:55:21.749527	f
122	31	Issue	5	DB　追加\r\n\r\n<pre>\r\nCREATE TABLE user_scfw_plan (\r\n    user_id                        varchar(32),\r\n    index                          integer,\r\n    action                         integer,\r\n    forwarding_addr                varchar(32),\r\n    forwarding_announcement_index  integer,\r\n    forwarding_ivr_index           integer,\r\n    forwarding_failure_treatment   integer\r\n\r\n);\r\n\r\nALTER TABLE ONLY user_scfw_plan \r\n    ADD CONSTRAINT user_scfw_plan_fkey FOREIGN KEY (user_id) REFERENCES user_data(user_id) ON UPDATE CASCADE ON DELETE CASCADE;\r\n<pre>\r\n\r\nscfw テーブルへの user_action 列を追加\r\n<pre>\r\nALTER TABLE scfw_plan ADD COLUMN default_action int;\r\n</pre>	2019-02-07 13:11:49.861578	f
123	31	Issue	5	ユーザーアクション用データ生成\r\n\r\n追加\r\n<pre>\r\nINSERT INTO user_scfw_plan (\r\n    user_id,\r\n    index,\r\n    action,\r\n    forwarding_addr,\r\n    forwarding_announcement_index,\r\n    forwarding_ivr_index,\r\n    forwarding_failure_treatment\r\n) VALUES (\r\n    '01paif111002',\r\n    1,\r\n    3,\r\n    '00501003',0,0,0\r\n);\r\n</pre>\r\n\r\n更新1\r\n<pre>\r\nUPDATE user_scfw_plan \r\nSET\r\n    forwarding_addr = '00501005'\r\nWHERE\r\n    user_id = '01paif111002';\r\n</pre>\r\n\r\n更新2\r\n<pre>\r\nUPDATE user_scfw_plan \r\nSET\r\n    action = 6\r\nWHERE\r\n    user_id = '01paif111002';\r\n</pre>\r\n\r\nSCFW本体の変更\r\n※ ユーザーアクション1にする場合\r\n<pre>\r\nUPDATE scfw_plan\r\nSET\r\n    action = 7\r\nWHERE\r\n    scfw_index = 2;\r\n</pre>\r\n\r\n※CFB にする場合\r\n<pre>\r\nUPDATE scfw_plan\r\nSET\r\n    action = 3\r\nWHERE\r\n    scfw_index = 2;\r\n</pre>\r\n	2019-02-07 13:23:36.887656	f
124	31	Issue	5		2019-02-07 13:27:45.145646	f
\.


--
-- Name: journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('journals_id_seq', 124, true);


--
-- Data for Name: member_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY member_roles (id, member_id, role_id, inherited_from) FROM stdin;
1	1	3	\N
2	1	4	\N
\.


--
-- Name: member_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('member_roles_id_seq', 2, true);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY members (id, user_id, project_id, created_on, mail_notification) FROM stdin;
1	5	1	2018-07-31 19:44:50.596022	f
\.


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('members_id_seq', 1, true);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY messages (id, board_id, parent_id, subject, content, author_id, replies_count, last_reply_id, created_on, updated_on, locked, sticky) FROM stdin;
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('messages_id_seq', 1, false);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY news (id, project_id, title, summary, description, author_id, created_on, comments_count) FROM stdin;
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('news_id_seq', 1, false);


--
-- Data for Name: open_id_authentication_associations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY open_id_authentication_associations (id, issued, lifetime, handle, assoc_type, server_url, secret) FROM stdin;
\.


--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('open_id_authentication_associations_id_seq', 1, false);


--
-- Data for Name: open_id_authentication_nonces; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY open_id_authentication_nonces (id, "timestamp", server_url, salt) FROM stdin;
\.


--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('open_id_authentication_nonces_id_seq', 1, false);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY projects (id, name, description, homepage, is_public, parent_id, created_on, updated_on, identifier, status, lft, rgt, inherit_members, default_version_id, default_assigned_to_id) FROM stdin;
2	B5000			t	\N	2018-07-31 20:10:19.01654	2018-07-31 20:10:19.01654	b5000	1	1	2	f	\N	\N
3	PTT			t	\N	2018-07-31 20:10:31.604935	2018-07-31 20:10:31.604935	ptt	1	9	10	f	\N	\N
5	Golang	HTTPサーバーをつくろう		t	\N	2018-11-06 12:00:23.770248	2018-11-06 12:00:23.770248	golang	1	7	8	f	\N	\N
6	Docker			t	\N	2018-11-22 14:13:32.941996	2018-11-22 14:13:32.941996	docker	1	5	6	f	\N	\N
1	基本技術	興味のわいたトピックを扱う		t	\N	2018-07-31 19:42:43.246059	2018-07-31 19:46:15.608965	technique	1	15	16	f	\N	\N
4	snippet	仕事の開発		t	\N	2018-08-01 22:32:25.092223	2018-08-01 22:32:25.092223	snippet	1	13	14	f	\N	\N
7	Scala			t	\N	2018-11-28 17:36:32.138454	2018-11-28 17:36:32.138454	scala	1	11	12	f	\N	\N
8	CSEN			t	\N	2019-01-17 15:28:30.945113	2019-01-17 15:28:30.945113	csen	1	3	4	f	\N	\N
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('projects_id_seq', 8, true);


--
-- Data for Name: projects_trackers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY projects_trackers (project_id, tracker_id) FROM stdin;
1	1
1	2
1	3
2	1
2	2
2	3
3	1
3	2
3	3
4	1
4	2
4	3
5	1
5	2
5	3
6	1
6	2
6	3
7	1
7	2
7	3
8	1
8	2
8	3
\.


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY queries (id, project_id, name, filters, user_id, column_names, sort_criteria, group_by, type, visibility, options) FROM stdin;
\.


--
-- Name: queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('queries_id_seq', 1, false);


--
-- Data for Name: queries_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY queries_roles (query_id, role_id) FROM stdin;
\.


--
-- Data for Name: repositories; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY repositories (id, project_id, url, login, password, root_url, type, path_encoding, log_encoding, extra_info, identifier, is_default, created_on) FROM stdin;
\.


--
-- Name: repositories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('repositories_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY roles (id, name, "position", assignable, builtin, permissions, issues_visibility, users_visibility, time_entries_visibility, all_roles_managed, settings) FROM stdin;
3	管理者	1	t	0	---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :view_issues\n- :add_issues\n- :edit_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_categories\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :view_news\n- :manage_news\n- :comment_news\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :manage_boards\n- :view_calendar\n- :view_gantt\n	all	all	all	t	\N
4	開発者	2	t	0	---\n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :view_private_notes\n- :set_notes_private\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n	default	all	all	t	\N
1	Non member	0	t	1	---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default	all	all	t	\N
2	Anonymous	0	t	2	---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default	all	all	t	\N
5	報告者	5	t	0	---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default	all	all	t	\N
6	検証者	3	t	0	---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n	default	all	all	t	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: '1'\n  add_issues: '1'\n  edit_issues: '1'\n  add_issue_notes: '1'\n  delete_issues: '1'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n
7	運用者	4	t	0	---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n	default	all	all	t	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: '1'\n  add_issues: '1'\n  edit_issues: '1'\n  add_issue_notes: '1'\n  delete_issues: '1'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('roles_id_seq', 7, true);


--
-- Data for Name: roles_managed_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY roles_managed_roles (role_id, managed_role_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY schema_migrations (version) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
20090214190337
20090312172426
20090312194159
20090318181151
20090323224724
20090401221305
20090401231134
20090403001910
20090406161854
20090425161243
20090503121501
20090503121505
20090503121510
20090614091200
20090704172350
20090704172355
20090704172358
20091010093521
20091017212227
20091017212457
20091017212644
20091017212938
20091017213027
20091017213113
20091017213151
20091017213228
20091017213257
20091017213332
20091017213444
20091017213536
20091017213642
20091017213716
20091017213757
20091017213835
20091017213910
20091017214015
20091017214107
20091017214136
20091017214236
20091017214308
20091017214336
20091017214406
20091017214440
20091017214519
20091017214611
20091017214644
20091017214720
20091017214750
20091025163651
20091108092559
20091114105931
20091123212029
20091205124427
20091220183509
20091220183727
20091220184736
20091225164732
20091227112908
20100129193402
20100129193813
20100221100219
20100313132032
20100313171051
20100705164950
20100819172912
20101104182107
20101107130441
20101114115114
20101114115359
20110220160626
20110223180944
20110223180953
20110224000000
20110226120112
20110226120132
20110227125750
20110228000000
20110228000100
20110401192910
20110408103312
20110412065600
20110511000000
20110902000000
20111201201315
20120115143024
20120115143100
20120115143126
20120127174243
20120205111326
20120223110929
20120301153455
20120422150750
20120705074331
20120707064544
20120714122000
20120714122100
20120714122200
20120731164049
20120930112914
20121026002032
20121026003537
20121209123234
20121209123358
20121213084931
20130110122628
20130201184705
20130202090625
20130207175206
20130207181455
20130215073721
20130215111127
20130215111141
20130217094251
20130602092539
20130710182539
20130713104233
20130713111657
20130729070143
20130911193200
20131004113137
20131005100610
20131124175346
20131210180802
20131214094309
20131215104612
20131218183023
20140228130325
20140903143914
20140920094058
20141029181752
20141029181824
20141109112308
20141122124142
20150113194759
20150113211532
20150113213922
20150113213955
20150208105930
20150510083747
20150525103953
20150526183158
20150528084820
20150528092912
20150528093249
20150725112753
20150730122707
20150730122735
20150921204850
20150921210243
20151020182334
20151020182731
20151021184614
20151021185456
20151021190616
20151024082034
20151025072118
20151031095005
20160404080304
20160416072926
20160529063352
20161001122012
20161002133421
20161010081301
20161010081528
20161010081600
20161126094932
20161220091118
20170207050700
20170302015225
20170309214320
20170320051650
20170418090031
20170419144536
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY settings (id, name, value, updated_on) FROM stdin;
1	rest_api_enabled	1	2018-07-31 19:52:58.799471
2	jsonp_enabled	1	2018-07-31 19:52:58.816949
3	mail_from	redmine@example.net	2018-07-31 19:53:34.797297
4	bcc_recipients	0	2018-07-31 19:53:34.811361
5	plain_text_mail	0	2018-07-31 19:53:34.81834
6	default_notification_option	only_my_events	2018-07-31 19:53:34.82387
7	notified_events	---\n- issue_added\n- issue_updated\n	2018-07-31 19:53:34.83816
8	emails_header		2018-07-31 19:53:34.843937
9	emails_footer	You have received this notification because you have either subscribed to it, or are involved in it.\r\nTo change your notification preferences, please click here: http://hostname/my/account	2018-07-31 19:53:34.849469
10	enabled_scm	---\n- Subversion\n- Git\n	2018-07-31 19:53:57.37382
11	autofetch_changesets	1	2018-07-31 19:53:57.380008
12	sys_api_enabled	0	2018-07-31 19:53:57.384229
13	repository_log_display_limit	100	2018-07-31 19:53:57.389155
14	commit_logs_formatting	1	2018-07-31 19:53:57.393272
15	commit_ref_keywords	refs,references,IssueID	2018-07-31 19:53:57.405673
16	commit_cross_project_ref	0	2018-07-31 19:53:57.410397
17	commit_logtime_enabled	0	2018-07-31 19:53:57.41459
18	commit_update_keywords	--- []\n	2018-07-31 19:53:57.428278
20	default_language	en	2018-07-31 20:42:41.468739
21	force_default_language_for_anonymous	0	2018-07-31 20:42:41.473838
22	force_default_language_for_loggedin	0	2018-07-31 20:42:41.478947
23	start_of_week		2018-07-31 20:42:41.48376
24	date_format		2018-07-31 20:42:41.489386
25	time_format		2018-07-31 20:42:41.49418
26	timespan_format	decimal	2018-07-31 20:42:41.499032
27	user_format	lastname_firstname	2018-07-31 20:42:41.503942
28	gravatar_enabled	1	2018-07-31 20:42:41.508904
29	gravatar_default		2018-07-31 20:42:41.514509
30	thumbnails_enabled	0	2018-07-31 20:42:41.519399
31	thumbnails_size	100	2018-07-31 20:42:41.524263
32	new_item_menu_tab	2	2018-07-31 20:42:41.529229
19	ui_theme		2018-07-31 20:42:57.010309
\.


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('settings_id_seq', 32, true);


--
-- Data for Name: time_entries; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY time_entries (id, project_id, user_id, issue_id, hours, comments, activity_id, spent_on, tyear, tmonth, tweek, created_on, updated_on) FROM stdin;
\.


--
-- Name: time_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('time_entries_id_seq', 1, false);


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY tokens (id, user_id, action, value, created_on, updated_on) FROM stdin;
14	5	session	3fc64de1d32833d1b4d04840958093a395a77089	2018-10-31 10:24:03.093927	2018-10-31 15:55:02.065704
19	5	session	aeb328332603b83d90cc545f9cc896b5422f35c7	2018-11-28 15:00:00.703232	2018-11-29 15:34:51.233452
4	5	feeds	7aa31e19bd27312515ec11b151279f05a5297403	2018-07-30 01:53:27.402964	2018-07-30 01:53:27.402964
15	5	session	a825d172225244ec8391d1d3ce3f81002c72ba9d	2018-10-31 16:59:26.192807	2018-10-31 17:00:06.571607
20	5	session	9dab0db531cc96100b9947f8f46d4590836850af	2018-12-13 13:12:52.7358	2018-12-21 11:32:39.457917
18	5	session	8a9fcd37e0451050a47a57987ee3429a23885984	2018-11-22 13:24:39.991521	2018-11-22 14:16:18.086742
16	5	session	61386bc6410a87341f6969d3cc1efa2c51c488ca	2018-11-01 18:54:46.465037	2018-11-06 14:47:59.31388
13	5	session	4d437686c9a3f51e5178224c53c8eeba4f7494ef	2018-10-18 06:57:10.696216	2018-10-18 08:56:06.991774
21	5	session	1992d439081945da95c08b1b4dbe46d88ea7a7f3	2019-01-17 15:28:01.050387	2019-01-18 20:26:58.321274
17	5	session	026be968b382a70cb11f4ad8b8430951dd2ff068	2018-11-15 17:42:21.375934	2018-11-15 18:11:51.314094
22	5	session	2e3a0e01fe18ccab23ce78d3a0aac7e141ea19f3	2019-01-30 13:26:28.552472	2019-02-08 13:06:03.161086
\.


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('tokens_id_seq', 22, true);


--
-- Data for Name: trackers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY trackers (id, name, is_in_chlog, "position", is_in_roadmap, fields_bits, default_status_id) FROM stdin;
1	バグ	t	1	f	0	1
2	機能	t	2	t	0	1
3	サポート	f	3	f	0	1
\.


--
-- Name: trackers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('trackers_id_seq', 3, true);


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY user_preferences (id, user_id, others, hide_mail, time_zone) FROM stdin;
1	1	---\n:no_self_notified: true\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n	t	
2	5	---\n:no_self_notified: '1'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: '1'\n:textarea_font: ''\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n	t	
\.


--
-- Name: user_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('user_preferences_id_seq', 2, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY users (id, login, hashed_password, firstname, lastname, admin, status, last_login_on, language, auth_source_id, created_on, updated_on, type, identity_url, mail_notification, salt, must_change_passwd, passwd_changed_on) FROM stdin;
2				Anonymous users	f	1	\N		\N	2018-07-30 01:17:42.16536	2018-07-30 01:17:42.16536	GroupAnonymous	\N		\N	f	\N
3				Non member users	f	1	\N		\N	2018-07-30 01:17:42.189861	2018-07-30 01:17:42.189861	GroupNonMember	\N		\N	f	\N
4				Anonymous	f	0	\N		\N	2018-07-30 01:48:05.512063	2018-07-30 01:48:05.512063	AnonymousUser	\N	only_my_events	\N	f	\N
1	admin	f75feba914a10b5cedf9842314647fe3b79f726c	Redmine	Admin	t	3	2018-07-30 01:48:26.937596		\N	2018-07-30 01:17:33.09397	2018-07-31 19:52:07.709387	User	\N	all	a63fcf437cdb930c14bce4f9e20439db	f	2018-07-30 01:48:58
5	fujiwara	18644db4b6aa2325625488178896b49efddc710b	公平	藤原	t	1	2019-01-30 13:26:28.530718	ja	\N	2018-07-30 01:50:33.516047	2018-07-31 20:41:26.902906	User	\N	only_my_events	4d87b6d1a935140883322e57c0e2205a	f	2018-07-30 01:50:33
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('users_id_seq', 5, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY versions (id, project_id, name, description, effective_date, created_on, updated_on, wiki_page_title, status, sharing) FROM stdin;
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('versions_id_seq', 1, false);


--
-- Data for Name: watchers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY watchers (id, watchable_type, watchable_id, user_id) FROM stdin;
\.


--
-- Name: watchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('watchers_id_seq', 1, false);


--
-- Data for Name: wiki_content_versions; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_content_versions (id, wiki_content_id, page_id, author_id, data, compression, comments, updated_on, version) FROM stdin;
1	1	1	5	\\x68312e204e7873207074742067736370206a6e69e381aee38393e383abe383890d0a0d0a7b7b544f437d7d0d0a0d0a68322e20e79baee79a840d0a0d0ae9a091e5bcb5e381a3e381a66e78735f7074745f677363705f6a6e6920e3829220616e64726f69642073747564696f20e381a7e38393e383abe38389e38199e3828b2e0d0a0d0a68322e20e792b0e5a2830d0a0d0a68332e20e38390e383bce382b8e383a7e383b3e4be9de5ad980d0a0d0a7c5f2e20e38397e383ade38380e382afe383887c5f2e20e38390e383bce382b8e383a7e383b37c5f2e20e79086e794b17c0d0a7c4f537c5562756e74752d31372e30327c43656e746f7320e381a0e381a8e383a9e382a4e38396e383a9e383aae3818ce58fa4e3818fe381a6e38393e383abe38389e381a7e3818de381aae38184e38289e38197e381847c0d0a7c416e64726f69642053747564696f7c332e312e337c323031382f30382f3031e381a7e69c80e696b07c0d0a7c416e64726f69642053444b7c7c7c0d0a7c416e64726f6964204e444b7c72313563207ce696b0e38197e38199e3818ee3828be381a8e38393e383abe38389e3818ce381a7e3818de381aae381847c0d0a7c4a6176617c312e382e305f3135327ce381aae38293e3818be381a4e38184e381a6e3819fe38284e381a47c0d0a7c4f70656e53534c7c312e302e326f7ce38397e383ade382b8e382a7e382afe38388e381a7e6b1bae381bee381a3e3819f7c0d0a0d0a68332e20e5bf85e8a681e381aae380803372642070617274790d0a0d0a2a206769740d0a2a20474e55206d616b6520284f70656e53534c20e381aee382b3e383b3e38391e382a4e383abe381abe5bf85e794a8290d0a2a206261736820284f70656e53534c20e381aee382b3e383b3e38391e382a4e383abe381abe5bf85e794a8290d0a2a205065726c20284f70656e53534c20e381aee382b3e383b3e38391e382a4e383abe381abe5bf85e794a8290d0a2a207767657420284f70656e53534c20e381aee382b3e383b3e38391e382a4e383abe381abe5bf85e8a681290d0a0d0a68322e20e382a4e383b3e382b9e38388e383bce383ab0d0a0d0a68332e20e6b581e3828c0d0a0d0a4f5320e382a4e383b3e382b9e38388e383bce383abe381bee381a7e381afe7b582e3828fe381a3e381a6e38184e3828be38282e381aee381a8e38199e3828b2e0d0a0d0a2320416e64726f696453747564696f20e5b08ee585a50d0a2320414e64726f6964204e444b20e5b08ee585a50d0a0d0a68332e20312e20416e64726f696453747564696f20e5b08ee585a50d0a0d0ae585ace5bc8fe382b5e382a4e38388e3818be38289e38380e382a6e383b3e383ade383bce38389e38081e382bbe38383e38386e382a3e383b3e382b00d0a0d0a68332e20322e204e444b20e382a4e383b3e382b9e38388e383bce383ab0d0a0d0a4e444be38292e38380e382a6e383b3e383ade383bce38389e38199e3828be5a0b4e59088e38081e4bba5e4b88be3818be38289e58f96e5be97e381a7e3818de3828b0d0a68747470733a2f2f646576656c6f7065722e616e64726f69642e636f6d2f6e646b2f646f776e6c6f6164732f0d0a0d0ae58fa4e38184e381aee3818ce5bf85e8a681e381abe381aae3828be381aee381a7e38081e4bba5e4b88be381aee382a2e383bce382abe382a4e38396e3818be38289e58f96e5be970d0a68747470733a2f2f646576656c6f7065722e616e64726f69642e636f6d2f6e646b2f646f776e6c6f6164732f6f6c6465725f72656c65617365730d0a0d0a68332e203372645f706172747920e381aee382a4e383b3e382b9e38388e383bce383ab0d0a0d0ae99da2e58092e381aae381aee381a7e3838de38383e38388e382a4e383b3e382b9e38388e383bce383abe38199e3828b2e0d0a0d0a3c7072653e0d0a24207375646f206170742d67657420696e7374616c6c202d79207065726c2077676574206d616b650d0a3c2f7072653e			2018-08-01 22:55:49.987093	1
\.


--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_content_versions_id_seq', 1, true);


--
-- Data for Name: wiki_contents; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_contents (id, page_id, author_id, text, comments, updated_on, version) FROM stdin;
1	1	5	h1. Nxs ptt gscp jniのビルド\r\n\r\n{{TOC}}\r\n\r\nh2. 目的\r\n\r\n頑張ってnxs_ptt_gscp_jni を android studio でビルドする.\r\n\r\nh2. 環境\r\n\r\nh3. バージョン依存\r\n\r\n|_. プロダクト|_. バージョン|_. 理由|\r\n|OS|Ubuntu-17.02|Centos だとライブラリが古くてビルドできないらしい|\r\n|Android Studio|3.1.3|2018/08/01で最新|\r\n|Android SDK|||\r\n|Android NDK|r15c |新しすぎるとビルドができない|\r\n|Java|1.8.0_152|なんかついてたやつ|\r\n|OpenSSL|1.0.2o|プロジェクトで決まった|\r\n\r\nh3. 必要な　3rd party\r\n\r\n* git\r\n* GNU make (OpenSSL のコンパイルに必用)\r\n* bash (OpenSSL のコンパイルに必用)\r\n* Perl (OpenSSL のコンパイルに必用)\r\n* wget (OpenSSL のコンパイルに必要)\r\n\r\nh2. インストール\r\n\r\nh3. 流れ\r\n\r\nOS インストールまでは終わっているものとする.\r\n\r\n# AndroidStudio 導入\r\n# ANdroid NDK 導入\r\n\r\nh3. 1. AndroidStudio 導入\r\n\r\n公式サイトからダウンロード、セッティング\r\n\r\nh3. 2. NDK インストール\r\n\r\nNDKをダウンロードする場合、以下から取得できる\r\nhttps://developer.android.com/ndk/downloads/\r\n\r\n古いのが必要になるので、以下のアーカイブから取得\r\nhttps://developer.android.com/ndk/downloads/older_releases\r\n\r\nh3. 3rd_party のインストール\r\n\r\n面倒なのでネットインストールする.\r\n\r\n<pre>\r\n$ sudo apt-get install -y perl wget make\r\n</pre>		2018-08-01 22:55:49.987093	1
\.


--
-- Name: wiki_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_contents_id_seq', 1, true);


--
-- Data for Name: wiki_pages; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_pages (id, wiki_id, title, created_on, protected, parent_id) FROM stdin;
1	4	Nxs_ptt_gscp_jniのビルド	2018-08-01 22:55:49.982811	f	\N
\.


--
-- Name: wiki_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_pages_id_seq', 1, true);


--
-- Data for Name: wiki_redirects; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_redirects (id, wiki_id, title, redirects_to, created_on, redirects_to_wiki_id) FROM stdin;
\.


--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_redirects_id_seq', 1, false);


--
-- Data for Name: wikis; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wikis (id, project_id, start_page, status) FROM stdin;
1	1	Wiki	1
2	2	Wiki	1
3	3	Wiki	1
4	4	Wiki	1
5	5	Wiki	1
6	6	Wiki	1
7	7	Wiki	1
8	8	Wiki	1
\.


--
-- Name: wikis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wikis_id_seq', 8, true);


--
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY workflows (id, tracker_id, old_status_id, new_status_id, role_id, assignee, author, type, field_name, rule) FROM stdin;
145	1	0	1	4	f	f	WorkflowTransition	\N	\N
2	1	1	3	3	f	f	WorkflowTransition	\N	\N
146	2	0	1	4	f	f	WorkflowTransition	\N	\N
5	1	1	6	3	f	f	WorkflowTransition	\N	\N
147	3	0	1	4	f	f	WorkflowTransition	\N	\N
14	1	3	5	3	f	f	WorkflowTransition	\N	\N
15	1	3	6	3	f	f	WorkflowTransition	\N	\N
25	1	5	6	3	f	f	WorkflowTransition	\N	\N
30	1	6	5	3	f	f	WorkflowTransition	\N	\N
35	2	1	6	3	f	f	WorkflowTransition	\N	\N
44	2	3	5	3	f	f	WorkflowTransition	\N	\N
45	2	3	6	3	f	f	WorkflowTransition	\N	\N
55	2	5	6	3	f	f	WorkflowTransition	\N	\N
65	3	1	6	3	f	f	WorkflowTransition	\N	\N
74	3	3	5	3	f	f	WorkflowTransition	\N	\N
75	3	3	6	3	f	f	WorkflowTransition	\N	\N
85	3	5	6	3	f	f	WorkflowTransition	\N	\N
92	1	1	3	4	f	f	WorkflowTransition	\N	\N
94	1	1	5	4	f	f	WorkflowTransition	\N	\N
148	1	0	1	3	f	f	WorkflowTransition	\N	\N
149	1	0	7	3	f	f	WorkflowTransition	\N	\N
100	1	3	5	4	f	f	WorkflowTransition	\N	\N
150	1	1	7	3	f	f	WorkflowTransition	\N	\N
151	1	7	3	3	f	f	WorkflowTransition	\N	\N
152	1	7	6	3	f	f	WorkflowTransition	\N	\N
153	1	3	7	3	f	f	WorkflowTransition	\N	\N
105	2	1	3	4	f	f	WorkflowTransition	\N	\N
154	1	5	7	3	f	f	WorkflowTransition	\N	\N
107	2	1	5	4	f	f	WorkflowTransition	\N	\N
155	1	5	8	3	f	f	WorkflowTransition	\N	\N
156	1	6	7	3	f	f	WorkflowTransition	\N	\N
157	1	6	8	3	f	f	WorkflowTransition	\N	\N
158	1	8	7	3	f	f	WorkflowTransition	\N	\N
159	2	0	1	3	f	f	WorkflowTransition	\N	\N
113	2	3	5	4	f	f	WorkflowTransition	\N	\N
160	3	0	1	3	f	f	WorkflowTransition	\N	\N
161	2	0	7	3	f	f	WorkflowTransition	\N	\N
162	3	0	7	3	f	f	WorkflowTransition	\N	\N
163	2	1	7	3	f	f	WorkflowTransition	\N	\N
118	3	1	3	4	f	f	WorkflowTransition	\N	\N
164	3	1	7	3	f	f	WorkflowTransition	\N	\N
120	3	1	5	4	f	f	WorkflowTransition	\N	\N
165	2	7	3	3	f	f	WorkflowTransition	\N	\N
166	3	7	3	3	f	f	WorkflowTransition	\N	\N
167	2	7	5	3	f	f	WorkflowTransition	\N	\N
168	3	7	5	3	f	f	WorkflowTransition	\N	\N
169	2	7	6	3	f	f	WorkflowTransition	\N	\N
126	3	3	5	4	f	f	WorkflowTransition	\N	\N
170	3	7	6	3	f	f	WorkflowTransition	\N	\N
171	2	7	8	3	f	f	WorkflowTransition	\N	\N
172	3	7	8	3	f	f	WorkflowTransition	\N	\N
130	1	1	5	5	f	f	WorkflowTransition	\N	\N
173	2	5	7	3	f	f	WorkflowTransition	\N	\N
132	1	3	5	5	f	f	WorkflowTransition	\N	\N
174	3	5	7	3	f	f	WorkflowTransition	\N	\N
175	2	5	8	3	f	f	WorkflowTransition	\N	\N
135	2	1	5	5	f	f	WorkflowTransition	\N	\N
176	3	5	8	3	f	f	WorkflowTransition	\N	\N
137	2	3	5	5	f	f	WorkflowTransition	\N	\N
177	2	6	7	3	f	f	WorkflowTransition	\N	\N
178	3	6	7	3	f	f	WorkflowTransition	\N	\N
140	3	1	5	5	f	f	WorkflowTransition	\N	\N
179	2	6	8	3	f	f	WorkflowTransition	\N	\N
142	3	3	5	5	f	f	WorkflowTransition	\N	\N
180	3	6	8	3	f	f	WorkflowTransition	\N	\N
181	2	8	7	3	f	f	WorkflowTransition	\N	\N
182	3	8	7	3	f	f	WorkflowTransition	\N	\N
183	2	8	5	3	f	f	WorkflowTransition	\N	\N
184	3	8	5	3	f	f	WorkflowTransition	\N	\N
\.


--
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('workflows_id_seq', 184, true);


--
-- PostgreSQL database dump complete
--

