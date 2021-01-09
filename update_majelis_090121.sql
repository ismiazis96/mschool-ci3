/*
SQLyog Enterprise - MySQL GUI v7.12 
MySQL - 5.5.5-10.4.14-MariaDB : Database - db_school
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_school` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_school`;

/*Table structure for table `tbl_agenda` */

DROP TABLE IF EXISTS `tbl_agenda`;

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  `agenda_pengguna_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_agenda` */

insert  into `tbl_agenda`(`agenda_id`,`agenda_nama`,`agenda_tanggal`,`agenda_deskripsi`,`agenda_mulai`,`agenda_selesai`,`agenda_tempat`,`agenda_waktu`,`agenda_keterangan`,`agenda_author`,`agenda_pengguna_id`) values (1,'Penyembelihan Hewan Kurban Idul Adha 2017','2017-01-22 13:18:01','Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.','2017-01-22','2017-01-22','M-Sekolah','08.00 - 11.00 WIB','Dihadiri oleh guru-guru, siswa dan pengurus OSIS','M Fikri Setiadi',NULL),(4,'Maulid Nabi','2020-09-28 22:33:07','Maulid nabi yang biasanya diadakan setiap tahun nya ','2020-10-29','2020-10-31','Rawa Buaya, cengkareng Jakarta barat','08.00 - 14.00 WIB','Jangan lupa bawa masker, dan juga bawa plastik untuk menyimpan sandal','Mohamad Ismi Azis',NULL),(8,'test donga gan','2021-01-09 14:11:40','testing','2021-01-11','2021-01-12','rumah','10.30-11.00 WIB','rumah','Mohamad Ismi Azis',2),(9,'Rewart diri udahh','2021-01-09 14:20:42','apa aja','2021-01-11','2021-01-11','Baitussalam','10.30-15.00 WIB','testing aja','Mohamad Ismi Azis',2),(11,'Peluncuran website','2021-01-09 14:46:53','test','2021-01-11','2021-01-12','Ramayana','19.30-22.00 WIB','aaaa','Mohamad Ismi Azis',2),(12,'satu nusa hahahah','2021-01-09 15:26:13','satu bangsa','2021-01-11','2021-01-12','Ramayana aja','08.00 - 14.00 Wib','test','Mohamad Ismi Azis',2);

/*Table structure for table `tbl_album` */

DROP TABLE IF EXISTS `tbl_album`;

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_album` */

insert  into `tbl_album`(`album_id`,`album_nama`,`album_tanggal`,`album_pengguna_id`,`album_author`,`album_count`,`album_cover`) values (1,'Kedatangan Tamu Asing','2016-09-08 20:00:55',1,'M Fikri Setiadi',5,'202aa754590dfc1070c624bad294abbc.jpg'),(3,'Pemilu Osis 2016-2017 udah','2017-01-21 08:58:16',2,'Mohamad Ismi Azis',3,'dc088a9fb62333012ff7a601828219d7.jpg'),(4,'Kegiatan Belajar majelis besok','2017-01-24 08:31:13',2,'Mohamad Ismi Azis',6,'203bc0411a07ed0430d39bcc38ec2c56.jpg');

/*Table structure for table `tbl_files` */

DROP TABLE IF EXISTS `tbl_files`;

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_files` */

insert  into `tbl_files`(`file_id`,`file_judul`,`file_deskripsi`,`file_tanggal`,`file_oleh`,`file_download`,`file_data`) values (2,'Dasar-dasar CSS','Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS','2017-01-23 11:30:01','Drs. Joko',0,'ab9a183ff240deadbedaff78e639af2f.pdf'),(3,'14 Teknik Komunikasi Yang Paling Efektif','Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar','2017-01-23 22:26:06','Drs. Joko',0,'ab2cb34682bd94f30f2347523112ffb9.pdf'),(4,'Bagaimana Membentuk Pola Pikir yang Baru','Ebook ini membantu anda membentuk pola pikir baru.','2017-01-23 22:27:07','Drs. Joko',0,'30f588eb5c55324f8d18213f11651855.pdf'),(5,'7 Tips Penting mengatasi Kritik','7 Tips Penting mengatasi Kritik','2017-01-23 22:27:44','Drs. Joko',0,'329a62b25ad475a148e1546aa3db41de.docx'),(6,'8 Racun dalam kehidupan kita','8 Racun dalam kehidupan kita','2017-01-23 22:28:17','Drs. Joko',0,'8e38ad4948ba13758683dea443fbe6be.docx'),(7,'Jurnal Teknolgi Informasi','Jurnal Teknolgi Informasi','2017-01-25 10:18:53','Gunawan, S.Pd',0,'87ae0f009714ddfdd79e2977b2a64632.pdf'),(8,'Jurnal Teknolgi Informasi 2','Jurnal Teknolgi Informasi','2017-01-25 10:19:22','Gunawan, S.Pd',0,'c4e966ba2c6e142155082854dc5b3602.pdf'),(9,'Naskah Publikasi IT','Naskah Teknolgi Informasi','2017-01-25 10:21:04','Gunawan, S.Pd',0,'71380b3cf16a17a02382098c028ece9c.pdf'),(10,'Modul Teknologi Informasi','Modul Teknologi Informasi','2017-01-25 10:22:08','Gunawan, S.Pd',0,'029143a3980232ab2900d94df36dbb0c.pdf'),(11,'Modul Teknologi Informasi Part II','Modul Teknologi Informasi','2017-01-25 10:22:54','Gunawan, S.Pd',0,'ea8f3f732576083156e509657614f551.pdf'),(12,'Modul Teknologi Informasi Part III','Modul Teknologi Informasi','2017-01-25 10:23:21','Gunawan, S.Pd',0,'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf'),(13,'Hidup lebih prodiktif','ini buku sangat bagus sekali','2020-09-28 23:55:58','hilman ramadhan',0,'f6608f0d96f8420c019ef133dc9a8238.pdf');

/*Table structure for table `tbl_galeri` */

DROP TABLE IF EXISTS `tbl_galeri`;

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_galeri` */

insert  into `tbl_galeri`(`galeri_id`,`galeri_judul`,`galeri_tanggal`,`galeri_gambar`,`galeri_album_id`,`galeri_pengguna_id`,`galeri_author`) values (4,'Diskusi Pemilihan Ketua Osis','2017-01-21 21:04:53','9b10fa300633f62f105e9b52789fc8f3.jpg',3,1,'M Fikri Setiadi'),(5,'Panitia Pemilu Osis','2017-01-22 11:13:20','0ec0c2f9aae6501d7ed7930995d48b57.jpg',3,1,'M Fikri Setiadi'),(6,'Proses Pemilu Osis','2017-01-22 11:13:43','bfbe6cc1c8096f5f36c68e93da53c248.jpg',3,1,'M Fikri Setiadi'),(7,'Belajar dengan native speaker','2017-01-24 08:26:22','831e5ad43ccc3c851d50c128ff095541.jpg',1,1,'M Fikri Setiadi'),(8,'Diskusi dengan native speaker','2017-01-24 08:27:05','84afbf1d3ad45932f1d7ac47b8a00949.jpg',1,1,'M Fikri Setiadi'),(9,'Foto bareng native speaker','2017-01-24 08:27:28','a99ab060d5d5bf8c96f24fe385f7dd8b.jpg',1,1,'M Fikri Setiadi'),(10,'Foto bareng native speaker','2017-01-24 08:28:40','d70cedba6391b7b3c74b914efd82953f.jpg',1,1,'M Fikri Setiadi'),(11,'Foto bareng native speaker','2017-01-24 08:28:54','10de99f425b9961ce1e87c5e5575f8f4.jpg',1,1,'M Fikri Setiadi'),(12,'Belajar sambil bermain','2017-01-24 08:31:42','9df82241493b94d1e06b461129cf57b2.jpg',4,1,'M Fikri Setiadi'),(13,'Belajar sambil bermain','2017-01-24 08:31:55','5374415f11683ad6dd31572a7bbf8a7b.jpg',4,1,'M Fikri Setiadi'),(14,'Belajar komputer programming','2017-01-24 08:32:24','82b91bd35706b21c3ab04e205e358eb6.jpg',4,1,'M Fikri Setiadi'),(15,'Belajar komputer programming','2017-01-24 08:32:34','93048f2a103987bce8c8ec8d6912de06.jpg',4,1,'M Fikri Setiadi'),(16,'Belajar komputer programming','2017-01-24 08:32:44','41f46be181f2f8452c2041b5e79a05a5.jpg',4,1,'M Fikri Setiadi'),(19,'File download Gambar HD','2020-09-28 23:58:35','8bb0709530779e4b7a8e9791d7aefc95.jpg',5,2,'Mohamad Ismi Azis'),(20,'File download Gambar HD','2020-09-28 23:59:14','b0eb9e1613668eebb55a95f1041065c6.jpg',5,2,'Mohamad Ismi Azis');

/*Table structure for table `tbl_guru` */

DROP TABLE IF EXISTS `tbl_guru`;

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL AUTO_INCREMENT,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_guru` */

insert  into `tbl_guru`(`guru_id`,`guru_nip`,`guru_nama`,`guru_jenkel`,`guru_tmp_lahir`,`guru_tgl_lahir`,`guru_mapel`,`guru_photo`,`guru_tgl_input`) values (1,'927482658274982','M Fikri Setiadi','L','Padang','25 September 1993','Teknik Komputer','f6bbe1e04e78e0d715e9830a605794aa.jpg','2017-01-26 14:49:43'),(2,'927482658274981','Thomas Muller','L','Germany','25 September 1989','Olahgara',NULL,'2017-01-26 20:38:54'),(3,'-','Joko Subroto','L','Jakarta','25 September 1989','PPKN, Matematika',NULL,'2017-01-26 20:41:20'),(4,'-','Kusta Otomo','L','Jakarta','25 September 1989','Seni Budaya',NULL,'2017-01-26 20:42:08'),(5,'-','Yuliani Ningsih','P','Padang','27 September 1993','Bahasa Indonesia',NULL,'2017-01-26 20:42:48'),(6,'927482658274993','Ari Hidayat','L','Padang','25 September 1993','Bahasa Inggris',NULL,'2017-01-26 20:43:46'),(7,'927482658274998','Irma Cantika','P','Padang','25 September 1993','Bahasa Inggris, IPA','4200d2514abf45755943526b74474c16.jpg','2017-01-26 20:45:11'),(8,'-','Ririn Febriesta','P','Padang','27 September 1994','Pend. Agama Islam',NULL,'2017-01-27 11:28:23'),(9,'1115040','Ustad Saadih','L','Jakarta','25 Agustus 1970','Agama','0b5c4040e045c2358a9f79c537dc34a0.png','2020-09-29 00:03:14'),(10,'1115040','Ustad Saadih S.PD','L','Jakarta','25 Sptember 1970','Agama','41953cec2d5b642343359f039efe6499.jpg','2021-01-09 10:37:43');

/*Table structure for table `tbl_inbox` */

DROP TABLE IF EXISTS `tbl_inbox`;

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_inbox` */

insert  into `tbl_inbox`(`inbox_id`,`inbox_nama`,`inbox_email`,`inbox_kontak`,`inbox_pesan`,`inbox_tanggal`,`inbox_status`) values (2,'M Fikri Setiadi','fikrifiver97@gmail.com','-','Ping !','2017-06-21 10:44:12',0),(3,'M Fikri Setiadi','fikrifiver97@gmail.com','-','Ini adalah pesan ','2017-06-21 10:45:57',0),(5,'M Fikri Setiadi','fikrifiver97@gmail.com','-','Ping !','2017-06-21 10:53:19',0),(7,'M Fikri Setiadi','fikrifiver97@gmail.com','-','Hi, there!','2017-07-01 14:28:08',0),(8,'M Fikri','fikrifiver97@gmail.com','084375684364','Hi There, Would you please help me about register?','2018-08-06 20:51:07',0);

/*Table structure for table `tbl_kategori` */

DROP TABLE IF EXISTS `tbl_kategori`;

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kategori` */

insert  into `tbl_kategori`(`kategori_id`,`kategori_nama`,`kategori_tanggal`) values (1,'Pendidikan','2016-09-06 12:49:04'),(2,'Politik','2016-09-06 12:50:01'),(3,'Sains','2016-09-06 12:59:39'),(5,'Penelitian','2016-09-06 13:19:26'),(6,'Prestasi','2016-09-07 09:51:09'),(13,'Olah Raga','2017-01-13 20:20:31'),(15,'Islami','2020-09-28 22:10:23');

/*Table structure for table `tbl_kelas` */

DROP TABLE IF EXISTS `tbl_kelas`;

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kelas` */

insert  into `tbl_kelas`(`kelas_id`,`kelas_nama`) values (1,'Kelas X.1'),(2,'Kelas X.2'),(3,'Kelas X.3'),(4,'Kelas X.4'),(5,'Kelas X.5'),(6,'Kelas X.6'),(7,'Kelas X.7'),(8,'Kelas XI IPA.1'),(9,'Kelas XI IPA.2'),(10,'Kelas XI IPA.3'),(11,'Kelas XI IPA.4'),(12,'Kelas XI IPA.5'),(13,'Kelas XI IPA.6'),(14,'Kelas XI IPA.7'),(15,'Kelas XI IPS.1'),(16,'Kelas XI IPS.2'),(17,'Kelas XI IPS.3'),(18,'Kelas XI IPS.4'),(19,'Kelas XI IPS.5'),(20,'Kelas XI IPS.6'),(21,'Kelas XI IPS.7');

/*Table structure for table `tbl_komentar` */

DROP TABLE IF EXISTS `tbl_komentar`;

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0,
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_komentar` */

insert  into `tbl_komentar`(`komentar_id`,`komentar_nama`,`komentar_email`,`komentar_isi`,`komentar_tanggal`,`komentar_status`,`komentar_tulisan_id`,`komentar_parent`) values (1,'M Fikri','fikrifiver97@gmail.com',' Nice Post.','2018-08-07 22:09:07','1',24,0),(2,'M Fikri Setiadi','fikrifiver97@gmail.com',' Awesome Post','2018-08-07 22:14:26','1',24,0),(3,'Joko','joko@gmail.com','Thank you.','2018-08-08 10:54:56','1',24,1),(6,'Mohamad Ismi Azis','','Terima kasih mas.','2020-09-26 19:52:00','1',24,2),(7,'siza','siza@gmail.com','ini website majelis sangat kompleks sekali dan bagus banget mudah bagi pembaca serta mencari infromasi disini. ','2020-09-28 22:15:21','1',26,0),(8,NULL,'','Terima Kasih banyak mas semoga bermanfaat, syukron ','2020-09-28 22:16:49','1',26,7);

/*Table structure for table `tbl_log_aktivitas` */

DROP TABLE IF EXISTS `tbl_log_aktivitas`;

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_log_aktivitas` */

/*Table structure for table `tbl_pengguna` */

DROP TABLE IF EXISTS `tbl_pengguna`;

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` varchar(10) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pengguna` */

insert  into `tbl_pengguna`(`pengguna_id`,`pengguna_nama`,`pengguna_moto`,`pengguna_jenkel`,`pengguna_username`,`pengguna_password`,`pengguna_tentang`,`pengguna_email`,`pengguna_nohp`,`pengguna_facebook`,`pengguna_twitter`,`pengguna_linkdin`,`pengguna_google_plus`,`pengguna_status`,`pengguna_level`,`pengguna_register`,`pengguna_photo`) values (2,'Mohamad Ismi Azis','Jangan Menyerah','L','admin','21232f297a57a5a743894a0e4a801fc3','I am Programmer Junior At Jakarta	','mohamadismiazis@gmail.com','0895334929462',NULL,NULL,NULL,NULL,'1','1','2020-09-26 19:18:05','0fb318e20e896bf74eb5ce203236cbb3.jpg'),(5,'Viani Putri',NULL,'P','viani','af03d9bcb3d43187bdc479b0cc97e192',NULL,'putridarma@gmail.com','085715152321',NULL,NULL,'us',NULL,'1','1','2020-09-28 08:10:50','b97f6931ddd5e57f873b8fa589650f7c.jpg'),(8,'tifah',NULL,'P','tifah','564188a60928cf38fbbb6d4f27b3b419',NULL,'tifah@gmail.com','0895334929462',NULL,NULL,NULL,NULL,'1','3','2020-09-28 09:37:55','d9545526a3b0e1caa9764a0d314505d1.jpg');

/*Table structure for table `tbl_pengumuman` */

DROP TABLE IF EXISTS `tbl_pengumuman`;

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL,
  `pengumuman_pengguna_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pengumuman` */

insert  into `tbl_pengumuman`(`pengumuman_id`,`pengumuman_judul`,`pengumuman_deskripsi`,`pengumuman_tanggal`,`pengumuman_author`,`pengumuman_pengguna_id`) values (1,'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017','Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.','2017-01-21 08:17:30','M Fikri Setiadi',NULL),(2,'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017','Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing','2017-01-21 08:16:20','M Fikri Setiadi',NULL),(3,'resmi','Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017','2017-01-22 14:16:16','Mohamad Ismi Azis',2),(9,'Islam itu indah uah','indah banget serus udahhh','2021-01-09 15:15:15','Mohamad Ismi Azis',2);

/*Table structure for table `tbl_pengunjung` */

DROP TABLE IF EXISTS `tbl_pengunjung`;

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=935 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pengunjung` */

insert  into `tbl_pengunjung`(`pengunjung_id`,`pengunjung_tanggal`,`pengunjung_ip`,`pengunjung_perangkat`) values (930,'2018-08-09 15:04:59','::1','Chrome'),(931,'2020-09-26 19:13:34','::1','Chrome'),(932,'2020-09-28 08:06:44','::1','Chrome'),(933,'2020-09-29 00:00:02','::1','Chrome'),(934,'2021-01-09 05:52:46','::1','Chrome');

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_siswa` */

insert  into `tbl_siswa`(`siswa_id`,`siswa_nis`,`siswa_nama`,`siswa_jenkel`,`siswa_kelas_id`,`siswa_photo`) values (1,'9287482','Alvaro Sanchez','L',8,'083d547659a2d4bb15c0322d15955da5.png'),(2,'9287483','Ririn Cantika','P',8,'74eec6ad37550cc12fe8fa83d46878af.jpg'),(4,'123083','Ari Hidayat','L',1,'e371e67618ad53c99de380782c373023.png'),(5,'123084','Irma Chaiyo','P',1,'1e148b42c71562841ba3018fc97b748a.png'),(6,'123085','Nadila Ginting','P',1,'8125da21f903803b6992214967239ab3.png'),(7,'123086','Anna Marina','P',1,'33eaf3e3faf28a0fe31670c022f641f1.png'),(8,'123086','Dhea Lubis','P',1,'03e651410e969c3c26e8e0d35380470d.png'),(9,'123087','Nadia Ginting','P',1,'d7823f8d98d376c085aa284a54d63264.png'),(10,'123088','Mita Febrina','P',1,'eca0280a4a57c911ee68b8318d1e517f.png'),(11,'123089','Elizabeth ','P',1,'ec1232a08d650bc8c3197c9db95a7fc8.png'),(12,'123090','Della Guswono','P',1,'6c82fce13bb3eff1fd2e897b2c3cfeeb.png'),(13,'3173012123421','Ismi Azis','L',21,'a0259e659360bfe434c6744a21c01151.jpg');

/*Table structure for table `tbl_testimoni` */

DROP TABLE IF EXISTS `tbl_testimoni`;

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_testimoni` */

/*Table structure for table `tbl_tulisan` */

DROP TABLE IF EXISTS `tbl_tulisan`;

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tulisan` */

insert  into `tbl_tulisan`(`tulisan_id`,`tulisan_judul`,`tulisan_isi`,`tulisan_tanggal`,`tulisan_kategori_id`,`tulisan_kategori_nama`,`tulisan_views`,`tulisan_gambar`,`tulisan_pengguna_id`,`tulisan_author`,`tulisan_img_slider`,`tulisan_slug`) values (20,'Persiapan siswa menjelang ujian nasional','<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN). Biantaranya mengingat dengan metode Mind Map, ataupun bejalar diluar kelas (outdoor).&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n','2017-05-17 16:24:42',1,'Pendidikan',29,'0a927c6d34dc5560b72f053313f14638.jpg',1,'M Fikri Setiadi',0,'persiapan-siswa-menjelang-ujian-nasional'),(22,'Prestasi membangga dari siswa MSchool','<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n','2017-05-17 16:38:21',6,'Prestasi',2,'a59aa487ab2e3b57b2fcf75063b67575.jpg',1,'M Fikri Setiadi',0,'prestasi-membangga-dari-siswa-mschool'),(23,'Pelaksanaan Ujian Nasional MSchool','<p>Pelaksanaan UN (Ujian Nasional) di sekolah M-Sekolah berlangsung tentram dan damai. Terlihat ketenangan terpancar diwajah siswa berprestasi.&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n','2017-05-17 16:41:30',1,'Pendidikan',4,'12bfb1953df800c59835a2796f8c6619.jpg',1,'M Fikri Setiadi',0,'pelaksanaan-ujian-nasional-mschool'),(24,'Proses belajar mengajar MSchool','<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n','2017-05-17 16:46:29',1,'Pendidikan',164,'ea114dc1ec5275560a5ef3238fd04722.jpg',1,'M Fikri Setiadi',0,'proses-belajar-mengajar-mschool'),(26,'Hidup ini indah','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummying text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Ini adalah updatean pertama saya beneran saya mengakui nya</p>\r\n\r\n<ol>\r\n	<li>ketuahanan yang maha esa</li>\r\n	<li>kemanusaiaan yang adil dan beradab</li>\r\n	<li>persatuan indonesia</li>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n','2020-09-28 22:14:03',13,'Olah Raga',8,'681804215dc44af5a67ad6bc6174a5d3.jpg',2,'Mohamad Ismi Azis',0,'hidup-ini-indah'),(27,'berita hangat','<p>kamu dimana dengan siapa</p>\r\n','2021-01-09 15:42:36',1,'Pendidikan',0,'ad4db201b27473ca5cba07df1ec893c8.png',2,'Mohamad Ismi Azis',0,'berita-hangat');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
