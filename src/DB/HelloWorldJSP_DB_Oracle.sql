--------------------------------------------------------
--  File created - Wednesday-February-12-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USER_ACCOUNT
--------------------------------------------------------

  CREATE TABLE "DEMO"."USER_ACCOUNT" 
   (	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"ADDRESS" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER
--------------------------------------------------------

  CREATE TABLE "DEMO"."USER" 
   (	"NAME" VARCHAR2(100 BYTE), 
	"PASS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SERVERINFO
--------------------------------------------------------

  CREATE TABLE "DEMO"."SERVERINFO" 
   (	"OSTYPE" VARCHAR2(20 BYTE), 
	"HOSTNAME" VARCHAR2(25 BYTE), 
	"LOGININFO" VARCHAR2(50 BYTE), 
	"UNICAVERSION" VARCHAR2(100 BYTE), 
	"UNICAPATH" VARCHAR2(500 BYTE), 
	"WASVERSION" VARCHAR2(100 BYTE), 
	"WASPATH" VARCHAR2(500 BYTE), 
	"UNICAURL" VARCHAR2(1000 BYTE), 
	"WASURL" VARCHAR2(1000 BYTE), 
	"OTHERINFO" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTEOS
--------------------------------------------------------

  CREATE TABLE "DEMO"."PRODUCTEOS" 
   (	"PRODUCTFAMLIY" VARCHAR2(100 BYTE), 
	"PRODUCTNAME" VARCHAR2(100 BYTE), 
	"EOS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERINFO
--------------------------------------------------------

  CREATE TABLE "DEMO"."CUSTOMERINFO" 
   (	"NAME" VARCHAR2(100 BYTE), 
	"ENV_TYPE" VARCHAR2(50 BYTE), 
	"OS" VARCHAR2(100 BYTE), 
	"OSVERSION" VARCHAR2(20 BYTE), 
	"UNICA_VERSION" VARCHAR2(100 BYTE), 
	"APPSERVER" VARCHAR2(100 BYTE), 
	"APPSERVERVERSION" VARCHAR2(50 BYTE), 
	"SYS_DB" VARCHAR2(100 BYTE), 
	"SYSDBVERSION" VARCHAR2(50 BYTE), 
	"USER_DB" VARCHAR2(100 BYTE), 
	"HOTFIXES" VARCHAR2(250 BYTE), 
	"LOCALE" VARCHAR2(20 BYTE), 
	"INTEGRATIONS" VARCHAR2(100 BYTE), 
	"BROWSERS" VARCHAR2(250 BYTE), 
	"EXCEPTIONAPPROVAL" VARCHAR2(500 BYTE), 
	"SUPPORTEXT" VARCHAR2(250 BYTE), 
	"REGION" VARCHAR2(20 BYTE), 
	"CREATEDATE" TIMESTAMP (6), 
	"UNICAPRODUCTS" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER_METADATA
--------------------------------------------------------

  CREATE TABLE "DEMO"."CUSTOMER_METADATA" 
   (	"OSTYPE" VARCHAR2(50 BYTE), 
	"SYSTEMDB" VARCHAR2(50 BYTE), 
	"APPSERVER" VARCHAR2(50 BYTE), 
	"ENVTYPE" VARCHAR2(20 BYTE), 
	"REGION" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DEMO.USER_ACCOUNT
SET DEFINE OFF;
Insert into DEMO.USER_ACCOUNT (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,ADDRESS) values ('vunnams','suresh','sureshvu','saipeta','pune');
Insert into DEMO.USER_ACCOUNT (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,ADDRESS) values ('vunnams','suresh','sureshvu','saipeta','pune');
Insert into DEMO.USER_ACCOUNT (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,ADDRESS) values ('vunnam','suresh','vunnams','saipeta','saipeta');
Insert into DEMO.USER_ACCOUNT (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,ADDRESS) values ('vunnam','suresh','vunnams','saipeta','saipeta');
Insert into DEMO.USER_ACCOUNT (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,ADDRESS) values ('suresh','vunnam','suresh','saipeta111','Hyderabad');
REM INSERTING into DEMO."USER"
SET DEFINE OFF;
REM INSERTING into DEMO.SERVERINFO
SET DEFINE OFF;
Insert into DEMO.SERVERINFO (OSTYPE,HOSTNAME,LOGININFO,UNICAVERSION,UNICAPATH,WASVERSION,WASPATH,UNICAURL,WASURL,OTHERINFO) values ('WINDOWS','win2k','sureshvu/password','vv10.1, v11.1','C://HCL/Unica10','WWAs v855 WebLogin 10','C:/WAS','http://win2k:9080/unica','hhttp:win2k:9060/ibm/console http://win2k:7001/console','Nothing');
Insert into DEMO.SERVERINFO (OSTYPE,HOSTNAME,LOGININFO,UNICAVERSION,UNICAPATH,WASVERSION,WASPATH,UNICAURL,WASURL,OTHERINFO) values (null,null,null,null,null,null,null,null,null,null);
Insert into DEMO.SERVERINFO (OSTYPE,HOSTNAME,LOGININFO,UNICAVERSION,UNICAPATH,WASVERSION,WASPATH,UNICAURL,WASURL,OTHERINFO) values ('WINDOWS','win2k12','administrator password','v9.1
v10.1
v11.1','C:/HCL','WAS v8557','C:/WAS','http://win2k12.in.ibm.om:9080/unica','http://win2k12.in.ibm.com:9060/ibm/console','Cognos integrated');
Insert into DEMO.SERVERINFO (OSTYPE,HOSTNAME,LOGININFO,UNICAVERSION,UNICAPATH,WASVERSION,WASPATH,UNICAURL,WASURL,OTHERINFO) values ('AIX','lpar240','root / unica123','v11.1.0.2','//opt/HCL/HCL111','WAS v8.5.5.14','/opt/IBM/WAS','https://lpar240/unica','hhttp://lpar240:9060/ibm/console','IBMHTTPServer configured');
REM INSERTING into DEMO.PRODUCTEOS
SET DEFINE OFF;
Insert into DEMO.PRODUCTEOS (PRODUCTFAMLIY,PRODUCTNAME,EOS) values ('Unica','v91','End of 2020');
Insert into DEMO.PRODUCTEOS (PRODUCTFAMLIY,PRODUCTNAME,EOS) values ('Unica','v912','End of 2020');
Insert into DEMO.PRODUCTEOS (PRODUCTFAMLIY,PRODUCTNAME,EOS) values ('Unica','v10.0','End of 2021');
REM INSERTING into DEMO.CUSTOMERINFO
SET DEFINE OFF;
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('AVP ONLY Credit Agricole Technologies','PRODUCTION','LINUX','v6.7','v10.1.0.1','WAS','Not Added','DB2','v10.5.0.8','Oracle','Fix Request 298000, Fix Request 29751, Fix Request 282624, Fix Request 282865, Defect HMA-282755, Fix request 282737, Fix Request 282865, Fix Request 283158, Fix Request 285292, Fix Request 288805, Fix Request 289862','ddsfdsf','sdfnj','fvj','nvfn','fvv','EMEA',to_timestamp('05-02-20 10:48:19.211000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('Trinity Solutions','PRODUCTION','LINUX','7','v10.1','WAS','8.5.5.14','ORACLE','12.1.0.2',null,null,null,null,null,null,null,'EMEA',to_timestamp('28-01-20 01:03:29.859000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign,Interact');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('test',null,null,'2012 12345','v1112345',null,'8.5.5.1412345',null,'12.1.0.212345','Teradata12345','Hotfix1212345','India','Cognos, Engage, SPSS 12345',null,'Exception 12 12345','!234 12345','APAC',to_timestamp('28-01-20 03:59:44.917000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Interact,Plan');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appServer','appserverversion','sys_db','sysdbversion','user_db','hotfixes','locale','integrations','browser','exceptionapproval','supportext',to_timestamp('29-12-19 11:26:44.644000000 AM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appServer','appserverversion','sys_db','sysdbversion','user_db','hotfixes','locale','integrations','browser','exceptionapproval','supportext',to_timestamp('29-12-19 12:08:05.167000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appserver','appserverversion','systemdb','sysdbversion','user_db','hotfixes','locale','integrations','browsers','exceptionapproval','supportext',to_timestamp('29-12-19 12:16:48.485000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appServer','appserverversion','sys_db','sysdbversion','user_db','hotfixes','locale','integrations','browser','exceptionapproval','supportext',to_timestamp('29-12-19 12:23:03.933000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appServer','appserverversion','sys_db','sysdbversion','user_db','hotfixes','locale','integrations','browser','exceptionapproval','supportext',to_timestamp('29-12-19 12:28:05.497000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('United Healthcare Services, Inc.','DEV','LINUX','Not Added','v10.1.0.2','WAS','Not Added','ORACLE','Not Added','Oracle',null,null,null,null,null,null,'EMEA',to_timestamp('03-01-20 09:10:47.301000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appServer','appserverversion','sys_db','sysdbversion','user_db','hotfixes','locale','integrations','browser','exceptionapproval','supportext',to_timestamp('07-01-20 03:06:36.365000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('vunnam1','PRODUCTION','AIX','7','v9.1',null,'v855',null,'10.5','DB2','Hotfix1','nsd','Cognos, Engage, SPSS','Chrome','Exception 1','!234','APAC',to_timestamp('29-01-20 10:34:15.907000000 AM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign,Optimize');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('Test1',null,null,'2020','v9.1.2',null,'v855',null,'11gR2','Teradata','Hotfix1','India','Cognos',null,'Exception 12','123','APAC',to_timestamp('29-01-20 08:26:30.936000000 AM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign,Optimize,Plan');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('vunnam',null,null,'7.3 64bit','v9.1.2',null,'9.1.1.1',null,'2020','Hive 10','Hotfix12345','India','Cognos 10.2',null,'Exception 12 12345','1235678','APAC',to_timestamp('29-01-20 08:34:52.480000000 AM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('as','PRODUCTION','WINDOWS','2012','nkjdnfkjn','WEBLOGIC','9.0','SQL SERVER','10.5',null,null,null,null,null,null,null,'EMEA',to_timestamp('29-12-19 12:17:56.105000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),null);
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','envtype','ostype','osversion','unica','unica_version','appserver','appserverversion','systemdb','sysdbversion','user_db','hotfixes','locale','integrations','browsers','exceptionapproval','supportext',to_timestamp('29-12-19 12:25:33.933000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('British Telecommunications Plc Xsp','Others','LINUX','Not Added','v10','WEBLOGIC','v12.1.3','ORACLE','v12.1.0.2','Oracle',null,null,null,null,null,null,'EMEA',to_timestamp('29-01-20 10:43:30.335000000 AM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','envtype','ostype','osversion','unica','unica_version','appserver','appserverversion','systemdb','sysdbversion','user_db','hotfixes','locale','integrations','browsers','exceptionapproval','supportext',to_timestamp('28-01-20 03:48:18.877000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('Suresh Vunnam',null,null,'2012','Campaign,Optimize,UMO v11.1.0.2','WEBLOGIC','9.0',null,'10.5','Teradata','otfix1','India','Cognos 10.2',null,null,'123','APAC',null,null);
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica','unica_version','appserver','appserverversion','systemdb','sysdbversion','user_db','hotfixes','locale','integrations','browsers','exceptionapproval','supportext',null,'region');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('Suresh Vunnam1','Others','CentOS','2017','v9.1','WEBLOGIC','9.0','SQL SERVER','10.5',null,null,null,null,null,null,null,'EMEA',to_timestamp('29-12-19 12:10:19.645000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),null);
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('name','env_type','os','osversion','unica_version','appServer','appserverversion','sys_db','sysdbversion','user_db','hotfixes','locale','integrations','browser','exceptionapproval','supportext','region',to_timestamp('30-12-19 12:51:09.787000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'unica');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('Trinity Solutions','STAGING','LINUX','x','v11.0.1','WAS','v8.5.5.13','ORACLE','12c',null,null,null,'WCA, LDAP',null,null,null,'EMEA',to_timestamp('03-01-20 09:07:17.782000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('Ereteam',null,'LINUX','x','v9.1.2','WEBLOGIC','v12.1.3','ORACLE','NA',null,null,null,null,null,null,null,'EMEA',to_timestamp('03-01-20 09:09:15.395000000 PM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign');
Insert into DEMO.CUSTOMERINFO (NAME,ENV_TYPE,OS,OSVERSION,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE,UNICAPRODUCTS) values ('vunnams2','PRODUCTION','WINDOWS','2012 SP2','v9.1.2','WEBLOGIC','9.1.1.1','ORACLE','12.1.0.2 STAGE','DB2','Campaign9.1.1_fix1','India','Cognos, Engage, SPSS','Chrome, Firefox','Exception 12 12345','v86 support ext','APAC',to_timestamp('29-01-20 11:17:51.023000000 AM','DD-MM-RR HH12:MI:SSXFF AM'),'Platform,Campaign,Optimize,Plan,UDM');
REM INSERTING into DEMO.CUSTOMER_METADATA
SET DEFINE OFF;
Insert into DEMO.CUSTOMER_METADATA (OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION) values ('WINDOWS','ORACLE','WAS','PRODUCTION','APAC');
Insert into DEMO.CUSTOMER_METADATA (OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION) values ('AIX','SQL SERVER','WEBLOGIC','STAGING','EMEA');
Insert into DEMO.CUSTOMER_METADATA (OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION) values ('LINUX','DB2','TOMCAT','DEV','NA');
Insert into DEMO.CUSTOMER_METADATA (OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION) values ('CentOS','Other','JBOSS','Others',null);
