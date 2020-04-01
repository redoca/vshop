-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: vshop
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0\'com.ruoyi.project.monitor.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0\nL\0	beginTimeq\0~\0	L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0	dataScopeq\0~\0	L\0endTimeq\0~\0	L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xppt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpppt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0\'com.ruoyi.project.monitor.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0\nL\0	beginTimeq\0~\0	L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0	dataScopeq\0~\0	L\0endTimeq\0~\0	L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xppt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpppt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0\'com.ruoyi.project.monitor.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0\nL\0	beginTimeq\0~\0	L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0	dataScopeq\0~\0	L\0endTimeq\0~\0	L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xppt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpppt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler','wanghuandeMacBook-Pro.local1585710259934',1585726045733,15000);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1585710260000,-1,5,'PAUSED','CRON',1585710260000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1585710270000,-1,5,'PAUSED','CRON',1585710260000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1585710260000,-1,5,'PAUSED','CRON',1585710260000,0,NULL,2,'');
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (2,'v_category','商品类目 ','VCategory','tree','com.ruoyi.project.shop','shop','category','商品类目','wanghuan','{\"treeCode\":\"category_id\",\"treeName\":\"name\",\"treeParentCode\":\"parent_id\"}','admin','2020-03-30 06:17:32','','2020-03-30 06:24:17',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (9,'2','category_id','商品类目ID','bigint(20)','Long','categoryId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(10,'2','parent_id','父ID','bigint(20)','Long','parentId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(11,'2','name','类目名称','varchar(128)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(12,'2','status','状态 1启用,-1禁用','tinyint(1)','Integer','status','0','0','1','1','1','1','1','EQ','radio','status',4,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(13,'2','order_num','排序号','int(11)','Long','orderNum','0','0','1','1','1','1','1','EQ','input','',5,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(14,'2','icon','图标地址','varchar(1024)','String','icon','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(15,'2','list_style','列表样式','smallint(6)','Integer','listStyle','0','0',NULL,'1','1','1','1','EQ','radio','',7,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17'),(16,'2','mark','备注信息','varchar(512)','String','mark','0','0',NULL,'1','1','1','1','EQ','textarea','',8,'admin','2020-03-30 06:17:32','','2020-03-30 06:24:17');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-yellow','Y','admin','2018-03-16 11:33:00','admin','2020-04-01 06:01:16','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-light','Y','admin','2018-03-16 11:33:00','admin','2020-04-01 06:01:58','深色主题theme-dark，浅色主题theme-light');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(100,0,'启用','1','status',NULL,NULL,'N','0','admin','2020-03-30 06:21:33','',NULL,NULL),(101,0,'禁用','-1','status',NULL,NULL,'N','0','admin','2020-03-30 06:21:42','',NULL,NULL),(102,3,'大图','2','shop_list_style',NULL,NULL,'N','0','admin','2020-04-01 05:32:03','admin','2020-04-01 05:44:28',NULL),(103,2,'小图','1','shop_list_style',NULL,NULL,'N','0','admin','2020-04-01 05:34:09','admin','2020-04-01 05:44:13',NULL),(104,1,'详细列表','0','shop_list_style',NULL,NULL,'N','0','admin','2020-04-01 05:34:18','admin','2020-04-01 05:44:10',NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表'),(100,'商品类目状态','status','0','admin','2020-03-30 06:21:04','admin','2020-03-30 06:21:16',NULL),(101,'商品类目列表样式','shop_list_style','0','admin','2020-04-01 05:31:40','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-03-27 08:01:20'),(101,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-03-30 06:15:28'),(102,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-03-30 07:50:24'),(103,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-03-31 07:15:09'),(104,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-04-01 01:40:50'),(105,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-04-01 05:30:33'),(106,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','退出成功','2020-04-01 06:02:56'),(107,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-04-01 06:03:05');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,1,'M','0','','system','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,1,'M','0','','monitor','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'tool',NULL,1,'M','0','','tool','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(4,'官网',0,4,'http://ruoyi.vip',NULL,0,'M','1','','guide','admin','2018-03-16 11:33:00','admin','2020-04-01 05:57:49','若依官网地址'),(100,'用户管理',1,1,'user','system/user/index',1,'C','0','system:user:list','user','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index',1,'C','0','system:role:list','peoples','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index',1,'C','0','system:menu:list','tree-table','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index',1,'C','0','system:dept:list','tree','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index',1,'C','0','system:post:list','post','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index',1,'C','0','system:dict:list','dict','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index',1,'C','0','system:config:list','edit','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index',1,'C','0','system:notice:list','message','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),(108,'日志管理',1,9,'log','system/log/index',1,'M','0','','log','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index',1,'C','0','monitor:online:list','online','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index',1,'C','0','monitor:job:list','job','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index',1,'C','0','monitor:druid:list','druid','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index',1,'C','0','monitor:server:list','server','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'build','tool/build/index',1,'C','0','tool:build:list','build','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'gen','tool/gen/index',1,'C','0','tool:gen:list','code','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'swagger','tool/swagger/index',1,'C','0','tool:swagger:list','swagger','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index',1,'C','0','monitor:operlog:list','form','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,'C','0','monitor:logininfor:list','logininfor','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1001,'用户查询',100,1,'','',1,'F','0','system:user:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户新增',100,2,'','',1,'F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户修改',100,3,'','',1,'F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户删除',100,4,'','',1,'F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导出',100,5,'','',1,'F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'用户导入',100,6,'','',1,'F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'重置密码',100,7,'','',1,'F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色查询',101,1,'','',1,'F','0','system:role:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色新增',101,2,'','',1,'F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色修改',101,3,'','',1,'F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色删除',101,4,'','',1,'F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'角色导出',101,5,'','',1,'F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单查询',102,1,'','',1,'F','0','system:menu:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单新增',102,2,'','',1,'F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单修改',102,3,'','',1,'F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'菜单删除',102,4,'','',1,'F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门查询',103,1,'','',1,'F','0','system:dept:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门新增',103,2,'','',1,'F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门修改',103,3,'','',1,'F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'部门删除',103,4,'','',1,'F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位查询',104,1,'','',1,'F','0','system:post:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位新增',104,2,'','',1,'F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位修改',104,3,'','',1,'F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位删除',104,4,'','',1,'F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'岗位导出',104,5,'','',1,'F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典查询',105,1,'#','',1,'F','0','system:dict:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典新增',105,2,'#','',1,'F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典修改',105,3,'#','',1,'F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典删除',105,4,'#','',1,'F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'字典导出',105,5,'#','',1,'F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数查询',106,1,'#','',1,'F','0','system:config:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数新增',106,2,'#','',1,'F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数修改',106,3,'#','',1,'F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数删除',106,4,'#','',1,'F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'参数导出',106,5,'#','',1,'F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告查询',107,1,'#','',1,'F','0','system:notice:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告新增',107,2,'#','',1,'F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告修改',107,3,'#','',1,'F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'公告删除',107,4,'#','',1,'F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作查询',500,1,'#','',1,'F','0','monitor:operlog:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'操作删除',500,2,'#','',1,'F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','',1,'F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','',1,'F','0','monitor:logininfor:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','',1,'F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','',1,'F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'在线查询',109,1,'#','',1,'F','0','monitor:online:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'批量强退',109,2,'#','',1,'F','0','monitor:online:batchLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'单条强退',109,3,'#','',1,'F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'任务查询',110,1,'#','',1,'F','0','monitor:job:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务新增',110,2,'#','',1,'F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务修改',110,3,'#','',1,'F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务删除',110,4,'#','',1,'F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'状态修改',110,5,'#','',1,'F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'任务导出',110,7,'#','',1,'F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'生成查询',114,1,'#','',1,'F','0','tool:gen:query','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'生成修改',114,2,'#','',1,'F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成删除',114,3,'#','',1,'F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'导入代码',114,2,'#','',1,'F','0','tool:gen:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1059,'预览代码',114,4,'#','',1,'F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1060,'生成代码',114,5,'#','',1,'F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'商品类目',2006,1,'category','shop/category/index',1,'C','0','shop:category:list','#','admin','2018-03-01 00:00:00','admin','2020-04-01 05:59:50','商品类目菜单'),(2001,'商品类目查询',2000,1,'#','',1,'F','0','shop:category:query','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2002,'商品类目新增',2000,2,'#','',1,'F','0','shop:category:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2003,'商品类目修改',2000,3,'#','',1,'F','0','shop:category:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2004,'商品类目删除',2000,4,'#','',1,'F','0','shop:category:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2005,'商品类目导出',2000,5,'#','',1,'F','0','shop:category:export','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2006,'商品管理',0,0,'shop',NULL,1,'M','0',NULL,'shopping','admin','2020-04-01 05:59:31','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','v_category','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:15:40'),(101,'代码生成',3,'com.ruoyi.project.tool.gen.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/1','127.0.0.1','内网IP','{tableIds=1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:16:55'),(102,'代码生成',6,'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','v_category','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:17:32'),(103,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"functionAuthor\":\"ruoyi\",\"columns\":[{\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品类目ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1585520252000,\"tableId\":2,\"pk\":true,\"columnName\":\"category_id\"},{\"usableColumn\":true,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"parent_id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类目名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态 1启用,-1禁用\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:18:00'),(104,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"functionAuthor\":\"wanghuan\",\"columns\":[{\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品类目ID\",\"updateTime\":1585520280000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1585520252000,\"tableId\":2,\"pk\":true,\"columnName\":\"category_id\"},{\"usableColumn\":true,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父ID\",\"isQuery\":\"1\",\"updateTime\":1585520280000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"parent_id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类目名称\",\"isQuery\":\"1\",\"updateTime\":1585520280000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态 1启用,-1禁用\",\"isQuery\":\"1\",\"updateTime\":1585520280000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"E','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:18:11'),(105,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"functionAuthor\":\"wanghuan\",\"columns\":[{\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品类目ID\",\"updateTime\":1585520291000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1585520252000,\"tableId\":2,\"pk\":true,\"columnName\":\"category_id\"},{\"usableColumn\":true,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父ID\",\"isQuery\":\"1\",\"updateTime\":1585520291000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"parent_id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类目名称\",\"isQuery\":\"1\",\"updateTime\":1585520291000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态 1启用,-1禁用\",\"isQuery\":\"1\",\"updateTime\":1585520291000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"E','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:19:40'),(106,'字典类型',1,'com.ruoyi.project.system.controller.SysDictTypeController.add()','POST',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"params\":{},\"dictType\":\"status\",\"createBy\":\"admin\",\"dictName\":\"商品类目状态\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:21:04'),(107,'字典类型',2,'com.ruoyi.project.system.controller.SysDictTypeController.edit()','PUT',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"dictId\":100,\"params\":{},\"dictType\":\"status\",\"createBy\":\"admin\",\"createTime\":1585520464000,\"updateBy\":\"admin\",\"dictName\":\"商品类目状态\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:21:16'),(108,'字典数据',1,'com.ruoyi.project.system.controller.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"dictSort\":0,\"params\":{},\"dictType\":\"status\",\"dictLabel\":\"启用\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:21:33'),(109,'字典数据',1,'com.ruoyi.project.system.controller.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"-1\",\"dictSort\":0,\"params\":{},\"dictType\":\"status\",\"dictLabel\":\"禁用\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:21:42'),(110,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"functionAuthor\":\"wanghuan\",\"columns\":[{\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品类目ID\",\"updateTime\":1585520380000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1585520252000,\"tableId\":2,\"pk\":true,\"columnName\":\"category_id\"},{\"usableColumn\":true,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父ID\",\"isQuery\":\"1\",\"updateTime\":1585520380000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"parent_id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类目名称\",\"isQuery\":\"1\",\"updateTime\":1585520380000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"status\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态 1启用,-1禁用\",\"isQuery\":\"1\",\"updateTime\":1585520380000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryTy','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:22:51'),(111,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"functionAuthor\":\"wanghuan\",\"columns\":[{\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品类目ID\",\"updateTime\":1585520571000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1585520252000,\"tableId\":2,\"pk\":true,\"columnName\":\"category_id\"},{\"usableColumn\":true,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父ID\",\"isQuery\":\"1\",\"updateTime\":1585520571000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"parent_id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类目名称\",\"isQuery\":\"1\",\"updateTime\":1585520571000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1585520252000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"status\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态 1启用,-1禁用\",\"isQuery\":\"1\",\"updateTime\":1585520571000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryTy','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 06:24:17'),(112,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{}','null',0,NULL,'2020-03-30 06:24:37'),(113,'商品类目',1,'com.ruoyi.project.shop.controller.VCategoryController.add()','POST',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 08:01:56'),(114,'商品类目',1,'com.ruoyi.project.shop.controller.VCategoryController.add()','POST',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":1,\"params\":{},\"parentId\":0,\"listStyle\":0,\"children\":[],\"name\":\"食品\",\"categoryId\":2,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 08:02:26'),(115,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":1,\"params\":{},\"parentId\":2,\"listStyle\":0,\"children\":[],\"name\":\"零食\",\"categoryId\":2,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 08:02:56'),(116,'商品类目',1,'com.ruoyi.project.shop.controller.VCategoryController.add()','POST',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-03-30 08:03:37'),(117,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":-1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 02:31:32'),(118,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 02:31:35'),(119,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/f2d10d2e14677d507e24cccbe4452946.jpeg','2020-04-01 02:56:01'),(120,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/31c325def6b8fbe13efd015cf4e95dd2.jpeg','2020-04-01 02:56:11'),(121,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/e7663451f834168eebc32dff2b21adc9.jpeg','2020-04-01 02:56:12'),(122,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/840d7d368df21746f2b96d7a68f4cfcc.jpeg','2020-04-01 02:56:13'),(123,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/c13d26d0eeee5c75b3620e6e6a451cb0.jpeg','2020-04-01 02:56:14'),(124,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/62a2c66ff1ec9d3ecdf1aafd18264dd1.jpeg','2020-04-01 02:56:14'),(125,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/67bee67e4e4f5d96aa37621d2ec91eb5.jpeg','2020-04-01 02:56:15'),(126,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/8a516e133f24bd1667e2edf2cc740627.jpeg','2020-04-01 02:56:15'),(127,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/34ab7831080c05ca541c696a060dddac.jpeg','2020-04-01 02:56:15'),(128,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/180f07d7a2165158ad757288f596055c.jpeg','2020-04-01 02:56:16'),(129,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/14e55d82113d1c79fad4ed669d415e86.jpeg','2020-04-01 02:56:16'),(130,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/fcca704d9c148dddc40da78292af7e57.jpeg','2020-04-01 02:56:16'),(131,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/62df5e324b738c26afc00d6d0be64193.jpeg','2020-04-01 02:56:17'),(132,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/257ace3d7cfc6fd2230a130148a6f166.jpeg','2020-04-01 02:56:17'),(133,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/f782c75e2582cb6c18ffa8504c8fb56b.jpeg','2020-04-01 02:56:17'),(134,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/78ae995faf7ad2aefa8f8ade9d007f4c.jpeg','2020-04-01 02:56:17'),(135,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/3ff4d79efff1fe823e8dffb29403be70.jpeg','2020-04-01 02:56:18'),(136,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/e564e74a0f347460d80a6e34a14e74df.jpeg','2020-04-01 02:56:18'),(137,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/51cc1efecb2e922185757fad0de6fa0d.jpeg','2020-04-01 02:56:18'),(138,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/0e95b97f084c193813f8b96dcfd0c474.jpeg','2020-04-01 02:56:19'),(139,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/96ad3a2e18b651c6ca10553ccbb1b949.jpeg','2020-04-01 02:56:20'),(140,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/f43cafacb7b2de557ab6dc8d51a955ab.jpeg','2020-04-01 02:56:21'),(141,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/33157b9518c4282298ef7d9a4cbc5482.jpeg','2020-04-01 02:56:21'),(142,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/de66193a68aae18ba5e536de4709a8d4.jpeg','2020-04-01 02:56:21'),(143,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/e634bffc62fedea70be91a07afe4a897.jpeg','2020-04-01 02:56:22'),(144,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/ea87cf84236e11e5a580a86ee474036b.jpeg','2020-04-01 02:56:22'),(145,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/2dad5dbaadba30918aca71006b945a70.jpeg','2020-04-01 02:56:22'),(146,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/e8815a8ead76aa948267fbe4d3fc538b.jpeg','2020-04-01 02:56:22'),(147,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/a57db7dc7c5e81bd293c174dc2c6f0d6.jpeg','2020-04-01 02:56:22'),(148,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/5175c905b2e8dd013fb6380359e12b12.jpeg','2020-04-01 02:56:23'),(149,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/d01efd9aeb754bc375d90ab182641ffe.jpeg','2020-04-01 02:56:23'),(150,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/e53c5aebce82fe060c0b51bbfed709e8.jpeg','2020-04-01 02:56:23'),(151,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/d9a170c8436200d85022caf18a2c9096.jpeg','2020-04-01 02:56:24'),(152,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/618545ae7f2224542ab4f91623503659.jpeg','2020-04-01 02:56:25'),(153,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/4435689059f9b5d2cf88a2e12f6ebe7e.jpeg','2020-04-01 02:56:29'),(154,'个人信息',2,'com.ruoyi.project.system.controller.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 02:56:32'),(155,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/cab98ca2956e7f50dcdd7e70406feda6.jpeg','2020-04-01 02:56:43'),(156,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/d848b2076622cee8bd2257e1bbbc1795.jpeg','2020-04-01 02:58:42'),(157,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','null',1,'/Users/wanghuan/iCode/Java/uploads/avatar/2020/04/01/88e65ba531c9749ef3600a13998021ef.jpeg','2020-04-01 03:02:05'),(158,'用户头像',2,'com.ruoyi.project.system.controller.SysProfileController.avatar()','POST',1,'admin',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/04/01/10bee1a5661a2c81f3817dd7e514ba5e.jpeg\",\"code\":200}',0,NULL,'2020-04-01 03:04:56'),(159,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:10:57'),(160,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:11:03'),(161,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:11:06'),(162,'商品类目',1,'com.ruoyi.project.shop.controller.VCategoryController.add()','POST',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/375ed97a3945fc03a091288c8b70f6e8.jpg\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"食品\",\"categoryId\":4,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:13:53'),(163,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/375ed97a3945fc03a091288c8b70f6e8.jpg\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"食品\",\"categoryId\":4,\"mark\":\"食品\",\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:34:00'),(164,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":-1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:37:07'),(165,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:37:10'),(166,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":-1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:37:41'),(167,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:37:45'),(168,'商品类目',3,'com.ruoyi.project.shop.controller.VCategoryController.remove()','DELETE',1,'admin',NULL,'/shop/category/4','127.0.0.1','内网IP','{categoryIds=4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 03:40:17'),(169,'字典类型',1,'com.ruoyi.project.system.controller.SysDictTypeController.add()','POST',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"params\":{},\"dictType\":\"shop_list_style\",\"createBy\":\"admin\",\"dictName\":\"商品类目列表样式\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:31:40'),(170,'字典数据',1,'com.ruoyi.project.system.controller.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:32:03'),(171,'字典数据',1,'com.ruoyi.project.system.controller.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"小图\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:09'),(172,'字典数据',1,'com.ruoyi.project.system.controller.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"3\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:18'),(173,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"2\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690458000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:22'),(174,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690458000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:29'),(175,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690323000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:34'),(176,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"dictSort\":3,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690458000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:41'),(177,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"小图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690449000,\"dictCode\":103,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:34:51'),(178,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"3\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690323000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:35:04'),(179,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690323000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:35:17'),(180,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690458000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:35:30'),(181,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690458000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:35:37'),(182,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:40:45'),(183,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:40:48'),(184,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:40:51'),(185,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:40:54'),(186,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:40:57'),(187,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:40:59'),(188,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:41:02'),(189,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:41:05'),(190,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":0,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:41:07'),(191,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":2,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:41:10'),(192,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"dictSort\":1,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"详细列表\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690458000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:10'),(193,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"dictSort\":2,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"小图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690449000,\"dictCode\":103,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:13'),(194,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"3\",\"dictSort\":2,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690323000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:16'),(195,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690323000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:21'),(196,'字典数据',2,'com.ruoyi.project.system.controller.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"2\",\"dictSort\":3,\"params\":{},\"dictType\":\"shop_list_style\",\"dictLabel\":\"大图\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1585690323000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:28'),(197,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:37'),(198,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":1,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:44:39'),(199,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:50:05'),(200,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:50:07'),(201,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"orderNum\":0,\"params\":{},\"parentId\":0,\"listStyle\":0,\"children\":[],\"name\":\"服装\",\"categoryId\":1,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:51:01'),(202,'菜单管理',2,'com.ruoyi.project.system.controller.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"官网\",\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:57:36'),(203,'菜单管理',2,'com.ruoyi.project.system.controller.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"官网\",\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:57:49'),(204,'菜单管理',1,'com.ruoyi.project.system.controller.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"0\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":0,\"path\":\"shop\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:59:31'),(205,'菜单管理',2,'com.ruoyi.project.system.controller.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"商品类目\",\"params\":{},\"parentId\":2006,\"path\":\"category\",\"component\":\"shop/category/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"shop:category:list\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 05:59:50'),(206,'参数管理',2,'com.ruoyi.project.system.controller.SysConfigController.edit()','PUT',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"主框架页-默认皮肤样式名称\",\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateTime\":1521171180000,\"configType\":\"Y\",\"configValue\":\"skin-yellow\",\"params\":{},\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:01:16'),(207,'参数管理',2,'com.ruoyi.project.system.controller.SysConfigController.edit()','PUT',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1521171180000,\"configType\":\"Y\",\"configValue\":\"theme-light\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:01:32'),(208,'参数管理',2,'com.ruoyi.project.system.controller.SysConfigController.edit()','PUT',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1585692092000,\"configType\":\"Y\",\"configValue\":\"theme-dark\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:01:47'),(209,'参数管理',2,'com.ruoyi.project.system.controller.SysConfigController.edit()','PUT',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1585692107000,\"configType\":\"Y\",\"configValue\":\"theme-light\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:01:58'),(210,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":2147483647,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:24:50'),(211,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":2147483647,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:24:54'),(212,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:25:01'),(213,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":2,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:25:22'),(214,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:25:26'),(215,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:25:28'),(216,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:27:37'),(217,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:27:47'),(218,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:27:51'),(219,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:27:54'),(220,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:27:58'),(221,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n### The error may involve com.ruoyi.project.shop.mapper.VCategoryMapper.updateVCategory-Inline\n### The error occurred while setting parameters\n### SQL: update v_category          SET parent_id = ?,             name = ?,             status = ?,             order_num = ?,             icon = ?,             list_style = ?          where category_id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n; Data truncation: Data too long for column \'name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1','2020-04-01 06:28:02'),(222,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:28:06'),(223,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"TaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTa\",\"categoryId\":3,\"status\":1}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n### The error may involve com.ruoyi.project.shop.mapper.VCategoryMapper.updateVCategory-Inline\n### The error occurred while setting parameters\n### SQL: update v_category          SET parent_id = ?,             name = ?,             status = ?,             order_num = ?,             icon = ?,             list_style = ?          where category_id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n; Data truncation: Data too long for column \'name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1','2020-04-01 06:28:45'),(224,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"TaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTa\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:28:52'),(225,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"asdfssddfffTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTaTa\",\"categoryId\":3,\"status\":1}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n### The error may involve com.ruoyi.project.shop.mapper.VCategoryMapper.updateVCategory-Inline\n### The error occurred while setting parameters\n### SQL: update v_category          SET parent_id = ?,             name = ?,             status = ?,             order_num = ?,             icon = ?,             list_style = ?          where category_id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n; Data truncation: Data too long for column \'name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1','2020-04-01 06:29:01'),(226,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":1,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:29:11'),(227,'商品类目',2,'com.ruoyi.project.shop.controller.VCategoryController.edit()','PUT',1,'admin',NULL,'/shop/category','127.0.0.1','内网IP','{\"icon\":\"/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"listStyle\":0,\"children\":[],\"name\":\"T恤\",\"categoryId\":3,\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-04-01 06:32:47');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','/profile/avatar/2020/04/01/10bee1a5661a2c81f3817dd7e514ba5e.jpeg','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','ry','2020-04-01 02:56:32','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_category`
--

DROP TABLE IF EXISTS `v_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品类目ID',
  `parent_id` bigint(20) NOT NULL COMMENT '父ID',
  `name` varchar(128) NOT NULL COMMENT '类目名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1启用,-1禁用',
  `order_num` int(11) NOT NULL COMMENT '排序号',
  `icon` varchar(1024) DEFAULT NULL COMMENT '图标地址',
  `list_style` smallint(6) DEFAULT NULL COMMENT '列表样式',
  `mark` varchar(512) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品类目 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_category`
--

LOCK TABLES `v_category` WRITE;
/*!40000 ALTER TABLE `v_category` DISABLE KEYS */;
INSERT INTO `v_category` VALUES (1,0,'服装',1,0,NULL,0,NULL),(3,1,'T恤',1,1,'/profile/upload/2020/04/01/aade0913524b73107cf2e90357a61f00.jpg',0,NULL);
/*!40000 ALTER TABLE `v_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01 15:27:32
