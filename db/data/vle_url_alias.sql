CREATE DATABASE  IF NOT EXISTS `vle` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vle`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: vle
-- ------------------------------------------------------
-- Server version	5.5.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_alias` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(128) NOT NULL DEFAULT '',
  `dst` varchar(128) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `dst_language_pid` (`dst`,`language`,`pid`),
  KEY `src_language_pid` (`src`,`language`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4447 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_alias`
--

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
INSERT INTO `url_alias` VALUES (1119,'taxonomy/term/18','category/newsletter/e-learning-portal-newsletter',''),(1120,'taxonomy/term/19','category/newsletter/podsjetnik-o-napretku-na-tecajevima',''),(3651,'node/3077','content/internet-i-ms-outlook','hr'),(3652,'node/3078','content/ms-project','hr'),(4053,'node/3428','internet-i-ms-outlook/internet','hr'),(4054,'node/3429','internet-i-ms-outlook/osnove-interneta','hr'),(4055,'node/3430','internet-i-ms-outlook/organizacija-interneta','hr'),(4056,'node/3431','internet-i-ms-outlook/koristenje-web-browsera','hr'),(4057,'node/3432','internet-i-ms-outlook/osnove-internet-preglednika','hr'),(4058,'node/3433','internet-i-ms-outlook/koristenje-internet-preglednika','hr'),(4059,'node/3434','internet-i-ms-outlook/spremanje-stranica-i-slika','hr'),(4060,'node/3435','internet-i-ms-outlook/postavke-internet-preglednika','hr'),(4061,'node/3436','internet-i-ms-outlook/rad-s-biljeskama-favorites','hr'),(4062,'node/3437','internet-i-ms-outlook/koristenje-pomoci-help','hr'),(4063,'node/3438','internet-i-ms-outlook/ispis','hr'),(4064,'node/3439','internet-i-ms-outlook/www-usluge','hr'),(4065,'node/3440','internet-i-ms-outlook/www-usluge-0','hr'),(4066,'node/3441','internet-i-ms-outlook/sigurnost-na-internetu','hr'),(4067,'node/3442','internet-i-ms-outlook/pretrazivanje','hr'),(4068,'node/3443','internet-i-ms-outlook/osnove-pretrazivanja','hr'),(4069,'node/3444','internet-i-ms-outlook/napredno-pretrazivanje','hr'),(4070,'node/3445','internet-i-ms-outlook/dodatne-vrste-pretrazivanja','hr'),(4071,'node/3446','internet-i-ms-outlook/ms-outlook-2010','hr'),(4072,'node/3447','internet-i-ms-outlook/sucelje','hr'),(4073,'node/3448','internet-i-ms-outlook/radna-okolina','hr'),(4074,'node/3449','internet-i-ms-outlook/e-posta','hr'),(4075,'node/3450','internet-i-ms-outlook/osnovni-pojmovi-i-termini-e-poste','hr'),(4076,'node/3451','internet-i-ms-outlook/kako-napisati-e-postu','hr'),(4077,'node/3452','internet-i-ms-outlook/kako-dodati-privitke-e-posti','hr'),(4078,'node/3453','internet-i-ms-outlook/kako-citati-e-postu-i-privitke','hr'),(4079,'node/3454','internet-i-ms-outlook/kako-odgovoriti-na-e-postu','hr'),(4080,'node/3455','internet-i-ms-outlook/kontakti','hr'),(4081,'node/3456','internet-i-ms-outlook/spremanje-podataka-u-mapu-contacts','hr'),(4082,'node/3457','internet-i-ms-outlook/koristenje-adresa-e-poste-iz-mape-contacts','hr'),(4083,'node/3458','internet-i-ms-outlook/biljeske','hr'),(4084,'node/3459','internet-i-ms-outlook/kako-spremiti-biljeske','hr'),(4085,'node/3460','content/ms-windows-xp','hr'),(4086,'node/3461','ms-access-osnovno-koristenje/uvod','hr'),(4087,'node/3462','ms-access-osnovno-koristenje/relacijski-model-baza-podataka','hr'),(4088,'node/3463','ms-access-osnovno-koristenje/planiranje-i-projektiranje-baza-podataka','hr'),(4089,'node/3464','ms-access-osnovno-koristenje/referencijalni-integritet','hr'),(4090,'node/3465','ms-access-osnovno-koristenje/sucelje','hr'),(4091,'node/3466','ms-access-osnovno-koristenje/tablice','hr'),(4092,'node/3467','ms-access-osnovno-koristenje/stvaranje-tablice','hr'),(4093,'node/3468','ms-access-osnovno-koristenje/primarni-kljuc','hr'),(4094,'node/3469','ms-access-osnovno-koristenje/unos-podataka','hr'),(4095,'node/3470','ms-access-osnovno-koristenje/trazenje-zapisa','hr'),(4096,'node/3471','ms-access-osnovno-koristenje/tipovi-podataka','hr'),(4097,'node/3472','ms-access-osnovno-koristenje/osnovna-svojstva-polja','hr'),(4098,'node/3473','ms-access-osnovno-koristenje/formati','hr'),(4099,'node/3474','ms-access-osnovno-koristenje/validation-rule','hr'),(4100,'node/3475','ms-access-osnovno-koristenje/indeksi','hr'),(4101,'node/3476','ms-access-osnovno-koristenje/pristup-drugim-bazama-podataka','hr'),(4102,'node/3477','ms-access-osnovno-koristenje/relacije','hr'),(4103,'node/3478','ms-access-osnovno-koristenje/kompaktiranje-i-poredak-sortiranja','hr'),(4104,'node/3479','ms-access-osnovno-koristenje/upiti','hr'),(4105,'node/3480','ms-access-osnovno-koristenje/filtri','hr'),(4106,'node/3481','ms-access-osnovno-koristenje/stvaranje-upita','hr'),(4107,'node/3482','ms-access-osnovno-koristenje/sort-i-show','hr'),(4108,'node/3483','ms-access-osnovno-koristenje/kriteriji','hr'),(4109,'node/3484','ms-access-osnovno-koristenje/expression-builder','hr'),(4110,'node/3485','ms-access-osnovno-koristenje/upiti-nad-dvije-tablice','hr'),(4111,'node/3486','ms-access-osnovno-koristenje/maske','hr'),(4112,'node/3487','ms-access-osnovno-koristenje/uvod-stvaranje-i-osnovne-vrste-maske','hr'),(4113,'node/3488','ms-access-osnovno-koristenje/rad-s-objektima-maske','hr'),(4114,'node/3489','ms-access-osnovno-koristenje/oblikovanje-objekata-maske','hr'),(4115,'node/3490','ms-access-osnovno-koristenje/izvjestaji','hr'),(4116,'node/3491','ms-access-osnovno-koristenje/uvod-kreiranje-i-osnovne-sekcije-izvjestaja','hr'),(4117,'node/3492','ms-access-osnovno-koristenje/sortiranje-grupiranje-i-izracuni-u-izvjestajima','hr'),(4118,'node/3493','ms-access-osnovno-koristenje/ispis','hr'),(4119,'node/3494','ms-excel-napredno-koristenje/korisni-alati','hr'),(4120,'node/3495','ms-excel-napredno-koristenje/paste-special','hr'),(4121,'node/3496','ms-excel-napredno-koristenje/matematicke-i-statisticke-funkcije','hr'),(4122,'node/3497','ms-excel-napredno-koristenje/kategorije-funkcija','hr'),(4123,'node/3498','ms-excel-napredno-koristenje/matematicke-funkcije','hr'),(4124,'node/3499','ms-excel-napredno-koristenje/zaokruzivanje-brojeva','hr'),(4125,'node/3500','ms-excel-napredno-koristenje/statisticke-funkcije','hr'),(4126,'node/3501','ms-excel-napredno-koristenje/goal-seek','hr'),(4127,'node/3502','ms-excel-napredno-koristenje/relacije-i-uvjeti','hr'),(4128,'node/3503','ms-excel-napredno-koristenje/relacije-i-relacijske-formule','hr'),(4129,'node/3504','ms-excel-napredno-koristenje/funkcija-if','hr'),(4130,'node/3505','ms-excel-napredno-koristenje/logicke-funkcije','hr'),(4131,'node/3506','ms-excel-napredno-koristenje/uvjetne-funkcije-sumif-i-countif','hr'),(4132,'node/3507','ms-excel-napredno-koristenje/uvjetne-naredbe','hr'),(4133,'node/3508','ms-excel-napredno-koristenje/provjera-unosa-podataka','hr'),(4134,'node/3509','ms-excel-napredno-koristenje/provjera-unosa-podataka-list','hr'),(4135,'node/3510','ms-excel-napredno-koristenje/oblikovanje-celija-obzirom-na-upisanu-vrijednost','hr'),(4136,'node/3511','ms-excel-napredno-koristenje/uvjetno-oblikovanje-celija','hr'),(4137,'node/3512','ms-excel-napredno-koristenje/izracuni-s-datumima-i-tekstom','hr'),(4138,'node/3513','ms-excel-napredno-koristenje/racunanje-s-datumima','hr'),(4139,'node/3514','ms-excel-napredno-koristenje/datumske-i-vremenske-funkcije','hr'),(4140,'node/3515','ms-excel-napredno-koristenje/formule-s-tekstom','hr'),(4141,'node/3516','ms-excel-napredno-koristenje/funkcije-pretrage','hr'),(4142,'node/3517','ms-excel-napredno-koristenje/funkcija-match','hr'),(4143,'node/3518','ms-excel-napredno-koristenje/funkcija-vlookup','hr'),(4144,'node/3519','ms-excel-napredno-koristenje/liste-i-baze-podataka','hr'),(4145,'node/3520','ms-excel-napredno-koristenje/baze-podataka-u-excelu','hr'),(4146,'node/3521','ms-excel-napredno-koristenje/excel-tablice','hr'),(4147,'node/3522','ms-excel-napredno-koristenje/sortiranje','hr'),(4148,'node/3523','ms-excel-napredno-koristenje/filtriranje-odabirom','hr'),(4149,'node/3524','ms-excel-napredno-koristenje/filtriranje-postavljanjem-kriterija','hr'),(4150,'node/3525','ms-excel-napredno-koristenje/napredno-filtriranje','hr'),(4151,'node/3526','ms-excel-napredno-koristenje/kriteriji','hr'),(4152,'node/3527','ms-excel-napredno-koristenje/jedinstvene-vrijednosti','hr'),(4153,'node/3528','ms-excel-napredno-koristenje/subtotali','hr'),(4154,'node/3529','ms-excel-napredno-koristenje/pivot-tablice','hr'),(4155,'node/3530','ms-excel-napredno-koristenje/pivot-tablice-0','hr'),(4156,'node/3531','ms-excel-napredno-koristenje/rad-s-pivot-tablicom','hr'),(4157,'node/3532','ms-excel-napredno-koristenje/izgled-pivot-tablice','hr'),(4158,'node/3533','ms-excel-napredno-koristenje/oblikovanje-pivot-tablice','hr'),(4159,'node/3534','ms-excel-napredno-koristenje/sortiranje-u-pivot-tablici','hr'),(4160,'node/3535','ms-excel-napredno-koristenje/filtriranje-u-pivot-tablici','hr'),(4161,'node/3536','ms-excel-napredno-koristenje/grupe-i-subtotali','hr'),(4162,'node/3537','ms-excel-napredno-koristenje/grupiranje-podataka-u-pivot-tablici','hr'),(4163,'node/3538','ms-excel-napredno-koristenje/values-polje','hr'),(4164,'node/3539','ms-excel-osnovno-koristenje/excel-1-stupanj','hr'),(4165,'node/3540','ms-excel-osnovno-koristenje/sucelje','hr'),(4166,'node/3541','ms-excel-osnovno-koristenje/upoznavanje-s-excelom','hr'),(4167,'node/3542','ms-excel-osnovno-koristenje/radna-knjiga','hr'),(4168,'node/3543','ms-excel-osnovno-koristenje/unos-podataka','hr'),(4169,'node/3544','ms-excel-osnovno-koristenje/unos-podataka-0','hr'),(4170,'node/3545','ms-excel-osnovno-koristenje/brisanje-i-ispravljanje-podataka','hr'),(4171,'node/3546','ms-excel-osnovno-koristenje/dokumenti','hr'),(4172,'node/3547','ms-excel-osnovno-koristenje/nova-radna-knjiga','hr'),(4173,'node/3548','ms-excel-osnovno-koristenje/spremanje-radne-knjige','hr'),(4174,'node/3549','ms-excel-osnovno-koristenje/otvaranje-radne-knjige','hr'),(4175,'node/3550','ms-excel-osnovno-koristenje/uredivanje-tablice','hr'),(4176,'node/3551','ms-excel-osnovno-koristenje/oznacavanje-celija','hr'),(4177,'node/3552','ms-excel-osnovno-koristenje/uredivanje-tablice-0','hr'),(4178,'node/3553','ms-excel-osnovno-koristenje/uredivanje-redaka-i-stupaca','hr'),(4179,'node/3554','ms-excel-osnovno-koristenje/racunanje','hr'),(4180,'node/3555','ms-excel-osnovno-koristenje/uvod-u-formule','hr'),(4181,'node/3556','ms-excel-osnovno-koristenje/ispis','hr'),(4182,'node/3557','ms-excel-osnovno-koristenje/ispis-tablice','hr'),(4183,'node/3558','ms-excel-osnovno-koristenje/excel-2-stupanj','hr'),(4342,'node/3717','content/primjeri-i-zadaci-paste-special-gordanaskomrak-smolarorbicohr','hr'),(4185,'node/3560','ms-excel-osnovno-koristenje/postavke-radnog-okruzenja','hr'),(4186,'node/3561','ms-excel-osnovno-koristenje/kopiranje-podataka-i-formula','hr'),(4187,'node/3562','ms-excel-osnovno-koristenje/kopiranje-i-premjestanje-podataka','hr'),(4188,'node/3563','ms-excel-osnovno-koristenje/kopiranje-formula','hr'),(4189,'node/3564','ms-excel-osnovno-koristenje/premjestanje-formula','hr'),(4190,'node/3565','ms-excel-osnovno-koristenje/apsolutne-i-relativne-adrese','hr'),(4191,'node/3566','ms-excel-osnovno-koristenje/rucica-popunjavanja','hr'),(4192,'node/3567','ms-excel-osnovno-koristenje/uredivanje-tablice-1','hr'),(4193,'node/3568','ms-excel-osnovno-koristenje/kretanje-i-oznacavanje-pomocu-tipkovnice','hr'),(4194,'node/3569','ms-excel-osnovno-koristenje/osnovno-uredenje-tablice','hr'),(4195,'node/3570','ms-excel-osnovno-koristenje/uredivanje-znakova','hr'),(4196,'node/3571','ms-excel-osnovno-koristenje/poravnavanje-znakova-u-celiji','hr'),(4197,'node/3572','ms-excel-osnovno-koristenje/okviri-i-sjencanje','hr'),(4198,'node/3573','ms-excel-osnovno-koristenje/formati-brojeva','hr'),(4199,'node/3574','ms-excel-osnovno-koristenje/formati-brojeva-0','hr'),(4200,'node/3575','ms-excel-osnovno-koristenje/datumski-formati','hr'),(4201,'node/3576','ms-excel-osnovno-koristenje/grafikoni','hr'),(4202,'node/3577','ms-excel-osnovno-koristenje/stvaranje-grafikona','hr'),(4203,'node/3578','ms-excel-osnovno-koristenje/uredivanje-grafikona','hr'),(4204,'node/3579','ms-excel-osnovno-koristenje/promjena-prikaza-i-ispis','hr'),(4205,'node/3580','ms-excel-osnovno-koristenje/zaglavlje-i-podnozje','hr'),(4206,'node/3581','ms-excel-osnovno-koristenje/funkcije','hr'),(4207,'node/3582','ms-excel-osnovno-koristenje/funkcije-0','hr'),(4208,'node/3583','ms-excel-osnovno-koristenje/autosum-alat','hr'),(4209,'node/3584','ms-excel-osnovno-koristenje/rad-s-funkcijama','hr'),(4210,'node/3585','ms-excel-osnovno-koristenje/naprednije-mogucnosti','hr'),(4211,'node/3586','ms-excel-osnovno-koristenje/ispravnost-dokumenta','hr'),(4212,'node/3587','ms-excel-osnovno-koristenje/trazenje-i-zamjena-podataka','hr'),(4213,'node/3588','ms-powerpoint-osnovno-koristenje/osnove-powerpointa','hr'),(4214,'node/3589','ms-powerpoint-osnovno-koristenje/uvod-u-powerpoint','hr'),(4215,'node/3590','ms-powerpoint-osnovno-koristenje/trake-alata-i-pogledi','hr'),(4216,'node/3591','ms-powerpoint-osnovno-koristenje/izrada-nove-prezentacije','hr'),(4217,'node/3592','ms-powerpoint-osnovno-koristenje/kreiranje-nove-prezentacije','hr'),(4218,'node/3593','ms-powerpoint-osnovno-koristenje/upoznavanje-sa-slajdovima','hr'),(4219,'node/3594','ms-powerpoint-osnovno-koristenje/unos-teksta','hr'),(4220,'node/3595','ms-powerpoint-osnovno-koristenje/umetanje-grafika','hr'),(4221,'node/3596','ms-powerpoint-osnovno-koristenje/umetanje-slika','hr'),(4222,'node/3597','ms-powerpoint-osnovno-koristenje/umetanje-ostalih-objekata','hr'),(4223,'node/3598','ms-powerpoint-osnovno-koristenje/spremanje-prezentacije','hr'),(4224,'node/3599','ms-powerpoint-osnovno-koristenje/otvaranje-prezentacije','hr'),(4225,'node/3600','ms-powerpoint-osnovno-koristenje/oblikovanje-prezentacije','hr'),(4226,'node/3601','ms-powerpoint-osnovno-koristenje/koristenje-slide-mastera','hr'),(4227,'node/3602','ms-powerpoint-osnovno-koristenje/pozadina-slajda','hr'),(4228,'node/3603','ms-powerpoint-osnovno-koristenje/oblikovanje-teksta','hr'),(4229,'node/3604','ms-powerpoint-osnovno-koristenje/oblikovanje-natuknica','hr'),(4230,'node/3605','ms-powerpoint-osnovno-koristenje/postava-stranice','hr'),(4231,'node/3606','ms-powerpoint-osnovno-koristenje/izrada-i-oblikovanje-animacija','hr'),(4232,'node/3607','ms-powerpoint-osnovno-koristenje/animacije-nad-objektima','hr'),(4233,'node/3608','ms-powerpoint-osnovno-koristenje/animacija-slajdova','hr'),(4234,'node/3609','ms-powerpoint-osnovno-koristenje/izrada-dokumentacije-ispis-i-vodenje-prezentacije','hr'),(4235,'node/3610','ms-powerpoint-osnovno-koristenje/popis-natuknica-i-pregled-svih-slajdova','hr'),(4236,'node/3611','ms-powerpoint-osnovno-koristenje/zabiljeske-i-ispis','hr'),(4237,'node/3612','ms-project/radna-okolina','hr'),(4238,'node/3613','ms-project/radna-okolina-0','hr'),(4239,'node/3614','ms-project/prilagodba','hr'),(4240,'node/3615','ms-project/jos-o-postavkama','hr'),(4241,'node/3616','ms-project/stvaranje-novog-projekta','hr'),(4242,'node/3617','ms-project/kako-otvoriti-novi-projekt','hr'),(4243,'node/3618','ms-project/kako-upisati-aktivnosti-i-njihova-trajanja','hr'),(4244,'node/3619','ms-project/uredivanje-projekta','hr'),(4245,'node/3620','ms-project/skupna-aktivnost-summary-task','hr'),(4246,'node/3621','ms-project/kalendari-i-radno-vrijeme','hr'),(4247,'node/3622','ms-project/sto-organizer-organizira','hr'),(4248,'node/3623','ms-project/kako-povezati-aktivnosti','hr'),(4249,'node/3624','ms-project/kako-spremiti-projekt','hr'),(4250,'node/3625','ms-project/kako-upisati-resurse','hr'),(4251,'node/3626','ms-project/upoznajte-tablice','hr'),(4252,'node/3627','ms-project/metoda-kriticnog-puta-put-ka-uspjehu','hr'),(4253,'node/3628','ms-project/resursi','hr'),(4254,'node/3629','ms-project/tko-sto-radi-resursi-i-njihove-aktivnosti','hr'),(4255,'node/3630','ms-project/raspolozivost-resursa','hr'),(4256,'node/3631','ms-project/pracenje-troskova','hr'),(4257,'node/3632','ms-project/troskovi-aktivnosti-koliko-sve-kosta','hr'),(4258,'node/3633','ms-project/troskovi-resursa-satnice-pausali-prekovremeni-rad…','hr'),(4259,'node/3634','ms-project/aktivnosti','hr'),(4260,'node/3635','ms-project/vrste-aktivnosti','hr'),(4261,'node/3636','ms-project/fixed-units-effort-driven','hr'),(4262,'node/3637','ms-project/fixed-units-not-effort-driven','hr'),(4263,'node/3638','ms-project/fixed-work-effort-driven','hr'),(4264,'node/3639','ms-project/fixed-duration-effort-driven','hr'),(4265,'node/3640','ms-project/fixed-duration-not-effort-driven','hr'),(4266,'node/3641','ms-project/pracenje-projekta','hr'),(4267,'node/3642','ms-project/pocetna-crta-usvojeni-plan-baseline','hr'),(4268,'node/3643','ms-project/filtriranje','hr'),(4269,'node/3644','ms-project/izrada-novog-filtra','hr'),(4270,'node/3645','ms-project/grupiranje','hr'),(4271,'node/3646','ms-project/izvjestaji-i-ispis','hr'),(4272,'node/3647','ms-project/izvjestaji','hr'),(4273,'node/3648','ms-project/veza-s-drugim-programima','hr'),(4274,'node/3649','ms-project/izvoz-podataka','hr'),(4275,'node/3650','ms-project/uvoz-podataka','hr'),(4276,'node/3651','ms-windows-xp/osnovni-koncepti','hr'),(4277,'node/3652','ms-windows-xp/osnovni-koncepti-0','hr'),(4278,'node/3653','ms-windows-xp/windows-xp','hr'),(4279,'node/3654','ms-windows-xp/mis-i-tipkovnica','hr'),(4280,'node/3655','ms-windows-xp/prozori-i-aplikacije','hr'),(4281,'node/3656','ms-windows-xp/izbornici','hr'),(4282,'node/3657','ms-windows-xp/rad-s-podacima','hr'),(4283,'node/3658','ms-windows-xp/organizacija-podataka-na-vanjskim-memorijama','hr'),(4284,'node/3659','ms-windows-xp/windows-explorer','hr'),(4285,'node/3660','ms-windows-xp/formatiranje-vanjske-memorije','hr'),(4286,'node/3661','ms-windows-xp/kreiranje-mapa-promjena-imena-i-brisanje','hr'),(4287,'node/3662','ms-windows-xp/kopiranje-i-premjestanje','hr'),(4288,'node/3663','ms-windows-xp/opcije-mapa-i-datoteka','hr'),(4289,'node/3664','ms-windows-xp/trazenje-datoteka-i-mapa','hr'),(4290,'node/3665','ms-windows-xp/shortcut','hr'),(4291,'node/3666','ms-windows-xp/kompresija-podataka','hr'),(4292,'node/3667','ms-windows-xp/osnovne-prilagodbe','hr'),(4293,'node/3668','ms-windows-xp/koristenje-pomoci','hr'),(4294,'node/3669','ms-windows-xp/appereance-and-themes','hr'),(4295,'node/3670','ms-windows-xp/taskbar','hr'),(4296,'node/3671','ms-windows-xp/prilagodbe-pisaca','hr'),(4297,'node/3672','ms-windows-xp/datum-vrijeme-jezik-regionalne-postavke','hr'),(4298,'node/3673','ms-windows-xp/instalacija-i-deinstalacija-softvera','hr'),(4299,'node/3674','ms-windows-xp/rad-s-aplikacijama','hr'),(4300,'node/3675','ms-windows-xp/aplikacije','hr'),(4301,'node/3676','ms-windows-xp/accessories','hr'),(4302,'node/3677','ms-windows-xp/clipboard','hr'),(4303,'node/3678','ms-windows-xp/rad-u-mrezi','hr'),(4304,'node/3679','ms-windows-xp/racunalne-mreze','hr'),(4305,'node/3680','ms-windows-xp/backup','hr'),(4306,'node/3681','ms-windows-xp/my-network-places','hr'),(4307,'node/3682','ms-windows-xp/internet','hr'),(3986,'node/3412','content/napredak-na-tecajevima','hr'),(4308,'node/3683','ms-word-osnovno-koristenje/word-1-stupanj','hr'),(4309,'node/3684','ms-word-osnovno-koristenje/sucelje','hr'),(4310,'node/3685','ms-word-osnovno-koristenje/upoznavanje-s-wordom','hr'),(4311,'node/3686','ms-word-osnovno-koristenje/osnove-aplikacije-ms-word','hr'),(4312,'node/3687','ms-word-osnovno-koristenje/sadrzaj-dokumenta','hr'),(4313,'node/3688','ms-word-osnovno-koristenje/spremanje-podataka','hr'),(4314,'node/3689','ms-word-osnovno-koristenje/otvaranje-dokumenta','hr'),(4315,'node/3690','ms-word-osnovno-koristenje/novi-dokument','hr'),(4316,'node/3691','ms-word-osnovno-koristenje/principi-rada-u-wordu','hr'),(4317,'node/3692','ms-word-osnovno-koristenje/oznacavanje-dijelova-teksta','hr'),(4318,'node/3693','ms-word-osnovno-koristenje/kretanje-kroz-dokument','hr'),(4319,'node/3694','ms-word-osnovno-koristenje/uredivanje-teksta','hr'),(4320,'node/3695','ms-word-osnovno-koristenje/slanje-gotovog-dokumenta','hr'),(4321,'node/3696','ms-word-osnovno-koristenje/ispis-dokumenta','hr'),(4322,'node/3697','ms-word-osnovno-koristenje/word-2-stupanj','hr'),(4323,'node/3698','ms-word-osnovno-koristenje/prikaz-dokumenta-i-rad-s-vise-dokumenata','hr'),(4324,'node/3699','ms-word-osnovno-koristenje/podesavanje-velicine-prikaza-dokumenta','hr'),(4325,'node/3700','ms-word-osnovno-koristenje/pogledi-na-dokument','hr'),(4326,'node/3701','ms-word-osnovno-koristenje/rad-s-vise-dokumenata-i-podijeljenim-ekranom','hr'),(4327,'node/3702','ms-word-osnovno-koristenje/kopiranje-i-premjestanje-teksta','hr'),(4328,'node/3703','ms-word-osnovno-koristenje/prenosenje-oblikovanja','hr'),(4329,'node/3704','ms-word-osnovno-koristenje/uredivanje-teksta-0','hr'),(4330,'node/3705','ms-word-osnovno-koristenje/uredivanje-odlomka','hr'),(4331,'node/3706','ms-word-osnovno-koristenje/prekid-stranice','hr'),(4332,'node/3707','ms-word-osnovno-koristenje/numeriranje-stranica','hr'),(4333,'node/3708','ms-word-osnovno-koristenje/obrubi-i-sjencanje','hr'),(4334,'node/3709','ms-word-osnovno-koristenje/graficke-oznake-i-numeriranje','hr'),(4335,'node/3710','ms-word-osnovno-koristenje/rad-s-tablicama','hr'),(4336,'node/3711','ms-word-osnovno-koristenje/kreiranje-tablice','hr'),(4337,'node/3712','ms-word-osnovno-koristenje/izmjene-tablice','hr'),(4338,'node/3713','ms-word-osnovno-koristenje/uredivanje-i-crtanje-tablice','hr'),(3991,'user/364','users/anamikulecorbicohr',''),(3992,'user/365','users/gordanaskomrak-smolarorbicohr',''),(3993,'user/366','users/almabrajkovicorbicohr',''),(3994,'user/367','users/hrvojehorvatinecgmailcom',''),(3995,'user/368','users/anamarijaborovacorbicohr',''),(3996,'user/369','users/klaudiavincetichit-comhr',''),(3997,'user/370','users/aleksandrafehir-slukicorbicohr',''),(3998,'user/371','users/davorkendiorbicohr',''),(3999,'user/372','users/petarzlatoperorbicohr',''),(4000,'user/373','users/carmencucekorbicohr',''),(4001,'user/374','users/andrejbilalovic-kelesorbicohr',''),(4002,'user/375','users/mirjanakovacicekorbicohr',''),(4003,'user/376','users/dubravkamandityorbicohr',''),(4004,'user/377','users/niksaruzicorbicohr',''),(4005,'user/378','users/dariofisergmailcom',''),(4006,'user/379','users/natasabucicorbicohr',''),(4007,'user/380','users/vickogeneralicorbicohr',''),(4008,'user/381','users/sanjavranjesorbicohr',''),(4009,'user/382','users/markofistricorbicohr',''),(4010,'user/383','users/sonjabablerorbicohr',''),(4011,'user/384','users/jasminaercegorbicohr',''),(4012,'user/385','users/danijelakamberovicorbicohr',''),(4013,'user/386','users/irisnuicorbicohr',''),(4014,'user/387','users/mariostanojcicorbicohr',''),(4015,'user/388','users/tomislavhunskiorbicohr',''),(4016,'user/389','users/mirovladusicorbicohr',''),(4017,'user/390','users/joskopurisicorbicohr',''),(4018,'user/391','users/sladanaradeljicorbicohr',''),(4019,'user/392','users/gordanamilosicorbicohr',''),(4020,'user/393','users/barbaraimperorbicohr',''),(4021,'user/394','users/zvijezdanagrsic-mazurinorbicohr',''),(4022,'user/395','users/natasaceroveckiorbicohr',''),(4023,'user/396','users/tamaravagicorbicohr',''),(4024,'user/397','users/josipkoricancicgmailcom',''),(4025,'user/398','users/tomislavsereggmailcom',''),(4026,'user/399','users/sanjamesicorbicohr',''),(4027,'user/400','users/marijanadjorbicohr',''),(4028,'user/401','users/kresimirnovakorbicohr',''),(4029,'user/402','users/marintomicorbicohr',''),(4030,'user/403','users/renatosusecorbicohr',''),(4031,'user/404','users/vanjaplackoorbicohr',''),(4032,'user/405','users/djenitothorbicohr',''),(4033,'user/406','users/predragbojicorbicohr',''),(4034,'user/407','users/zoranhinicorbicohr',''),(4035,'user/408','users/antevrdoljakorbicohr',''),(4036,'user/409','users/matijainjicgmailcom',''),(4037,'user/410','users/vlahovicjpgcom',''),(4339,'node/3714','ms-word-osnovno-koristenje/slike-i-posebni-znakovi','hr'),(4340,'node/3715','ms-word-osnovno-koristenje/unos-posebnih-znakova','hr'),(4341,'node/3716','ms-word-osnovno-koristenje/rad-sa-slikom','hr'),(4343,'node/3718','content/primjeri-i-zadaci-paste-special-davorkendiorbicohr','hr'),(4344,'node/3719','content/primjeri-i-zadaci-matematicke-funkcije-gordanaskomrak-smolarorbicohr','hr'),(4345,'node/3720','content/primjeri-i-zadaci-paste-special-mariostanojcicorbicohr','hr'),(4346,'node/3721','content/primjeri-i-zadaci-paste-special-djenitothorbicohr','hr'),(4347,'node/3722','content/primjeri-i-zadaci-zaokruzivanje-brojeva-gordanaskomrak-smolarorbicohr','hr'),(4348,'node/3723','content/primjeri-i-zadaci-paste-special-vlahovicjpgcom','hr'),(4349,'node/3724','content/primjeri-i-zadaci-kategorije-funkcija-vlahovicjpgcom','hr'),(4350,'node/3725','content/primjeri-i-zadaci-matematicke-funkcije-vlahovicjpgcom','hr'),(4351,'node/3726','content/primjeri-i-zadaci-relacije-i-relacijske-formule-vlahovicjpgcom','hr'),(4352,'node/3727','content/primjeri-i-zadaci-pivot-tablice-vanjaplackoorbicohr','hr'),(4353,'node/3728','content/primjeri-i-zadaci-paste-special-klaudiavincetichit-comhr','hr'),(4354,'node/3729','content/primjeri-i-zadaci-matematicke-funkcije-klaudiavincetichit-comhr','hr'),(4355,'node/3730','content/primjeri-i-zadaci-kategorije-funkcija-djenitothorbicohr','hr'),(4356,'node/3731','content/primjeri-i-zadaci-matematicke-funkcije-djenitothorbicohr','hr'),(4357,'node/3732','content/primjeri-i-zadaci-statisticke-funkcije-djenitothorbicohr','hr'),(4358,'node/3733','content/primjeri-i-zadaci-goal-seek-djenitothorbicohr','hr'),(4359,'node/3734','content/primjeri-i-zadaci-relacije-i-relacijske-formule-djenitothorbicohr','hr'),(4360,'node/3735','content/primjeri-i-zadaci-funkcija-if-djenitothorbicohr','hr'),(4361,'node/3736','content/primjeri-i-zadaci-logicke-funkcije-djenitothorbicohr','hr'),(4362,'node/3737','content/primjeri-i-zadaci-uvjetne-funkcije-sumif-i-countif-djenitothorbicohr','hr'),(4363,'node/3738','content/primjeri-i-zadaci-kategorije-funkcija-davorkendiorbicohr','hr'),(4364,'node/3739','content/primjeri-i-zadaci-matematicke-funkcije-davorkendiorbicohr','hr'),(4365,'node/3740','content/primjeri-i-zadaci-zaokruzivanje-brojeva-davorkendiorbicohr','hr'),(4366,'node/3741','content/primjeri-i-zadaci-zaokruzivanje-brojeva-klaudiavincetichit-comhr','hr'),(4367,'node/3742','content/primjeri-i-zadaci-statisticke-funkcije-klaudiavincetichit-comhr','hr'),(4368,'node/3743','content/primjeri-i-zadaci-statisticke-funkcije-davorkendiorbicohr','hr'),(4369,'node/3744','content/primjeri-i-zadaci-goal-seek-davorkendiorbicohr','hr'),(4370,'node/3745','content/primjeri-i-zadaci-relacije-i-relacijske-formule-davorkendiorbicohr','hr'),(4371,'node/3746','content/primjeri-i-zadaci-funkcija-if-davorkendiorbicohr','hr'),(4372,'node/3747','content/primjeri-i-zadaci-relacije-i-relacijske-formule-davorkendiorbicohr-0','hr'),(4373,'node/3748','content/primjeri-i-zadaci-logicke-funkcije-davorkendiorbicohr','hr'),(4374,'node/3749','content/primjeri-i-zadaci-uvjetne-funkcije-sumif-i-countif-davorkendiorbicohr','hr'),(4375,'node/3750','content/primjeri-i-zadaci-provjera-unosa-podataka-davorkendiorbicohr','hr'),(4376,'node/3751','content/primjeri-i-zadaci-funkcija-match-djenitothorbicohr','hr'),(4377,'node/3752','content/primjeri-i-zadaci-funkcija-vlookup-djenitothorbicohr','hr'),(4378,'node/3753','content/primjeri-i-zadaci-baze-podataka-u-excelu-djenitothorbicohr','hr'),(4379,'node/3754','content/primjeri-i-zadaci-goal-seek-klaudiavincetichit-comhr','hr'),(4380,'node/3755','content/primjeri-i-zadaci-relacije-i-relacijske-formule-klaudiavincetichit-comhr','hr'),(4381,'node/3756','content/primjeri-i-zadaci-provjera-unosa-podataka-list-davorkendiorbicohr','hr'),(4382,'node/3757','content/primjeri-i-zadaci-oblikovanje-celija-obzirom-na-upisanu-vrijednost-davorkendiorbicohr','hr'),(4383,'node/3758','content/primjeri-i-zadaci-uvjetno-oblikovanje-celija-davorkendiorbicohr','hr'),(4384,'node/3759','content/primjeri-i-zadaci-racunanje-s-datumima-davorkendiorbicohr','hr'),(4385,'node/3760','content/primjeri-i-zadaci-datumske-i-vremenske-funkcije-davorkendiorbicohr','hr'),(4386,'node/3761','content/primjeri-i-zadaci-statisticke-funkcije-gordanaskomrak-smolarorbicohr','hr'),(4387,'node/3762','content/primjeri-i-zadaci-formule-s-tekstom-davorkendiorbicohr','hr'),(4388,'node/3763','content/primjeri-i-zadaci-funkcija-match-davorkendiorbicohr','hr'),(4389,'node/3764','content/primjeri-i-zadaci-zaokruzivanje-brojeva-barbaraimperorbicohr','hr'),(4390,'node/3765','content/primjeri-i-zadaci-funkcija-vlookup-davorkendiorbicohr','hr'),(4391,'node/3766','content/primjeri-i-zadaci-baze-podataka-u-excelu-davorkendiorbicohr','hr'),(4392,'node/3767','content/primjeri-i-zadaci-excel-tablice-davorkendiorbicohr','hr'),(4393,'node/3768','content/primjeri-i-zadaci-sortiranje-davorkendiorbicohr','hr'),(4394,'node/3769','content/primjeri-i-zadaci-filtriranje-odabirom-davorkendiorbicohr','hr'),(4395,'node/3770','content/primjeri-i-zadaci-filtriranje-postavljanjem-kriterija-davorkendiorbicohr','hr'),(4396,'node/3771','content/primjeri-i-zadaci-napredno-filtriranje-davorkendiorbicohr','hr'),(4397,'node/3772','content/primjeri-i-zadaci-kriteriji-davorkendiorbicohr','hr'),(4398,'node/3773','content/primjeri-i-zadaci-jedinstvene-vrijednosti-davorkendiorbicohr','hr'),(4399,'node/3774','content/primjeri-i-zadaci-subtotali-davorkendiorbicohr','hr'),(4400,'node/3775','content/primjeri-i-zadaci-pivot-tablice-davorkendiorbicohr','hr'),(4401,'node/3776','content/primjeri-i-zadaci-rad-s-pivot-tablicom-davorkendiorbicohr','hr'),(4402,'node/3777','content/primjeri-i-zadaci-izgled-pivot-tablice-davorkendiorbicohr','hr'),(4403,'node/3778','content/primjeri-i-zadaci-oblikovanje-pivot-tablice-davorkendiorbicohr','hr'),(4404,'node/3779','content/primjeri-i-zadaci-sortiranje-u-pivot-tablici-davorkendiorbicohr','hr'),(4405,'node/3780','content/primjeri-i-zadaci-filtriranje-u-pivot-tablici-davorkendiorbicohr','hr'),(4406,'node/3781','content/primjeri-i-zadaci-grupe-i-subtotali-davorkendiorbicohr','hr'),(4407,'node/3782','content/primjeri-i-zadaci-grupiranje-podataka-u-pivot-tablici-davorkendiorbicohr','hr'),(4408,'node/3783','content/primjeri-i-zadaci-values-polje-davorkendiorbicohr','hr'),(4409,'node/3784','content/primjeri-i-zadaci-paste-special-hrvojehorvatinecgmailcom','hr'),(4410,'node/3785','content/primjeri-i-zadaci-paste-special-davorkendiorbicohr-0','hr'),(4411,'node/3786','content/primjeri-i-zadaci-subtotali-davorkendiorbicohr-0','hr'),(4412,'node/3787','content/test-kvit','hr'),(4413,'node/3788','content/1-my-sister-housewife',''),(4414,'node/3789','content/2-dennis-work-weekends',''),(4415,'node/3790','content/3-how-time-have-you-got',''),(4416,'node/3791','content/4-there-some-mistakes-your-report',''),(4417,'node/3792','content/5-we-normally-eat-out-fridays',''),(4418,'node/3793','content/6-i-m-sorry-you-can-t-party',''),(4419,'node/3794','content/7-stay-here-little-bit-longer',''),(4420,'node/3795','content/8-phillip-and-his-friends-skiing-last-winte',''),(4421,'node/3796','content/9-i-your-computer-while-you-were-out-it-wa',''),(4422,'node/3797','content/10-when-last-time-you-had-headache',''),(4423,'node/3798','content/11-we-never-eaten-snails',''),(4424,'node/3799','content/12-my-daughter-her-new-mobile-phone',''),(4425,'node/3800','content/13-how-long-they-lived-elstree',''),(4426,'node/3801','content/14-if-i-were-you-i-call-annie-immediately',''),(4427,'node/3802','content/15-if-it-rains-match-postponed',''),(4428,'node/3803','content/16-i-wish-they-help-us',''),(4429,'node/3804','content/17-when-i-came-see-mary-last-night-i-saw',''),(4430,'node/3805','content/18-i-wouldn-t-have-disturbed-you-if-i-you',''),(4431,'node/3806','content/19-time-sue-arrives-here-we',''),(4432,'node/3807','content/20-what-s-weather-going-be-tomorr',''),(4433,'node/3808','content/21-please-remember-when-you-come-back',''),(4434,'node/3809','content/22-there-s-no-use-convince-them-they',''),(4435,'node/3810','content/23-we-came-late-we-didn-t-miss-beginn',''),(4436,'node/3811','content/24-sam-has-taken-photography-he-s-really',''),(4437,'node/3812','content/25-mrs-magnus-asked-her-students-pen-bu',''),(4438,'node/3813','content/26-if-only-we-information-last-week-be',''),(4439,'node/3814','content/27-not-only-late-i-also-lost-my-id',''),(4440,'node/3815','content/28-end-despite-my-fears-hosting-confer',''),(4441,'node/3816','content/29-please-remember-you-anything-anyone',''),(4442,'node/3817','content/30-are-you-sure-we-are-get-there-time',''),(4443,'node/3818','content/31-i-can-t-find-my-mobile-i-it-work',''),(4444,'node/3819','content/32-we-re-not-getting-anywhere-we',''),(4445,'node/3820','content/33-i-don-t-think-she-ll-manage-deadli',''),(4446,'node/3821','content/34-talk-greg-you-know-you-can-rely-him','');
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:31
