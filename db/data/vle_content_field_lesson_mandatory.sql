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
-- Table structure for table `content_field_lesson_mandatory`
--

DROP TABLE IF EXISTS `content_field_lesson_mandatory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_field_lesson_mandatory` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_lesson_mandatory_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_field_lesson_mandatory`
--

LOCK TABLES `content_field_lesson_mandatory` WRITE;
/*!40000 ALTER TABLE `content_field_lesson_mandatory` DISABLE KEYS */;
INSERT INTO `content_field_lesson_mandatory` VALUES (3957,3682,NULL),(3955,3680,NULL),(3956,3681,NULL),(3952,3677,NULL),(3953,3678,NULL),(3954,3679,NULL),(3917,3642,NULL),(3918,3643,NULL),(3919,3644,NULL),(3920,3645,NULL),(3921,3646,NULL),(3922,3647,NULL),(3923,3648,NULL),(3913,3638,NULL),(3914,3639,NULL),(3915,3640,NULL),(3916,3641,NULL),(3906,3631,NULL),(3907,3632,NULL),(3908,3633,NULL),(3909,3634,NULL),(3910,3635,NULL),(3911,3636,NULL),(3912,3637,NULL),(3902,3627,NULL),(3903,3628,NULL),(3904,3629,NULL),(3905,3630,NULL),(3901,3626,NULL),(3900,3625,NULL),(3898,3623,NULL),(3899,3624,NULL),(3892,3617,NULL),(3893,3618,NULL),(3894,3619,NULL),(3895,3620,NULL),(3896,3621,NULL),(3897,3622,NULL),(3891,3616,NULL),(3864,3589,NULL),(3865,3590,NULL),(3866,3591,NULL),(3867,3592,NULL),(3868,3593,NULL),(3869,3594,NULL),(3870,3595,NULL),(3871,3596,NULL),(3872,3597,NULL),(3873,3598,NULL),(3874,3599,NULL),(3875,3600,NULL),(3876,3601,NULL),(3877,3602,NULL),(3878,3603,NULL),(3879,3604,NULL),(3880,3605,NULL),(3881,3606,NULL),(3882,3607,NULL),(3883,3608,NULL),(3884,3609,NULL),(3885,3610,NULL),(3886,3611,NULL),(3887,3612,NULL),(3888,3613,NULL),(3889,3614,NULL),(3890,3615,NULL),(3862,3587,NULL),(3863,3588,NULL),(3853,3578,NULL),(3854,3579,NULL),(3855,3580,NULL),(3856,3581,NULL),(3857,3582,NULL),(3858,3583,NULL),(3859,3584,NULL),(3860,3585,NULL),(3861,3586,NULL),(3703,3428,NULL),(175,97,NULL),(190,112,'2'),(191,113,'2'),(192,114,'2'),(193,115,'2'),(194,116,'1'),(196,118,'1'),(197,119,'2'),(198,120,'1'),(200,122,'1'),(202,124,'1'),(204,126,'2'),(205,127,'2'),(206,128,'1'),(207,129,'1'),(208,130,'2'),(209,131,'2'),(210,132,'2'),(211,133,'1'),(212,134,'1'),(213,135,'2'),(214,136,'2'),(215,137,'1'),(216,138,'1'),(217,139,'1'),(218,140,'1'),(219,141,'1'),(220,142,'1'),(221,143,'1'),(222,144,'1'),(223,145,'1'),(224,146,'1'),(225,147,'1'),(226,148,'1'),(227,149,'1'),(228,150,'1'),(229,151,'1'),(3958,3683,NULL),(3705,3430,NULL),(3706,3431,NULL),(284,205,NULL),(281,202,NULL),(280,201,NULL),(3959,3684,NULL),(285,206,NULL),(282,203,NULL),(283,204,NULL),(286,207,NULL),(287,208,NULL),(288,209,NULL),(289,210,NULL),(290,211,NULL),(291,212,NULL),(292,213,NULL),(293,214,NULL),(294,215,NULL),(295,216,NULL),(296,217,NULL),(297,218,NULL),(298,219,NULL),(299,220,NULL),(300,221,NULL),(301,222,NULL),(302,223,NULL),(303,224,NULL),(304,225,NULL),(305,226,NULL),(306,227,NULL),(307,228,NULL),(308,229,NULL),(309,230,NULL),(310,231,NULL),(311,232,NULL),(312,233,NULL),(313,234,NULL),(314,235,NULL),(315,236,NULL),(316,237,NULL),(3924,3649,NULL),(3925,3650,NULL),(3926,3651,NULL),(3927,3652,NULL),(3928,3653,NULL),(3929,3654,NULL),(3930,3655,NULL),(3931,3656,NULL),(3932,3657,NULL),(3933,3658,NULL),(3934,3659,NULL),(3935,3660,NULL),(3936,3661,NULL),(3937,3662,NULL),(3938,3663,NULL),(3939,3664,NULL),(3940,3665,NULL),(3941,3666,NULL),(3942,3667,NULL),(3943,3668,NULL),(3944,3669,NULL),(3945,3670,NULL),(3946,3671,NULL),(3947,3672,NULL),(3948,3673,NULL),(3949,3674,NULL),(3950,3675,NULL),(3951,3676,NULL),(3707,3432,NULL),(3708,3433,NULL),(3709,3434,NULL),(3710,3435,NULL),(3711,3436,NULL),(3712,3437,NULL),(3713,3438,NULL),(3714,3439,NULL),(3715,3440,NULL),(3716,3441,NULL),(3704,3429,NULL),(3850,3575,NULL),(3851,3576,NULL),(3852,3577,NULL),(3717,3442,NULL),(3718,3443,NULL),(3719,3444,NULL),(3720,3445,NULL),(3721,3446,NULL),(3722,3447,NULL),(3723,3448,NULL),(3724,3449,NULL),(3725,3450,NULL),(3726,3451,NULL),(3727,3452,NULL),(3728,3453,NULL),(3729,3454,NULL),(3730,3455,NULL),(3731,3456,NULL),(3732,3457,NULL),(3733,3458,NULL),(3734,3459,NULL),(3736,3461,NULL),(3737,3462,NULL),(3738,3463,NULL),(3739,3464,NULL),(3740,3465,NULL),(3741,3466,NULL),(3742,3467,NULL),(3743,3468,NULL),(3744,3469,NULL),(3745,3470,NULL),(3746,3471,NULL),(3747,3472,NULL),(3748,3473,NULL),(3749,3474,NULL),(3750,3475,NULL),(3751,3476,NULL),(3752,3477,NULL),(3753,3478,NULL),(3754,3479,NULL),(3755,3480,NULL),(3756,3481,NULL),(3757,3482,NULL),(3758,3483,NULL),(3759,3484,NULL),(3760,3485,NULL),(3761,3486,NULL),(3762,3487,NULL),(3763,3488,NULL),(3764,3489,NULL),(3765,3490,NULL),(3766,3491,NULL),(3767,3492,NULL),(3768,3493,NULL),(3769,3494,NULL),(3770,3495,NULL),(3771,3496,NULL),(3772,3497,NULL),(3773,3498,NULL),(3774,3499,NULL),(3775,3500,NULL),(3776,3501,NULL),(3777,3502,NULL),(3778,3503,NULL),(3779,3504,NULL),(3780,3505,NULL),(3781,3506,NULL),(3782,3507,NULL),(3783,3508,NULL),(3784,3509,NULL),(3785,3510,NULL),(3786,3511,NULL),(3787,3512,NULL),(3788,3513,NULL),(3789,3514,NULL),(3790,3515,NULL),(3791,3516,NULL),(3792,3517,NULL),(3793,3518,NULL),(3794,3519,NULL),(3795,3520,NULL),(3796,3521,NULL),(3797,3522,NULL),(3798,3523,NULL),(3799,3524,NULL),(3800,3525,NULL),(3801,3526,NULL),(3802,3527,NULL),(3803,3528,NULL),(3804,3529,NULL),(3805,3530,NULL),(3806,3531,NULL),(3807,3532,NULL),(3808,3533,NULL),(3809,3534,NULL),(3810,3535,NULL),(3811,3536,NULL),(3812,3537,NULL),(3813,3538,NULL),(3814,3539,NULL),(3815,3540,NULL),(3816,3541,NULL),(3817,3542,NULL),(3818,3543,NULL),(3819,3544,NULL),(3820,3545,NULL),(3821,3546,NULL),(3822,3547,NULL),(3823,3548,NULL),(3824,3549,NULL),(3825,3550,NULL),(3826,3551,NULL),(3827,3552,NULL),(3828,3553,NULL),(3829,3554,NULL),(3830,3555,NULL),(3831,3556,NULL),(3832,3557,NULL),(3833,3558,NULL),(3835,3560,NULL),(3836,3561,NULL),(3837,3562,NULL),(3838,3563,NULL),(3839,3564,NULL),(3840,3565,NULL),(3841,3566,NULL),(3842,3567,NULL),(3843,3568,NULL),(3844,3569,NULL),(3845,3570,NULL),(3846,3571,NULL),(3847,3572,NULL),(3848,3573,NULL),(3849,3574,NULL),(2039,1809,'1'),(2040,1809,'1'),(2044,1813,'1'),(2045,1813,'1'),(2046,1814,'1'),(2048,1814,'1'),(2052,1819,'1'),(2057,1823,'1'),(2058,1823,'1'),(2059,1824,'1'),(2060,1824,'1'),(2062,1826,'1'),(2063,1826,'1'),(3960,3685,NULL),(3961,3686,NULL),(3962,3687,NULL),(3963,3688,NULL),(3964,3689,NULL),(3965,3690,NULL),(3966,3691,NULL),(3967,3692,NULL),(3968,3693,NULL),(3969,3694,NULL),(3970,3695,NULL),(3971,3696,NULL),(3972,3697,NULL),(3973,3698,NULL),(3974,3699,NULL),(3975,3700,NULL),(3976,3701,NULL),(3977,3702,NULL),(3978,3703,NULL),(3979,3704,NULL),(3980,3705,NULL),(3981,3706,NULL),(3982,3707,NULL),(3983,3708,NULL),(3984,3709,NULL),(3985,3710,NULL),(3986,3711,NULL),(3987,3712,NULL),(3988,3713,NULL),(3989,3714,NULL),(3990,3715,NULL),(3991,3716,NULL),(3992,3558,NULL);
/*!40000 ALTER TABLE `content_field_lesson_mandatory` ENABLE KEYS */;
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
