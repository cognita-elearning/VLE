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
-- Table structure for table `content_type_book`
--

DROP TABLE IF EXISTS `content_type_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type_book` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_elearner_idscodynamics_value` longtext,
  `field_assignment_reference_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`),
  KEY `field_assignment_reference_nid` (`field_assignment_reference_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_type_book`
--

LOCK TABLES `content_type_book` WRITE;
/*!40000 ALTER TABLE `content_type_book` DISABLE KEYS */;
INSERT INTO `content_type_book` VALUES (3949,3674,NULL,NULL),(3950,3675,'41880',NULL),(3951,3676,'41881',NULL),(3952,3677,'41882',NULL),(3953,3678,NULL,NULL),(3954,3679,'41884',NULL),(3955,3680,'41885',NULL),(3956,3681,'41886',NULL),(3957,3682,'41887',NULL),(3958,3683,NULL,NULL),(3959,3684,NULL,NULL),(3947,3672,'41877',NULL),(3948,3673,'41878',NULL),(3934,3659,'41864',NULL),(3935,3660,'41865',NULL),(3936,3661,'41866',NULL),(3937,3662,'41867',NULL),(3938,3663,'41868',NULL),(3939,3664,'41869',NULL),(3940,3665,'41870',NULL),(3941,3666,'41871',NULL),(3942,3667,NULL,NULL),(3943,3668,'41873',NULL),(3944,3669,'41874',NULL),(3945,3670,'41875',NULL),(3946,3671,'41876',NULL),(3916,3641,NULL,NULL),(3917,3642,'41975',NULL),(3918,3643,'41976',NULL),(3919,3644,'41977',NULL),(3920,3645,'41978',NULL),(3921,3646,NULL,NULL),(3922,3647,'41980',NULL),(3923,3648,NULL,NULL),(3924,3649,'41982',NULL),(3925,3650,'41983',NULL),(3926,3651,NULL,NULL),(3927,3652,'41888',NULL),(3928,3653,'41858',NULL),(3929,3654,'41859',NULL),(3930,3655,'41860',NULL),(3931,3656,'41861',NULL),(3932,3657,NULL,NULL),(3933,3658,'41863',NULL),(3914,3639,'41972',NULL),(3915,3640,'41973',NULL),(3913,3638,'41971',NULL),(3912,3637,'41970',NULL),(3910,3635,'41968',NULL),(3911,3636,'41969',NULL),(3908,3633,'41966',NULL),(3909,3634,NULL,NULL),(3703,3428,NULL,NULL),(3904,3629,'41962',NULL),(3905,3630,'41963',NULL),(3906,3631,NULL,NULL),(3907,3632,'41965',NULL),(3704,3429,NULL,NULL),(3705,3430,'41891',NULL),(3706,3431,NULL,NULL),(3707,3432,'41893',NULL),(3708,3433,'41894',NULL),(3709,3434,'41895',NULL),(3710,3435,'41896',NULL),(3711,3436,'41897',NULL),(3712,3437,'41898',NULL),(3713,3438,'41899',NULL),(3714,3439,NULL,NULL),(3715,3440,'41901',NULL),(3716,3441,'41902',NULL),(3717,3442,NULL,NULL),(3718,3443,'41904',NULL),(3719,3444,'41905',NULL),(3720,3445,'41906',NULL),(3721,3446,NULL,NULL),(3722,3447,NULL,NULL),(3723,3448,'41909',NULL),(3724,3449,NULL,NULL),(3725,3450,'41911',NULL),(3726,3451,'41912',NULL),(3727,3452,'41913',NULL),(3728,3453,'41914',NULL),(3729,3454,'41915',NULL),(3730,3455,NULL,NULL),(3731,3456,'41917',NULL),(3732,3457,'41918',NULL),(3733,3458,NULL,NULL),(3734,3459,'41920',NULL),(3736,3461,NULL,NULL),(3737,3462,'41825',NULL),(3738,3463,'41826',NULL),(3739,3464,'41827',NULL),(3740,3465,'41828',NULL),(3741,3466,NULL,NULL),(3742,3467,'41830',NULL),(3743,3468,'41831',NULL),(3744,3469,'41832',NULL),(3745,3470,'41833',NULL),(3746,3471,'41834',NULL),(3747,3472,'41835',NULL),(3748,3473,'41836',NULL),(3749,3474,'41837',NULL),(3750,3475,'41838',NULL),(3751,3476,'41839',NULL),(3752,3477,'41840',NULL),(3753,3478,'41841',NULL),(3754,3479,NULL,NULL),(3755,3480,'41843',NULL),(3756,3481,'41844',NULL),(3757,3482,'41845',NULL),(3758,3483,'41846',NULL),(3759,3484,'41847',NULL),(3760,3485,'41848',NULL),(3761,3486,NULL,NULL),(3762,3487,'41850',NULL),(3763,3488,'41851',NULL),(3764,3489,'41852',NULL),(3765,3490,NULL,NULL),(3766,3491,'41854',NULL),(3767,3492,'41855',NULL),(3768,3493,'41856',NULL),(3769,3494,NULL,NULL),(3770,3495,'41731',223),(3771,3496,NULL,NULL),(3772,3497,'41733',216),(3773,3498,'41734',219),(3774,3499,'41735',237),(3775,3500,'41736',232),(3776,3501,'41737',211),(3777,3502,NULL,NULL),(3778,3503,'41739',229),(3779,3504,'41740',208),(3780,3505,'41741',218),(3781,3506,'41742',234),(3782,3507,NULL,NULL),(3783,3508,'41744',225),(3784,3509,'41745',226),(3785,3510,'41746',221),(3786,3511,'41747',235),(3787,3512,NULL,NULL),(3788,3513,'41749',227),(3789,3514,'41750',202),(3790,3515,'41751',207),(3791,3516,NULL,NULL),(3792,3517,'41753',209),(3793,3518,'41754',210),(3794,3519,NULL,NULL),(3795,3520,'41756',201),(3796,3521,'41757',203),(3797,3522,'41758',230),(3798,3523,'41759',204),(3799,3524,'41760',205),(3800,3525,'41761',220),(3801,3526,'41762',217),(3802,3527,'41763',215),(3803,3528,'41764',233),(3804,3529,NULL,NULL),(3805,3530,'41766',224),(3806,3531,'41767',228),(3807,3532,'41768',214),(3808,3533,'41769',222),(3809,3534,'41770',231),(3810,3535,'41771',206),(3811,3536,'41772',212),(3812,3537,'41773',213),(3813,3538,'41774',236),(3814,3539,NULL,NULL),(3815,3540,NULL,NULL),(3816,3541,'41777',NULL),(3817,3542,'41778',NULL),(3818,3543,NULL,NULL),(3819,3544,'41780',NULL),(3820,3545,'41781',NULL),(3821,3546,NULL,NULL),(3822,3547,'41785',NULL),(3823,3548,'41783',NULL),(3824,3549,'41784',NULL),(3825,3550,NULL,NULL),(3826,3551,'41787',NULL),(3827,3552,'41788',NULL),(3828,3553,'41789',NULL),(3829,3554,NULL,NULL),(3830,3555,'41791',NULL),(3831,3556,NULL,NULL),(3832,3557,'41793',NULL),(3833,3558,NULL,NULL),(3835,3560,'41796',NULL),(3836,3561,NULL,NULL),(3837,3562,'41798',NULL),(3838,3563,'41799',NULL),(3839,3564,'41800',NULL),(3840,3565,'41801',NULL),(3841,3566,'41802',NULL),(3842,3567,NULL,NULL),(3843,3568,'41804',NULL),(3844,3569,'41805',NULL),(3845,3570,'41806',NULL),(3846,3571,'41807',NULL),(3847,3572,'41808',NULL),(3848,3573,NULL,NULL),(3849,3574,'41810',NULL),(3850,3575,'41811',NULL),(3851,3576,NULL,NULL),(3852,3577,'41813',NULL),(3853,3578,'41814',NULL),(3854,3579,NULL,NULL),(3855,3580,'41816',NULL),(3856,3581,NULL,NULL),(3857,3582,'41818',NULL),(3858,3583,'41819',NULL),(3859,3584,'41820',NULL),(3860,3585,NULL,NULL),(3861,3586,'41822',NULL),(3862,3587,'41823',NULL),(3863,3588,NULL,NULL),(3864,3589,'41922',NULL),(3865,3590,'41923',NULL),(3866,3591,NULL,NULL),(3867,3592,'41925',NULL),(3868,3593,'41926',NULL),(3869,3594,'41927',NULL),(3870,3595,'41928',NULL),(3871,3596,'41929',NULL),(3872,3597,'41930',NULL),(3873,3598,'41931',NULL),(3874,3599,'41932',NULL),(3875,3600,NULL,NULL),(3876,3601,'41934',NULL),(3877,3602,'41935',NULL),(3878,3603,'41936',NULL),(3879,3604,'41937',NULL),(3880,3605,'41938',NULL),(3881,3606,NULL,NULL),(3882,3607,'41940',NULL),(3883,3608,'41941',NULL),(3884,3609,NULL,NULL),(3885,3610,'41943',NULL),(3886,3611,'41944',NULL),(3887,3612,NULL,NULL),(3888,3613,'41946',NULL),(3889,3614,'41947',NULL),(3890,3615,'41948',NULL),(3891,3616,NULL,NULL),(3892,3617,'41950',NULL),(3893,3618,'41951',NULL),(3894,3619,NULL,NULL),(3895,3620,'41953',NULL),(3896,3621,'41954',NULL),(3897,3622,'41955',NULL),(3898,3623,'41956',NULL),(3899,3624,'41957',NULL),(3900,3625,'41958',NULL),(3901,3626,'41959',NULL),(3902,3627,'41960',NULL),(3903,3628,NULL,NULL),(2039,1809,NULL,NULL),(2040,1809,NULL,NULL),(2044,1813,NULL,NULL),(2045,1813,NULL,NULL),(2046,1814,NULL,NULL),(2048,1814,NULL,NULL),(2052,1819,NULL,NULL),(2057,1823,NULL,NULL),(2058,1823,NULL,NULL),(2059,1824,NULL,NULL),(2060,1824,NULL,NULL),(2062,1826,NULL,NULL),(2063,1826,NULL,NULL),(3960,3685,'41986',NULL),(3961,3686,NULL,NULL),(3962,3687,'41988',NULL),(3963,3688,'41989',NULL),(3964,3689,'41990',NULL),(3965,3690,'41991',NULL),(3966,3691,'41992',NULL),(3967,3692,'41993',NULL),(3968,3693,'41994',NULL),(3969,3694,'41995',NULL),(3970,3695,'41996',NULL),(3971,3696,'41997',NULL),(3972,3697,NULL,NULL),(3973,3698,NULL,NULL),(3974,3699,'42000',NULL),(3975,3700,'42001',NULL),(3976,3701,'42002',NULL),(3977,3702,'42003',NULL),(3978,3703,'42004',NULL),(3979,3704,NULL,NULL),(3980,3705,'42006',NULL),(3981,3706,'42007',NULL),(3982,3707,'42008',NULL),(3983,3708,'42009',NULL),(3984,3709,'42010',NULL),(3985,3710,NULL,NULL),(3986,3711,'42012',NULL),(3987,3712,'42013',NULL),(3988,3713,'42014',NULL),(3989,3714,NULL,NULL),(3990,3715,'42016',NULL),(3991,3716,'42017',NULL),(3992,3558,NULL,NULL);
/*!40000 ALTER TABLE `content_type_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:24
