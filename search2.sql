-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 192.168.70.128    Database: search
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info_src` varchar(255) DEFAULT NULL COMMENT '新闻来源',
  `info_text` varchar(2000) DEFAULT NULL COMMENT '新闻内容',
  `info_image` varchar(200) DEFAULT NULL COMMENT '新闻图片链接',
  `info_url` varchar(255) DEFAULT NULL COMMENT '新闻跳转url',
  `single_tag` varchar(255) DEFAULT NULL COMMENT '标题md5值，校验防止相同新闻误插入',
  `time` varchar(20) DEFAULT NULL COMMENT '发布时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `is_enabled` int(11) DEFAULT '1' COMMENT '是否可用：0否 1是',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除：0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (135,'bd','太原一八旬老人上楼滑倒新华西社区“格格”紧急援手','http://t12.baidu.com/it/u=3231920891,208598730&fm=30&app=106&f=JPEG?w=312&h=208&s=7C96ED16E2DC4FC863F46DEE0300B06A','http://baijiahao.baidu.com/s?id=1770622387114501356','ec49c024cf6323c336d2af0e18b3505b','06:45','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(136,'bd','太原16个项目闯入山西省第十届星火项目创业大赛...','http://t10.baidu.com/it/u=858478638,208599688&fm=30&app=106&f=JPEG?w=312&h=208&s=A532C235CEA108034E9A2BC90300E0BF','http://baijiahao.baidu.com/s?id=1770623417088943948','d6654764ea8e0bed595f4bf2b044e901','07:01','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(137,'bd','韦韬在清徐县调研','http://t12.baidu.com/it/u=1106943179,208599470&fm=30&app=106&f=JPEG?w=312&h=208&s=2D2069932E535FEF00F9A17303009033','http://baijiahao.baidu.com/s?id=1770623181196469192','abdea4bb2d9aa5f4db2184b29d7d1ec2','06:58','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(138,'bd','山西安排部署黄河调水调沙安全防范和当前防汛工作','http://t11.baidu.com/it/u=1400449417,208552965&fm=30&app=106&f=JPEG?w=312&h=208&s=6F9459804C9250C8083989C0030090B3','http://baijiahao.baidu.com/s?id=1770573239471934605','36a63f13784da4a78a95e8eef8976ce2','17:44','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(139,'bd','山西科达自控股份有限公司进入全国工业互联网50...','http://t11.baidu.com/it/u=2559109474,208599824&fm=30&app=106&f=JPEG?w=312&h=208&s=FA0FA144478138E6573E70830300F099','http://baijiahao.baidu.com/s?id=1770623559160877385','4a6cbc2cae90df1d5cbdeebd19b00436','07:08','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(140,'bd','@太原家长 暑期青少年护眼正当时用眼细节要注意','http://t12.baidu.com/it/u=888519367,208599317&fm=30&app=106&f=JPEG?w=312&h=208&s=3AF75A96429909CC76B26DC90300809C','http://baijiahao.baidu.com/s?id=1770623018595146030','fc88dc9f9dcec88ce2b4fea17231de0e','06:55','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(141,'bd','山西省国省道路面改造工程顺利通过竣工验收','http://t12.baidu.com/it/u=256634562,208463001&fm=30&app=106&f=JPEG?w=312&h=208&s=8794AC6540126F641E3559080300E080','http://baijiahao.baidu.com/s?id=1770476645335529900','abfbc0ba74dba95e5f1b033b2720194e','16:08','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(142,'bd','太原市盆底功能障碍性疾病诊疗中心成立','http://t10.baidu.com/it/u=743111049,208598650&fm=30&app=106&f=JPEG?w=312&h=208&s=17F3C87E87B1198847921B930300109E','http://baijiahao.baidu.com/s?id=1770622302141528175','f447f044879ed4789843cda1632cd507','06:43','2023-07-06 02:47:01','2023-07-06 02:47:01',1,0),(143,'bd','山西（太原）特优农产品夏季产销对接活动启幕 刘...','http://t12.baidu.com/it/u=585837054,208599536&fm=30&app=106&f=JPEG?w=312&h=208&s=8495857A638308FB4E2B6EAB0200800F','http://baijiahao.baidu.com/s?id=1770623253694521803','1487e95e6fbee2728b0dc6c615fe91c0','06:59','2023-07-06 02:48:01','2023-07-06 02:48:01',1,0),(144,'bd','山西4家文博单位项目入选“2022全国文化遗产...','http://t11.baidu.com/it/u=1984153003,208649028&fm=30&app=106&f=JPEG?w=312&h=208&s=DE9593AEC8AE84C80A0744830300E09A','http://baijiahao.baidu.com/s?id=1770676392835230250','47d2f971b6c0b9f4bfcc44e056bb4072','21:04','2023-07-07 01:30:00','2023-07-07 01:30:00',1,0),(145,'bd','老房子漏水 铁北社区网格员一帮到底 两名老人收...','http://t11.baidu.com/it/u=3101482748,208683873&fm=30&app=106&f=JPEG?w=312&h=208&s=7C96ED16E2DC4FC863F46DEE0300B06A','http://baijiahao.baidu.com/s?id=1770713809039638932','75358067f96557dfef6b900e9ee4e101','06:58','2023-07-07 01:30:00','2023-07-07 01:30:00',1,0),(146,'bd','山西高校产业学院发展纪实 教育链对接创新链实验','http://t12.baidu.com/it/u=1194808120,208688518&fm=30&app=106&f=JPEG?w=312&h=208&s=A82441946A8202DC0081AC8803007093','http://baijiahao.baidu.com/s?id=1770718796331399432','c56784b33b9e22a77490b94e86b6570c','08:17','2023-07-07 01:30:00','2023-07-07 01:30:00',1,0),(147,'bd','张新伟专题调研企业项目建设运行工作','http://t10.baidu.com/it/u=3534531834,208599508&fm=30&app=106&f=JPEG?w=312&h=208&s=D93700D6C62110AA462F50420300F098','http://baijiahao.baidu.com/s?id=1770623224445919712','9d02ea797b3d7804c57bcce8f57c1cb9','06:59','2023-07-07 01:30:00','2023-07-07 01:30:00',1,0),(148,'bd','太原市气象台发布高温预警 连续3天最高气温将在...','http://t12.baidu.com/it/u=1649985535,208683076&fm=30&app=106&f=JPEG?w=312&h=208&s=EB22AC464C9108C2460A2CC80300F09A','http://baijiahao.baidu.com/s?id=1770712953896174352','0827a01f8a362d285dfe0bca38c36169','06:44','2023-07-07 01:30:00','2023-07-07 01:30:00',1,0),(149,'bd','“山西精品”贴标亮标活动在紫林醋业启动','http://t11.baidu.com/it/u=2599781290,208600253&fm=30&app=106&f=JPEG?w=312&h=208&s=3AF75A96429909CC76B26DC90300809C','http://baijiahao.baidu.com/s?id=1770624022581215189','43c209f33fc08930ec076e2b9ca9ce60','07:11','2023-07-07 01:30:00','2023-07-07 01:30:00',1,0),(150,'bd','黄陵街道东峰社区：“暑期自习室”深受家长欢迎','http://t11.baidu.com/it/u=915906920,208683363&fm=30&app=106&f=JPEG?w=312&h=208&s=0AB65A8554D2DDCA422180620300D071','http://baijiahao.baidu.com/s?id=1770713260885843574','2a3931aac4f51193136b7e1489b3cc83','06:49','2023-07-07 02:00:00','2023-07-07 02:00:00',1,0),(151,'bd','国网10千伏专线通电调试完成 武宿充电站二期项...','http://t11.baidu.com/it/u=886458132,208685281&fm=30&app=106&f=JPEG?w=312&h=208&s=A532C235CEA108034E9A2BC90300E0BF','http://baijiahao.baidu.com/s?id=1770715319860513933','d7c285ba813ec124f38404b51a4c7f8c','07:22','2023-07-07 02:00:00','2023-07-07 02:00:00',1,0),(152,'bd','太原市（省城）第一届“锦绣杯”社会组篮球系列赛...','http://t10.baidu.com/it/u=1560254539,208684655&fm=30&app=106&f=JPEG?w=312&h=208&s=3AF75A96429909CC76B26DC90300809C','http://baijiahao.baidu.com/s?id=1770714647809484235','d73d423dd049916c37b53c03b49767f9','07:11','2023-07-07 02:00:00','2023-07-07 02:00:00',1,0),(153,'bd','太原市图书馆招募暑期志愿者需连续10天总时长累...','http://t11.baidu.com/it/u=3496025888,208683184&fm=30&app=106&f=JPEG?w=312&h=208&s=83907D80FC8E5ECC6CA00914010090A2','http://baijiahao.baidu.com/s?id=1770713062594867762','74690d63d1e9b806cc4845520878c69c','06:46','2023-07-07 02:10:01','2023-07-07 02:10:01',1,0),(154,'bd','杏花岭区敦化坊街道：酷暑送清凉 “续航”再出发','http://t12.baidu.com/it/u=1916856160,208692399&fm=30&app=106&f=JPEG?w=312&h=208&s=4B92F6AA4812F2D41691E4AD03002003','http://baijiahao.baidu.com/s?id=1770722960986326678','052131cc4e6a2b5084984119296db16f','09:24','2023-07-07 07:10:01','2023-07-07 07:10:01',1,0),(155,'bd','遇到对的医生，孩子和我都走向光明','http://t12.baidu.com/it/u=3071561161,208690445&fm=30&app=106&f=JPEG?w=312&h=208&s=27E0F11517217303486CC0CF03006033','http://baijiahao.baidu.com/s?id=1770720859885012420','60a46897d9d38d0c594513936e94026d','08:50','2023-07-07 07:10:01','2023-07-07 07:10:01',1,0);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;
