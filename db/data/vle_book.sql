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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `mlid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `bid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mlid`),
  UNIQUE KEY `nid` (`nid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (4697,3484,459),(3023,374,374),(4682,3469,459),(4688,3475,459),(4687,3474,459),(4681,3468,459),(4686,3473,459),(4691,3478,459),(4642,3429,3077),(4683,3470,459),(4684,3471,459),(4795,3582,284),(4789,3576,284),(4786,3573,284),(4805,3592,349),(4782,3569,284),(4784,3571,284),(4791,3578,284),(4787,3574,284),(4780,3567,284),(4797,3584,284),(4779,3566,284),(4778,3565,284),(4775,3562,284),(4768,3555,284),(4777,3564,284),(4770,3557,284),(4773,3560,284),(4781,3568,284),(4798,3585,284),(4774,3561,284),(4771,3558,284),(4799,3586,284),(2998,349,349),(4648,3435,3077),(4893,3680,3460),(4689,3476,459),(4660,3447,3077),(4663,3450,3077),(4666,3453,3077),(4680,3467,459),(4647,3434,3077),(4679,3466,459),(4644,3431,3077),(4892,3679,3460),(4678,3465,459),(4658,3445,3077),(4667,3454,3077),(4675,3462,459),(4652,3439,3077),(4656,3443,3077),(4657,3444,3077),(4655,3442,3077),(4665,3452,3077),(4677,3464,459),(4649,3436,3077),(4661,3448,3077),(4659,3446,3077),(4664,3451,3077),(4662,3449,3077),(4673,3460,3460),(4874,3661,3460),(4676,3463,459),(4801,3588,349),(4890,3677,3460),(4671,3458,3077),(4891,3678,3460),(4674,3461,459),(4669,3456,3077),(4653,3440,3077),(4650,3437,3077),(4651,3438,3077),(4670,3457,3077),(4672,3459,3077),(4654,3441,3077),(2933,284,284),(4645,3432,3077),(4803,3590,349),(4885,3672,3460),(4876,3663,3460),(4875,3662,3460),(4858,3645,3078),(4862,3649,3078),(4790,3577,284),(4793,3580,284),(4260,3077,3077),(2874,200,200),(4668,3455,3077),(4894,3681,3460),(4859,3646,3078),(4861,3648,3078),(4863,3650,3078),(4794,3581,284),(4864,3651,3460),(4860,3647,3078),(4865,3652,3460),(4867,3654,3460),(4785,3572,284),(4866,3653,3460),(4898,3685,374),(4869,3656,3460),(4868,3655,3460),(4788,3575,284),(4870,3657,3460),(4877,3664,3460),(4879,3666,3460),(4792,3579,284),(4261,3078,3078),(4641,3428,3077),(4800,3587,284),(4646,3433,3077),(4872,3659,3460),(4873,3660,3460),(4643,3430,3077),(4884,3671,3460),(4882,3669,3460),(4881,3668,3460),(4880,3667,3460),(4878,3665,3460),(4796,3583,284),(4883,3670,3460),(4887,3674,3460),(4888,3675,3460),(4871,3658,3460),(4886,3673,3460),(4896,3683,374),(4897,3684,374),(4895,3682,3460),(4889,3676,3460),(4696,3483,459),(4695,3482,459),(4693,3480,459),(4694,3481,459),(4700,3487,459),(4690,3477,459),(4698,3485,459),(4685,3472,459),(4701,3488,459),(4699,3486,459),(4708,3495,200),(4702,3489,459),(4705,3492,459),(4706,3493,459),(4783,3570,284),(4707,3494,200),(4704,3491,459),(4709,3496,200),(4712,3499,200),(4710,3497,200),(4692,3479,459),(4717,3504,200),(4713,3500,200),(4711,3498,200),(4703,3490,459),(4718,3505,200),(4715,3502,200),(4909,3696,374),(4809,3596,349),(4806,3593,349),(4714,3501,200),(4719,3506,200),(4720,3507,200),(4716,3503,200),(4807,3594,349),(4722,3509,200),(4727,3514,200),(4721,3508,200),(4724,3511,200),(4731,3518,200),(4729,3516,200),(4726,3513,200),(4723,3510,200),(4730,3517,200),(4802,3589,349),(4734,3521,200),(4725,3512,200),(4728,3515,200),(4740,3527,200),(4733,3520,200),(4732,3519,200),(4804,3591,349),(4736,3523,200),(4737,3524,200),(4735,3522,200),(4808,3595,349),(4739,3526,200),(4738,3525,200),(4743,3530,200),(4745,3532,200),(3091,442,442),(4818,3605,349),(4812,3599,349),(4814,3601,349),(4816,3603,349),(3909,1814,284),(3908,1813,349),(3907,1809,200),(3099,450,450),(4817,3604,349),(4811,3598,349),(4810,3597,349),(4813,3600,349),(4815,3602,349),(4821,3608,349),(4819,3606,349),(4820,3607,349),(3108,459,459),(4912,3699,374),(4746,3533,200),(4741,3528,200),(4742,3529,200),(4744,3531,200),(4920,3707,374),(4747,3534,200),(4749,3536,200),(4748,3535,200),(4750,3537,200),(4752,3539,284),(4756,3543,284),(4751,3538,200),(4758,3545,284),(4754,3541,284),(4757,3544,284),(4755,3542,284),(4753,3540,284),(4902,3689,374),(4762,3549,284),(4760,3547,284),(4767,3554,284),(4761,3548,284),(4764,3551,284),(4765,3552,284),(4904,3691,374),(4759,3546,284),(4763,3550,284),(4766,3553,284),(4928,3715,374),(4776,3563,284),(4769,3556,284),(3922,1819,374),(4899,3686,374),(3924,1823,442),(3925,1824,450),(3926,1826,459),(4918,3705,374),(4926,3713,374),(4910,3697,374),(4908,3695,374),(4916,3703,374),(4924,3711,374),(4900,3687,374),(4822,3609,349),(4913,3700,374),(4915,3702,374),(4919,3706,374),(4903,3690,374),(4921,3708,374),(4906,3693,374),(4923,3710,374),(4927,3714,374),(4925,3712,374),(4901,3688,374),(4911,3698,374),(4827,3614,3078),(4905,3692,374),(4922,3709,374),(4907,3694,374),(4917,3704,374),(4929,3716,374),(4914,3701,374),(4823,3610,349),(4829,3616,3078),(4824,3611,349),(4828,3615,3078),(4830,3617,3078),(4826,3613,3078),(4831,3618,3078),(4835,3622,3078),(4832,3619,3078),(4833,3620,3078),(4825,3612,3078),(4834,3621,3078),(4843,3630,3078),(4841,3628,3078),(4838,3625,3078),(4836,3623,3078),(4849,3636,3078),(4839,3626,3078),(4842,3629,3078),(4840,3627,3078),(4837,3624,3078),(4847,3634,3078),(4845,3632,3078),(4851,3638,3078),(4848,3635,3078),(4846,3633,3078),(4844,3631,3078),(4850,3637,3078),(4852,3639,3078),(4855,3642,3078),(4853,3640,3078),(4857,3644,3078),(4856,3643,3078),(4854,3641,3078);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:32