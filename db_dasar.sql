-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2019 pada 12.00
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_kls`
--

CREATE TABLE `anggota_kls` (
  `nim` varchar(10) DEFAULT NULL,
  `kode_matkul` varchar(20) DEFAULT NULL,
  `kls_matkul` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `demo_device`
--

CREATE TABLE `demo_device` (
  `device_name` varchar(50) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `vc` varchar(50) NOT NULL,
  `ac` varchar(50) NOT NULL,
  `vkey` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `demo_device`
--

INSERT INTO `demo_device` (`device_name`, `sn`, `vc`, `ac`, `vkey`) VALUES
('Device 1', 'C700F002328', 'E44A32B335C4283', 'NWVBAFB710662F041883ANCK', 'F70753028EDAB72D526F2BE2C549E473'),
('Device 2', 'C700F001339', '7901D3C13E34109', 'VPFAAB943C33362467D451A0', 'AD090B9CB550CD9164F5844C369C3DB0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `demo_finger`
--

CREATE TABLE `demo_finger` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `finger_id` int(11) UNSIGNED NOT NULL,
  `finger_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `demo_log`
--

CREATE TABLE `demo_log` (
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_name` varchar(50) NOT NULL,
  `data` text NOT NULL COMMENT 'sn+pc time'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `demo_user`
--

CREATE TABLE `demo_user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(15) NOT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `ket_dosen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `ket_dosen`) VALUES
('0000', 'Efy Yosrita, S.Si, M.Kom', ''),
('1104', 'SELY KARMILA, S.kom., MSi.', ''),
('1106', 'MEILIA NUR INDAH SUSANTI, ST., M.KOM', ''),
('1112', 'DWINA KUSWARDANI, Dra., M.KOM', ''),
('1117', 'YESSY ASRI, ST., MMSI', ''),
('1251', 'IRFAN SEMBIRING, ST., M.TI', ''),
('1258', 'MUHAMMAD JAFAR ELLY, M.SI', ''),
('1267', 'ABDUL HARIS, S.KOM., M.KOM', ''),
('1268', 'RIKI RULI AFFANDI S., S.Kom., M.Kom', ''),
('1269', 'RAHMA FARAH NINGRUM. M.KOM', ''),
('1329', 'RAKHMAT ARIANTO S.ST., M.KOM', ''),
('1331', 'HENDRA JATNIKA, S.KOM., M.KOM', ''),
('5000', 'SYEPRY MAULANA HUSEIN, M.KOM', '    '),
('5425', 'M. YOGA DISTRA SUDIRMNA, S.T., M.T.I.', ''),
('5451', 'ABDURRASYID, S.KOM., MMSI', ''),
('5515', 'IRFAN NASRULLAH, S.KOM., M.KOM', ''),
('5516', 'ELIANDO, S.KOM., M.MTI', ''),
('5536', 'PRITASARI PALUPININGSIH, S.KOM., M.KOM', ''),
('5554', 'BUDI PRAYITNO, S.T., M.T', ''),
('5555', 'DESI ROSE HERTINA, S.T., M.KOM', ''),
('5556', 'MAX TEJA AJIE CIPTA WIDIYANTO', ''),
('5559', 'EKA PUTRA, S.KOM., M.KOM', ''),
('5560', 'SATRIO YUDHO, S.Kom., M.T.I.', ''),
('5567', 'WAHYU TISNO ATMOJO, M.KOM', ''),
('5572', ' MUHAIMIN HASANUDIN, S.T., M.Kom.', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `nim` varchar(10) DEFAULT NULL,
  `kode_matkul` varchar(20) DEFAULT NULL,
  `info` varchar(3000) DEFAULT NULL,
  `tgl_information` varchar(50) DEFAULT NULL,
  `judul_info` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`nim`, `kode_matkul`, `info`, `tgl_information`, `judul_info`) VALUES
('201831085', 'MTNC-2091', '<p>Jangan lupa absen ngawas!</p>\r\n', '06:11:04 / 25-11-2019', 'PERINGATAN!');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `kode_nama_kelas`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `kode_nama_kelas` (
`kode_matkul` varchar(20)
,`jam_matkul` varchar(20)
,`kelas_matkul` varchar(2)
,`nidn` varchar(15)
,`hari_matkul` varchar(15)
,`nama_matkul` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `kode_matkul` varchar(20) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `tgl_laporan` varchar(20) DEFAULT NULL,
  `nilai_laporan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_matkul` varchar(20) NOT NULL,
  `nama_matkul` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kode_matkul`, `nama_matkul`) VALUES
('C31040107', 'ALGORITMA & PEMROGRAMAN 1 + PRAKTEK'),
('C31040201', 'STRUKTUR DATA'),
('C31040203', 'PEMROGRAMAN VISUAL'),
('C31040311', 'SISTEM BASIS DATA + PRAKTEK'),
('C31040315', 'JARINGAN KOMPUTER + PRAKTEK'),
('C31040413', 'REKAYASA PERANGKAT LUNAK + PRAKTEK'),
('C31041401', 'DATA MINING & WAREHOUSING'),
('MTNC-2091', 'MAINTENANCE'),
('WS-AI', 'WORKSHOP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul_detail`
--

CREATE TABLE `matkul_detail` (
  `kode_matkul` varchar(20) DEFAULT NULL,
  `jam_matkul` varchar(20) DEFAULT NULL,
  `kelas_matkul` varchar(2) DEFAULT NULL,
  `nidn` varchar(15) DEFAULT NULL,
  `hari_matkul` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matkul_detail`
--

INSERT INTO `matkul_detail` (`kode_matkul`, `jam_matkul`, `kelas_matkul`, `nidn`, `hari_matkul`) VALUES
('C31040107', '08:00-10:30', 'C', '1269', 'Selasa'),
('C31041401', '11:00-12:40', 'A', '1112', 'Selasa'),
('C31040311', '08:00-10:30', 'H', '5560', 'Jumat'),
('C31040413', '08:00-11:20', 'A', '1331', 'Kamis'),
('C31040201', '08:00-09:40', 'A', '5572', 'Senin'),
('C31040315', '13:00-15:30', 'D', '5516', 'Selasa'),
('C31040203', '10:00-11:40', 'D', '1251', 'Sabtu'),
('C31040311', '13:00-16:20', 'I', '5425', 'Kamis'),
('C31040203', '08:00-09:40', 'E', '1251', 'Sabtu'),
('C31040311', '10:00-12:30', 'J', '1104', 'Senin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(50) DEFAULT NULL,
  `no_hp_mhs` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `status_mhs` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `recovery2` varchar(50) DEFAULT NULL,
  `recovery1` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim`, `nama_mhs`, `no_hp_mhs`, `pass`, `status_mhs`, `email`, `recovery2`, `recovery1`) VALUES
('201331173', 'IMAM FAISAL MAHDI', '084694606080', '123456', 'Mahasiswa', 'faisalmahdi16.fm@gmail.com', 'Dosen yang anda suka?', 'Joni'),
('201331252', 'Tri Yunita Putri Dewi', '081218003599', 'allahuakbaru', 'Mahasiswa', 'triyunitaputridewi16@gmail.com', 'Bebas?', 'Jimmy matatias'),
('201431048', 'lutfi hamdani', '', '12345678', 'Mahasiswa', 'lutfi1431048@sttpln.ac.id', 'Dosen yang anda suka?', 'haris'),
('201431099', 'imam akbar assyidiqi', '087868477731', 'kacangtujin', 'Mahasiswa', 'imamakbar24@gmail.com', 'Bebas?', 'ya'),
('201431131', 'I Wayan Vicar', '081770756068', 'letmein', 'Mahasiswa', 'boycito@gmail.com', 'Panggilan unik anda?', 'nyong'),
('201431163', 'aditio fitrisyah', '', '123456', 'Mahasiswa', 'Aditio.fitrisyah@gmail.com', 'Nama hewan peliharaan?', 'joni'),
('201431222', 'Muh. Ryan Al-Rasyid', '081219683106', 'qwerty', 'Mahasiswa', 'killjoys.joys@gmail.com', 'Dosen yang anda suka?', 'Jat'),
('201431262', 'ahmad renaldy firawangsa', '081381697120', 'aldy1996', 'Mahasiswa', 'ahmadrenaldy2203@gmail.com', 'Dosen yang anda suka?', 'Abdul haris'),
('201431314', 'Ferdinand Hendrik Wullur', '', 'aasdasd123', 'Mahasiswa', '', 'Dosen yang anda suka?', 'ya'),
('201531002', 'Gilang Budi Samudra', '085884204233', 'Gilang31', 'Mahasiswa', 'gilang1531002@sttpln.ac.id', 'Bebas?', 'Ya'),
('201531005', 'Irsandi Nugraha Setiabudi', '', '201531005', 'Mahasiswa', 'irsandins@gmail.com', 'Bebas?', '201531005'),
('201531006', 'Azhar Saher Ar Ramdan', '082230614695', 'azhar21.', 'Mahasiswa', 'azharsaher890@gmail.com', 'Nama hewan peliharaan?', 'anjing epen, lutung bimo, kecoak andria'),
('201531007', 'hafiz yohari', '081291499720', '140897yohari', 'Mahasiswa', 'hafizyohari@gmail.com', 'Panggilan unik anda?', 'djo'),
('201531009', 'Rahmawati Puspa Palupi', '085782805013', '201531009', 'Mahasiswa', 'rahmawatipuspa227@gmail.com', 'Nama hewan peliharaan?', 'Kucing'),
('201531011', 'Lea Vionica Br Sinulingga', '082169605746', 'Sinulingga', 'Mahasiswa', 'leavionicasinulinga@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201531012', 'Imam Luthfi', '081370916975', 'EV1LGHOST', 'Mahasiswa', 'Imam97alluthfi@gmail.com', 'Nama hewan peliharaan?', 'utoiy'),
('2015310122', 'Imam Luthfi', '087872674537', '3101224', 'Mahasiswa', 'Imam97alluthfi@gmail.com', 'Asisten yang anda suka?', 'uvuvwevwe'),
('201531014', 'Andini Prisilya Rasyid', '082227188898', 'rasyid1123', 'Mahasiswa', 'prisilyaandin1123@gmail.com', 'Dosen yang anda suka?', 'Pak ocit'),
('201531016', 'Muhammad Faiz Risky F', '123123', 'mantap', 'Mahasiswa', 'faiz2@gmail.com', 'Dosen yang anda suka?', 'bu karin'),
('201531023', 'Bimo Ardiansyah', '0895351568003', '366259', 'Mahasiswa', 'ardiansyah.bimo26@gmail.com', 'Nama hewan peliharaan?', 'efran'),
('201531026', 'Muhammad Alfin NF', '085733722237', 'adaaja', 'Asisten', 'jputra182@gmail.com', 'Dosen yang anda suka?', 'pak sukri'),
('201531029', 'Sri Fajar Riantri A', '', '201531029', 'Asisten', NULL, NULL, NULL),
('201531030', 'rezkyharyaji elanov', '081285478414', '201531030', 'Mahasiswa', '', 'Dosen yang anda suka?', 'pak haris'),
('201531033', 'Okta Citra Zulyanti', '082387136597', 'doraemon029', 'Mahasiswa', 'oktacitra39@gmail.com', 'Panggilan unik anda?', 'ucit'),
('201531034', 'Rizki Kurnia Hapsari', '081226157119', '190588', 'Mahasiswa', 'rizkikurnia2401@gmail.com', 'Dosen yang anda suka?', 'PA Andi'),
('201531036', 'MOCH RAMADHANI BIN MALIK', '082210907509', '201531036', 'Mahasiswa', 'rama1531036@sttpln.ac.id', 'Panggilan unik anda?', 'mr sigma'),
('201531037', 'Rahmat Rezki', '081296711167', 'rahmatrezki', 'Mahasiswa', 'rezkikira@gmail.com', 'Panggilan unik anda?', 'rahmat'),
('201531039', 'anita oktavianti', '081386081387', '061019965', 'Mahasiswa', 'anita1531039@sttpln.ac.id', 'Panggilan unik anda?', 'dek_nit'),
('201531040', 'TAHTA AKSA MAHA RAYA', '085773116596', 'tahtaaksamaharaya', 'Mahasiswa', 'tahta1531040@sttpln.ac.id', 'Panggilan unik anda?', 'tahta'),
('201531042', 'Bianca Pingkan Nevista', '081360516372', '1196', 'Mahasiswa', 'biancapn29@gmail.com', 'Nama hewan peliharaan?', 'burung'),
('201531043', 'silviana angraini juandi', '087801662014', 'silviana123', 'Mahasiswa', 'silviangraini27@gmail.com', 'Nama hewan peliharaan?', 'panda'),
('201531046', 'Prasetiyo Aldi Nugroho', '081252008828', '201531046', 'Mahasiswa', 'aldipras96@gmail.com', 'Bebas?', 'bebas dong'),
('201531048', 'Karina Sekarasti', '', '55555', 'Mahasiswa', 'ksekarasti@gmail.com', 'Nama hewan peliharaan?', 'michi'),
('201531049', 'yaumil akbar', '082276208277', 'sttpln15', 'Mahasiswa', 'yaumil.gasak@gmail.com', 'Panggilan unik anda?', 'Omil'),
('201531051', 'Nurul Najmi', '08128721462', 'katasandi', 'Mahasiswa', 'najmismada@gmail.com', 'Nama hewan peliharaan?', 'muezza'),
('201531057', 'Arianti Ninggar Risma', '', '241196', 'Mahasiswa', '', 'Dosen yang anda suka?', 'pak Haris'),
('201531058', 'Ardhan Irawan', '081229220527', '123456789', 'Mahasiswa', 'ardhanirawan437@gmail.com', 'Panggilan unik anda?', 'queen'),
('201531059', 'fitri fajrianti', '082370452260', '200715', 'Mahasiswa', 'fitrifazriyanti123@gmail.com', 'Panggilan unik anda?', 'adit'),
('201531060', 'Abdul Aziz', '081290559149', 'SilverCross', 'Mahasiswa', 'silvercrossero@gmail.com', 'Nama hewan peliharaan?', 'Kucing'),
('201531062', 'Rizzal Ikhsan M', '082176765532', 'ikhsan20', 'Mahasiswa', 'ikhsan20m.im@gmail.com', 'Dosen yang anda suka?', 'nirwana'),
('201531063', 'Ni Made Novia Rezkianti', '081213893179', 'nimadenoviarezkianti', 'Mahasiswa', 'madenovia17@gmail.com', 'Panggilan unik anda?', 'Made'),
('201531065', 'Ahmad Saybu Rizki', '082353200215', 'tidaktahu', 'Mahasiswa', 'a.saybu1531065@sttpln.ac.id', 'Panggilan unik anda?', 'Saybu'),
('201531069', 'Arief Eka Saputra', '081905325811', '201531069', 'Mahasiswa', 'ariefekas19@gmail.com', 'Nama hewan peliharaan?', 'michi'),
('201531070', 'Joshua Melvin', '087777002861', '123456', 'Mahasiswa', 'joshuamelvin@gmail.com', 'Bebas?', 'geser'),
('201531071', 'Septy Shintiya Devi', '081351764004', 'septy123', 'Mahasiswa', 'septyshintiyad@gmail.com', 'Panggilan unik anda?', 'devi'),
('201531072', 'singgih prabowo', '', 'singgihstt15', 'Mahasiswa', 'singgihstt@gmail.com', 'Dosen yang anda suka?', 'Semua'),
('201531073', 'Titis Faya Qiptiyani', '081391101782', 'rahasia', 'Mahasiswa', 'titisfaya3@gmail.com', 'Asisten yang anda suka?', 'faya'),
('201531074', 'RikoTurnip', '081277801243', 'rikoturnip', 'Mahasiswa', 'rikoturnip26@gmail.com', 'Dosen yang anda suka?', 'Pak Haris'),
('201531080', 'PINGKI DIAN SULISTIANI', '083866499749', 'pingki11', 'Mahasiswa', 'pingkydian22@gmail.com', 'Asisten yang anda suka?', 'dhifafiah'),
('201531081', 'Ramadesi W. Saragih', '', 'ramadesi', 'Mahasiswa', 'ramadesy.saragih@gmail.com', 'Dosen yang anda suka?', 'gaada'),
('201531083', 'Bayu Pamungkas', '0895389432962', 'bayup26', 'Mahasiswa', 'pamungkasbayu693@gmsil.com', 'Dosen yang anda suka?', 'Babeh'),
('201531084', 'Muhammad Andika Sakti', '087778040639', '237668', 'Mahasiswa', 'andika_sakti33@yahoo.co.id', 'Dosen yang anda suka?', 'pak bedi'),
('201531085', 'Eka Nurul Ishla Aslihi', '085311217021', '212311', 'Mahasiswa', 'ekanurul1531085@sttpln.ac.id', 'Nama hewan peliharaan?', 'buntel'),
('201531087', 'Henny Halimah Lubis', '082111156587', 'hennyhl', 'Mahasiswa', 'henny.halimah@gmail.com', 'Dosen yang anda suka?', 'Bu Yasni'),
('201531089', 'Intania Cahya Sari', '085204866508', '201531089', 'Mahasiswa', 'intantralala@gmail.com', 'Panggilan unik anda?', 'inem'),
('201531090', 'Muhammad Tessar Hidayat', '', '1234567', 'Mahasiswa', 'tessarhidayat7@gmail.com', 'Dosen yang anda suka?', 'putek'),
('201531091', 'Ashda Faricha Aulia', '085310703905', '123321', 'Mahasiswa', 'ashda1531091@sttpln.ac.id', 'Asisten yang anda suka?', 'Dhifafiah '),
('201531092', 'fasalam', '', 'salam', 'Mahasiswa', '', 'Bebas?', 'saya'),
('201531093', 'Arda Nadia Kumalasari', '081332330499', 'arda131313', 'Mahasiswa', 'kumalasari5@gmail.com', 'Asisten yang anda suka?', 'ee'),
('201531094', 'ubed sihombing', '201531094', 'handayani0110 ', 'Mahasiswa', 'ubedsihombing@gmail.com', 'Dosen yang anda suka?', 'adadehhhh'),
('201531095', 'Wahyudinianingsih', '', 'w9fwakelanef', 'Mahasiswa', '', 'Panggilan unik anda?', 'Din'),
('201531096', 'Prilia Wanda Lestari', '085777981270', '220497', 'Mahasiswa', 'priliawanda@gmail.com', 'Nama hewan peliharaan?', 'Unicorn'),
('201531097', 'Resti Agustin', '082297422318', '130897', 'Mahasiswa', 'resti1531097@sttpln.ac.id', 'Asisten yang anda suka?', 'Dhifafiah MRZ'),
('201531098', 'Granite Bagas Prakoso Sidjabat', '085772704075', '201531098', 'Mahasiswa', 'granitebagas28@gmail.com', 'Panggilan unik anda?', 'granit'),
('201531100', 'Adrian Syarif', '081261873169', 'adrian19', 'Mahasiswa', 'adriansyarif19@gmail.com', 'Dosen yang anda suka?', 'bapak abdul haris'),
('201531101', 'Adynata Kumara', '089623164117', '1234567890', 'Mahasiswa', 'adynatakumara@gmail.com', 'Dosen yang anda suka?', 'pak haris'),
('201531103', 'Ahmad Riyana Saputra', '082282564767', 'ars290595', 'Mahasiswa', 'ahmadriyana9@gmail.com', 'Dosen yang anda suka?', 'pak haris'),
('201531105', 'BOY CHANDRA', '081283512243', 'wadaw', 'Mahasiswa', 'boy.chandra19@gmail.com', 'Dosen yang anda suka?', 'wadaw'),
('201531107', 'demowahyupratama', '085271446322', '14mei1997', 'Mahasiswa', 'demowahyupratama14@gmal.com', 'Dosen yang anda suka?', 'om harris manjakawang'),
('201531108', 'dyah aulia anggraeni rani', '082112409808', 'aulia', 'Mahasiswa', 'dyhauliaarani@gmail.com', 'Panggilan unik anda?', 'pevita'),
('201531110', 'Farid Aulia Rahmat', '', 'farzaz28', 'Mahasiswa', 'faridaulia28@gmail.com', 'Panggilan unik anda?', 'Cinta'),
('201531114', 'I Gede Nara Asnanda', '081299087435', 'naraipa7', 'Mahasiswa', 'narasnanda@gmail.com', 'Dosen yang anda suka?', 'dosen yang baik'),
('201531116', 'Jerian Celvin Mahrul', '085273354666', '130398', 'Mahasiswa', '', 'Bebas?', 'matahari13'),
('201531120', 'Mohammad Arief Cahya Purwana', '201531120', '123456789', 'Mahasiswa', 'info@kangarief.com', 'Bebas?', 'bebas'),
('201531123', 'Nadia Mawarni', '087788523579', '16061997', 'Mahasiswa', 'nadiamawarninamiee@gmail.com', 'Dosen yang anda suka?', 'bu tuti'),
('201531124', 'Ngurah Gede Wisnu', '081288071606', 'Hajinaikhaji1', 'Mahasiswa', 'rocketplace63@gmail.com', 'Dosen yang anda suka?', 'sukri'),
('201531128', 'Riko Toniro', '082277392212', 'b0m4t0m', 'Mahasiswa', 'rikotoniro97@gmail.com', 'Asisten yang anda suka?', 'abdan'),
('201531129', 'Ristyna Lidya Margaretta Sianturi', '081264120454', '050397', 'Mahasiswa', 'ristynalidya6@gmail.com', 'Panggilan unik anda?', 'tyna'),
('201531130', 'Silvia nathasya riahta ', '082277750300', 'silvia', 'Mahasiswa', 'silvianathasya@gmail.com', 'Dosen yang anda suka?', 'dosen yang baik'),
('201531131', 'Tri cahyaning putri', '085237687606', '12345', 'Mahasiswa', 'tcputri19@gmail.com', 'Dosen yang anda suka?', 'kepodeh'),
('201531134', 'Yolanda Prayetno Putri', '081260500623', '330729', 'Mahasiswa', 'yolanda1728@lalala.com', 'Asisten yang anda suka?', 'Yolanda'),
('201531137', 'Agni Mulianingsih', '082194326353', 'lia240897', 'Mahasiswa', 'agnimulianingsih24@gmail.com', 'Nama hewan peliharaan?', 'boy'),
('201531138', 'Claudia Rachel', '', '30claudia', 'Mahasiswa', 'clauddhrp@gmail.com', 'Dosen yang anda suka?', 'bu widya'),
('201531139', 'Eva Cristiani Angelina Sidabutar', '081269702904', 'evacas', 'Mahasiswa', 'eva22cristiani@gmail.com', 'Dosen yang anda suka?', 'Pak Andi '),
('201531140', 'Andre Hendry D S', '', 'andresagala69', 'Mahasiswa', 'andresagala402@gmail.com', 'Dosen yang anda suka?', 'Pak Yoga'),
('201531141', 'Naufal Anaya', '', 'naufal', 'Mahasiswa', '', 'Panggilan unik anda?', 'ifal'),
('201531143', 'Nichander Aghaton', '1', '201531143', 'Mahasiswa', 'nichanderaghaton@gmail.com', 'Dosen yang anda suka?', 'pak bedi'),
('201531145', 'Ulie Dhia', '', '201531145', 'Mahasiswa', '', 'Panggilan unik anda?', 'bang'),
('201531146', 'Fahmi Faqih Eftu Meingga', '62813456879', 'namabelakangmu', 'Mahasiswa', 'cekkesebelah@gmail.com', 'Bebas?', 'sabeb'),
('201531147', 'Nurul Herwinda', '081212562829', '032795', 'Mahasiswa', 'nurulherwinda303@gmail.com', 'Nama hewan peliharaan?', 'miki'),
('201531149', 'Cut Dewi Ainun Bashirah', '085887895300', 'Anggrekraya29', 'Mahasiswa', 'cutdewiabc@gmail.com', 'Asisten yang anda suka?', 'Dia'),
('201531151', 'Andi Asmaul Nur Fadillah', '085396756234', '230697', 'Mahasiswa', 'dilla.andi23@gmail.com', 'Dosen yang anda suka?', 'pak yoga'),
('201531154', 'Novantri Natalina Bancin', '082365038426', 'natalina19', 'Mahasiswa', 'novantribancin@gmail.com', 'Dosen yang anda suka?', 'pak yoga'),
('201531155', 'Mareta Dwi Sholikhah', '081217674665', '201531155', 'Mahasiswa', 'maretadwis97@gmail.com', 'Panggilan unik anda?', 'tata'),
('201531156', 'KRESNA PUTRA PRAWIRANEGARA', '', 'kalkulus1', 'Mahasiswa', '', 'Bebas?', 'GAS BOCOR'),
('201531157', 'ANDRIA DWI LUTFIAN PUTRA', '0', '201531157', 'Mahasiswa', 'ELANDRIA21@GMAIL.COM', 'Dosen yang anda suka?', 'TIDAK SUKA SEMUA'),
('201531158', 'Jessika Pangaribuan', '', 'jeje123', 'Mahasiswa', 'jessika1531158@sttpln.ac.id', 'Nama hewan peliharaan?', 'bebek'),
('201531159', 'Novianto Agung Tri Wibowo', '', 'novianto', 'Mahasiswa', '', 'Panggilan unik anda?', 'spon'),
('201531160', 'Maya Devita Prastisiya', '', '240613', 'Mahasiswa', '', 'Dosen yang anda suka?', 'herman bedi'),
('201531161', 'Raudhatul Jannah', '087792497820', 'dian1234', 'Mahasiswa', 'raudhatulj97@gmail.com', 'Panggilan unik anda?', 'selena'),
('201531163', 'Maya Risia Lanri', '087874918084', 'mayaristia123', 'Mahasiswa', 'maya.ristiaa@yahoo.com', 'Panggilan unik anda?', 'mamay'),
('201531164', 'RIKA PUJIASTUTI', '082274017753', '05041997', 'Mahasiswa', 'rikaapuji@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201531166', 'bagus septian', '0584361486', '0899', 'Mahasiswa', 'bagus@gmail.co.id', 'Asisten yang anda suka?', 'Babeh'),
('201531168', 'Parahita Elandhasari', '', 'Elandha31', 'Mahasiswa', 'elandha3@gmail.com', 'Nama hewan peliharaan?', 'gembul'),
('201531170', 'Zulfa Hayyu Sakinah', '', 'cuphacup', 'Mahasiswa', '', 'Panggilan unik anda?', 'cupha'),
('201531172', 'Aulia Darnilasari', '082291153994', '2345', 'Mahasiswa', 'auliadarnilasari@yahoo.com', 'Dosen yang anda suka?', 'pak haris'),
('201531173', 'Dean Wiratama', '082244339843', '130798', 'Mahasiswa', 'buletbulet.dean@gmail.com', 'Panggilan unik anda?', 'Momo'),
('201531174', 'Eka Putri Fajar W', '087775636947', 'kerroppi', 'Mahasiswa', 'ekapf2710@gmailcom', 'Asisten yang anda suka?', 'kamu'),
('201531177', 'Muhammad As Ari Afif', '087872583394', 'kimjaesop', 'Mahasiswa', 'muhasariafif.97@gmail.com', 'Panggilan unik anda?', 'coy'),
('201531178', 'M. Yasifa Rizky Prasetya', '087865782211', '393940', 'Mahasiswa', 'ifaifafa@yahoo.com', 'Panggilan unik anda?', 'myrp'),
('201531180', 'Resha Ayu Fratiwi', '', '12345', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'Tobichan'),
('201531184', 'Ayu Amalia Arifiani', '082299290695', '200597', 'Mahasiswa', 'ameliarifiani91@gmail.com', 'Panggilan unik anda?', 'ayu'),
('201531185', 'SRI WAHYUNI AZIS', '082345702055', '200697', 'Mahasiswa', 'sriwahyunia20@gmail.com', 'Nama hewan peliharaan?', 'vero'),
('201531187', 'mikhail darmawan', '0000000000000', '201531187', 'Mahasiswa', 'mikhail.ganteng@gmail.com', 'Panggilan unik anda?', 'mikhail'),
('201531188', 'dedy saputra sinaga', '081297350759', '201531188', 'Mahasiswa', 'dedysinaga8008@gmail.com', 'Nama hewan peliharaan?', 'biger'),
('201531189', 'Ian Ahmad Fachriza', '082189899888', 'ianahmad25', 'Asisten', 'ianahmadfachriza6@gmail.com', 'Dosen yang anda suka?', 'siapa ya'),
('201531191', 'Rahmat Prastyo', '082307608170', '201531191', 'Mahasiswa', 'rahmatprastyo88@gmail.com', 'Panggilan unik anda?', 'rahmat'),
('201531193', 'Arifana Iskandar Zulkarnain', '081332512301', '290566', 'Mahasiswa', 'arifana.iskandar1205@gmail.com', 'Nama hewan peliharaan?', 'saher'),
('201531195', 'Nicodhemus Antonio Dias Prabowo', '082226620019', 'degea990', 'Mahasiswa', 'nicoantonio88@gmail.com', 'Bebas?', 'Hot Stuff'),
('201531196', 'Durriyat Dwi Putra Lubis', '', '123456', 'Mahasiswa', '', 'Dosen yang anda suka?', 'Pak Haris'),
('201531198', 'PASCAL PARLINDUNGAN GULTOM', '089658599166', 'sandilama198', 'Mahasiswa', 'pascalparlindungan009@gmail.co', 'Dosen yang anda suka?', 'yessy asri'),
('201531199', 'Dewi Sri Rezeki', '0895414729539', 'rezeki', 'Mahasiswa', 'dewi.srirezeki2511@gmail.com', 'Dosen yang anda suka?', 'Akbar'),
('201531200', 'NUR IKHSAN', '', '201531200', 'Mahasiswa', '', 'Panggilan unik anda?', 'ACAY'),
('201531201', 'Ragiel Adnan Kusuma', '', 'blink182', 'Mahasiswa', 'ragilkusuma182@gmail.com', 'Dosen yang anda suka?', 'Om Haris'),
('201531204', 'Luthfi Maulana', '', '777', 'Mahasiswa', '', 'Dosen yang anda suka?', 'bedi'),
('201531206', 'Herbert Ficky Situmeang', '081298126704', '26081996hs', 'Mahasiswa', 'herbert1531296@sttpln.ac.id', 'Dosen yang anda suka?', 'Pak Endang'),
('201531207', 'Auliani Shafira', '', 'budianda', 'Mahasiswa', '', 'Asisten yang anda suka?', 'heriku'),
('201531208', 'Veronika Clarita Purba', '', '12345', 'Mahasiswa', '', 'Asisten yang anda suka?', 'heriku12345'),
('201531210', 'widya astuti', '085375126554', 'widyamedy', 'Mahasiswa', 'widyaastuti232@gmail.com', 'Panggilan unik anda?', 'astut'),
('201531211', 'Muhammad Hanafi', '', 'gorosei7777', 'Mahasiswa', 'muhammadhanafi009@gmail.com', 'Bebas?', 'dei'),
('201531213', 'indri', '081282328446', '998899', 'Mahasiswa', 'indri.0998@gmail.com', 'Panggilan unik anda?', 'liang'),
('201531217', 'Aria Pengku Prawiro', '087787407981', '0878030298', 'Mahasiswa', 'aria1531217@sttpln.ac.id', 'Asisten yang anda suka?', 'Abdan'),
('201531218', 'Jobli Angga Hani', '', 'angga123', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'gatol'),
('201531222', 'Siti Baiqul Viasih', '083831749057', 'upil77', 'Mahasiswa', 'epetitefillequi@gmail.com', 'Panggilan unik anda?', 'bai'),
('201531230', 'Sahbudi Manalu', '081310192982', 'budimulia', 'Mahasiswa', 'budimanalu887@gmail.com', 'Panggilan unik anda?', 'lae'),
('201531231', 'Inggrit Ivana Rumagit', '081388546247', 'inggritdasar', 'Mahasiswa', 'inggritrumagit@gmail.com', 'Dosen yang anda suka?', 'Pak Riki'),
('201531233', 'Andika Agung Pratama', '082377473968', '24041998', 'Mahasiswa', 'kiyaydika@gmail.com', 'Dosen yang anda suka?', 'pak haris'),
('201531237', 'Alvres Andi Setyawan', '081288552535', '201531237', 'Mahasiswa', 'alvres31@gmail.com', 'Bebas?', 'celeng'),
('201531238', 'Abdan Sholla Farasi', '123456789', '201531238', 'Asisten', 'abdansholla@gmail.com', 'Asisten yang anda suka?', 'Abdan'),
('201531239', 'Kurniawan Yudistira', '081321126266', '201531239', 'Mahasiswa', 'kyudistira7@gmail.com', 'Asisten yang anda suka?', 'abdan'),
('201531242', 'Septian Dwi Kasdadi', '087785350588', '201531242', 'Mahasiswa', 'kasseptian18@gmail.com', 'Panggilan unik anda?', 'Kasep'),
('201531243', 'Ade Putra Syarma', '', 'CeosamJr23', 'Mahasiswa', '', 'Asisten yang anda suka?', 'Tajul'),
('201531245', 'Aida Fanisa Rahmi', '085766069614', 'fanisa97', 'Mahasiswa', 'aida1531245@sttpln.ac.id', 'Panggilan unik anda?', 'aido'),
('201531246', 'Rifka rahma yani sitompul', '', '201531246', 'Mahasiswa', '', 'Bebas?', 'ikastp'),
('201531248', 'saul saryandi saragih', '', '766974', 'Mahasiswa', '', 'Panggilan unik anda?', 'saul'),
('201531249', 'Rafika Putri Rizkiawati', '085815364922', '201531249', 'Mahasiswa', 'rafikaputrizkia@gmail.com', 'Asisten yang anda suka?', 'Rafika'),
('201531251', 'Bagus Tea', '081290220996', 'bagus630', 'Mahasiswa', 'bagustri15@gmail.com', 'Panggilan unik anda?', 'Ganteng'),
('201531252', 'vhiendy sip', '082110000903', '4405810', 'Mahasiswa', 'needvhiendy@yahoo.com', 'Dosen yang anda suka?', 'vhiendy'),
('201531253', 'Muhammad Aulia Arbi', '', '201531253', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'Steve'),
('201531256', 'ivana pramudita rahayu', '085270809091', 'Ivanapramudita16', 'Mahasiswa', 'ivanaspatra@yahoo.co.id', 'Panggilan unik anda?', 'ipa'),
('201531257', 'Rahmatika A. Wijaya yayaya', '081290981422', 'tiko31', 'Mahasiswa', 'tika1531257@sttpln.ac.id', 'Dosen yang anda suka?', 'yoga distra'),
('201531258', 'Rekha Ayu Anggraeni', '081344678879', '201531258', 'Mahasiswa', 'anggraenirekha@gmail.com', 'Asisten yang anda suka?', 'semua'),
('201531259', 'christin elizabet simamora', '082111363546', 'christin11', 'Mahasiswa', 'christinsimamora@gmail.com', 'Panggilan unik anda?', 'tin'),
('201531260', 'Fadhlillah Dzil Ikram Ambotuwo', '081242202442', '05091997', 'Mahasiswa', 'ikramambotuwo5@gmail.com', 'Dosen yang anda suka?', 'bedi'),
('201531261', 'Nikku Panduning Hutami', '085942527626', '260198', 'Mahasiswa', 'nikku.panduning26@gmail.com', 'Bebas?', 'bebas'),
('201531262', 'budi hartono untung', '', 'bukanaku', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'kadal'),
('201531263', 'Muhamad Alwi Hassan', '081234567890', 'asdiopasd', 'Mahasiswa', 'alwi@hassan.com', 'Asisten yang anda suka?', 'kepodeh'),
('201531264', 'Ristin Octaviana Indra', '085358258341', '17101996', 'Mahasiswa', 'ristinoctaviana@gmail.com', 'Panggilan unik anda?', 'Itin'),
('201531265', 'Marky Yosep S', '081291523046', 'masukaja95', 'Mahasiswa', 'makyos20@yahoo.com', 'Bebas?', 'ya'),
('201531270', 'cristopel sibarani', '081272471881', '12345678', 'Mahasiswa', 'cristopel62@gmail.com', 'Dosen yang anda suka?', 'Semua'),
('201531274', 'Robby AP Girsang', '085217837206', '25031997', 'Mahasiswa', 'robbygirsang15@gmai.com', 'Panggilan unik anda?', 'Bang Girsang'),
('201531275', 'Yuyun Agustira', '', 'yuyun290', 'Mahasiswa', 'sendmemail.uyun@gmail.com', 'Panggilan unik anda?', 'ulalat'),
('201531276', 'rio sutrisno s', '', '201531276', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'booyah'),
('201531281', 'Frederik L C Sampe Bura', '081315769597', 'frederick234', 'Mahasiswa', 'christianwariors234@gmail.com', 'Bebas?', 'wkwk LOL'),
('201531282', 'Meliga SM', '', '12345', 'Mahasiswa', 'meligasm07@gmail.com', 'Panggilan unik anda?', 'igabangke '),
('201531999', 'Joshua Melvin', '201531070', '201531999', 'Mahasiswa', '201531070@yahooo.com', 'Dosen yang anda suka?', 'Pak Endang'),
('201631002', 'Dinda Chintya Natalia Tonapa', '082292539245', 'blackberry', 'Mahasiswa', 'dindatonapa1@gmail.com', 'Dosen yang anda suka?', 'Abdan'),
('201631005', 'FIQROH ANNISA', '081384456276', 'AMIYPATY', 'Mahasiswa', 'fiqroh1631005@sttpln.ac.id', 'Panggilan unik anda?', 'FIAN'),
('201631006', 'IRFAN FAHMI AHMADI', '', 'MYDASAR', 'Mahasiswa', '', 'Panggilan unik anda?', 'agas'),
('201631007', 'Yosephine Maria Stella Agatha Butar Butar', '081263634745', '130666', 'Mahasiswa', 'yosephine1103@gmail.com', 'Panggilan unik anda?', 'Opin'),
('201631008', 'Electricia Natalia Lumanauw', '081245511091', 'chya1998', 'Mahasiswa', 'chyalumanauw@gmail.com', 'Nama hewan peliharaan?', 'Bumer'),
('201631014', 'Rahardi Tri Ardiyanto', '0808080080', '11mei1996', 'Mahasiswa', 'rahardi1631014@sttpln.ac.id', 'Nama hewan peliharaan?', 'neko :V'),
('201631020', 'ardhi anggoro mukti', '089638674890', '201631020', 'Mahasiswa', 'ardhianggoro4.aa@gmail.com', 'Asisten yang anda suka?', 'dyah'),
('201631026', 'Mehilda', '081228078481', 'pokokmenlah', 'Mahasiswa', 'mehildamehilda31@gmail.com', 'Bebas?', 'semarang'),
('201631029', 'Rizky Pradana Audy Setya', '08229905400', '201631029cuk', 'Mahasiswa', 'rizky1631029@sttpln.ac.id', 'Bebas?', 'iya'),
('201631030', 'Alfiansyah Zuhri Harahap', '082112113191', 'tigabelas08', 'Mahasiswa', 'alfiansyahzuhrihrp@gmail.com', 'Dosen yang anda suka?', 'ya'),
('201631031', 'Paryanto', '081932220626', 'fuckloakh26', 'Mahasiswa', 'paryanto1631031@sttpln.ac.id', 'Dosen yang anda suka?', 'pak eliando'),
('201631032', 'Josua Nugraha Panjaitan', '', '241108', 'Mahasiswa', 'josua1631032@sttpln.ac.id', 'Panggilan unik anda?', 'joskid'),
('201631035', 'Witri Utari', '081377352935', 'Mamak987', 'Mahasiswa', 'witriutari787@yahoo.com', 'Dosen yang anda suka?', 'pak irfan nasurulloh'),
('201631038', 'UBAID KHOIRI', '087736394273', '26januari97', 'Mahasiswa', 'ubaidkhoiri354@gmail.com', 'Nama hewan peliharaan?', 'yuki kato'),
('201631039', 'SERGIUS SARMOSE MANGGARA PUTRA MANULLANG', '081385601691', '0987', 'Mahasiswa', 'manullangsergius@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201631040', 'Rizki Putra Pamungkas', '080808080808', 'anakgunung', 'Asisten', 'test@test.com', 'Asisten yang anda suka?', 'Putra'),
('201631041', 'Nurdzakirah Amir', '', 'bulukumba', 'Mahasiswa', '', 'Panggilan unik anda?', 'iraa'),
('201631043', 'Muhammad Gibran', '081319511901', '201631043', 'Mahasiswa', 'muhammadgibran74@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631048', 'Susetyo Bagas Woro', '081288204598', 'bagas', 'Mahasiswa', 'susetyo.bagasworo@gmail.com', 'Bebas?', 'GGMU'),
('201631051', 'm.iqbal alfian utama', '8', '201631051', 'Mahasiswa', 'm.iqbal1631051@sttpln.ac.id', 'Bebas?', 'dasar'),
('201631052', 'Angga Rizki Kurniawan', '089656122210', '201631052', 'Mahasiswa', 'angga.rizkykurniawan11@gmail.c', 'Asisten yang anda suka?', 'Angga Ganteng'),
('201631057', 'Dhiya Khairunnisa', '', '057178', 'Asisten', '', 'Panggilan unik anda?', 'irun'),
('201631058', 'Sheilla Amira', '', '201631058', 'Mahasiswa', '', 'Panggilan unik anda?', 'sheilll'),
('201631059', 'MEIDIANA REVIANI SYAM', '087880119295', '200598', 'Mahasiswa', 'Merevsya20@gmil.com', 'Asisten yang anda suka?', 'DHIYA KHAIRUNNISA'),
('201631060', 'Muhammad Chandra Risyah', '081289892737', 'chandra250198', 'Mahasiswa', 'mcrisyah@gmail.com', 'Panggilan unik anda?', 'ican'),
('201631066', 'Rizman Maulida Alsa', '081280817823', 'rizman180499', 'Mahasiswa', 'rizman1631066@sttpln.ac.id', 'Panggilan unik anda?', 'bebas'),
('201631067', 'Fauzan Octhory Lukfi', '', 'fauzan.123', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'Alwi'),
('201631070', 'Sri Sandy Ravaie', '085754327343', '201631070', 'Mahasiswa', 'srisandyravaie24@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631071', 'DAME RIA CAROLINA', '082169101137', 'silitonga', 'Mahasiswa', 'dame1631071@sttpln.ac.id', 'Asisten yang anda suka?', 'Dhiya'),
('201631072', 'Nurfajri', '087824075339', 'che210298', 'Mahasiswa', 'nurfajri941@gmail.com', 'Asisten yang anda suka?', 'Dhiya'),
('201631073', 'Muhammad Yaseer Mawardi', '', 'dormiory', 'Mahasiswa', '', 'Bebas?', 'apasaja'),
('201631077', 'Putri Ayu Mardhiyah', '085693701573', 'kalikihkalikih', 'Mahasiswa', 'putriayumardhiyah084@gmail.com', 'Panggilan unik anda?', 'Putri'),
('201631078', 'ALWI RAMDAN HASAN', '', '190198', 'Mahasiswa', '', 'Asisten yang anda suka?', 'AFLAH'),
('201631084', 'Aurel Nabila', '082386221966', 'nabila11', 'Mahasiswa', 'aurelnbl084@gmail.com', 'Asisten yang anda suka?', 'kak abdan'),
('201631085', 'DEANI TRI UTARI', '', 'deani6', 'Mahasiswa', '', 'Dosen yang anda suka?', 'SUKRI MURSANI'),
('201631091', 'Malik Abdul Jabar', '081298143735', 'Muaradua123', 'Mahasiswa', 'malik1631091@sttpln.ac.id', 'Dosen yang anda suka?', 'pak bedi'),
('201631093', 'GEZI PRATAMA PUTRA', '', '191296', 'Mahasiswa', 'gezipratama@gmail.com', 'Dosen yang anda suka?', 'kempot'),
('201631095', 'Nadilla Puspa Chairunnisa', '081316590151', 'Dilla009', 'Mahasiswa', 'nadillapuspa66@gmail.com', 'Panggilan unik anda?', 'Dillaaa'),
('201631096', 'Daffa Zaki Farhan', '08811141142', '123456', 'Mahasiswa', 'zkfrhn@gmail.com', 'Panggilan unik anda?', 'daffa'),
('201631100', 'Aflah', '', '080498', 'Asisten', '', 'Bebas?', 'Ya'),
('201631101', 'MUHAMMAD RAJU AMANDA', '089687272959', '123', 'Mahasiswa', 'RAJUAMANDA39@GMAIL.COM', 'Panggilan unik anda?', 'DILAN'),
('201631102', 'afif dwi kurniawan', '081947040668', '201631102', 'Mahasiswa', 'Afif30101997@gmail.com', 'Dosen yang anda suka?', 'riki'),
('201631105', 'Aldo fachriyad', '082285811930', 'aldfinda', 'Mahasiswa', 'aldofachriyad@gmail.com', 'Nama hewan peliharaan?', 'joni'),
('201631109', 'Ardhiant Javikri', '08126712055', 'vikri123', 'Mahasiswa', 'ardhiant1631109@sttpln.ac.id', 'Panggilan unik anda?', 'dapik'),
('201631111', 'epafras ', '085715316265', 'mengapa00', 'Mahasiswa', 'tioeltik@gmailcom', 'Bebas?', 'tyo'),
('201631112', 'ceska caissia reppa', '085211122177', 'ceska98', 'Mahasiswa', 'reppaceska@gmail.com', 'Dosen yang anda suka?', 'Ainun'),
('201631114', 'Ahmad Fauzi Astari', '', 'ahmadfauziastari023', 'Mahasiswa', 'ahmad1631114@sttpln.ac.id', 'Dosen yang anda suka?', 'Pak Haris'),
('201631122', 'yoga agus riyanto', '085624466864', 'yoga5656', 'Mahasiswa', 'yoga1631122@sttpln.ac.id', 'Bebas?', 'ok'),
('201631126', 'GHIEFRAN HAKHA', '085362338296', 'hakhaku', 'Mahasiswa', 'gifranhk12@gmail.com', 'Dosen yang anda suka?', 'semua saya suka'),
('201631131', 'M.Raji Hubbirrafi', '', 'mrajihubbirrafi', 'Mahasiswa', 'hubbirrafir@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631133', 'Monik Anggraeni', '', '201631133', 'Mahasiswa', '', 'Asisten yang anda suka?', 'kamu'),
('201631134', 'Nafa Fahira', '', '1234567', 'Mahasiswa', 'nafahiraaa@gmail.com', 'Bebas?', 'nafa'),
('201631137', 'shavira khalisa', '081362688878', 'sapphire24', 'Mahasiswa', 'shavirakhalisa@gmail.com', 'Panggilan unik anda?', 'icha'),
('201631142', 'ABIMA RIESTARA SENJAPRANA', '081333660015', 'golekonodewe', 'Mahasiswa', 'abimars18@gmail.com', 'Panggilan unik anda?', 'brengos'),
('201631143', 'Ainun Jariah Kamal', '085211122177', 'ainun98', 'Mahasiswa', 'enungkamal@gmail.com', 'Panggilan unik anda?', 'ceces'),
('201631144', 'Alvian Adi ', '087788927315', '3105sone', 'Mahasiswa', 'alvianadi2@gmail.com', 'Nama hewan peliharaan?', 'Ujang'),
('201631146', 'Anjas Tegar W', '', 'tjr317on25', 'Mahasiswa', 'anjastegar13@gmail.com', 'Nama hewan peliharaan?', 'Bowny'),
('201631147', 'Cut Nurul Hayatun Nissa', '08111458584', '201631147', 'Mahasiswa', 'cut1631147@sttpln.ac.id', 'Asisten yang anda suka?', 'TIDAK ADA'),
('201631148', 'Dheo Rahma Putra', '081319315610', 'dheo2510', 'Mahasiswa', 'dheorp@gmail.com', 'Panggilan unik anda?', 'dheo'),
('201631149', 'dicky fajar kharisma', '085645485707', 'A.fajar88', 'Mahasiswa', 'dicky1631149@sttpln.ac.id', 'Nama hewan peliharaan?', 'bodong'),
('201631154', 'Fatahillah Paweloi', '085343805870', 'fatjhe25', 'Mahasiswa', 'fatahillah1631154@sttpln.ac.id', 'Dosen yang anda suka?', 'bu_widya'),
('201631156', 'Firdha Surya Shafira', '081368688923', '201631156', 'Mahasiswa', 'firdhassha@gmail.com', 'Asisten yang anda suka?', 'dhiya'),
('201631158', 'L Noer Muhammad Fahmi Tamar', '081394373801', 'mikasa123', 'Mahasiswa', 'fahmy.xfiles@gmail.com', 'Asisten yang anda suka?', 'Andit'),
('201631162', 'akmal', '', 'akmal123', 'Mahasiswa', 'akmalfathullah14@gmail.com', 'Dosen yang anda suka?', 'akmal'),
('201631166', 'M PANCA SEPTAWIJAYA', '089659459237', '1234', 'Mahasiswa', 'MPANCAS@YMAIL.COM', 'Bebas?', 'BEBAS'),
('201631167', 'Muhammad Arif ramadhan', '', 'arif2507', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'anjing'),
('201631175', 'Pimar Aprilo Jujur Perkasa', '085273228465', 'Abeng123', 'Mahasiswa', 'pimaraprilo@gmail.com', 'Nama hewan peliharaan?', 'ikan'),
('201631180', 'Sigit Prasetyo Noprianto', '1', '19111998', 'Mahasiswa', 'n@gmail.com', 'Bebas?', 'Hail Hydra'),
('201631182', 'Sri Aulia Khalifa', '081355635819', '201631182', 'Mahasiswa', 'kirrc13@gmail.com', 'Dosen yang anda suka?', 'pak haris'),
('201631193', 'arik jauhar alfaiz', '085959501179', '123456', 'Mahasiswa', 'arikjauhar55@gmail.com', 'Dosen yang anda suka?', 'rosida'),
('201631196', 'Defri Agustian Damanik', '082369798928', 'cricket123', 'Mahasiswa', 'defriagustiandamanik@gmail.com', 'Dosen yang anda suka?', 'Rizkia'),
('201631200', 'Fadillah Nur Harahap', '081299039089', '112215', 'Mahasiswa', 'fadillahharahap16@gmail.com', 'Panggilan unik anda?', 'kecil'),
('201631202', 'Givary Muhammad', '082243774207', '123456789', 'Asisten', 'givary1631202@sttpln.ac.id', 'Dosen yang anda suka?', 'bu karina'),
('201631214', 'utami nur febrianti', '', 'ngahmimi', 'Mahasiswa', '', 'Dosen yang anda suka?', 'pak jat'),
('201631218', 'Ajeng Indira Faradiba', '081281670628', '201631218', 'Mahasiswa', 'ajengindira4@gmail.com', 'Nama hewan peliharaan?', 'Cimot, nene, ciol'),
('201631219', 'amala shabila', '089508475379', 'amala123', 'Mahasiswa', 'amalashabila04@gmail.com', 'Nama hewan peliharaan?', 'bubu'),
('201631226', 'julio rizki ', '02148486486486', 'juju13', 'Mahasiswa', 'julio@asd.com', 'Asisten yang anda suka?', 'siapa'),
('201631229', 'mellyana pitaloka', '087766966094', '201631229', 'Mahasiswa', 'mellyana1631229@sttpln.ac.id', 'Nama hewan peliharaan?', 'snowy'),
('201631234', 'Naufal Daani Alhadi A', '082298822048', 'naufaldaani', 'Mahasiswa', 'naufal1631234@sttpln.ac.id', 'Panggilan unik anda?', 'opal'),
('201631235', 'Rangga Pratama', '082340242879', '12417694', 'Mahasiswa', 'pratamarangga220@gmail.com', 'Bebas?', 'SELOW'),
('201631236', 'Rian Maharani Diaz', '085778714721', '123456', 'Mahasiswa', 'maharanidiazr@gmail.com', 'Nama hewan peliharaan?', 'el'),
('201631238', 'Tajul Aulia Muda', '082272220892', 'tajul980', 'Mahasiswa', 'tajul1631238@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201631242', 'Yuditha Pratiwie', '082110947776', '201631242', 'Mahasiswa', 'yudhitap@gmail.com', 'Nama hewan peliharaan?', 'beti'),
('201631243', 'Yusra Dinata', '', '280598', 'Mahasiswa', '', 'Panggilan unik anda?', 'uus'),
('201631244', 'indah ramadhani putri', '', '111999', 'Mahasiswa', 'arifana.iskandar1205@gmail.com', 'Panggilan unik anda?', 'ambong'),
('201631245', 'indri dwi lestari', '081271044283', 'indri', 'Mahasiswa', 'indri1631245@sttpln.ac.id', 'Nama hewan peliharaan?', 'mosel'),
('201631247', 'Nella Rut Hutahaean', '082274481127', '191669', 'Mahasiswa', 'nellahutahaean@gmail.com', 'Panggilan unik anda?', 'Nelong'),
('201631249', 'regina gita pratiwi', '081290849373', 'Pratiwi1998*', 'Mahasiswa', 'reginagitapratiwi@gmail.com', 'Nama hewan peliharaan?', 'choky'),
('201631250', 'Syahrul mubaroq', '', 'wiwiknuryanti', 'Mahasiswa', 'mubaroqsyahrul377@yahoo.co.id', 'Panggilan unik anda?', 'symmotovlog'),
('201631251', 'Toriq Arbi Odika', '082137650437', 'bl4ckj4ck', 'Mahasiswa', 'toriq63@gmail.com', 'Panggilan unik anda?', 'utul'),
('201631254', 'Aristo Fan Brata Sanggu', '082247590100', '254aristo', 'Mahasiswa', 'aristo1631254@sttpln.ac.id', 'Nama hewan peliharaan?', 'harimau'),
('201631261', 'muhammad ariski', '085211406756', 'kijok896', 'Mahasiswa', 'muhammadariski896@gmail.com', 'Bebas?', 'Ya'),
('201631268', 'M.FAIZ ARNOVIE', '', 'faizarnovie', 'Mahasiswa', 'faizarnovie06@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631269', 'Pepi Nigatama', '081278562262', 'rahasia', 'Mahasiswa', 'nigatama05@gmail.com', 'Dosen yang anda suka?', 'Pak Rial'),
('201631272', 'BAGAS REY PUTRA', '0895410559671', 'bagasrey123', 'Mahasiswa', 'bagasrey61@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631273', 'Dio Kennedy Rama S', '', 'diokennedy1903', 'Mahasiswa', 'diokennedy28@gmail.com', 'Panggilan unik anda?', 'Kennedy'),
('201631276', 'Eza Atoillah', '', '110398', 'Mahasiswa', 'atoillaheza@gmail.com', 'Dosen yang anda suka?', 'ibu Dine'),
('201631277', 'Moh.Nuraripin', '081553035154', 'BASIC', 'Mahasiswa', 'MOHNURARIPIN@GMAIL.COM', 'Panggilan unik anda?', 'ehem'),
('201631279', 'Muhammad ilham', '081282582065', '140417', 'Mahasiswa', 'ilamgg20@gmail.com', 'Dosen yang anda suka?', 'pak sukri'),
('201631281', 'Randi Shesar Nadjamuddin', '085255461507', 'ecarsn26', 'Mahasiswa', 'ecasesar@yahoo.com', 'Nama hewan peliharaan?', 'pusi'),
('201631282', 'Muhammad Rizky Ardiansyah', '085939460734', 'advancer', 'Mahasiswa', 'ardiansyah699@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631283', 'MUHAMMAD RYAN RISALDI', '', 'RISALDY98', 'Mahasiswa', 'm.ryanrisaldy@gmail.com', 'Nama hewan peliharaan?', 'ikan'),
('201631285', 'Rifki Nur Imani Yahdi Abadan', '087777692520', '12345', 'Mahasiswa', 'rifki201631285@sttpln.ac.id', 'Dosen yang anda suka?', 'Bu Desi'),
('201631286', 'Abdul Malik Karim', '085395853944', 'qwerty4g', 'Mahasiswa', 'malikkarim148@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201631289', 'Vicky Bagus Setiawan', '085894584284', '123456', 'Mahasiswa', 'vickybagustwn@gmail.com', 'Nama hewan peliharaan?', 'dinosaurus'),
('201631290', 'Andhika Indra Irawan', '0895333927745', 'Trisula249', 'Mahasiswa', 'Andhikatelkom249@gmail.com', 'Nama hewan peliharaan?', 'catty'),
('201631293', 'Muhammad Fachrul Ibnu Fajrin', '087830395933', 'fachrul 1998', 'Mahasiswa', 'fachrul.fajrin16@gmail.com', 'Nama hewan peliharaan?', 'chio'),
('201631294', 'Redondo Fernando', '081296246819', 'padang37', 'Mahasiswa', 'redondofernando18@gmail.com', 'Dosen yang anda suka?', 'dine tiara kusuma'),
('201631295', 'SRY RAHAYU S', '', '201631295', 'Mahasiswa', '', 'Dosen yang anda suka?', 'BUDI'),
('201631300', 'Nuggy Nugraha', '', 'nugraha', 'Asisten', '', 'Asisten yang anda suka?', '?'),
('201631303', 'Ahmad fadli', '', 'bismillah', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'ikan'),
('201631304', 'nuel', '', '201631304', 'Mahasiswa', '', 'Dosen yang anda suka?', '201631304'),
('2016531081', 'Ramadesi W. Saragih', '082168392375', 'ramadesi', 'Mahasiswa', 'ramadesy.saragih@gmail.com', 'Panggilan unik anda?', 'ci'),
('201731001', 'berlince samberi', '', '201731001', 'Mahasiswa', '', 'Panggilan unik anda?', 'bebey'),
('201731002', 'angugi', '081354136790', '201731', 'Mahasiswa', 'mirontabuni@gmail.com', 'Bebas?', 'bebek'),
('201731007', 'vanijuana wakerkwa', '081311830627', '201731007', 'Mahasiswa', 'vanijuana@gmail.com', 'Panggilan unik anda?', 'vani'),
('201731012', 'Aplena Lidia Semunya', '', '201731012', 'Mahasiswa', '', 'Panggilan unik anda?', 'jessy'),
('201731016', 'steven maniawasi', '085222234483', '230699', 'Mahasiswa', 'wanggarclay@gmail.com', 'Dosen yang anda suka?', 'PAK SUKRI'),
('201731018', 'Hermelina wandamani', '', '140219', 'Mahasiswa', 'wandamanihermelina580@gmail.co', 'Dosen yang anda suka?', 'eme'),
('201731023', 'Danny Fabian Rahmansyah', '081289771716', 'dannyfabianr', 'Mahasiswa', 'DannyFabian98@gmail.com', 'Panggilan unik anda?', 'bian'),
('201731025', 'zaenal arifin', '087820383184', 'ninikasmi', 'Mahasiswa', 'zenalarif101@gmail.com', 'Asisten yang anda suka?', 'ikhwanudin (gagal jd aslab)'),
('201731026', 'savira selviany', '083123633916', 'Louist91', 'Mahasiswa', 'savvsell@gmail.com', 'Panggilan unik anda?', 'piping'),
('201731027', 'Rijalul Fikri Ulvi', '085212357637', 'herocyn01', 'Mahasiswa', 'rijalulfu@gmail.com', 'Dosen yang anda suka?', 'sugiono tokuda'),
('201731028', 'arviana rinanti mita', '081382169540', 'mita@12345', 'Mahasiswa', 'arvi1731028@sttpln.ac.id', 'Panggilan unik anda?', 'mita'),
('201731029', 'Muhammad Ihza Alhafiz', '082366782125', 'Qwerty123', 'Mahasiswa', 'Alhafizi@yahoo.com', 'Panggilan unik anda?', 'Sayang'),
('201731033', 'Ahmad Caesar Rolando', '087873361888', 'sayang', 'Mahasiswa', 'ahmad.rolando123@gmail.com', 'Nama hewan peliharaan?', 'Kucing'),
('201731041', 'Chaerul Iman', '085700100052', 'pekalongan1', 'Mahasiswa', 'chaeruliman123@gmail.com', 'Dosen yang anda suka?', 'novi'),
('201731042', 'Chory Irwansyah R', '085790229022', 'chory1622', 'Mahasiswa', 'choryirwansyah1@gmail.com', 'Dosen yang anda suka?', 'bu novi'),
('201731044', 'Deni Setiawan', '081253444411', 'denisetiawan82', 'Mahasiswa', 'denicious.id@gmail.com', 'Dosen yang anda suka?', 'Max Teja'),
('201731045', 'DEVA RAHMA SARI', '085817310851', 'DEVAMANIS', 'Mahasiswa', 'deva1731045@sttpln.ac.id', 'Bebas?', 'irfan sembiring'),
('201731049', 'EricSupemaAnggara', '081240888242', '201731049', 'Mahasiswa', 'ericsupema06@gmail.com', 'Nama hewan peliharaan?', 'Kiki'),
('201731052', 'husna', '0895328107812', '089532', 'Mahasiswa', 'onathalib@gmail.com', 'Dosen yang anda suka?', 'PAK SUKRI'),
('201731053', 'JEREMI SINLAE', '082247492482', 'SLANKERS', 'Mahasiswa', 'JEREMI1731053@STTPLN.AC.ID', 'Panggilan unik anda?', 'GERRY'),
('201731054', 'Kelvin Fajar', '081818724756', 'fajar1212', 'Mahasiswa', 'kelvinfajar19@gmail.com', 'Panggilan unik anda?', 'kepri'),
('201731055', 'Kelvin Fajar', '081818724256', '201731055', 'Mahasiswa', 'kelvinfajar19@gmail.com', 'Panggilan unik anda?', 'kepri'),
('201731056', 'M Fajrul islah', '088801037274', 'fajrul10', 'Mahasiswa', 'fajrulislah6@gmail.com', 'Panggilan unik anda?', 'ahsyap'),
('201731061', 'Mohd.Farras Daffa Rizha', '082240862095', '201731061', 'Mahasiswa', 'farras1731061@sttpln.ac.id', 'Dosen yang anda suka?', 'pak zein'),
('201731062', 'Monica Kumeang', '0895353647467', '55555', 'Mahasiswa', 'mkumeang@gmail.com', 'Panggilan unik anda?', ' cantik'),
('201731065', 'Muhammad Hilmy Lubna Zwagery', '082157227054', '201731065', 'Mahasiswa', 'hilmy1731065@sttpln.ac.id', 'Nama hewan peliharaan?', 'asu'),
('201731067', 'MUHAMMAD ILHAM YAFI', '085852023784', 'Bamarolep10', 'Mahasiswa', 'ilhamyafi9@gmail.com', 'Panggilan unik anda?', 'MAMVENG'),
('201731068', 'muhammad revo wicaksana', '082279533105', '201731068', 'Mahasiswa', 'revo1731068@sttpln.ac.id', 'Bebas?', 'mantab'),
('201731070', 'NURTHANIA NADYA REZKI', '082169330411', '201731070', 'Mahasiswa', 'nurthania1731070@sttpln.ac.id', 'Dosen yang anda suka?', 'ocid'),
('201731073', 'Rama Agustin Sitanggang', '082167937172', 'ramaimut', 'Mahasiswa', 'ramaagustines@gmail.com', 'Dosen yang anda suka?', 'pak budi'),
('201731075', 'RESKI FEBRINA SARIDEVI', '10', '201731075', 'Mahasiswa', 'febrinareski@gmail.com', 'Nama hewan peliharaan?', 'kecoa'),
('201731076', 'Rhasya Bintang Rizqi', '081318181039', 'wakwaw', 'Mahasiswa', 'rhasyab@gmail.com', 'Dosen yang anda suka?', 'Hengki'),
('201731078', 'ROSANNA ULI ARTHA. P ', '081285385936', 'ulicantik', 'Mahasiswa', 'rosannapanggabean2@gmail.com', 'Dosen yang anda suka?', 'irfan sembiring'),
('201731079', 'Ruth Megah Selfina Tambunan', '082186689649', 'Rmst2808', 'Mahasiswa', 'mega61342@gmail.com', 'Nama hewan peliharaan?', 'goldiebp'),
('201731080', 'Sari Nira Melia', '085280368822', 'Niranira99', 'Mahasiswa', 'sari1731080@sttpln.ac.id', 'Bebas?', 'Iya'),
('201731083', 'shelnerio setiawan', '081288498869', '214785', 'Mahasiswa', 'shelnerio08@gmail.com', 'Nama hewan peliharaan?', 'melky'),
('201731084', 'Siska Yuni Anzelia', '', 'siskayuni', 'Asisten', '', 'Panggilan unik anda?', 'ncis'),
('201731085', 'Siti Ismi Takarina', '081263356208', 'Mamipapi01', 'Mahasiswa', 'ismitakarina14@gmail.com', 'Dosen yang anda suka?', 'pak bedi '),
('201731087', 'Surya Wirma Putra', '081378165514', '171298', 'Mahasiswa', 'suryawirma17@gmail.com', 'Dosen yang anda suka?', 'syukri'),
('201731088', 'Tajul Arifin Sirajudin', '085338939606', 'Avenged@23', 'Asisten', 'arifintajul4@gmail.com', 'Panggilan unik anda?', 'tayo'),
('201731090', 'Trivania Jessica Naja', '089693552122', 'takutlupa', 'Mahasiswa', 'trivaniajess@gmail.com', 'Panggilan unik anda?', 'pan'),
('201731091', 'windy nur hidayati', '085814548584', 'duatujuh27', 'Mahasiswa', 'windynurhidayati@yahoo.com', 'Asisten yang anda suka?', 'sarah'),
('201731092', 'winggar wahari putra', '081243533981', 'Winggar123', 'Mahasiswa', 'winggarwahariputra@gmail.com', 'Dosen yang anda suka?', 'semua'),
('201731094', 'yulia fepriani siregar', '081264213364', '210414', 'Mahasiswa', 'yuliafebriyanisiregar@gmail.co', 'Nama hewan peliharaan?', 'meimei'),
('201731098', 'Sumarni', '2121', 'Sttpln', 'Mahasiswa', 'andanireginatasya@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731099', 'khadafi rizal putra', '081341871644', 'kacang', 'Mahasiswa', 'khadafyrizal5@gmail.com', 'Dosen yang anda suka?', 'gaada'),
('201731103', 'Zilian RIfaldo', '', '201731103', 'Mahasiswa', '', 'Bebas?', 'Han'),
('201731107', 'muhammad ridwan atthariq', '085880956889', 'auahgelap17', 'Mahasiswa', 'ridwanatthariq19@gmail.com', 'Nama hewan peliharaan?', 'hendrik'),
('201731108', 'Anzar Maulana', '', '201731108', 'Mahasiswa', '', 'Panggilan unik anda?', 'maul'),
('201731109', 'FARADILA EKAYANI DA', '082138701019', 'faradila1308', 'Mahasiswa', 'faradila1731109@sttpln.ac.id', 'Bebas?', 'fara'),
('201731111', 'nina amalia', '', '201731111', 'Mahasiswa', 'ninaamalia28@gmail.com', 'Panggilan unik anda?', 'nine'),
('201731112', 'Putri Dwi Anugrah Nur', '', 'putrii20', 'Mahasiswa', 'putridwianugrahnur@gmail.com', 'Dosen yang anda suka?', 'pak eka'),
('201731113', 'Muhammad Hirzi Fathan', '', '201731113', 'Mahasiswa', 'hirzifathan12@gmail.com', 'Nama hewan peliharaan?', 'oz'),
('201731115', 'Muh Fauzi Badaruddin', '0895800758571', 'Telkomsel123', 'Mahasiswa', 'mhfauzi1807@gmail.com', 'Bebas?', 'meong'),
('201731116', 'Sarah Juliandiny', '', '201731116', 'Asisten', 'sarah@gmail.com', 'Dosen yang anda suka?', 'Cala'),
('201731122', 'Khoirusyifa Al Muttaqo', '089636007925', '10012015', 'Mahasiswa', 'khoirusyif1731122@sttpln.ac.id', 'Dosen yang anda suka?', 'gino'),
('201731126', 'Shafira Aulia Ramadani S', '083140429466', '201731126', 'Mahasiswa', 'shafiraaulia327@gmail.com', 'Dosen yang anda suka?', 'siapa ya'),
('201731127', 'Della Novita Sekar P', '0', '27111998', 'Mahasiswa', 'della17311127@sttpln.ac.id', 'Dosen yang anda suka?', 'pak haris'),
('201731131', 'Ramdhani Abbas Latuconsina', '081283464168', 'LATUCONSINA', 'Mahasiswa', 'dhanilatuconsina231299@gmail.c', 'Nama hewan peliharaan?', 'kucing'),
('201731132', 'Farhan Arrasyid', '081372925545', 'wanrltw', 'Mahasiswa', 'farhanarrasyid27@gmail.com', 'Panggilan unik anda?', 'Han'),
('201731133', 'tommy maruli tua purba', '', 'tommypurba', 'Mahasiswa', 'tommypurba73@gmail.com', 'Dosen yang anda suka?', 'pak irfan sembiring'),
('201731134', 'ANDI PUTRI MAULANA RAMADANI', '081281009512', '201731134', 'Mahasiswa', 'maulanaandiputri@yahoo.co.id', 'Dosen yang anda suka?', 'irfan sembiring'),
('201731135', 'Habib Bhasamala', '081298826101', 'tanggal26', 'Mahasiswa', 'habibbhasamala@gmail.com', 'Panggilan unik anda?', 'bhas'),
('201731136', 'Imam Akbar', '000', '201731136', 'Mahasiswa', '201731136', 'Panggilan unik anda?', 'Imam'),
('201731137', 'Yashinta Rizky Devi', '0895640320174', 'sayangku23', 'Mahasiswa', 'yashinta.rizkyd@gmail.com', 'Panggilan unik anda?', 'Amoy'),
('201731138', 'Furi handayani', '0895626736459', 'securitycode', 'Mahasiswa', 'furyhandayani@yahoo.com', 'Panggilan unik anda?', 'fur'),
('201731143', 'Tio Anugrah', '081291032322', 't1731143', 'Mahasiswa', 'tio1731143@sttpln.ac.id', 'Dosen yang anda suka?', 'pak irfan sembiring'),
('201731144', 'Indah Syahya Dinata', '082320007456', '191199indahsyd', 'Mahasiswa', 'syahyadinataindah@gmail.com', 'Panggilan unik anda?', 'ndaahcah'),
('201731146', 'sahrul', '081388660565', '201731146', 'Mahasiswa', 'sahrulc3@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201731147', 'Siti Wilda Andriani', '085863528584', '201731147', 'Mahasiswa', 'sitiwilda9@gmail.com', 'Dosen yang anda suka?', 'Sely Karmila'),
('201731149', 'Fachri Yusza Parlinggoman Tampubolon', '082166172667', '535165', 'Mahasiswa', 'fachriyusza91@gmail.com', 'Panggilan unik anda?', 'JAMES'),
('201731150', 'Edy Setiawan', '085277807543', '201731150', 'Mahasiswa', 'wkeren35@gmail.com', 'Dosen yang anda suka?', 'bebas juga'),
('201731154', 'Yohanes ALvons Woda Sara', '082237287991', 'camris21', 'Mahasiswa', 'yohanes1731154@sttpln.ac.id', 'Bebas?', 'alvons'),
('201731155', 'Suci Rahmadani', '085767996487', 'sumbarang', 'Mahasiswa', 'suci29rahmadani@gmail.com', 'Nama hewan peliharaan?', 'mocu'),
('201731156', 'Gamalliel Sharon', '08871678145', 'gama194340', 'Mahasiswa', 'gamalliel1731156@sttpln.ac.id', 'Nama hewan peliharaan?', 'b dawg'),
('201731159', 'anak agung istri dina prabawati', '082147007320', '180813', 'Mahasiswa', 'dina1731159@sttpln.ac.id', 'Nama hewan peliharaan?', 'anjing'),
('201731161', 'Hizkia Rodando Gratia', '', 'Dando1422', 'Mahasiswa', '', 'Dosen yang anda suka?', 'Sukri'),
('201731162', 'sheilla jihan viori putri', '081378004313', 'alegra123', 'Mahasiswa', 'sheillajihanviory@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731163', 'Titania Manurung', '082282826421', 'chimmy', 'Mahasiswa', 'titaniamanurung@yahoo.com', 'Panggilan unik anda?', 'lisa'),
('201731164', 'Aldi Wisnu Handhono', '087822984107', 'aldichinung15321', 'Mahasiswa', 'aldi1731164@sttpln.ac.id', 'Dosen yang anda suka?', 'aldi'),
('201731167', 'muhammad yong subekti', '082111359896', '19101999', 'Mahasiswa', 'yahooyahoo@yahoo.com', 'Dosen yang anda suka?', 'PAK SUKRI'),
('201731168', 'BEATRICE ANGELA ELFRIDA SINAGA', '082280005383', 'beatrice', 'Mahasiswa', 'btrcangela18@gmailcom', 'Panggilan unik anda?', 'Trice'),
('201731170', 'AprianGilangPutra', '082180028664', 'Alinel66', 'Mahasiswa', 'gilang_afrian66@yahoo.com', 'Panggilan unik anda?', 'AGP'),
('201731171', 'Abdi Besvindo', '082288267455', 'Galaxy11', 'Mahasiswa', 'abdi1731171@sttpln.ac.id', 'Bebas?', '4'),
('201731172', 'Novriani A Sihaloho', '', '201731172', 'Mahasiswa', 'novrianisihaloho97@gmail.com', 'Panggilan unik anda?', 'Novri'),
('201731173', 'ADAM FARID ALHADI', '083148080703', '201731173', 'Mahasiswa', 'ALHADIADAM13@GMAIL.COM', 'Dosen yang anda suka?', 'DANDO'),
('201731174', 'Nadya Azzahra', '081232468484', 'azzahranadya6', 'Mahasiswa', 'nadyadhea6@gmail.com', 'Panggilan unik anda?', 'dhea'),
('201731175', 'Nur Rizkya Syahputri Nasution', '081263197747', 'nasution', 'Mahasiswa', 'nurrizkyasyahputri60@gmail.com', 'Panggilan unik anda?', 'putek'),
('201731176', 'Rahma Aulia Salsabila', '085780383948', 'vvvvvvvv', 'Mahasiswa', 'rahmaauliasalsabila@yahoo.com', 'Bebas?', '-------'),
('201731178', 'Hanna Septiani Rumahorbo', '085270756095', 'english99', 'Mahasiswa', 'hannaseptiani123@gmail.com', 'Dosen yang anda suka?', 'Abbdurasyid'),
('201731180', 'Ester Helis', '085760298790', 'terebaung', 'Mahasiswa', 'esterhelis19@gmail.com', 'Panggilan unik anda?', 'baung'),
('201731181', 'Sri Devi Agustina', '', 'silaban21', 'Mahasiswa', 'sridevy889@gmail.com', 'Bebas?', 'silaban'),
('201731182', 'Elida Viscalia', '082269104823', 'apaayaa', 'Mahasiswa', 'elidavsco@gmail.com', 'Nama hewan peliharaan?', 'Chittaphon'),
('201731183', 'Muhammad Tsaqiif Assabiil', '0895363559526', '01november1999', 'Mahasiswa', 'sakif.assabiil99@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731184', 'M.Depid', '082281578955', '03121998', 'Mahasiswa', 'Muhammaddevid02@gmail.com', 'Asisten yang anda suka?', 'tajul'),
('201731185', 'Wanda Charly Purba', '082290170318', '181617', 'Mahasiswa', 'wandapurba169@gmail.com', 'Nama hewan peliharaan?', 'pappy&puppy'),
('201731186', 'cifiana handayani', '081381830724', '240515', 'Mahasiswa', 'cifianahandayani@yahoo.com', 'Nama hewan peliharaan?', 'kucing'),
('201731188', 'Nida Luthfiyyah', '081905896086', 'akukamukita', 'Mahasiswa', 'nida.luthfiyyah24@gmail.com', 'Dosen yang anda suka?', 'ada deh'),
('201731189', 'alif aulia rahman', '081510442080', 'dasar23', 'Mahasiswa', 'alif_cici@yahoo.com', 'Panggilan unik anda?', 'mengkii');
INSERT INTO `mhs` (`nim`, `nama_mhs`, `no_hp_mhs`, `pass`, `status_mhs`, `email`, `recovery2`, `recovery1`) VALUES
('201731190', 'aulya sri utami ilham', '082292397909', 'september', 'Mahasiswa', 'aulya1731190@sttpln.ac.id', 'Panggilan unik anda?', 'uul'),
('201731192', 'Fanuel Alfrinus Kalalo', '', 'kokonuel', 'Mahasiswa', 'fanuelalfrinuskalalo99@gmail.c', 'Panggilan unik anda?', 'Koko'),
('201731193', 'Niki Ayu Widyaasti', '082276002715', 'nikiayu98', 'Mahasiswa', 'nikiayuwidya@gmail.com', 'Nama hewan peliharaan?', 'epan'),
('201731194', 'Chinthya Nur Avisha Almininda', '085397074932', '26121999', 'Mahasiswa', 'chinthya1731194@sttpln.ac.id', 'Panggilan unik anda?', 'chin'),
('201731195', 'Rahmat Alvin', '081266016742', 'alvin120499', 'Mahasiswa', 'rahmat1731195@sttpln.ac.id', 'Dosen yang anda suka?', 'dio'),
('201731196', 'Farhan Ammar Hafizh', '085710905047', 'farhan1303', 'Mahasiswa', 'farhan1731196@sttpln.ac.id', 'Nama hewan peliharaan?', 'yonk'),
('201731197', 'Meylita Sari Sidauruk', '087775808505', 'meylitasari123', 'Mahasiswa', 'meylitasari.roti@gmail.com', 'Dosen yang anda suka?', 'Pak Muhaimin'),
('201731198', 'Oktavianus Bramantio Ambarita', '082276726836', '201731198', 'Mahasiswa', 'oktavianusbramantio66@gmail.co', 'Dosen yang anda suka?', 'RIKI'),
('201731199', 'Hastuti', '082396059709', '181098', 'Mahasiswa', 'hastuty112@yahoo.co.id', 'Bebas?', 'tuti'),
('201731200', 'Syibran Mulsi', '082214962542', 'poop12345', 'Mahasiswa', 'syibranmulsi@gmail.com', 'Bebas?', 'they just want your money'),
('201731201', 'adil swasono raja putra', '082132730472', 'adilcakep', 'Mahasiswa', 'adilswasono99@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731202', 'Shelli Mailina', '082282301113', '201731202', 'Mahasiswa', 'shellimailina7@gmail.com', 'Nama hewan peliharaan?', 'boy'),
('201731203', 'jihan viola', '082246419387', '201731203', 'Mahasiswa', 'jihanviolaa@gmail.com', 'Bebas?', 'sabeb'),
('201731207', 'Ruben Mulia Lubis', '085216442077', 'nicethink', 'Mahasiswa', 'rubenlubis44@gmail.com', 'Dosen yang anda suka?', 'Ibu Yessy Fitriani'),
('201731208', 'M.Irpansyah AL Shiddiqy', '081382283585', 'Ziggyn123', 'Mahasiswa', 'muhammad1731208@sttpln.ac.id', 'Dosen yang anda suka?', 'pak eka'),
('201731209', 'Adinda Rezki', '04', '17novembr', 'Mahasiswa', 'dindaarezki@yahoo.com', 'Panggilan unik anda?', 'din'),
('201731210', 'Febria Friscilla', '085218441747', 'sega1010', 'Mahasiswa', 'febriafriscilla@gmail.com', 'Bebas?', 'sabeb'),
('201731211', 'Eka Harianti', '', '201731211', 'Asisten', '', 'Asisten yang anda suka?', 'kak eka'),
('201731212', 'Muh ALif Irsyam', '', '100800', 'Mahasiswa', '', 'Panggilan unik anda?', 'hmm'),
('201731214', 'Ilham Julian Syahputra', '35', 'informatika1', 'Mahasiswa', 'ilhamjulians07@gmail.com', 'Panggilan unik anda?', 'bang boy'),
('201731215', 'I G Bagus Verdhi  Vidyasthana', '081238649665', '201731215', 'Mahasiswa', 'bverdhii@gmail.com', 'Asisten yang anda suka?', 'sara'),
('201731216', 'rysa salsabila', '082112361477', 'rysa2154', 'Mahasiswa', 'rysasalsabila70@gmail.com', 'Nama hewan peliharaan?', 'kuning'),
('201731217', 'Rachmad Ramadhan Yuslim', '', 'kokoramaliem312', 'Mahasiswa', 'rama.liem03@gmail.com', 'Panggilan unik anda?', 'rams'),
('201731218', 'Amru Fakharullah', '082232160034', '201731218', 'Mahasiswa', 'doraemon87@outlook.co.id', 'Dosen yang anda suka?', 'sukri'),
('201731219', 'Erzunian Maulidy Iswonda', '08568919470', 'Dianetsa2469', 'Mahasiswa', 'erzunian99@gmail.com', 'Nama hewan peliharaan?', 'merry'),
('201731220', 'Arif Gunawan', '082273454048', '123456', 'Mahasiswa', 'arifgunawan99@yahoo.com', 'Nama hewan peliharaan?', 'face'),
('201731221', 'Tri Shangrilla Rizaldi', '081281011821', 'davidegea1@', 'Mahasiswa', 'trishangrillarzldi@gmail.com', 'Bebas?', 'pink'),
('201731222', 'hadi arrijal hendri', '081266743802', 'poomsae000', 'Mahasiswa', 'hadiarrijal000@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201731223', 'Miftach Uziana', '082128079255', '01051999', 'Mahasiswa', 'miftach1731223@sttpn.ac.id', 'Nama hewan peliharaan?', 'kelinci'),
('201731224', 'Syafiq Althof Rauf', '082291628232', 'acil1999', 'Mahasiswa', 'acilrauf@gmail.com', 'Panggilan unik anda?', 'acil'),
('201731225', 'OKTAVIANI DANA ISWARA', '09', '201731225', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'kucing'),
('201731227', 'danang dwiyunanda haq', '0823300174343', 'danang12', 'Mahasiswa', 'danangdwiyunandahaq@gmail.com', 'Panggilan unik anda?', 'yah'),
('201731228', 'destri', '08117382211', 'shadiqi', 'Mahasiswa', 'destridestola@gmail.com', 'Panggilan unik anda?', 'destry'),
('201731229', 'Ide Hati Pardede', '082362390365', 'sttpln17', 'Mahasiswa', 'idepardede@yahoo.com', 'Nama hewan peliharaan?', 'kucing'),
('201731230', 'Ahmad Saputra Fadiarora', '081278391936', '201731230', 'Mahasiswa', 'saputra.fadia@gmail.com', 'Bebas?', 'bebas'),
('201731231', 'Muh Fahmi Rachman', '082271536585', '201731231', 'Mahasiswa', 'fahmiirchman007@gmail.com', 'Panggilan unik anda?', 'brian'),
('201731234', 'L.M. SYAHRUL ANWAR', '081388630310', 'odecha20', 'Mahasiswa', 'lm1731234@sttpln.ac.id', 'Panggilan unik anda?', 'Alex'),
('201731235', 'Adi Liyani Saputra', '', 'Adikrenz', 'Mahasiswa', 'adi1731235@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201731236', 'Noval Gandhi Sadewa', '081314449963', 'doenalnax621', 'Mahasiswa', 'noval1731236@sttpln.ac.id', 'Bebas?', 'free'),
('201731238', '201731238', '08555555555', '201731238', 'Mahasiswa', 'rachmadirahmanlobda1@gmail.com', 'Dosen yang anda suka?', 'semua'),
('201731239', 'Gina Afra Ardelia', '082395682591', 'Ardelia1307', 'Mahasiswa', 'ginaafra13@gmail.com', 'Panggilan unik anda?', 'gifra'),
('201731240', 'Herman Siagian', '085361621235', 'Sperm616212', 'Mahasiswa', 'herman1731240@sttpln.ac.id', 'Bebas?', 'sari roti'),
('201731241', 'Ni Made Ayu Astiti Wiwekawati', '08970283478', 'birugemini', 'Mahasiswa', 'ayuastiti16@gmail.com', 'Panggilan unik anda?', 'aas'),
('201731242', 'krisyuan ningsih anjelnia dewi zebua', '', 'krisyuan23', 'Mahasiswa', 'krisyuan.anjel07@gmail.com', 'Asisten yang anda suka?', 'dia'),
('201731244', 'Alwi Muhammad', '082277155995', 'alwimuhammad10', 'Asisten', 'alwi1731244@sttpln.ac.id', 'Asisten yang anda suka?', 'Alwi Muhammad'),
('201731245', 'Noer syawal', '082363432046', '160514', 'Mahasiswa', 'noer1731245@sttpln.ac.id', 'Dosen yang anda suka?', 'Pak Max'),
('201731247', 'ANNISA SRI WAHYULIA', '082268499192', '270799', 'Mahasiswa', 'annisawahyulia19@gmail.com', 'Dosen yang anda suka?', 'pak budi'),
('201731248', 'Daffa Fauzan', '082299629774', 'karawac12', 'Mahasiswa', 'daffafauzan2527@gmail.com', 'Asisten yang anda suka?', 'alwi'),
('201731250', 'Ramdhati Ulya', '082284372583', '201731250', 'Mahasiswa', 'ramdhatiulya1@gmail.com', 'Panggilan unik anda?', 'bebe'),
('201731251', 'Muhammad Naufal Hadi', '085261212427', '201731251', 'Mahasiswa', 'naufalvaldy@gmail.com', 'Dosen yang anda suka?', 'Pak Andi Dahroni'),
('201731252', 'Afifah Nurlita Octaviasari', '085731007637', 'Bella2527', 'Mahasiswa', 'afifahnoctaviasari@gmail.com', 'Panggilan unik anda?', 'ipeh'),
('201731253', 'vio ells clara krey', '081248348837', '797757', 'Mahasiswa', 'vioellsclarakrey@gmail.com', 'Nama hewan peliharaan?', 'nael'),
('201731254', 'Yuki Annisa Putri', '085372943535', 'yukiap', 'Mahasiswa', 'yukiannisa1@gmail.com', 'Panggilan unik anda?', 'yuki'),
('201731256', 'hafiz', '081264016123', 'hafizfajar11', 'Mahasiswa', 'hafiz1731256@sttpln.ac.id', 'Dosen yang anda suka?', 'pak syukri'),
('201731257', 'Aditya Bayu Putra Pratama', '089506448414', '24051999', 'Mahasiswa', 'bayuaditya0111@gmail.com', 'Dosen yang anda suka?', 'pak joni'),
('201731258', 'Wahyu Unggul Wibawati Vanessa', '085231996820', 'unggul0809', 'Mahasiswa', 'vanessa.unggul@gmail.com', 'Panggilan unik anda?', 'princess'),
('201731259', 'Febby Harmayda', '085378155702', 'harmayda03', 'Mahasiswa', 'febbyharmayda21@gmail.com', 'Panggilan unik anda?', 'kepo deh'),
('201731263', 'Annisa Qaturunnada', '085288917700', '990531', 'Mahasiswa', 'qndannisa@gmail.com', 'Panggilan unik anda?', 'echa'),
('201731264', 'Tiara Sukma Ardanti', '082281597589', 'asswbwr1', 'Mahasiswa', 'tiarasukma15@gmail.com', 'Bebas?', 'free'),
('201731265', 'mulya jefri', '082367002246', '201731265', 'Mahasiswa', 'mulyajefri@gmail.com', 'Dosen yang anda suka?', 'pak joni'),
('201731266', 'Syafira Nur Amalia Arif', '082259321693', '201731266', 'Mahasiswa', 'syafira1731266@sttpln.ac.id', 'Panggilan unik anda?', 'Piwa'),
('201731267', 'Nurlaela Jumadil', '082399032885', 'rahasia', 'Mahasiswa', 'elhajumadil1699@gmail.com', 'Bebas?', 'semuanya'),
('201731268', 'MAULIDA NABILA AKBAR', '081907956989', 'alin12345', 'Mahasiswa', 'nabilaakbar140699@gmail.com', 'Panggilan unik anda?', 'alin'),
('201731271', 'Reza Aulianda Putra', '081370668528', 'sayangmamak', 'Mahasiswa', 'rezaaulianda@gmail.com', 'Panggilan unik anda?', 'REZA'),
('201731272', 'M. Fajar Saputra', '082287405716', '18061999', 'Mahasiswa', 'fajar1731272@sttpln.ac.id', 'Dosen yang anda suka?', 'Pak Satrio Yudho'),
('201731273', 'Deby Aprisonia Siregar', '085358687718', 'deaby123', 'Mahasiswa', 'debyaprisonia@gmail.com', 'Nama hewan peliharaan?', 'dongan'),
('201731275', 'Maryo Freddy', '082385482489', '765425', 'Mahasiswa', 'freddymaryo@gmail.com', 'Dosen yang anda suka?', 'legion'),
('201731276', 'GRACYANA DUMARISTA SITIO ', '081260189313', '201731276', 'Mahasiswa', 'gracesitio06@gmail.com', 'Nama hewan peliharaan?', 'Kucing'),
('201731277', 'muhammad khatami', '', '201731277', 'Mahasiswa', 'muhammadkhatami808@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731279', 'ayuh mulidiya erwin', '081374296266', '201731279', 'Mahasiswa', 'ayuh.maulidiya@gmail.com', 'Dosen yang anda suka?', 'max'),
('201731282', 'JEFICA PERMATA AULIA RACHIM', '082112303066', 'JEFICAAR', 'Mahasiswa', 'jeficapermata22@gmail.com', 'Asisten yang anda suka?', 'Naomi'),
('201731283', 'NI LUH INDAH SUKMA', '087787024266', 'indahsukma', 'Mahasiswa', 'indahsukma03@gmail.com', 'Dosen yang anda suka?', 'muhaimin'),
('201731284', 'Siti Humaira', '081280500808', 'ayahdanmama', 'Mahasiswa', 'sitihumaira001@yahoo.com', 'Panggilan unik anda?', 'mayra'),
('201731286', 'Ika Nurul Hidayah HS', '082188143756', 'kepomudeh', 'Mahasiswa', 'ikanurul21@gmail.com', 'Panggilan unik anda?', 'halo boi'),
('201731287', 'Amalia Nur Fajrina', '082221264877', 'sweetheart', 'Mahasiswa', 'amalia.mel13@gmail.com', 'Panggilan unik anda?', 'ama'),
('201731288', 'natanael tobing', '', 'mindodes1', 'Mahasiswa', 'natanaeltobing1@gmail.com', 'Dosen yang anda suka?', 'kamu'),
('201731289', 'Ardianta Samuel Sembiring', '081317661377', 'pakueng1123', 'Mahasiswa', 'ardianta.samuel@gmial.com', 'Nama hewan peliharaan?', 'belo'),
('201731290', 'kuntum khaira ummah', '082288364346', '120798', 'Mahasiswa', 'kuntumkhaira1207@gmail.com', 'Panggilan unik anda?', 'cantik'),
('201731291', 'Nadia Salsabila', '081219367360', 'nadiasalsabila', 'Mahasiswa', 'tugasnadia28@gmail.com', 'Panggilan unik anda?', 'orooroombo'),
('201731293', 'ilham rizki', '82387800839', 'ilhamrizki', 'Mahasiswa', 'ilham.rizki3004@gmail.com', 'Dosen yang anda suka?', 'pak joni'),
('201731294', 'RENITA', '089647634262', 'ayurenitap24', 'Mahasiswa', 'ayurenitap@gmail.com', 'Nama hewan peliharaan?', 'poci'),
('201731295', 'Grescela Oktaria Sidabutar', '082353101339', 'grescelaos24@', 'Mahasiswa', 'grescelas@gmail.com', 'Nama hewan peliharaan?', 'Guguk'),
('201731296', 'SULTHAN IQBAL FEBRIANSYAH', '082292701776', '12345SULTHAN', 'Mahasiswa', 'sulthanspensas@gmail.com', 'Panggilan unik anda?', 'iqbal'),
('201731299', 'elaziz galih wicaksana', '087730186461', '12345', 'Mahasiswa', 'galihelaziz@gmail.com', 'Nama hewan peliharaan?', 'molly'),
('201731301', 'Fajrah Anugrah', '085204009002', 'rararache1002', 'Mahasiswa', 'fajrah1731301@sttpln.ac.id', 'Panggilan unik anda?', 'Rache'),
('201731302', 'puspa riri agustiana', '087780539160', '040800pra', 'Mahasiswa', 'pspriri@gmail.com', 'Panggilan unik anda?', 'puspa'),
('201731305', 'Khairunnisa Zhafira', '08996743339', 'shimawaris1', 'Mahasiswa', 'khairunnisazhaf@gmail.com', 'Bebas?', 'sabeb'),
('201731306', 'Bilal Muhammad Nurtio', '087774396420', 'xscremenition', 'Mahasiswa', 'sanadabilal7@gmail.com', 'Dosen yang anda suka?', 'max'),
('201731313', 'Santi Sembiring', '081260980601', 'yesustuhanku', 'Mahasiswa', 'santi_sembiring@yahoo.com', 'Panggilan unik anda?', 'Santi'),
('201731315', 'benny', '', '061298', 'Mahasiswa', 'benny12@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201731317', 'Teuku Rifki Dhulul Fata', '085277494909', 'temulawakfc', 'Mahasiswa', 'rifkifata@gmail.com', 'Panggilan unik anda?', 'iki'),
('201731318', 'syahriel wardhana', '089519690122', 'pasword123', 'Mahasiswa', 'syahrielwardhana6@gmail.com', 'Dosen yang anda suka?', 'M.joni'),
('201731319', 'Beatrix Ananda Anastasia Baso', '082346786742', 'Princess16', 'Mahasiswa', 'anastasya_baso@yahoo.com', 'Panggilan unik anda?', 'necu'),
('201731320', 'Bagus Septiawan', '085382838424', 'kotabumi', 'Mahasiswa', 'septiawanb25@gmail.com', 'Dosen yang anda suka?', 'abdul haris'),
('201731323', 'Gilbran Al Fathan', '082274963999', 'tebaklah', 'Mahasiswa', 'lololoyoloo@gmail.com', 'Dosen yang anda suka?', 'semuanya'),
('201731324', 'Theresia Welly Rama', '087888830431', 'wellwell97', 'Mahasiswa', 'welly.rama@gmail.com', 'Bebas?', 'Yes'),
('201731325', 'Abdul Mukti', '085297839811', '201731325', 'Mahasiswa', 'amukti249@gmail.com', 'Nama hewan peliharaan?', 'Kucing'),
('201731327', 'kadriah', '085255102806', '201731327', 'Mahasiswa', 'kadriahll@yahoo.com', 'Panggilan unik anda?', 'kd'),
('201731330', 'Ammar Naufaldi Herman ', '085823239246', 'nissansienta', 'Mahasiswa', 'naufaldiammar@gmail.com', 'Panggilan unik anda?', 'arb'),
('201731331', 'Lutfian Angga Wijaya', '', 'law4869', 'Mahasiswa', '', 'Bebas?', 'bebas'),
('201731333', 'Nico Alfian Renaldy Gulo', '082272629276', 'Garibocor1', 'Mahasiswa', 'nicogulobelas@gmail.com', 'Bebas?', 'bebas'),
('201731334', 'Nila Elmy Islamy', '087721738616', 'nila310799', 'Mahasiswa', 'elmynila@gmail.com', 'Panggilan unik anda?', 'cila'),
('201731336', 'HAFIZH BAGUS PRASETYO', '085248798746', '201731336', 'Mahasiswa', 'Hafizh1731336@sttplnj.ac.id', 'Panggilan unik anda?', 'PRASETYO'),
('201731337', 'Muhammad Junaid Fauzan', '08124170415', 'ayahmama', 'Mahasiswa', 'uun.iphone6@gmail.com', 'Panggilan unik anda?', 'uunmjf06'),
('201731338', 'T Muhammad Arrayan', '081362150369', 'ray00000', 'Mahasiswa', 'arra1731338@sttpln.ac.id', 'Dosen yang anda suka?', 'irfan'),
('201731339', 'wandy barus', '082272825774', 'leo996386', 'Mahasiswa', 'wandybarus@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731340', 'Ikrami Rahmat Ramadhan', '082369375016', 'amat121232', 'Mahasiswa', 'ikramirahmatramadhan@gmail.com', 'Dosen yang anda suka?', 'Satrio'),
('201731341', 'Radiana', '', 'radiana2211', 'Mahasiswa', 'radiana2211@gmail.com', 'Panggilan unik anda?', 'radia'),
('201731343', 'Muhammad Yusril', '', 'palopo123', 'Mahasiswa', '', 'Panggilan unik anda?', 'hai'),
('201731344', 'Rendi Kurniawan', '081932866963', '0215398408', 'Mahasiswa', 'rendibm2@gmail.com', 'Dosen yang anda suka?', 'abdul haris'),
('201731346', 'elma apriani darlin', '085341615965', 'elmaapriani15', 'Mahasiswa', 'elmaapriani36@gmail.com', 'Dosen yang anda suka?', 'pak haris'),
('201731347', 'Uthia Wardani', '', 'wardani99', 'Mahasiswa', 'utia.wardani58@gmail.com', 'Panggilan unik anda?', 'uwek'),
('201731348', 'Aulia Mardhatillah', '085880825242', '201731348', 'Mahasiswa', 'aulia1731348@sttpln.ac.id', 'Dosen yang anda suka?', 'pak max'),
('201731349', 'Winda Novita Sari', '081211784740', 'tamanasri6', 'Mahasiswa', 'windasari260@gmail.com', 'Panggilan unik anda?', 'inda'),
('201731351', 'Muhammad Ilham', '082258436303', '23309902', 'Mahasiswa', 'ilham1731351@sttpln.ac.id', 'Bebas?', 'basic02'),
('201731352', 'Emil arisanty', '', 'emil1999', 'Mahasiswa', 'emil1731352@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201731356', 'intan nur aziza', '', 'intannuraziza', 'Mahasiswa', 'azizanurintan@gmail.com', 'Nama hewan peliharaan?', 'tun'),
('201731357', 'Nur Fika Ramadhani', '082293465499', 'sahabat123', 'Mahasiswa', 'fikaramadhani27@gmail.com', 'Panggilan unik anda?', 'fikaaa'),
('201731358', 'Ratu Triya Gemasih.S', '', 'GEMASIH09', 'Mahasiswa', 'ratutriya09@gmail.com', 'Panggilan unik anda?', 'catu'),
('201731359', 'FAIZAL ANSYORI', '', '111320', 'Mahasiswa', '', 'Dosen yang anda suka?', 'max teja ajie'),
('201731360', 'Lidya Valent Shafira', '08133008429', 'Balikpapanlmj18', 'Mahasiswa', 'lidyavalentshafira18@gmail.com', 'Nama hewan peliharaan?', 'Kuki'),
('201731361', 'm.faqih arya darmawan', '08990178106', 'musang', 'Mahasiswa', 'faqiharya00@gmai.com', 'Asisten yang anda suka?', 'kamu iya kamu :>'),
('201731364', 'Dinar Ayu Amalia Syahputri', '081287911430', '@ayu123@', 'Mahasiswa', 'dinarayuamalias@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731365', 'widya pratiwi', '085256666717', '13desember', 'Mahasiswa', 'wdyprtwiss@gmail.com', 'Asisten yang anda suka?', 'widya'),
('201731367', 'katon suwida', '08116061410', '12121212', 'Asisten', 'ylsks06@gmail.com', 'Dosen yang anda suka?', 'rakhmat arianto'),
('201731369', 'NURALIFAH LUTFIAH YUNUS', '085342702263', '201731369', 'Mahasiswa', 'nuralifahly@yahoo.com', 'Nama hewan peliharaan?', 'kucing'),
('201731370', 'Regianda prama adrean', '081349602206', 'Bintang900', 'Mahasiswa', 'tirza.magfirah@gmail.com', 'Nama hewan peliharaan?', 'micin'),
('201731372', 'Andi Akram Jaya', '085341643606', '240499', 'Mahasiswa', 'akramjaya24@gmail.com', 'Panggilan unik anda?', 'Andi'),
('201731375', 'Abdul Rauf', '082386069800', '201731375', 'Mahasiswa', 'abdulrauf786178@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201731380', 'Dedek Wahyudi Nasution', '81262099839', 'wahana123456', 'Mahasiswa', 'dedekwahyud28@gmail.com', 'Dosen yang anda suka?', 'Max'),
('201731381', 'Dedek Wahyudi Nasution', '081262099839', 'dedek123', 'Mahasiswa', 'dedekwahyud28@gmail.com', 'Nama hewan peliharaan?', 'Kucing'),
('201731383', 'Muhammad Fitrah', '085255828899', 'menujusenja201731383', 'Mahasiswa', 'mfitrah222@gmail.com', 'Dosen yang anda suka?', 'sassy'),
('20173159', 'Febby Harmayda', '085378155702', 'harmayda03', 'Mahasiswa', 'febbyharmayda21@gmail.com', 'Panggilan unik anda?', 'mbi'),
('20183014', 'Sasja Nurul Qhalbi Sjarief', '085824595609', 'McCurdi4n', 'Mahasiswa', 'xnzhlxl@gmail.com', 'Panggilan unik anda?', 'sassy'),
('201831001', 'Fariz Alfi Afida', '089603369014', 'timbol01', 'Mahasiswa', 'fariz1831001@sttpln.ac.id', 'Panggilan unik anda?', 'timbol'),
('201831002', 'syukron aditiya wardani', '082213702995', 'pelesaw123', 'Mahasiswa', 'syukron1831002@sttpln.ac.id', 'Panggilan unik anda?', 'syukron'),
('201831003', 'ARDILLAH SUFI', '085234580614', 'lafi020101', 'Mahasiswa', 'ardillahsufi2@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831004', 'Muhammad farrel tanzielal', '08116876770', 'farrel_25', 'Mahasiswa', 'farrel1831004@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201831005', 'Ibtihaj Restika Putri', '082193452895', 'Putri1109', 'Mahasiswa', 'ibtihajputri11@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831006', 'Andi Risal Arham', '085343887320', '28111999', 'Mahasiswa', 'rezhaandi28@gmail.com', 'Dosen yang anda suka?', 'Pak Ocid'),
('201831007', 'DHEA DAMAYANTI R', '082256438396', 'DEDEA1234', 'Mahasiswa', 'deadamayantir25@gmail.com', 'Panggilan unik anda?', 'Dey'),
('201831008', 'ridoi hamonangan simbolon', '081362734712', 'ridoi151299', 'Mahasiswa', 'ridoi1831008@sttpln.ac.id', 'Nama hewan peliharaan?', 'manis'),
('201831009', 'Fariz Rahman Seno Aji', '08979941114', 'juventuso12', 'Mahasiswa', 'farizsenoaa@gmail.com', 'Bebas?', 'Efisiensi adalah kemalasan yang cerdas'),
('201831010', 'riza indah sari', '087817230885', 'riza12474', 'Mahasiswa', 'riza1831010@sttpln.ac.id', 'Panggilan unik anda?', 'isso'),
('201831011', 'A.A.Sagung Istri Puspitasari Wijayanti', '08113862477', '575858', 'Mahasiswa', 'gungis765@gmail.com', 'Panggilan unik anda?', 'cis'),
('201831012', 'Lydia Napitupulu', '081243881823', 'napitupulukapoh', 'Mahasiswa', 'lydiaevalin01@gmail.com', 'Panggilan unik anda?', 'lyd'),
('201831013', 'agil bintoro sandy', '085275189974', '210799', 'Mahasiswa', 'agilsndy@gmail.com', 'Asisten yang anda suka?', 'bebas'),
('201831014', 'Sasja Nurul Qhalbi Sjarief', '085824595609', 'McCurdi4n', 'Mahasiswa', 'ssasjarif@gmail.com', 'Panggilan unik anda?', 'sassy'),
('201831015', 'FIKRI AHMAD LAZUARDI', '', 'fikri555', 'Mahasiswa', 'fikriahmadl9a12@gmail.com', 'Dosen yang anda suka?', 'SUKRI MURSANI'),
('201831016', 'Rezky Fajri', '082288485425', '08Oktober', 'Mahasiswa', 'rezky1831016@sttpln.ac.id', 'Panggilan unik anda?', 'tando'),
('201831017', 'ANALISA.A.N.HUTAGALUNG', '081396311357', 'aan070707', 'Mahasiswa', 'hutagalunganalisa@gmail.com', 'Panggilan unik anda?', 'lisa'),
('201831018', 'Nurin Masyitha Safiera', '082229041990', 'akubisa', 'Mahasiswa', 'nurin.safiera@gmail.com', 'Panggilan unik anda?', 'pesek'),
('201831019', 'Leo Poldo J M', '081290605467', 'Marpaung22', 'Mahasiswa', 'leo1831019@sttpln.ac.id', 'Nama hewan peliharaan?', 'Chiko'),
('201831020', 'Adhitya Faika Resky', '085398657005', 'macanang', 'Mahasiswa', 'faikaresky@gmail.com', 'Panggilan unik anda?', 'kiki'),
('201831021', 'MUHAMMAD IRVAN ARIFFUDIN', '081385095707', 'sky27smg.com', 'Mahasiswa', 'irvan1831021@sttpln.ac.id', 'Panggilan unik anda?', 'aang'),
('201831022', 'Wahyu Firman Ar-Rasid', '085339471474', 'Innovation12', 'Mahasiswa', 'w4hyufirman@gmail.com', 'Dosen yang anda suka?', 'Abdurrasyid'),
('201831023', 'Yohanda Permana Manurung', '089664699214', 'Yohanda1234', 'Mahasiswa', 'permanayohanda74@gmail.com', 'Bebas?', 'Iya betul'),
('201831024', 'Husnuzan Hidayat Pratama Abbas', '085256832959', 'essential@10', 'Mahasiswa', 'tamas2gg@gmail.com', 'Bebas?', 'Sasageyo'),
('201831025', 'Mariska Syalom Kakambong', '082293623823', 'mariska', 'Mahasiswa', 'mariska1831025@sttpln.ac.id', 'Panggilan unik anda?', 'mariss'),
('201831026', 'T M FIRDAUS', '082272957811', 'suadrifmt24', 'Mahasiswa', 'firdaus1831026@sttpln.ac.id', 'Panggilan unik anda?', 'tm'),
('201831027', 'Andi Nur Fadhila Chaula Sepha', '082187455798', '120499', 'Mahasiswa', 'andinurfadhila812@gmail.com', 'Panggilan unik anda?', 'Dhil'),
('201831028', 'Petra Andriyani Mulyo Wibisono', '08511743486', '2018310281', 'Mahasiswa', 'Petra1831028@sttpln.ac.id', 'Bebas?', 'loltabii'),
('201831029', 'Chinta Natasya Siburian', '082273086583', '14desember2000', 'Mahasiswa', 'chinta1831029@sttpln.ac.id', 'Dosen yang anda suka?', 'Rahma Farah'),
('201831030', 'anisa triasih rachmawati', '081393200894', '12345678', 'Mahasiswa', 'anisatriarachmawati@gmail.com', 'Nama hewan peliharaan?', 'ikan'),
('201831031', 'EKA DAMAYANTI', '082293439499', '434806', 'Mahasiswa', 'ekadamayantip02@gmail.com', 'Dosen yang anda suka?', 'pak sukri'),
('201831033', 'Novan dhika rizky F', '081329657656', '121199', 'Mahasiswa', 'novandhikarf@gmail.com', 'Nama hewan peliharaan?', 'ciko'),
('201831034', 'Alasan F Sinaga', '081379944694', '201831034', 'Mahasiswa', 'onjesinaga010200@gmail.com', 'Nama hewan peliharaan?', 'Ceper'),
('201831035', 'MELANI SAFIRA PUTRI', '082112047749', '201831035', 'Mahasiswa', 'melasafara@gmail.com', 'Bebas?', 'mendengarkan musik'),
('201831036', 'Cendekia Luthfieta Nazalia', '082178359328', 'ALLAHSWT', 'Mahasiswa', 'lulu1831036@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201831037', 'Adam Ramadhan', '081354729209', 'kiepsu123', 'Mahasiswa', 'adamramadhan340@gmail.com', 'Nama hewan peliharaan?', 'shiro'),
('201831039', 'Muhammad Wahid Fikri', '085265982075', '201831039', 'Mahasiswa', 'wahid1831039@sttpln.com', 'Panggilan unik anda?', 'midki'),
('201831040', 'WAHYU RAMADHAN', '081225279556', 'smansapol18', 'Mahasiswa', 'wramadhan388@gmail.com', 'Panggilan unik anda?', 'wr'),
('201831041', 'CAHYO PANGESTU', '89631974040', 'JFC LAMPUNG', 'Mahasiswa', 'cahyopangestu126@gmail.com', 'Nama hewan peliharaan?', 'pak ajo'),
('201831042', 'Valentia Titanova Siregar', '091272930709', '12valen12', 'Mahasiswa', 'valentia1831042@sttpln.ac.id', 'Panggilan unik anda?', 'valen'),
('201831043', 'Dhani Oktavian Elfaraby', '082257259001', 'zergling196', 'Mahasiswa', 'dhanielfaraby@gmail.com', 'Nama hewan peliharaan?', 'sul'),
('201831044', 'henokh junianto nugroho', '081393011236', '136955', 'Mahasiswa', 'henokhnugroho58@gmail.com', 'Nama hewan peliharaan?', 'cici'),
('201831045', 'MUH. FAJAR', '', 'fajar201831045', 'Mahasiswa', 'user.fjar019@gmail.com', 'Bebas?', 'fajar'),
('201831046', 'Nur Aisyah', '085343965208', 'ahmadali1', 'Mahasiswa', 'aisyahsumarni1@gmail.com', 'Panggilan unik anda?', 'asyiaaappp'),
('201831048', 'Baskara Dasa Ramadhan', '081227817309', 'Baskaradasa123', 'Mahasiswa', 'baskaradasa@gmail.com', 'Panggilan unik anda?', 'gembus'),
('201831049', 'gema naufal meidilaga', '081809168598', '280500', 'Mahasiswa', 'gemanaufal12@gmail.com', 'Dosen yang anda suka?', 'rahma'),
('201831050', 'Liony Framaychella', '082148827349', 'Liony123', 'Mahasiswa', 'lionyframaychella21@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831051', 'Muhammad Farras Hawari', '089686819844', 'faras123', 'Mahasiswa', 'faroscoy46@gmail.com', 'Nama hewan peliharaan?', 'Ras'),
('201831052', 'Muhammad Iriansyah Balo', '085298933003', '16122000y', 'Mahasiswa', 'miriansyah.balo@gmail.com', 'Nama hewan peliharaan?', 'alam'),
('201831053', 'Zakiya Viantika S', '085231310107', 'zakiya15', 'Mahasiswa', 'zakiyaviantikas@gmail.com', 'Panggilan unik anda?', 'kiki'),
('201831054', 'sulkifli', '081240911297', 'zk100700', 'Mahasiswa', 'zulk211@gmail.com', 'Nama hewan peliharaan?', 'dhani'),
('201831055', 'annisa nurul fahira', '085591122492', '201831055', 'Mahasiswa', 'annisa31055@sttpln.ac.id', 'Dosen yang anda suka?', 'pak sukri'),
('201831056', 'Shafira Aulia Yasmine', '0895610824023', 'ingat28041999', 'Mahasiswa', 'shafira1831056@sttpln.ac.id', 'Panggilan unik anda?', 'sapi'),
('201831057', 'Tirta Hayu Chameliana', '081545081693', 'tirtahayu', 'Mahasiswa', 'tirta1831057@sttpln.ac.id', 'Nama hewan peliharaan?', 'beri'),
('201831058', 'Devi Nur Alipah', '085780824162', 'devinuralipah', 'Mahasiswa', 'dnalifah@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831059', 'Muhammad Furqan Mushady', '085398842400', 'Mfurqan5656', 'Mahasiswa', 'fmushady15@gmail.com', 'Bebas?', 'kopiker aja sendiri'),
('201831060', 'muhammad ihwanul khalid', '081213317502', 'Ihwanul00', 'Mahasiswa', 'ihwan1831060@sttpln.ac.id', 'Nama hewan peliharaan?', 'iyan'),
('201831061', 'Miko Caesar', '082294646942', 'mikocaesar135', 'Mahasiswa', 'mikocaesar8@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831062', 'Widya Nur Fadhillah', '085296102249', 'widya2108', 'Mahasiswa', 'widya1831062@sttpln.ac.id', 'Panggilan unik anda?', 'dea'),
('201831063', 'Rizky Rama Pradana', '082288256911', 'verdhana', 'Mahasiswa', 'rizky1831063@sttpln.ac.id', 'Nama hewan peliharaan?', 'kelinci'),
('201831064', 'Ardiansyah', '089613333212', 'ardiansyah2901', 'Mahasiswa', 'ardiansyah1831064@sttpln.ac.id', 'Panggilan unik anda?', 'kang mus'),
('201831065', 'ARIO NUGROHO', '082148738071', 'Yoyok123', 'Mahasiswa', 'arionugroho1123@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831066', 'dila hepitia', '081371003620', 'dilhep29', 'Mahasiswa', 'dila1831066@sttpn.ac.id', 'Dosen yang anda suka?', 'sara'),
('201831067', 'Ida Sari Amalia', '0895604665864', 'ida201831067', 'Mahasiswa', 'idasariamalia93@gmail.com', 'Nama hewan peliharaan?', 'Ikan'),
('201831068', 'DEWI SARTIKA', '082186295613', 'dewi2018', 'Mahasiswa', 'dewi1831068@sttpln.ac.id', 'Panggilan unik anda?', 'bungsu'),
('201831069', 'ANDI NUR AINUN PUTRI UTAMI', '085255105099', 'AINUNYASIN29', 'Mahasiswa', 'andinurainun229@gmail.com', 'Dosen yang anda suka?', 'bu rahma'),
('201831070', 'Yuli Andini', '085263639794', 'anndnyli07', 'Mahasiswa', 'anndnyli@gmail.com', 'Panggilan unik anda?', 'Dini'),
('201831071', 'Nailul Muna Safitri', '081211473575', 'jakarta55', 'Mahasiswa', 'Nailul201831071@sttpln.ac.id', 'Dosen yang anda suka?', 'Abdurrasyid'),
('201831072', 'nurhalisah', '082188164447', 'lisa2801', 'Mahasiswa', 'nurhalisah201831072@gmail.com', 'Bebas?', 'makan'),
('201831073', 'agung prsaetyo santoso', '0818101120', 'mtsalfalah68', 'Mahasiswa', 'agungprasetyosantoso@gmail.com', 'Panggilan unik anda?', 'atung'),
('201831074', 'Syekh Alam Sabbih', '081294597399', '290500', 'Mahasiswa', 'alamjaee66@gmail.com', 'Panggilan unik anda?', 'alamjaee'),
('201831075', 'Brigita Tiora', '082331578244', '12345678', 'Asisten', 'brigi1831075@sttpln.ac.id', 'Dosen yang anda suka?', 'hello world'),
('201831076', 'NAOMI ARTAMA SILITONGA', '081262071108', 'ARTAMA20', 'Mahasiswa', 'naomi1831076@sttpln.ac.id', 'Panggilan unik anda?', 'Naomi'),
('201831077', 'Alma Meysa Ashfahani', '081553020817', 'alma2018', 'Mahasiswa', 'alma1831077@sttpln.ac.id', 'Bebas?', 'UNICORN'),
('201831078', 'Muhammad Istigfahri Wafit', '081356510979', 'Okizaki16', 'Mahasiswa', 'muhammadfahri3666@gmail.com', 'Panggilan unik anda?', 'istigfar'),
('201831079', 'Wini Alfiani A ', '081245362986', 'tahunbaru', 'Mahasiswa', 'winialfianiamir@gmail.com', 'Asisten yang anda suka?', 'semua nya'),
('201831080', 'George Parulian Siahaan', '082113005303', '759328', 'Mahasiswa', 'georgepsiahaan688@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201831081', 'Aditya Syahrul Setiawan', '081906191816', 'aditya123', 'Mahasiswa', 'Aditya31081@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201831082', 'Fira Bella Mustikahadi', '081248219894', 'fbmh300321', 'Mahasiswa', 'fira1831082@sttpln.ac.id', 'Panggilan unik anda?', 'bengbeng'),
('201831083', 'SARA ADELINA SARAGIH ', '082198648016', 'saraadelina', 'Mahasiswa', 'sara1831082@sttpln.ac.id', 'Dosen yang anda suka?', 'meilia'),
('201831084', 'Raden Muhammad Dimas Burhanudin Akbar', '0855178309', 'dimas012', 'Asisten', 'radendimas1212@gmail.com', 'Dosen yang anda suka?', 'Bu Meilia'),
('201831085', 'Ayu Rizkyca Awalia', '081236737412', '201831085', 'Asisten', 'ayurizkycaaa@gmail.com', 'Bebas?', 'mama'),
('201831086', 'Denny wahyu priyambodo', '082264972102', 'FZN548mk84', 'Mahasiswa', 'denisaga8@gmail.com', 'Nama hewan peliharaan?', 'brown'),
('201831087', 'refan eldo pratama  putra ', '082279103519', '031100', 'Mahasiswa', 'refaneldopratama123@gmail.com', 'Panggilan unik anda?', 'pala'),
('201831088', 'fajar ocsandrianto', '081247451012', 'Persib1097', 'Mahasiswa', 'fajarocsan29@gmail.com', 'Panggilan unik anda?', 'mandek'),
('201831089', 'Arya Nugraha', '082286946799', 'xjlehqmk1202', 'Mahasiswa', 'aryanugraha2016.12@gmail.com', 'Dosen yang anda suka?', 'Buk Meilia Nur Indah Susanti'),
('201831090', 'Elisabeth Lasari Pasaribu', '085261239521', 'Lasari29', 'Mahasiswa', 'elisabethpasaribu2016@gmail.co', 'Panggilan unik anda?', 'Elisa'),
('201831091', 'melanthon josse sirait', '082167418583', '201831091', 'Mahasiswa', 'melanthonsirait@gmail.com', 'Nama hewan peliharaan?', 'jeffri'),
('201831092', 'Arbi Satria Utama', '085874008517', 'trans-am', 'Mahasiswa', 'darkbringerarbi@gmail.com', 'Dosen yang anda suka?', 'John'),
('201831093', 'Sasha Amalia', '', 'Shaheera15', 'Mahasiswa', 'sashaamalia83@gmail.com', 'Panggilan unik anda?', 'Sasha'),
('201831094', 'Yafi Irfan Zuhdi', '082282969447', 'mra19374628', 'Mahasiswa', 'yafiirfanzuhdi@gamil.com', 'Dosen yang anda suka?', 'meili'),
('201831095', 'Muhammad Febriansyah', '081295784864', 'lastdondon', 'Mahasiswa', 'xenon.glossy@gmail.com', 'Bebas?', 'Xenon'),
('201831096', 'Muhammad Azii Zuddin', '081336330665', 'aziiarema', 'Mahasiswa', 'aziizuddin98@gmail.com', 'Panggilan unik anda?', 'Zayn'),
('201831098', 'Evan Primo Situmorang', '081377005251', '253483', 'Mahasiswa', 'evansitumorang69@yahoo.com', 'Panggilan unik anda?', 'lae'),
('201831099', 'Indah Septi Nariska', '081288748638', '070900', 'Mahasiswa', 'indahsnariska26@gmail.com', 'Panggilan unik anda?', 'Indahahaha'),
('201831100', 'Septian Aditya Darmawan', '082228691928', 'lakivirgo10', 'Mahasiswa', 'adhitydharma@gmailcom', 'Panggilan unik anda?', 'xmbx'),
('201831101', 'Gohimunte', '085959684707', '201831101', 'Mahasiswa', 'jadhul123@gmail.com', 'Nama hewan peliharaan?', 'robert'),
('201831102', 'Regita istia pangestu', '0895702080962', 'loeaveme90', 'Mahasiswa', 'regitapangestu@gmail.com', 'Panggilan unik anda?', 'gigi'),
('201831103', 'Syeh Rafhil Arafaizin', '081270179001', 'rafhil240400', 'Mahasiswa', 'arafaizinrafhil@gmail.com', 'Nama hewan peliharaan?', 'choki'),
('201831104', 'muhamad reza mahendra', '082280113600', '010800', 'Mahasiswa', 'rezamahendraa01@gmail.com', 'Nama hewan peliharaan?', 'puppy'),
('201831105', 'Aditya Rivaldi', '089667720681', 'ADITRIVALDI1205', 'Mahasiswa', 'aditrivaldi1205@gmail.com', 'Panggilan unik anda?', 'adit'),
('201831106', 'Rezky Putri Ayuningsari', '082188228309', 'reskyputrian26', 'Mahasiswa', 'rezky1831106@sttpln.ac.id', 'Dosen yang anda suka?', 'ibu meilia'),
('201831107', 'Yaasmin Hanifa', '085362539162', '201831107', 'Mahasiswa', 'hyaasmin@gmail.com', 'Panggilan unik anda?', 'yaas'),
('201831108', 'Fadhlur Rahmanda S', '', 'fadhlur25', 'Mahasiswa', 'fadhlurS45@gmailcom', 'Panggilan unik anda?', 'oyot'),
('201831109', 'Samsul Bakri Bethan', '081246618406', 'bethan17', 'Mahasiswa', 'arybethan17@gmail.com', 'Nama hewan peliharaan?', 'burung'),
('201831110', 'David Brian Sitanggang', '082274318152', 'amaterasu', 'Mahasiswa', 'davidsitanggang78@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201831111', 'Jefri Pasribu', '082277725482', 'pasaribu11', 'Mahasiswa', 'jefripasaribu01@gmail.com', 'Nama hewan peliharaan?', 'melanton'),
('201831112', 'Roland Stevenson Hae', '081337440096', '140120', 'Mahasiswa', 'rlndhae14@gmail.com', 'Nama hewan peliharaan?', 'Dio'),
('201831113', 'Syaeful Amin', '083819621700', 'Kartini 156', 'Mahasiswa', 'syaeful1831113@sttpln.ac.id', 'Dosen yang anda suka?', 'Meilia'),
('201831114', 'YASTAKUNA PUTRI HAZIRAH', '', 'YASTAKUNA1430', 'Mahasiswa', 'Yastakuna1831114@sttpln.ac.id', 'Panggilan unik anda?', 'momo'),
('201831115', 'Ika ChristinePurba', '082361998959', '200076', 'Mahasiswa', 'ikacp2000@gmail.com', 'Panggilan unik anda?', 'ika'),
('201831116', 'Zahier Muhammad Pelu', '', 'Lamb4life.', 'Mahasiswa', 'zahierp@icloud.com', 'Nama hewan peliharaan?', 'Putih'),
('201831117', 'Sandy T Laitupa', '082238225447', '051097', 'Mahasiswa', '', 'Asisten yang anda suka?', 'Dhiya '),
('201831118', 'Muhammad Rezki Fahmi Marli', '085242018600', 'Makmur23', 'Mahasiswa', 'fahmi.marli23@gmail.com', 'Dosen yang anda suka?', 'Ibu Meilia'),
('201831119', 'Miftaul Jatzia Semi', '082129254440', 'Milifalifa@12345@', 'Mahasiswa', 'miftauljatzia@gmail.com', 'Panggilan unik anda?', 'mita'),
('201831120', 'rahmat dipo setyadin', '085352827246', 'rahmat123', 'Asisten', 'rahmatdipo62@gmail.com', 'Dosen yang anda suka?', 'bu meili'),
('201831122', 'billy tyas wiratama', '082386908077', 'tanjungpinang', 'Mahasiswa', 'billy1831122@sttpln.ac.id', 'Nama hewan peliharaan?', 'Kucing'),
('201831123', 'fadri almusandi', '081266805706', 'matematika*7', 'Mahasiswa', 'fadrialmusandi316@gmail.com', 'Nama hewan peliharaan?', 'billy'),
('201831124', 'Andi Abd.Jalil.L', '085240596393', 'ajl260699', 'Mahasiswa', 'andijalil00@gmail.com', 'Bebas?', 'ajl260699'),
('201831126', 'VISDA VINTAN ARDIANTI', '82243168138', 'visda2018', 'Mahasiswa', 'visdavintan@gmail.com', 'Panggilan unik anda?', 'Biru'),
('201831127', 'alan akbar', '', '220899', 'Mahasiswa', 'alan1831127@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201831128', 'firman ahriansa', '08521123271', '201831128', 'Mahasiswa', 'firmanahriansya3@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831130', 'Narti Siahaan', '082389338914', 'oraetlabora', 'Mahasiswa', 'narti1831130@sttpln.ac.id', 'Panggilan unik anda?', 'pudan'),
('201831131', 'Naufal Arissaputra Harjiman', '081235702921', '201831131', 'Mahasiswa', 'magicbrose15@gmail.com', 'Bebas?', 'oke'),
('201831132', 'Adam Muhammad', '082123487900', 'fani3896', 'Mahasiswa', 'adam.m.mahari@gmail.com', 'Panggilan unik anda?', 'rayumi'),
('201831133', 'Muhamad Syihabuddin', '081311161271', 'Syhbddn02', 'Mahasiswa', 'ahmadsyhbddn2@gmail.com', 'Dosen yang anda suka?', 'gendut'),
('201831134', 'FAJAR ARJUNA', '081343863264', 'fajararjuna20500', 'Mahasiswa', 'th20rothers@gmail.com', 'Panggilan unik anda?', 'RESPECTOR'),
('201831135', 'Nur Athifah Marwa Makmur', '082195287041', '080590', 'Mahasiswa', 'tifahalim@yahoo.com', 'Panggilan unik anda?', 'Hai'),
('201831136', 'NAHDA KHANSA FARIDA', '081284553941', '200112', 'Mahasiswa', 'nahda1831136@sttpln.ac.id', 'Nama hewan peliharaan?', 'mbul'),
('201831137', 'febriani fatikas milen', '081292407710', 'Akusayangkamu123', 'Mahasiswa', 'febrianimilen@gmail.com', 'Asisten yang anda suka?', 'apa aja'),
('201831142', 'Mummad Sabri Fadhil', '081386960609', 'AYAMPENYET23', 'Mahasiswa', 'sabrifadhil56@gmail.com', 'Bebas?', 'dilan'),
('201831145', 'Alvina Eka Septia', '085959423693', '190900', 'Mahasiswa', 'vina1831145@sttpn.ac.id', 'Bebas?', 'vina'),
('201831146', 'Yessi O Munthe', '081386787381', 'qwerty10', 'Mahasiswa', 'muntheyessi@gmail.com', 'Nama hewan peliharaan?', 'logo'),
('201831147', 'Reysha Alifa', '0895335969432', 'Caca1801', 'Mahasiswa', 'reyshaalifa@gmail.com', 'Bebas?', 'reysha'),
('201831148', 'Lailil ayu fitriyah', '089699671412', '100100', 'Asisten', 'lailil.af@gmail.com', 'Asisten yang anda suka?', 'lailil'),
('201831149', 'Nabilla Dwi Aprilia', '082363351838', 'Mautauaja1', 'Mahasiswa', 'nabilladwiprl@gmail.com', 'Nama hewan peliharaan?', 'icik akak'),
('201831150', 'Rista maida Florentina Turnip', '081370417768', 'Ambai96oke', 'Mahasiswa', 'rista1831150@sttpln.ac.id', 'Nama hewan peliharaan?', 'Anjing'),
('201831152', 'charlie siahaan', '08975832840', '2607charlie', 'Mahasiswa', 'charliesiahan2001@gmail.com', 'Dosen yang anda suka?', 'bu yessy'),
('201831154', 'Muchammad Alief Kurnia Wijaya', '081385865606', '12345678', 'Mahasiswa', 'alief1831154@sttpln.ac.id', 'Nama hewan peliharaan?', 'cimo'),
('201831155', 'Rizka Arfia Suwardi', '', '201831155', 'Mahasiswa', '', 'Nama hewan peliharaan?', 'meeng'),
('201831156', 'Miftahul jannah', '082292141470', 'miftahul12', 'Mahasiswa', 'miftahul091299@gmail.com', 'Nama hewan peliharaan?', 'manis'),
('201831157', 'christ stefanie siburian', '082165135885', 'andy5984', 'Mahasiswa', 'christ1831157@sttpln.ac.id', 'Panggilan unik anda?', 'ste'),
('201831159', 'Muhammad Haqqi', '081251820157', '201831159', 'Mahasiswa', 'haqqi789@gmail.com', 'Panggilan unik anda?', 'qi'),
('201831161', 'ALDI SETIAWAN', '081381477347', '123QWEASDZXC', 'Mahasiswa', 'SETIAWANALDI730@GMAIL.COM', 'Dosen yang anda suka?', 'PA muhaimin'),
('201831164', 'ichmalurrayhan', '082386186775', 'rayhan171200', 'Mahasiswa', 'ichmalrrayhan@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201831166', 'R.A. DESHINTA PUTRI KURNIA WIJAYA', '082334444880', 'DESHINTA2512', 'Mahasiswa', 'deshintapkw@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201831167', 'Putri Olivia Nababan', '082115461388', '250600', 'Mahasiswa', 'putriolivia508@gmail.com', 'Panggilan unik anda?', 'oliv'),
('201831168', 'Yulius Rinjani Lalaun', '081244509252', '250500ok', 'Mahasiswa', 'wiskydrum1@gmail.com', 'Dosen yang anda suka?', 'Pak Jhoni'),
('201831169', 'Zul Haera', '082292170051', 'sani1520', 'Mahasiswa', 'zulhaera15@gmail.com', 'Panggilan unik anda?', 'jull'),
('201831170', 'cut rahima ananda rijaya', '081362723788', '04091971', 'Mahasiswa', 'cutrahima04@gmail.com', 'Nama hewan peliharaan?', 'Ami'),
('201831171', 'Syifa Faiza Khairunnisa', '085810261558', 'anisaicaanisa', 'Mahasiswa', 'syifa1831171@sttpln.ac.id', 'Panggilan unik anda?', 'ica'),
('201831174', 'mleonardi', '085889352275', 'didi12345', 'Mahasiswa', 'leo1831174@sttpln.ac.id', 'Panggilan unik anda?', 'leo'),
('201831179', 'dhea putri erra pradina', '087877842515', 'dheapradina15', 'Mahasiswa', 'dheapradina21@gmail.com', 'Panggilan unik anda?', 'dey'),
('201831180', 'Muhammad Luthfi Arsyad Feirdy', '081380297434', 'Luthfi452000', 'Asisten', '', 'Asisten yang anda suka?', 'Luthfi'),
('201831186', 'NURJANNAH NASUTION', '081382818277', '1234567', 'Mahasiswa', 'jannah1831186@sttpln.ac.id', 'Panggilan unik anda?', 'jenn'),
('201831193', 'A AHRIFAENI', '081319626404', 'reni21', 'Mahasiswa', 'ahrifaenii@gmail.com', 'Nama hewan peliharaan?', 'pieter'),
('201831197', 'ALDY REYNALDY PANJAITAN', '081291422506', 'ALDYPANJAITAN', 'Mahasiswa', 'aldypanjaitan.ap@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201831198', 'AS. SUCI ASRIANA', '082271380038', '995414', 'Mahasiswa', 'yuciaksir@gmail.com', 'Asisten yang anda suka?', 'ka.diyah'),
('201831201', 'Affandi Mufti', '082122152869', '201831201', 'Mahasiswa', 'affandi1831201@sttpln.ac.id', 'Dosen yang anda suka?', 'achmad bahtiar zen'),
('201831202', 'Juslina Tabita Marweri', '087873830332', '200713', 'Mahasiswa', '', 'Panggilan unik anda?', 'itha'),
('201831203', 'LIDYA SYAH PUTRI', '081908116012', 'putrisyahlidya04', 'Mahasiswa', 'lidyasyahputri99@gmail.com', 'Panggilan unik anda?', 'puput'),
('201831204', 'Sulastri', '082342066667', 'Hatiati01', 'Mahasiswa', 'astri20sulastri@gmail.com', 'Panggilan unik anda?', 'aty'),
('201831205', 'novia sulistyaningrum', '087789283118', 'ghania18', 'Mahasiswa', 'novia1831205@sttpln.ac.id', 'Dosen yang anda suka?', 'bu rahma'),
('201831206', 'Khesya Medhyna Saradiba Ariono', '081354958470', 'seungyoun', 'Mahasiswa', 'k.medhyna@gmail.com', 'Panggilan unik anda?', 'acha'),
('201931071', 'Lorenzo Gonzalez Situmorang', '082367148679', '77horasB@t4k123', 'Mahasiswa', 'lorenzositumorang0310@gmail.co', 'Bebas?', 'batak'),
('201931072', 'RICKY M. SIBARANI', '082272254967', '201931072', 'Mahasiswa', 'rickymarnaeksibarani@gmail.com', 'Panggilan unik anda?', 'marnaek'),
('201931073', 'Refi Maulana Aslam', '0895635797194', 'aslam_2000', 'Mahasiswa', 'refialbukhori@gmail.com', 'Panggilan unik anda?', 'kempot'),
('201931074', 'melani yunisa baitang', '082176540895', '2424032000', 'Mahasiswa', 'melaniyunisa2403@gmail.com', 'Panggilan unik anda?', 'la'),
('201931075', 'Dhea Sayuk Wijaya', '081958635776', 'Wijaya05', 'Mahasiswa', 'dhea1931075@sttpln.ac.id', 'Panggilan unik anda?', 'Sayang'),
('201931076', 'FITRIA NUR AYUNI', '081229228731', 'Ayunimirza15', 'Mahasiswa', 'fitria1931076@sttpln.ac.id', 'Panggilan unik anda?', 'ay'),
('201931077', 'ILHAM RAMADHAN', '082260685834', 'bores912', 'Mahasiswa', 'ilham1931077@sttpln.ac.id', 'Panggilan unik anda?', 'Bores'),
('201931078', 'Alivia Paradhita Prameswari', '081272228598', 'Theoismyfavoritecat', 'Mahasiswa', 'aliviaparadhita@gmail.com', 'Nama hewan peliharaan?', 'Theo'),
('201931079', 'Aufa Muzhaffar', '089617562704', 'aufamuzafar123', 'Mahasiswa', 'aufamuza321@gmail.com', 'Panggilan unik anda?', 'pom'),
('201931080', 'Nur Fajrul Ismi', '082347249739', 'ismibismar', 'Mahasiswa', 'nurfajrul1931080@sttpln.ac.id', 'Asisten yang anda suka?', 'Widya Pratiwi'),
('201931082', 'Muhammad Hanif Divanda', '081280486142', 'Raihan311200', 'Mahasiswa', 'hanif1931082@sttpln.ac.id', 'Panggilan unik anda?', 'dansoy'),
('201931083', 'zulfikar', '085224222207', '201931083', 'Mahasiswa', 'zulfikar1931083@sttpln.ac.id', 'Bebas?', 'kaluku'),
('201931084', 'kevin nofika', '085272667815', '817585', 'Mahasiswa', 'kevin1931084@gmail.com', 'Nama hewan peliharaan?', 'anjing'),
('201931085', 'Yusril Nauvally Risky', '082250583918', '766879', 'Mahasiswa', 'yusril1931085@sttpln.ac.id', 'Nama hewan peliharaan?', 'Kety'),
('201931086', 'Muhammad Fuad Shidqi', '082365902218', 'ageofempire1', 'Mahasiswa', 'fuad1931086@sttpln.ac.id', 'Panggilan unik anda?', 'Fuad'),
('201931087', 'Fiqhi Kurnia Pabri', '082348332631', 'NOFIHERZA', 'Mahasiswa', 'kurniapabrifiqhi@gmail.com', 'Bebas?', 'bebes juga'),
('201931088', 'Melliyani Rosanna Daulay', '082275682009', 'meli2603', 'Mahasiswa', 'melliyani1931088@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201931089', 'Sotarduga Junesko Gabriel Napitupulu', '085710020378', 'sentalisa123', 'Mahasiswa', 'sotarduga1931089@sttpln.ac.id', 'Panggilan unik anda?', 'ko'),
('201931090', 'Aliffa Bulqis', '082268695329', 'aliffa2001', 'Mahasiswa', 'aliffabalqis11@gmail.com', 'Nama hewan peliharaan?', 'abbu'),
('201931091', 'ATIKAH HIDAYATUL UMAMI', '085784740230', 'atikahumami26', 'Mahasiswa', 'atikah1931091@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201931092', 'Aulia Nada Azizah', '085607998517', 'aulianada', 'Mahasiswa', 'aulianada201931092@sttpln.ac.i', 'Nama hewan peliharaan?', 'soji'),
('201931093', 'roby rahmatdin', '085338934778', 'roby12345', 'Mahasiswa', 'roby1931093@sttpln.ac.id', 'Nama hewan peliharaan?', 'kelvin'),
('201931094', 'Muhammad Baihaqqi Ghiffari', '087893327507', 'temoik09', 'Mahasiswa', 'baihaqqi1931094@sttpln.ac.id', 'Nama hewan peliharaan?', 'Kucing'),
('201931095', 'Surya Agung Tri Aditama', '082232160907', 'satakeren1', 'Mahasiswa', 'surya1931095@sttpln.ac.id', 'Panggilan unik anda?', 'sur'),
('201931096', 'Andi Batari Salmin', '081315480089', '201931096', 'Mahasiswa', 'batari1931096@sttpln.ac.id', 'Panggilan unik anda?', 'Taripang'),
('201931097', 'Rahayu Sulistya', '0895372702915', 'rahayu123', 'Mahasiswa', 'rahayu1931097@sttpln.ac.id', 'Panggilan unik anda?', 'ayu'),
('201931098', 'Amman Kim Mazda', '082284174375', 'Kecoabutut12', 'Mahasiswa', 'akim.mazda92@gmail.com', 'Nama hewan peliharaan?', 'kucing'),
('201931099', 'muhamad yoga', '082237835361', 'forever123', 'Mahasiswa', 'yoga1931099@sttpln.ac.id', 'Dosen yang anda suka?', 'ibu melliani'),
('201931100', 'Nelly Yulia', '081286960871', 'Nellyyulia17', 'Mahasiswa', 'nelly1931100@sttpln.ac.id', 'Nama hewan peliharaan?', 'Anjing'),
('201931101', 'Daffa Alvaro Revanza', '081384833648', 'indonesia', 'Mahasiswa', 'daffa1931101@sttpln.ac.id', 'Panggilan unik anda?', 'dede gemes'),
('201931102', 'diosy pratama', '089619911682', 'diosy123', 'Mahasiswa', 'diosy1931102@sttpln.ac.id', 'Nama hewan peliharaan?', 'singa'),
('201931103', 'Fadila Rahmi Dhia', '082135443098', '311201', 'Mahasiswa', 'fadila1931103@sttpln.ac.id', 'Panggilan unik anda?', 'fadilamam'),
('201931104', 'HILAL KAHFI MUBARAK', '082189376609', '31082000', 'Mahasiswa', 'hkahfimubarak@gmail.com', 'Dosen yang anda suka?', 'iya'),
('201931105', 'Taufan Adihtya Nugroho', '08161907375', 'adhitya21', 'Mahasiswa', 'taufan1931105@sttpln.ac.id', 'Panggilan unik anda?', 'topan'),
('201931106', 'NUR ALFRIDA', '082248863131', 'Nur15juli', 'Mahasiswa', 'nuralfrida@icloud.com', 'Panggilan unik anda?', 'bulat'),
('201931107', 'Siti Taqiyah Mafadzah', '', '201931107', 'Mahasiswa', 'sititaqiyah27@gmail.com', 'Panggilan unik anda?', 'taqiyah'),
('201931108', 'Atam Rifai Sujiwanto', '085258953185', 'atam123', 'Mahasiswa', 'atamrifai@gmail.com', 'Panggilan unik anda?', 'Bangtam'),
('201931109', 'Sofian Kevin Gunawan', '082242582162', 'blackwing196', 'Mahasiswa', 'kevinken.skg@gmail.com', 'Bebas?', 'sgbteam'),
('201931110', 'Aprillio Habibillah', '081266710510', '280401', 'Mahasiswa', 'aprilliohabib28@gmail.com', 'Nama hewan peliharaan?', 'Javas'),
('201931111', 'Firyal Fahira S. Agam', '082198326155', 'ffsa20jan', 'Mahasiswa', 'ffsndyagm@gmail.com', 'Bebas?', 'Ha?'),
('201931112', 'Shintia Novita', '081368384723', 'allahswt', 'Mahasiswa', 'shintianvt@gmail.com', 'Panggilan unik anda?', 'jenong'),
('201931114', 'Yolanda Sundari', '6282312042930', 'janlupaya03', 'Mahasiswa', 'yolandasundari03@gmail.com', 'Bebas?', 'freedom'),
('201931115', 'NUR INTAN PRATIWI', '082292390312', '111999', 'Mahasiswa', 'TIWIPRAHASTA114@GMAIL.COM', 'Panggilan unik anda?', 'NAKWAI'),
('201931116', 'Salsabila Ghaisani', '085848653585', 'MEJASEM50', 'Mahasiswa', 'salsabilaghaisani04@gmail.com', 'Panggilan unik anda?', 'sani'),
('201931117', 'Muhammad Iqbal saleh', '082350680251', 'weareone1411', 'Mahasiswa', 'muhammadiqbalsaleh.2001@gmail.', 'Panggilan unik anda?', 'ibal'),
('201931118', 'MUH.ZULFIKAR ISMAIL', '085313558696', '13082001', 'Mahasiswa', 'muh.zulfikarismail202@gmail.co', 'Panggilan unik anda?', 'manis'),
('201931119', 'Febi Trilovika', '085363031505', 'febi119', 'Mahasiswa', 'febi1931119@sttpln.ac.id', 'Panggilan unik anda?', 'febiana'),
('201931120', 'Marsayanda Hasyim', '082394577770', '150102', 'Mahasiswa', 'marsyanda1931120@sttpln.ac.id', 'Bebas?', 'Ha?'),
('201931121', 'Angela Prasetyo', '082143293396', '201931121', 'Mahasiswa', 'angelaprasetyo875@gmail.com', 'Panggilan unik anda?', 'Ela'),
('201931122', 'Chindy aura', '082332972317', '201931122', 'Mahasiswa', 'chindyaura10@gmail.com', 'Panggilan unik anda?', 'ciau'),
('201931123', 'DWI PUTRI', '089601547171', '30072001', 'Mahasiswa', 'dph3007@gmail.com', 'Dosen yang anda suka?', 'pak andi'),
('201931124', 'ROHIMAH RANGKUTI', '082364286792', '201931124', 'Mahasiswa', 'RohimahRangkuti27@gmailcom', 'Dosen yang anda suka?', 'sukri'),
('201931125', 'M ZIYYO MAULANA A', '081216293085', '201931125', 'Mahasiswa', 'ziyoomplong82@gmail.com', 'Nama hewan peliharaan?', 'Tuyul'),
('201931126', 'Dina Aulia', '085782652836', '201931126', 'Mahasiswa', 'daulia2001@gmail.com', 'Nama hewan peliharaan?', 'cantik'),
('201931127', 'Laksita Ayu Wulandari', '081278328345', 'palembang123', 'Mahasiswa', 'laksitaayuwulan@gmail.com', 'Panggilan unik anda?', 'sitak'),
('201931128', 'Andi Nuraliah Amini', '081243873877', 'Aliyah26', 'Mahasiswa', 'aliyahlyaa99@gmail.com', 'Panggilan unik anda?', 'alya'),
('201931129', 'Farhan Muhamad Ikhsan', '0895639266216', '201931129', 'Mahasiswa', 'farhanpriangan3@gmail.com', 'Dosen yang anda suka?', 'Pak Rizal'),
('201931130', 'Christina Surya Setu Sale', '082237882572', 'suryasua', 'Mahasiswa', 'cansazort@gmail.com', 'Panggilan unik anda?', 'sua'),
('201931131', 'JOHANDRE ILHAM RAJAGUKGUK', '085361514630', '08521223asd', 'Mahasiswa', 'ilhamjohandre@gmai.com', 'Nama hewan peliharaan?', 'Mbull'),
('201931132', 'Dzikril Hakim', '085205085629', '672519', 'Mahasiswa', 'daengdziha77@gmail.com', 'Nama hewan peliharaan?', 'javas'),
('201931133', 'Najla Diffani', '082160318412', 'baaldi12', 'Mahasiswa', 'ndiffani@gmail.com', 'Nama hewan peliharaan?', 'cooky'),
('201931134', 'Umi Kulsum', '082269070447', 'maiumai12', 'Mahasiswa', 'umikulsum0909@gmail.com', 'Panggilan unik anda?', 'umai'),
('201931135', 'SAHRUL AL FARIZI', '081260375213', 'Harnas123', 'Mahasiswa', 'sahrulalfarizi1478@gmail.com', 'Panggilan unik anda?', 'arul'),
('201931136', 'johan abdillah', '81221550729', 'lupalagi1', 'Mahasiswa', 'johanabdillah15@gmail.com', 'Panggilan unik anda?', 'gaktau'),
('201931137', 'Amanita Firanti Noor Bahri', '082178532843', 'waykanan2019', 'Mahasiswa', 'amanitafirantu@gmail.com', 'Dosen yang anda suka?', 'yasni');
INSERT INTO `mhs` (`nim`, `nama_mhs`, `no_hp_mhs`, `pass`, `status_mhs`, `email`, `recovery2`, `recovery1`) VALUES
('201931138', 'javas anugrah', '081358523526', '201931138', 'Mahasiswa', 'anugrahjavas@gmail.com', 'Bebas?', 'javas'),
('201931139', 'Putri Carolina Aji', '081315354073', '170202', 'Mahasiswa', 'putri1931139@sttpln.ac.id', 'Nama hewan peliharaan?', 'kucing'),
('201931140', 'Yusi Yahdian', '081248065100', '201931140', 'Mahasiswa', 'yahdianyusni@gmail.com', 'Panggilan unik anda?', 'unyil'),
('201931165', 'Royan Fajar Sultoni', '', 'bdoge132', 'Mahasiswa', 'bdoge132@gmail.com', 'Bebas?', 'bebas'),
('201931222', 'shalsa billa dwi putri', '082384412164', 'shalsa29', 'Mahasiswa', 'shalsa1931222@sttpln.ac.id', 'Nama hewan peliharaan?', 'lisa'),
('201931262', 'FIESCA NOERCIKALTY ADITYA', '089654179315', 'Materai6000', 'Mahasiswa', 'fiesca1931262@sttpln.ac.id', 'Panggilan unik anda?', 'piscok'),
('201931263', 'Tedy Setiawan', '085235372790', '08573131tedy', 'Mahasiswa', 'tedy1931263@sttpln.ac.id', 'Dosen yang anda suka?', 'salsa'),
('201931268', 'Amini Dwi Puspita Sari', '0895637018750', '486930', 'Mahasiswa', 'amini.dwips@gmail.com', 'Panggilan unik anda?', 'min'),
('201931269', 'KHOERUNNISA MAHDIYAH', '085559639613', 'MAH091001', 'Mahasiswa', 'mahdiyahkhoerunnisa@gmail.com', 'Dosen yang anda suka?', 'UCUL'),
('201931279', 'Riani Pratiwi', '082246214828', '201931279', 'Mahasiswa', 'evandrasari@gmail.com', 'Nama hewan peliharaan?', 'kelinci'),
('20631032', 'Josua Nugraha Panjaitan', '081265365608', '241108', 'Mahasiswa', 'josua1631032@sttpln.ac.id', 'Panggilan unik anda?', 'joskid'),
('301921268', 'Amini Dwi Puspita Sari', '0895637018750', '1qaz2wsx3', 'Mahasiswa', 'amini.dwips@gmail.com', 'Panggilan unik anda?', 'min'),
('321321321', 'bambang', '12313212121215', '321321321', 'Mahasiswa', '321321@gmial.com', 'Dosen yang anda suka?', 'OMAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs_detail`
--

CREATE TABLE `mhs_detail` (
  `nim` varchar(10) DEFAULT NULL,
  `kode_matkul` varchar(20) DEFAULT NULL,
  `kelas_mhs` varchar(2) DEFAULT NULL,
  `lapKe` varchar(3) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `tgl_input` varchar(50) DEFAULT NULL,
  `penginput` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs_detail`
--

INSERT INTO `mhs_detail` (`nim`, `kode_matkul`, `kelas_mhs`, `lapKe`, `nilai`, `jenis`, `tgl_input`, `penginput`) VALUES
('201831057', 'C31040203', 'D', '1', 85, 'Laporan', '2019-09-14/100940', '201831120'),
('201831082', 'C31040203', 'D', '1', 75, 'Laporan', '2019-09-14/100926', '201831120'),
('201831114', 'C31040203', 'D', '1', 50, 'Laporan', '2019-09-14/100939', '201831120'),
('201831069', 'C31040203', 'D', '1', 85, 'Laporan', '2019-09-14/100941', '201831120'),
('201831148', 'C31040203', 'D', '1', 50, 'Laporan', '2019-09-14/100904', '201831120'),
('201831085', 'C31040203', 'D', '1', 90, 'Laporan', '2019-09-14/100926', '201831120'),
('201831072', 'C31040203', 'D', '1', 90, 'Laporan', '2019-09-14/100926', '201831120'),
('201831060', 'C31040203', 'D', '1', 70, 'Laporan', '2019-09-14/100916', '201831120'),
('201831055', 'C31040203', 'D', '1', 80, 'Laporan', '2019-09-14/100937', '201831120'),
('201831020', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-14/110926', '201831075'),
('201831004', 'C31040203', 'E', '1', 75, 'Laporan', '2019-09-14/110951', '201831075'),
('201831087', 'C31040203', 'E', '1', 50, 'Laporan', '2019-09-14/110922', '201831075'),
('201831203', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-14/110900', '201831075'),
('201831113', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-14/110949', '201831075'),
('201831096', 'C31040203', 'E', '1', 50, 'Laporan', '2019-09-14/110943', '201831075'),
('201831104', 'C31040203', 'E', '1', 65, 'Laporan', '2019-09-14/110932', '201831075'),
('201831120', 'C31040203', 'E', '1', 90, 'Laporan', '2019-09-14/110942', '201831075'),
('201831080', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-14/110928', '201831075'),
('201831090', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-14/110916', '201831075'),
('201831029', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-14/110925', '201831075'),
('201831002', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-14/110937', '201831075'),
('201831001', 'C31040203', 'E', '1', 60, 'Laporan', '2019-09-14/110950', '201831075'),
('201831180', 'C31040203', 'E', '1', 90, 'Laporan', '2019-09-14/110949', '201831075'),
('201831028', 'C31040203', 'E', '1', 98, 'Laporan', '2019-09-16/080954', '201831075'),
('201831010', 'C31040203', 'D', '1', 90, 'Laporan', '2019-09-16/090930', '201731244'),
('201831093', 'C31040203', 'D', '1', 85, 'Laporan', '2019-09-16/090909', '201731244'),
('201831076', 'C31040203', 'D', '1', 95, 'Laporan', '2019-09-16/090945', '201731244'),
('201831041', 'C31040203', 'D', '1', 60, 'Laporan', '2019-09-16/090926', '201731244'),
('201831012', 'C31040203', 'D', '1', 80, 'Laporan', '2019-09-16/090954', '201731244'),
('201831067', 'C31040203', 'D', '1', 85, 'Laporan', '2019-09-16/090921', '201731244'),
('201831034', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-16/010931', '201831075'),
('201831016', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-16/010956', '201831075'),
('201831091', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-16/010932', '201831075'),
('201831007', 'C31040203', 'E', '1', 85, 'Laporan', '2019-09-16/010954', '201831075'),
('201831083', 'C31040203', 'E', '1', 90, 'Laporan', '2019-09-16/010912', '201831075'),
('201831042', 'C31040203', 'D', '1', 75, 'Laporan', '2019-09-17/070944', '201831180'),
('201831102', 'C31040203', 'D', '1', 80, 'Laporan', '2019-09-17/070958', '201831180'),
('201831035', 'C31040203', 'D', '1', 90, 'Laporan', '2019-09-17/070928', '201831180'),
('201831025', 'C31040203', 'D', '1', 75, 'Laporan', '2019-09-17/070937', '201831180'),
('201831201', 'C31040203', 'D', '1', 60, 'Laporan', '2019-09-17/070949', '201831180'),
('201831063', 'C31040203', 'D', '1', 55, 'Laporan', '2019-09-17/070958', '201831180'),
('201831040', 'C31040203', 'D', '1', 85, 'Laporan', '2019-09-17/070908', '201831180'),
('201831006', 'C31040203', 'D', '1', 50, 'Laporan', '2019-09-17/070930', '201831180'),
('201931074', 'C31040107', 'C', '1', 76, 'Laporan', '2019-09-20/090917', '201831180'),
('201931071', 'C31040107', 'C', '1', 62, 'Laporan', '2019-09-20/090939', '201831180'),
('201931091', 'C31040107', 'C', '1', 75, 'Laporan', '2019-09-20/090950', '201831180'),
('201931096', 'C31040107', 'C', '1', 82, 'Laporan', '2019-09-20/090900', '201831180'),
('201931097', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090911', '201831180'),
('201931088', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090919', '201831180'),
('201931102', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090942', '201831180'),
('201931098', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090951', '201831180'),
('201931099', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090958', '201831180'),
('201931082', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090937', '201831180'),
('201931086', 'C31040107', 'C', '1', 95, 'Laporan', '2019-09-20/090954', '201831180'),
('201931087', 'C31040107', 'C', '1', 45, 'Laporan', '2019-09-20/090904', '201831180'),
('201931093', 'C31040107', 'C', '1', 87, 'Laporan', '2019-09-20/090916', '201831180'),
('201931100', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090934', '201831180'),
('201931092', 'C31040107', 'C', '1', 95, 'Laporan', '2019-09-20/090947', '201831180'),
('201931080', 'C31040107', 'C', '1', 95, 'Laporan', '2019-09-20/090953', '201831180'),
('201931083', 'C31040107', 'C', '1', 95, 'Laporan', '2019-09-20/090901', '201831180'),
('201931076', 'C31040107', 'C', '1', 95, 'Laporan', '2019-09-20/090906', '201831180'),
('201931262', 'C31040107', 'C', '1', 95, 'Laporan', '2019-09-20/090911', '201831180'),
('201931263', 'C31040107', 'C', '1', 45, 'Laporan', '2019-09-20/090928', '201831180'),
('201931089', 'C31040107', 'C', '1', 87, 'Laporan', '2019-09-20/090947', '201831180'),
('201931085', 'C31040107', 'C', '1', 84, 'Laporan', '2019-09-20/090902', '201831180'),
('201931077', 'C31040107', 'C', '1', 86, 'Laporan', '2019-09-20/090917', '201831180'),
('201931079', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090931', '201831180'),
('201931072', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/090903', '201831180'),
('201931073', 'C31040107', 'C', '1', 87, 'Laporan', '2019-09-20/100940', '201831180'),
('201931104', 'C31040107', 'C', '1', 55, 'Laporan', '2019-09-20/100957', '201831180'),
('201931222', 'C31040107', 'C', '1', 90, 'Laporan', '2019-09-20/100908', '201831180'),
('201931095', 'C31040107', 'C', '1', 86, 'Laporan', '2019-09-20/100920', '201831180'),
('201931105', 'C31040107', 'C', '1', 86, 'Laporan', '2019-09-20/100927', '201831180'),
('201931101', 'C31040107', 'C', '1', 88, 'Laporan', '2019-09-20/100934', '201831180'),
('201831148', 'C31040203', 'D', '2', 95, 'Laporan', '2019-09-21/080916', '201831120'),
('201831075', 'C31040203', 'D', '2', 90, 'Laporan', '2019-09-21/080935', '201831120'),
('201831084', 'C31040203', 'D', '2', 93, 'Laporan', '2019-09-21/080947', '201831120'),
('201831082', 'C31040203', 'D', '2', 90, 'Laporan', '2019-09-21/080959', '201831120'),
('201831093', 'C31040203', 'D', '2', 86, 'Laporan', '2019-09-21/080941', '201831120'),
('201831057', 'C31040203', 'D', '2', 83, 'Laporan', '2019-09-21/080924', '201831120'),
('201831010', 'C31040203', 'D', '2', 86, 'Laporan', '2019-09-21/080943', '201831120'),
('201831055', 'C31040203', 'D', '2', 95, 'Laporan', '2019-09-21/080959', '201831120'),
('201731088', 'C31040203', 'D', '2', 90, 'Laporan', '2019-09-21/080942', '201831120'),
('201831064', 'C31040201', 'B', '3', 100, 'Pretest', '2019-09-23/030929', '201631202'),
('201831053', 'C31040201', 'B', '3', 100, 'Pretest', '2019-09-23/030904', '201631202'),
('201831075', 'C31040201', 'B', '3', 100, 'Pretest', '2019-09-23/030915', '201631202'),
('201831041', 'C31040201', 'B', '3', 75, 'Pretest', '2019-09-23/030930', '201631202'),
('201831085', 'C31040201', 'B', '3', 75, 'Pretest', '2019-09-23/030912', '201631202'),
('201831145', 'C31040201', 'B', '3', 75, 'Pretest', '2019-09-23/040914', '201631202'),
('201831067', 'C31040203', 'D', '2', 90, 'Laporan', '2019-09-23/090949', '201731244'),
('201831060', 'C31040203', 'D', '2', 85, 'Laporan', '2019-09-23/100912', '201731244'),
('201831006', 'C31040203', 'D', '2', 85, 'Laporan', '2019-09-23/100941', '201731244'),
('201831040', 'C31040203', 'D', '2', 90, 'Laporan', '2019-09-23/100911', '201731244'),
('201831063', 'C31040203', 'D', '2', 78, 'Laporan', '2019-09-23/100955', '201731244'),
('201731294', 'C31040311', 'J', '1', 81, 'Laporan', '2019-09-23/110920', '201631100'),
('201731294', 'C31040311', 'J', '1', 81, 'Laporan', '2019-09-23/110927', '201631100'),
('201731283', 'C31040311', 'J', '1', 81, 'Laporan', '2019-09-23/110951', '201631100'),
('201731231', 'C31040311', 'J', '1', 70, 'Laporan', '2019-09-23/110941', '201631100'),
('201731147', 'C31040311', 'J', '1', 70, 'Laporan', '2019-09-23/110902', '201631100'),
('201731372', 'C31040311', 'J', '1', 65, 'Laporan', '2019-09-23/110946', '201631100'),
('201731053', 'C31040311', 'J', '1', 80, 'Laporan', '2019-09-23/110957', '201631100'),
('201731225', 'C31040311', 'J', '1', 60, 'Laporan', '2019-09-23/110909', '201631100'),
('201731218', 'C31040311', 'J', '1', 50, 'Laporan', '2019-09-23/110919', '201631100'),
('201731338', 'C31040311', 'J', '1', 20, 'Laporan', '2019-09-23/110928', '201631100'),
('201731154', 'C31040311', 'J', '1', 80, 'Laporan', '2019-09-23/110949', '201631100'),
('201731075', 'C31040311', 'J', '1', 50, 'Laporan', '2019-09-23/110901', '201631100'),
('201831020', 'C31040203', 'E', '2', 88, 'Laporan', '2019-09-23/110912', '201831075'),
('201831203', 'C31040203', 'E', '2', 88, 'Laporan', '2019-09-23/110924', '201831075'),
('201831007', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110934', '201831075'),
('201831029', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110944', '201831075'),
('201831090', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110952', '201831075'),
('201831083', 'C31040203', 'E', '2', 90, 'Laporan', '2019-09-23/110909', '201831075'),
('201831104', 'C31040203', 'E', '2', 80, 'Laporan', '2019-09-23/110923', '201831075'),
('201831028', 'C31040203', 'E', '2', 90, 'Laporan', '2019-09-23/110901', '201831075'),
('201831145', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110920', '201831075'),
('201831120', 'C31040203', 'E', '2', 90, 'Laporan', '2019-09-23/110924', '201831075'),
('201831180', 'C31040203', 'E', '2', 90, 'Laporan', '2019-09-23/110931', '201831075'),
('201831096', 'C31040203', 'E', '2', 70, 'Laporan', '2019-09-23/110937', '201831075'),
('201831113', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110950', '201831075'),
('201831002', 'C31040203', 'E', '2', 80, 'Laporan', '2019-09-23/110941', '201831075'),
('201831091', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110918', '201831075'),
('201831016', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-23/110929', '201831075'),
('201831075', 'C31040203', 'D', '1', 90, 'Laporan', '2019-09-23/110914', '201831075'),
('201631245', 'C31041401', 'A', '1', 77, 'Laporan', '2019-09-24/070949', '201631202'),
('201631095', 'C31041401', 'A', '1', 79, 'Laporan', '2019-09-24/070902', '201631202'),
('201831034', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-24/110952', '201831075'),
('201831001', 'C31040203', 'E', '2', 70, 'Laporan', '2019-09-24/110921', '201831075'),
('201831118', 'C31040203', 'E', '2', 80, 'Laporan', '2019-09-24/110935', '201831075'),
('201831004', 'C31040203', 'E', '2', 87, 'Laporan', '2019-09-24/110918', '201831075'),
('201831168', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-28/080925', '201831120'),
('201831142', 'C31040203', 'D', '3', 95, 'Laporan', '2019-09-28/080939', '201831120'),
('201831130', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-28/080951', '201831120'),
('201831150', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-28/080902', '201831120'),
('201831069', 'C31040203', 'D', '3', 99, 'Laporan', '2019-09-28/080914', '201831120'),
('201831102', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-28/080927', '201831120'),
('201831040', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-28/080936', '201831120'),
('201831042', 'C31040203', 'D', '3', 99, 'Laporan', '2019-09-28/080953', '201831120'),
('201831057', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-28/080903', '201831120'),
('201831075', 'C31040203', 'D', '3', 90, 'Laporan', '2019-09-28/080918', '201831120'),
('201831085', 'C31040203', 'D', '3', 90, 'Laporan', '2019-09-28/080926', '201831120'),
('201831084', 'C31040203', 'D', '3', 90, 'Laporan', '2019-09-28/080934', '201831120'),
('201831084', 'C31040203', 'D', '1', 90, 'Laporan', '2019-09-28/080940', '201831120'),
('201831148', 'C31040203', 'D', '3', 90, 'Laporan', '2019-09-28/080954', '201831120'),
('201731088', 'C31040203', 'D', '3', 90, 'Laporan', '2019-09-28/080907', '201831120'),
('201831154', 'C31040203', 'D', '2', 80, 'Laporan', '2019-09-28/080945', '201831120'),
('201831142', 'C31040203', 'D', '2', 70, 'Laporan', '2019-09-28/080933', '201831120'),
('201831150', 'C31040203', 'D', '2', 82, 'Laporan', '2019-09-28/080951', '201831120'),
('201831130', 'C31040203', 'D', '2', 87, 'Laporan', '2019-09-28/080907', '201831120'),
('201831166', 'C31040203', 'D', '2', 75, 'Laporan', '2019-09-28/080927', '201831120'),
('201831154', 'C31040203', 'D', '1', 100, 'Laporan', '2019-09-28/080927', '201831120'),
('201831142', 'C31040203', 'D', '1', 30, 'Laporan', '2019-09-28/080917', '201831120'),
('201831150', 'C31040203', 'D', '1', 100, 'Laporan', '2019-09-28/080936', '201831120'),
('201831085', 'C31040203', 'D', '2', 93, 'Laporan', '2019-09-28/080912', '201831120'),
('201731075', 'C31040201', 'B', '4', 100, 'Pretest', '2019-09-30/050914', '201631057'),
('201831128', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-30/090911', '201831075'),
('201831145', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-30/090946', '201831075'),
('201831147', 'C31040203', 'E', '1', 95, 'Laporan', '2019-09-30/090906', '201831075'),
('201831149', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-30/090922', '201831075'),
('201831197', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-30/090939', '201831075'),
('201831170', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-30/090909', '201831075'),
('201831135', 'C31040203', 'E', '1', 80, 'Laporan', '2019-09-30/090924', '201831075'),
('201831169', 'C31040203', 'E', '1', 78, 'Laporan', '2019-09-30/090943', '201831075'),
('201831171', 'C31040203', 'E', '1', 75, 'Laporan', '2019-09-30/090957', '201831075'),
('201831122', 'C31040203', 'E', '1', 90, 'Laporan', '2019-09-30/090914', '201831075'),
('201831147', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-30/090914', '201831075'),
('201831149', 'C31040203', 'E', '2', 80, 'Laporan', '2019-09-30/090939', '201831075'),
('201831155', 'C31040203', 'E', '2', 75, 'Laporan', '2019-09-30/090955', '201831075'),
('201831122', 'C31040203', 'E', '2', 80, 'Laporan', '2019-09-30/090913', '201831075'),
('201831170', 'C31040203', 'E', '2', 80, 'Laporan', '2019-09-30/090926', '201831075'),
('201831135', 'C31040203', 'E', '2', 85, 'Laporan', '2019-09-30/090943', '201831075'),
('201831155', 'C31040203', 'E', '1', 60, 'Laporan', '2019-09-30/090932', '201831075'),
('201831156', 'C31040203', 'E', '1', 70, 'Laporan', '2019-09-30/090952', '201831075'),
('201831055', 'C31040203', 'D', '3', 90, 'Laporan', '2019-09-30/110953', '201731244'),
('201831012', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110904', '201731244'),
('201831006', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110913', '201731244'),
('201831060', 'C31040203', 'D', '3', 80, 'Laporan', '2019-09-30/110928', '201731244'),
('201831063', 'C31040203', 'D', '3', 50, 'Laporan', '2019-09-30/110937', '201731244'),
('201831154', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110952', '201731244'),
('201831010', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110953', '201731244'),
('201831035', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110902', '201731244'),
('201831076', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110913', '201731244'),
('201831201', 'C31040203', 'D', '3', 100, 'Laporan', '2019-09-30/110924', '201731244'),
('201831066', 'C31040203', 'D', '3', 80, 'Laporan', '2019-10-02/051030', '201831120'),
('201831166', 'C31040203', 'D', '3', 65, 'Laporan', '2019-10-02/051059', '201831120'),
('201831093', 'C31040203', 'D', '3', 90, 'Laporan', '2019-10-02/051013', '201831120'),
('201831157', 'C31040203', 'D', '3', 85, 'Laporan', '2019-10-02/051025', '201831120'),
('201831146', 'C31040203', 'D', '3', 75, 'Laporan', '2019-10-02/051036', '201831120'),
('201831126', 'C31040203', 'D', '3', 82, 'Laporan', '2019-10-02/051049', '201831120'),
('201831025', 'C31040203', 'D', '3', 80, 'Laporan', '2019-10-02/051030', '201831120'),
('201831067', 'C31040203', 'D', '3', 80, 'Laporan', '2019-10-02/051037', '201831120'),
('201831004', 'C31040203', 'E', '3', 90, 'Laporan', '2019-10-02/111025', '201831075'),
('201831132', 'C31040203', 'E', '3', 95, 'Laporan', '2019-10-02/111035', '201831075'),
('201831118', 'C31040203', 'E', '3', 0, 'Laporan', '2019-10-02/111019', '201831075'),
('201831020', 'C31040203', 'E', '3', 85, 'Laporan', '2019-10-02/111031', '201831075'),
('201831155', 'C31040203', 'E', '3', 80, 'Laporan', '2019-10-02/111044', '201831075'),
('201831104', 'C31040203', 'E', '3', 87, 'Laporan', '2019-10-02/111055', '201831075'),
('201831029', 'C31040203', 'E', '3', 85, 'Laporan', '2019-10-02/111023', '201831075'),
('201831001', 'C31040203', 'E', '3', 85, 'Laporan', '2019-10-02/111031', '201831075'),
('201831171', 'C31040203', 'E', '3', 80, 'Laporan', '2019-10-02/111059', '201831075'),
('201831096', 'C31040203', 'E', '3', 75, 'Laporan', '2019-10-02/111015', '201831075'),
('201831120', 'C31040203', 'E', '3', 90, 'Laporan', '2019-10-02/111026', '201831075'),
('201831180', 'C31040203', 'E', '3', 90, 'Laporan', '2019-10-02/111034', '201831075'),
('201831002', 'C31040203', 'E', '3', 88, 'Laporan', '2019-10-02/111045', '201831075'),
('201831156', 'C31040203', 'E', '3', 90, 'Laporan', '2019-10-02/111054', '201831075'),
('201831135', 'C31040203', 'E', '3', 90, 'Laporan', '2019-10-02/111015', '201831075'),
('201831007', 'C31040203', 'E', '3', 88, 'Laporan', '2019-10-02/111025', '201831075'),
('201831149', 'C31040203', 'E', '3', 92, 'Laporan', '2019-10-02/111038', '201831075'),
('201831090', 'C31040203', 'E', '3', 80, 'Laporan', '2019-10-02/111049', '201831075'),
('201831028', 'C31040203', 'E', '3', 80, 'Laporan', '2019-10-02/111059', '201831075'),
('201831034', 'C31040203', 'E', '3', 78, 'Laporan', '2019-10-02/111012', '201831075'),
('201831122', 'C31040203', 'E', '3', 80, 'Laporan', '2019-10-02/111028', '201831075'),
('201831169', 'C31040203', 'E', '3', 70, 'Laporan', '2019-10-02/111039', '201831075'),
('201831080', 'C31040203', 'E', '3', 72, 'Laporan', '2019-10-02/111049', '201831075'),
('201931138', 'C31040107', 'D', '2', 80, 'Laporan', '2019-10-03/091029', '201831085'),
('201931125', 'C31040107', 'D', '2', 90, 'Laporan', '2019-10-03/091007', '201831085'),
('201931140', 'C31040107', 'D', '2', 70, 'Laporan', '2019-10-03/091025', '201831085'),
('201931137', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/091051', '201831085'),
('201931133', 'C31040107', 'D', '2', 92, 'Laporan', '2019-10-03/091004', '201831085'),
('201931128', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/091030', '201831085'),
('201931129', 'C31040107', 'D', '2', 80, 'Laporan', '2019-10-03/091044', '201831085'),
('201931120', 'C31040107', 'D', '2', 90, 'Laporan', '2019-10-03/091009', '201831085'),
('201931115', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/091030', '201831085'),
('201931131', 'C31040107', 'D', '2', 87, 'Laporan', '2019-10-03/091002', '201831085'),
('201931107', 'C31040107', 'D', '2', 75, 'Laporan', '2019-10-03/091036', '201831085'),
('201931130', 'C31040107', 'D', '2', 77, 'Laporan', '2019-10-03/091051', '201831085'),
('201931279', 'C31040107', 'D', '2', 82, 'Laporan', '2019-10-03/091018', '201831085'),
('201931123', 'C31040107', 'D', '2', 72, 'Laporan', '2019-10-03/091054', '201831085'),
('201931117', 'C31040107', 'D', '2', 80, 'Laporan', '2019-10-03/091016', '201831085'),
('201931126', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/091052', '201831085'),
('201931121', 'C31040107', 'D', '2', 83, 'Laporan', '2019-10-03/091012', '201831085'),
('201931136', 'C31040107', 'D', '2', 75, 'Laporan', '2019-10-03/091034', '201831085'),
('201931135', 'C31040107', 'D', '2', 72, 'Laporan', '2019-10-03/091054', '201831085'),
('201931106', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/091011', '201831085'),
('201931111', 'C31040107', 'D', '2', 95, 'Laporan', '2019-10-03/091038', '201831085'),
('201931116', 'C31040107', 'D', '2', 93, 'Laporan', '2019-10-03/091059', '201831085'),
('201931269', 'C31040107', 'D', '2', 90, 'Laporan', '2019-10-03/101024', '201831085'),
('201931114', 'C31040107', 'D', '2', 93, 'Laporan', '2019-10-03/101054', '201831085'),
('201931124', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/101013', '201831085'),
('201931119', 'C31040107', 'D', '2', 90, 'Laporan', '2019-10-03/101033', '201831085'),
('201931139', 'C31040107', 'D', '2', 90, 'Laporan', '2019-10-03/101051', '201831085'),
('201931268', 'C31040107', 'D', '2', 95, 'Laporan', '2019-10-03/101008', '201831085'),
('201931110', 'C31040107', 'D', '2', 85, 'Laporan', '2019-10-03/101023', '201831085'),
('201931112', 'C31040107', 'D', '2', 80, 'Laporan', '2019-10-03/101036', '201831085'),
('201931112', 'C31040107', 'D', '2', 80, 'Laporan', '2019-10-03/101045', '201831085'),
('201831082', 'C31040203', 'D', '3', 75, 'Laporan', '2019-10-04/051054', '201831085'),
('201731116', 'C31040311', 'I', '2', 85, 'Laporan', '2019-10-05/091018', '201731084'),
('201831128', 'C31040203', 'E', '2', 83, 'Laporan', '2019-10-07/101024', '201831075'),
('201831080', 'C31040203', 'E', '2', 78, 'Laporan', '2019-10-07/101047', '201831075'),
('201831171', 'C31040203', 'E', '2', 85, 'Laporan', '2019-10-07/101019', '201831075'),
('201831132', 'C31040203', 'E', '2', 85, 'Laporan', '2019-10-07/101050', '201831075'),
('201831170', 'C31040203', 'E', '3', 65, 'Laporan', '2019-10-07/111040', '201831075'),
('201831016', 'C31040203', 'E', '3', 66, 'Laporan', '2019-10-07/111054', '201831075'),
('201831083', 'C31040203', 'E', '3', 66, 'Laporan', '2019-10-07/111006', '201831075'),
('201831197', 'C31040203', 'E', '3', 64, 'Laporan', '2019-10-07/111022', '201831075'),
('201831134', 'C31040203', 'E', '3', 0, 'Laporan', '2019-10-07/111031', '201831075'),
('201831203', 'C31040203', 'E', '3', 83, 'Laporan', '2019-10-07/111048', '201831075'),
('201831147', 'C31040203', 'E', '3', 82, 'Laporan', '2019-10-07/111015', '201831075'),
('201831128', 'C31040203', 'E', '3', 80, 'Laporan', '2019-10-07/111031', '201831075'),
('201831145', 'C31040203', 'E', '3', 85, 'Laporan', '2019-10-07/111043', '201831075'),
('201831113', 'C31040203', 'E', '3', 83, 'Laporan', '2019-10-07/111054', '201831075'),
('201831206', 'C31040203', 'E', '3', 81, 'Laporan', '2019-10-07/111003', '201831075'),
('201831132', 'C31040203', 'E', '4', 85, 'Laporan', '2019-10-07/111026', '201831075'),
('201831149', 'C31040203', 'E', '4', 90, 'Laporan', '2019-10-07/111001', '201831075'),
('201831122', 'C31040203', 'E', '4', 83, 'Laporan', '2019-10-07/111015', '201831075'),
('201831128', 'C31040203', 'E', '4', 85, 'Laporan', '2019-10-07/111029', '201831075'),
('201831020', 'C31040203', 'E', '4', 85, 'Laporan', '2019-10-07/111039', '201831075'),
('201831171', 'C31040203', 'E', '4', 83, 'Laporan', '2019-10-07/111049', '201831075'),
('201831090', 'C31040203', 'E', '4', 75, 'Laporan', '2019-10-07/111003', '201831075'),
('201831028', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/111014', '201831075'),
('201831016', 'C31040203', 'E', '4', 78, 'Laporan', '2019-10-07/111046', '201831075'),
('201831135', 'C31040203', 'E', '4', 83, 'Laporan', '2019-10-07/111029', '201831075'),
('201831169', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/111040', '201831075'),
('201831145', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/111045', '201831075'),
('201831002', 'C31040203', 'E', '4', 83, 'Laporan', '2019-10-07/111056', '201831075'),
('201831155', 'C31040203', 'E', '4', 82, 'Laporan', '2019-10-07/111026', '201831075'),
('201831206', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/111039', '201831075'),
('201831001', 'C31040203', 'E', '4', 75, 'Laporan', '2019-10-07/111049', '201831075'),
('201831034', 'C31040203', 'E', '4', 72, 'Laporan', '2019-10-07/111016', '201831075'),
('201831080', 'C31040203', 'E', '4', 70, 'Laporan', '2019-10-07/111026', '201831075'),
('201831029', 'C31040203', 'E', '4', 77, 'Laporan', '2019-10-07/111036', '201831075'),
('201831113', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/021025', '201831075'),
('201831147', 'C31040203', 'E', '4', 95, 'Laporan', '2019-10-07/021036', '201831075'),
('201831004', 'C31040203', 'E', '4', 95, 'Laporan', '2019-10-07/021045', '201831075'),
('201831156', 'C31040203', 'E', '4', 90, 'Laporan', '2019-10-07/021000', '201831075'),
('201831170', 'C31040203', 'E', '4', 85, 'Laporan', '2019-10-07/021013', '201831075'),
('201831203', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/021023', '201831075'),
('201831007', 'C31040203', 'E', '4', 80, 'Laporan', '2019-10-07/021032', '201831075'),
('201831083', 'C31040203', 'E', '4', 70, 'Laporan', '2019-10-07/021046', '201831075'),
('201831197', 'C31040203', 'E', '4', 50, 'Laporan', '2019-10-07/021058', '201831075'),
('201831091', 'C31040203', 'E', '4', 70, 'Laporan', '2019-10-07/021013', '201831075'),
('201831096', 'C31040203', 'E', '4', 60, 'Laporan', '2019-10-07/021022', '201831075'),
('201831156', 'C31040203', 'E', '2', 77, 'Laporan', '2019-10-07/021003', '201831075'),
('201831197', 'C31040203', 'E', '2', 80, 'Laporan', '2019-10-07/021014', '201831075'),
('201831169', 'C31040203', 'E', '2', 83, 'Laporan', '2019-10-07/021032', '201831075'),
('201831040', 'C31040203', 'D', '4', 90, 'Laporan', '2019-10-08/071013', '201831120'),
('201831006', 'C31040203', 'D', '4', 93, 'Laporan', '2019-10-08/071025', '201831120'),
('201831166', 'C31040203', 'D', '4', 35, 'Laporan', '2019-10-08/071050', '201831120'),
('201831010', 'C31040203', 'D', '4', 93, 'Laporan', '2019-10-08/071007', '201831120'),
('201831060', 'C31040203', 'D', '4', 95, 'Laporan', '2019-10-08/071020', '201831120'),
('201831130', 'C31040203', 'D', '4', 92, 'Laporan', '2019-10-08/071036', '201831120'),
('201831102', 'C31040203', 'D', '4', 95, 'Laporan', '2019-10-08/071056', '201831120'),
('201831035', 'C31040203', 'D', '4', 95, 'Laporan', '2019-10-08/071002', '201831120'),
('201831154', 'C31040203', 'D', '4', 88, 'Laporan', '2019-10-08/071012', '201831120'),
('201831041', 'C31040203', 'D', '4', 89, 'Laporan', '2019-10-08/071028', '201831120'),
('201831093', 'C31040203', 'D', '4', 55, 'Laporan', '2019-10-08/071046', '201831120'),
('201831057', 'C31040203', 'D', '4', 88, 'Laporan', '2019-10-08/071006', '201831120'),
('201831082', 'C31040203', 'D', '4', 88, 'Laporan', '2019-10-08/071027', '201831120'),
('201831067', 'C31040203', 'D', '4', 95, 'Laporan', '2019-10-08/071042', '201831120'),
('201831066', 'C31040203', 'D', '4', 92, 'Laporan', '2019-10-08/071055', '201831120'),
('201831075', 'C31040203', 'D', '4', 90, 'Laporan', '2019-10-08/071005', '201831120'),
('201831084', 'C31040203', 'D', '4', 90, 'Laporan', '2019-10-08/071012', '201831120'),
('201831085', 'C31040203', 'D', '4', 90, 'Laporan', '2019-10-08/071016', '201831120'),
('201831148', 'C31040203', 'D', '4', 90, 'Laporan', '2019-10-08/071025', '201831120'),
('201731088', 'C31040203', 'D', '4', 90, 'Laporan', '2019-10-08/071056', '201831120'),
('201931268', 'C31040107', 'D', '3', 90, 'Laporan', '2019-10-09/101049', '201831085'),
('201931116', 'C31040107', 'D', '3', 93, 'Laporan', '2019-10-09/101014', '201831085'),
('201931133', 'C31040107', 'D', '3', 92, 'Laporan', '2019-10-09/101054', '201831085'),
('201931111', 'C31040107', 'D', '3', 90, 'Laporan', '2019-10-09/101049', '201831085'),
('201931106', 'C31040107', 'D', '3', 92, 'Laporan', '2019-10-09/101015', '201831085'),
('201931129', 'C31040107', 'D', '3', 85, 'Laporan', '2019-10-09/101016', '201831085'),
('201931135', 'C31040107', 'D', '3', 85, 'Laporan', '2019-10-09/101034', '201831085'),
('201931269', 'C31040107', 'D', '3', 88, 'Laporan', '2019-10-09/101043', '201831085'),
('201931108', 'C31040107', 'D', '3', 86, 'Laporan', '2019-10-09/101002', '201831085'),
('201931117', 'C31040107', 'D', '3', 82, 'Laporan', '2019-10-09/101010', '201831085'),
('201931112', 'C31040107', 'D', '3', 85, 'Laporan', '2019-10-09/101022', '201831085'),
('201931119', 'C31040107', 'D', '3', 83, 'Laporan', '2019-10-09/101036', '201831085'),
('201931279', 'C31040107', 'D', '3', 84, 'Laporan', '2019-10-09/101052', '201831085'),
('201931122', 'C31040107', 'D', '3', 83, 'Laporan', '2019-10-09/101029', '201831085'),
('201931139', 'C31040107', 'D', '3', 82, 'Laporan', '2019-10-09/101047', '201831085'),
('201931121', 'C31040107', 'D', '3', 81, 'Laporan', '2019-10-09/101003', '201831085'),
('201931130', 'C31040107', 'D', '3', 81, 'Laporan', '2019-10-09/101057', '201831085'),
('201931128', 'C31040107', 'D', '3', 85, 'Laporan', '2019-10-09/101015', '201831085'),
('201931138', 'C31040107', 'D', '3', 80, 'Laporan', '2019-10-09/101059', '201831085'),
('201931127', 'C31040107', 'D', '3', 85, 'Laporan', '2019-10-09/101011', '201831085'),
('201931124', 'C31040107', 'D', '3', 78, 'Laporan', '2019-10-09/101025', '201831085'),
('201931120', 'C31040107', 'D', '3', 78, 'Laporan', '2019-10-09/101034', '201831085'),
('201931140', 'C31040107', 'D', '3', 78, 'Laporan', '2019-10-09/101044', '201831085'),
('201931123', 'C31040107', 'D', '3', 83, 'Laporan', '2019-10-09/101002', '201831085'),
('201931107', 'C31040107', 'D', '3', 80, 'Laporan', '2019-10-09/101015', '201831085'),
('201931115', 'C31040107', 'D', '3', 85, 'Laporan', '2019-10-09/101029', '201831085'),
('201931137', 'C31040107', 'D', '3', 87, 'Laporan', '2019-10-09/101040', '201831085'),
('201931114', 'C31040107', 'D', '3', 95, 'Laporan', '2019-10-09/101007', '201831085'),
('201931131', 'C31040107', 'D', '3', 89, 'Laporan', '2019-10-09/101034', '201831085'),
('201931118', 'C31040107', 'D', '3', 88, 'Laporan', '2019-10-09/101046', '201831085'),
('201931109', 'C31040107', 'D', '3', 90, 'Laporan', '2019-10-09/101000', '201831085'),
('201931136', 'C31040107', 'D', '3', 87, 'Laporan', '2019-10-09/101013', '201831085'),
('201931125', 'C31040107', 'D', '3', 89, 'Laporan', '2019-10-09/101032', '201831085'),
('201931126', 'C31040107', 'D', '3', 90, 'Laporan', '2019-10-09/101047', '201831085'),
('201931132', 'C31040107', 'D', '3', 90, 'Laporan', '2019-10-09/101001', '201831085'),
('201931134', 'C31040107', 'D', '3', 90, 'Laporan', '2019-10-09/101007', '201831085'),
('201431131', 'C31040203', 'D', '4', 64, 'Laporan', '2019-10-09/111033', '201831120'),
('201831157', 'C31040203', 'D', '4', 70, 'Laporan', '2019-10-09/111059', '201831120'),
('201831012', 'C31040203', 'D', '4', 72, 'Laporan', '2019-10-09/111020', '201831120'),
('201831042', 'C31040203', 'D', '4', 73, 'Laporan', '2019-10-09/111031', '201831120'),
('201831025', 'C31040203', 'D', '4', 72, 'Laporan', '2019-10-09/111046', '201831120'),
('201831201', 'C31040203', 'D', '4', 0, 'Laporan', '2019-10-09/111059', '201831120'),
('201831150', 'C31040203', 'D', '4', 76, 'Laporan', '2019-10-09/111044', '201831120'),
('201831146', 'C31040203', 'D', '4', 70, 'Laporan', '2019-10-09/111059', '201831120'),
('201831076', 'C31040203', 'D', '4', 82, 'Laporan', '2019-10-09/111016', '201831120'),
('201831055', 'C31040203', 'D', '4', 76, 'Laporan', '2019-10-09/111027', '201831120'),
('201831142', 'C31040203', 'D', '4', 75, 'Laporan', '2019-10-09/111043', '201831120'),
('201831069', 'C31040203', 'D', '4', 78, 'Laporan', '2019-10-09/111059', '201831120'),
('201831126', 'C31040203', 'D', '4', 76, 'Laporan', '2019-10-09/111019', '201831120'),
('201831002', 'C31040203', 'E', '5', 90, 'Laporan', '2019-10-26/031048', '201831075'),
('201831206', 'C31040203', 'E', '5', 80, 'Laporan', '2019-10-26/031000', '201831075'),
('201831135', 'C31040203', 'E', '5', 83, 'Laporan', '2019-10-26/031010', '201831075'),
('201831007', 'C31040203', 'E', '5', 82, 'Laporan', '2019-10-26/031019', '201831075'),
('201831001', 'C31040203', 'E', '5', 83, 'Laporan', '2019-10-26/031030', '201831075'),
('201831128', 'C31040203', 'E', '5', 75, 'Laporan', '2019-10-26/031042', '201831075'),
('201831170', 'C31040203', 'E', '5', 73, 'Laporan', '2019-10-26/031011', '201831075'),
('201831147', 'C31040203', 'E', '5', 72, 'Laporan', '2019-10-26/031020', '201831075'),
('201831155', 'C31040203', 'E', '5', 70, 'Laporan', '2019-10-26/031030', '201831075'),
('201831120', 'C31040203', 'E', '5', 90, 'Laporan', '2019-10-26/031039', '201831075'),
('201831180', 'C31040203', 'E', '5', 90, 'Laporan', '2019-10-26/031044', '201831075'),
('201831113', 'C31040203', 'E', '5', 90, 'Laporan', '2019-10-26/031055', '201831075'),
('201831091', 'C31040203', 'E', '5', 80, 'Laporan', '2019-10-26/031007', '201831075'),
('201831029', 'C31040203', 'E', '5', 90, 'Laporan', '2019-10-26/031014', '201831075'),
('201831034', 'C31040203', 'E', '5', 95, 'Laporan', '2019-10-26/031025', '201831075'),
('201831203', 'C31040203', 'E', '5', 80, 'Laporan', '2019-10-26/031041', '201831075'),
('201831028', 'C31040203', 'E', '5', 90, 'Laporan', '2019-10-26/031051', '201831075'),
('201831197', 'C31040203', 'E', '5', 70, 'Laporan', '2019-10-26/031001', '201831075'),
('201831080', 'C31040203', 'E', '5', 75, 'Laporan', '2019-10-26/031011', '201831075'),
('201831145', 'C31040203', 'E', '5', 70, 'Laporan', '2019-10-26/031022', '201831075'),
('201831122', 'C31040203', 'E', '5', 70, 'Laporan', '2019-10-26/031028', '201831075'),
('201831096', 'C31040203', 'E', '5', 75, 'Laporan', '2019-10-26/031044', '201831075'),
('201831149', 'C31040203', 'E', '5', 77, 'Laporan', '2019-10-26/031055', '201831075'),
('201831156', 'C31040203', 'E', '5', 77, 'Laporan', '2019-10-26/031003', '201831075'),
('201831083', 'C31040203', 'E', '5', 78, 'Laporan', '2019-10-26/031041', '201831075'),
('201831016', 'C31040203', 'E', '5', 88, 'Laporan', '2019-10-26/031052', '201831075'),
('201831020', 'C31040203', 'E', '5', 82, 'Laporan', '2019-10-26/031001', '201831075'),
('201831171', 'C31040203', 'E', '5', 82, 'Laporan', '2019-10-26/031009', '201831075'),
('201831090', 'C31040203', 'E', '5', 83, 'Laporan', '2019-10-26/031022', '201831075'),
('201831004', 'C31040203', 'E', '5', 88, 'Laporan', '2019-10-26/031031', '201831075'),
('201831132', 'C31040203', 'E', '5', 75, 'Laporan', '2019-10-26/031040', '201831075'),
('201831060', 'C31040203', 'D', '5', 85, 'Laporan', '2019-10-26/051038', '201831120'),
('201831159', 'C31040203', 'D', '5', 75, 'Laporan', '2019-10-26/051053', '201831120'),
('201831102', 'C31040203', 'D', '5', 100, 'Laporan', '2019-10-26/051006', '201831120'),
('201831093', 'C31040203', 'D', '5', 100, 'Laporan', '2019-10-26/051014', '201831120'),
('201831146', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051034', '201831120'),
('201831076', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051044', '201831120'),
('201431131', 'C31040203', 'D', '5', 85, 'Laporan', '2019-10-26/051003', '201831120'),
('201831142', 'C31040203', 'D', '5', 60, 'Laporan', '2019-10-26/051038', '201831120'),
('201831126', 'C31040203', 'D', '5', 78, 'Laporan', '2019-10-26/051050', '201831120'),
('201831057', 'C31040203', 'D', '5', 82, 'Laporan', '2019-10-26/051003', '201831120'),
('201831150', 'C31040203', 'D', '5', 70, 'Laporan', '2019-10-26/051019', '201831120'),
('201831067', 'C31040203', 'D', '5', 72, 'Laporan', '2019-10-26/051036', '201831120'),
('201831040', 'C31040203', 'D', '5', 87, 'Laporan', '2019-10-26/051049', '201831120'),
('201831166', 'C31040203', 'D', '5', 56, 'Laporan', '2019-10-26/051000', '201831120'),
('201831035', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051027', '201831120'),
('201831157', 'C31040203', 'D', '5', 80, 'Laporan', '2019-10-26/051039', '201831120'),
('201831012', 'C31040203', 'D', '5', 78, 'Laporan', '2019-10-26/051055', '201831120'),
('201831025', 'C31040203', 'D', '5', 72, 'Laporan', '2019-10-26/051008', '201831120'),
('201831069', 'C31040203', 'D', '5', 99, 'Laporan', '2019-10-26/051053', '201831120'),
('201831006', 'C31040203', 'D', '5', 98, 'Laporan', '2019-10-26/051004', '201831120'),
('201831148', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051025', '201831120'),
('201831084', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051034', '201831120'),
('201831085', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051038', '201831120'),
('201831075', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051049', '201831120'),
('201731088', 'C31040203', 'D', '5', 90, 'Laporan', '2019-10-26/051001', '201831120'),
('201831130', 'C31040203', 'D', '5', 83, 'Laporan', '2019-10-26/051018', '201831120'),
('201831164', 'C31040203', 'D', '5', 98, 'Laporan', '2019-10-26/051030', '201831120'),
('201831137', 'C31040203', 'D', '5', 72, 'Laporan', '2019-10-26/051047', '201831120'),
('201831154', 'C31040203', 'D', '5', 76, 'Laporan', '2019-10-26/051001', '201831120'),
('201831055', 'C31040203', 'D', '5', 95, 'Laporan', '2019-10-26/051016', '201831120'),
('201831066', 'C31040203', 'D', '5', 98, 'Laporan', '2019-10-26/051031', '201831120'),
('201831154', 'C31040203', 'D', '2', 80, 'Laporan', '2019-10-26/051032', '201831120'),
('201831064', 'C31040201', 'B', '5', 100, 'Pretest', '2019-11-04/031126', '201631300'),
('201831075', 'C31040201', 'B', '5', 100, 'Pretest', '2019-11-04/031134', '201631300'),
('201831049', 'C31040201', 'B', '5', 100, 'Pretest', '2019-11-04/031103', '201631300'),
('201831053', 'C31040201', 'B', '5', 100, 'Pretest', '2019-11-04/031120', '201631300'),
('201831049', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031132', '201631300'),
('201831064', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031105', '201631300'),
('201831053', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031148', '201631300'),
('201831053', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031115', '201631300'),
('201831193', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/031138', '201631300'),
('201831085', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031153', '201631300'),
('201831167', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/031113', '201631300'),
('201831161', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031156', '201631300'),
('201831051', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031121', '201631300'),
('201831135', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/031125', '201631300'),
('201831156', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/031135', '201631300'),
('201831171', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/031142', '201631300'),
('201831075', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031130', '201631300'),
('201831186', 'C31040201', 'B', '1', 100, 'Tugas', '2019-11-04/031147', '201631300'),
('201831001', 'C31040201', 'B', '1', 60, 'Tugas', '2019-11-04/031117', '201631300'),
('201831204', 'C31040201', 'B', '1', 10, 'Tugas', '2019-11-04/031140', '201631300'),
('201831068', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/031155', '201631300'),
('201831136', 'C31040201', 'B', '1', 50, 'Tugas', '2019-11-04/031114', '201631300'),
('201831043', 'C31040201', 'B', '1', 80, 'Tugas', '2019-11-04/051121', '201631300'),
('201831198', 'C31040201', 'B', '1', 80, 'Tugas', '2019-11-04/051131', '201631300'),
('201831008', 'C31040201', 'B', '1', 50, 'Tugas', '2019-11-04/051150', '201631300'),
('201831147', 'C31040201', 'B', '1', 50, 'Tugas', '2019-11-04/051133', '201631300'),
('201831155', 'C31040201', 'B', '1', 50, 'Tugas', '2019-11-04/051139', '201631300'),
('201831145', 'C31040201', 'B', '1', 35, 'Tugas', '2019-11-04/051150', '201631300'),
('201831149', 'C31040201', 'B', '1', 30, 'Tugas', '2019-11-04/051153', '201631300'),
('201831136', 'C31040201', 'B', '1', 50, 'Tugas', '2019-11-04/051102', '201631300'),
('201831126', 'C31040203', 'D', '2', 92, 'Laporan', '2019-11-23/041106', '201831120'),
('201831126', 'C31040203', 'D', '1', 84, 'Laporan', '2019-11-23/041147', '201831120'),
('201831146', 'C31040203', 'D', '1', 92, 'Laporan', '2019-11-23/051120', '201831120'),
('201831146', 'C31040203', 'D', '2', 86, 'Laporan', '2019-11-23/051134', '201831120'),
('201831076', 'C31040203', 'D', '2', 86, 'Laporan', '2019-11-23/051148', '201831120'),
('201831124', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031124', '201831120'),
('201831123', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031131', '201831120'),
('201831152', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031141', '201831120'),
('201831049', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031149', '201831120'),
('201831064', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031100', '201831120'),
('201831051', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031105', '201831120'),
('201831075', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031111', '201831120'),
('201831085', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031118', '201831120'),
('201831127', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031122', '201831120'),
('201831147', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031126', '201831120'),
('201831156', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031131', '201831120'),
('201831186', 'C31040201', 'B', '2', 100, 'tugas', '2019-11-25/031135', '201831120'),
('201831068', 'C31040201', 'B', '2', 100, 'Tugas', '2019-11-25/031156', '201831120'),
('201831053', 'C31040201', 'B', '2', 100, 'Tugas', '2019-11-25/031102', '201831120'),
('201831089', 'C31040201', 'B', '2', 80, 'Tugas', '2019-11-25/031110', '201831120'),
('201831103', 'C31040201', 'B', '2', 80, 'Tugas', '2019-11-25/031116', '201831120'),
('201831204', 'C31040201', 'B', '2', 80, 'Tugas', '2019-11-25/031121', '201831120'),
('201831198', 'C31040201', 'B', '2', 85, 'Tugas', '2019-11-25/031131', '201831120'),
('201831179', 'C31040201', 'B', '2', 85, 'Tugas', '2019-11-25/031137', '201831120'),
('201831001', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031149', '201831120'),
('201831059', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031110', '201831120'),
('201831054', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031114', '201831120'),
('201831167', 'C31040201', 'B', '2', 85, 'Tugas', '2019-11-25/031124', '201831120'),
('201831145', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031132', '201831120'),
('201831149', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031136', '201831120'),
('201831155', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031140', '201831120'),
('201831174', 'C31040201', 'B', '2', 80, 'Tugas', '2019-11-25/031148', '201831120'),
('201831008', 'C31040201', 'B', '2', 80, 'Tugas', '2019-11-25/031153', '201831120'),
('201831161', 'C31040201', 'B', '2', 80, 'Tugas', '2019-11-25/031159', '201831120'),
('201831043', 'C31040201', 'B', '2', 90, 'Tugas', '2019-11-25/031130', '201831120'),
('201931115', 'C31040107', 'D', '1', 30, 'Pretest', '2019-11-25/041158', '201831085'),
('201931135', 'C31040107', 'D', '1', 35, 'Pretest', '2019-11-25/041119', '201831085'),
('201931114', 'C31040107', 'D', '1', 96, 'Pretest', '2019-11-25/041139', '201831085'),
('201931114', 'C31040107', 'D', '1', 96, 'Pretest', '2019-11-25/041140', '201831085'),
('201931123', 'C31040107', 'D', '1', 28, 'Pretest', '2019-11-25/041156', '201831085'),
('201931139', 'C31040107', 'D', '1', 74, 'Pretest', '2019-11-25/041115', '201831085'),
('201931119', 'C31040107', 'D', '1', 28, 'Pretest', '2019-11-25/041135', '201831085'),
('201931140', 'C31040107', 'D', '1', 10, 'Pretest', '2019-11-25/041152', '201831085'),
('201931134', 'C31040107', 'D', '1', 62, 'Pretest', '2019-11-25/041110', '201831085'),
('201931127', 'C31040107', 'D', '1', 62, 'Pretest', '2019-11-25/041128', '201831085'),
('201931130', 'C31040107', 'D', '1', 88, 'Pretest', '2019-11-25/041141', '201831085'),
('201931118', 'C31040107', 'D', '1', 65, 'Pretest', '2019-11-25/041106', '201831085'),
('201931129', 'C31040107', 'D', '1', 51, 'Pretest', '2019-11-25/041130', '201831085'),
('201931268', 'C31040107', 'D', '1', 100, 'Pretest', '2019-11-25/041152', '201831085'),
('201931121', 'C31040107', 'D', '1', 78, 'Pretest', '2019-11-25/041140', '201831085'),
('201931126', 'C31040107', 'D', '1', 27, 'Pretest', '2019-11-25/041103', '201831085'),
('201931124', 'C31040107', 'D', '1', 32, 'Pretest', '2019-11-25/041119', '201831085'),
('201931131', 'C31040107', 'D', '1', 80, 'Pretest', '2019-11-25/041137', '201831085'),
('201931108', 'C31040107', 'D', '1', 100, 'Pretest', '2019-11-25/041158', '201831085'),
('201931138', 'C31040107', 'D', '1', 20, 'Pretest', '2019-11-25/041129', '201831085'),
('201931111', 'C31040107', 'D', '1', 70, 'Pretest', '2019-11-25/041144', '201831085'),
('201931107', 'C31040107', 'D', '1', 95, 'Pretest', '2019-11-25/041152', '201831085'),
('201931269', 'C31040107', 'D', '1', 25, 'Pretest', '2019-11-25/041114', '201831085'),
('201931137', 'C31040107', 'D', '1', 40, 'Pretest', '2019-11-25/041130', '201831085'),
('201931133', 'C31040107', 'D', '1', 56, 'Pretest', '2019-11-25/041148', '201831085'),
('201931279', 'C31040107', 'D', '1', 35, 'Pretest', '2019-11-25/041107', '201831085'),
('201931106', 'C31040107', 'D', '1', 28, 'Pretest', '2019-11-25/041125', '201831085'),
('201931116', 'C31040107', 'D', '1', 50, 'Pretest', '2019-11-25/041140', '201831085'),
('201931117', 'C31040107', 'D', '1', 50, 'Pretest', '2019-11-25/041153', '201831085'),
('201931117', 'C31040107', 'D', '1', 50, 'Pretest', '2019-11-25/041156', '201831085'),
('201831171', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031204', '201831075'),
('201831002', 'C31040203', 'E', '6', 83, 'Laporan', '2019-12-04/031220', '201831075'),
('201831028', 'C31040203', 'E', '6', 87, 'Laporan', '2019-12-04/031233', '201831075'),
('201831156', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031247', '201831075'),
('201831001', 'C31040203', 'E', '6', 75, 'Laporan', '2019-12-04/031200', '201831075'),
('201831090', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031210', '201831075'),
('201831149', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031221', '201831075'),
('201831135', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031231', '201831075'),
('201831193', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031238', '201831075'),
('201831120', 'C31040203', 'E', '6', 90, 'Laporan', '2019-12-04/031250', '201831075'),
('201831180', 'C31040203', 'E', '6', 90, 'Laporan', '2019-12-04/031258', '201831075'),
('201831170', 'C31040203', 'E', '6', 87, 'Laporan', '2019-12-04/031212', '201831075'),
('201831016', 'C31040203', 'E', '6', 84, 'Laporan', '2019-12-04/031223', '201831075'),
('201831155', 'C31040203', 'E', '6', 88, 'Laporan', '2019-12-04/031239', '201831075'),
('201831147', 'C31040203', 'E', '6', 85, 'Laporan', '2019-12-04/031248', '201831075'),
('201831122', 'C31040203', 'E', '6', 80, 'Laporan', '2019-12-04/031257', '201831075'),
('201831007', 'C31040203', 'E', '6', 84, 'Laporan', '2019-12-04/031213', '201831075'),
('201831145', 'C31040203', 'E', '6', 85, 'Laporan', '2019-12-04/031223', '201831075'),
('201831004', 'C31040203', 'E', '6', 88, 'Laporan', '2019-12-04/031237', '201831075'),
('201831128', 'C31040203', 'E', '6', 83, 'Laporan', '2019-12-04/031247', '201831075'),
('201831206', 'C31040203', 'E', '6', 87, 'Laporan', '2019-12-04/031258', '201831075'),
('201831206', 'C31040203', 'E', '2', 87, 'Laporan', '2019-12-04/041224', '201831075'),
('201831055', 'C31040203', 'D', '6', 80, 'Laporan', '2019-12-04/041213', '201831120'),
('201831069', 'C31040203', 'D', '6', 75, 'Laporan', '2019-12-04/041226', '201831120'),
('201831126', 'C31040203', 'D', '6', 85, 'Laporan', '2019-12-04/041240', '201831120'),
('201831076', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041254', '201831120'),
('201831040', 'C31040203', 'D', '6', 84, 'Laporan', '2019-12-04/041209', '201831120'),
('201831102', 'C31040203', 'D', '6', 87, 'Laporan', '2019-12-04/041220', '201831120'),
('201831035', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041232', '201831120'),
('201831006', 'C31040203', 'D', '6', 88, 'Laporan', '2019-12-04/041245', '201831120'),
('201831150', 'C31040203', 'D', '6', 88, 'Laporan', '2019-12-04/041257', '201831120'),
('201831084', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041209', '201831120'),
('201831085', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041214', '201831120'),
('201831148', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041223', '201831120'),
('201831075', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041231', '201831120'),
('201731088', 'C31040203', 'D', '6', 90, 'Laporan', '2019-12-04/041241', '201831120'),
('201931107', 'C31040107', 'D', '2', 85, 'Pretest', '2019-12-04/041201', '201831085'),
('201931114', 'C31040107', 'D', '2', 90, 'Pretest', '2019-12-04/041221', '201831085'),
('201931116', 'C31040107', 'D', '2', 65, 'Pretest', '2019-12-04/041243', '201831085'),
('201931116', 'C31040107', 'D', '2', 65, 'Pretest', '2019-12-04/041244', '201831085'),
('201931135', 'C31040107', 'D', '2', 25, 'Pretest', '2019-12-04/041202', '201831085'),
('201931269', 'C31040107', 'D', '2', 65, 'Pretest', '2019-12-04/041223', '201831085'),
('201931121', 'C31040107', 'D', '2', 30, 'Pretest', '2019-12-04/041239', '201831085'),
('201931124', 'C31040107', 'D', '2', 32, 'Pretest', '2019-12-04/041254', '201831085'),
('201931111', 'C31040107', 'D', '2', 42, 'Pretest', '2019-12-04/041209', '201831085'),
('201931138', 'C31040107', 'D', '2', 27, 'Pretest', '2019-12-04/041224', '201831085'),
('201931128', 'C31040107', 'D', '2', 45, 'Pretest', '2019-12-04/041242', '201831085'),
('201931110', 'C31040107', 'D', '2', 25, 'Pretest', '2019-12-04/041201', '201831085'),
('201931140', 'C31040107', 'D', '2', 15, 'Pretest', '2019-12-04/041233', '201831085'),
('201931137', 'C31040107', 'D', '2', 55, 'Pretest', '2019-12-04/041253', '201831085'),
('201931126', 'C31040107', 'D', '2', 55, 'Pretest', '2019-12-04/041208', '201831085'),
('201931133', 'C31040107', 'D', '2', 85, 'Pretest', '2019-12-04/041234', '201831085'),
('201931117', 'C31040107', 'D', '2', 30, 'Pretest', '2019-12-04/041258', '201831085'),
('201931108', 'C31040107', 'D', '2', 95, 'Pretest', '2019-12-04/051218', '201831085'),
('201931268', 'C31040107', 'D', '2', 80, 'Pretest', '2019-12-04/051234', '201831085'),
('201931134', 'C31040107', 'D', '2', 32, 'Pretest', '2019-12-04/051247', '201831085'),
('201931112', 'C31040107', 'D', '2', 32, 'Pretest', '2019-12-04/051239', '201831085'),
('201931120', 'C31040107', 'D', '2', 15, 'Pretest', '2019-12-04/051256', '201831085'),
('201931131', 'C31040107', 'D', '2', 65, 'Pretest', '2019-12-04/051215', '201831085'),
('201931109', 'C31040107', 'D', '2', 95, 'Pretest', '2019-12-04/051231', '201831085'),
('201931115', 'C31040107', 'D', '2', 65, 'Pretest', '2019-12-04/051250', '201831085'),
('201931106', 'C31040107', 'D', '2', 25, 'Pretest', '2019-12-04/051206', '201831085'),
('201931122', 'C31040107', 'D', '2', 32, 'Pretest', '2019-12-04/051219', '201831085'),
('201931125', 'C31040107', 'D', '2', 50, 'Pretest', '2019-12-04/051246', '201831085'),
('201931127', 'C31040107', 'D', '2', 45, 'Pretest', '2019-12-04/051257', '201831085'),
('201931129', 'C31040107', 'D', '2', 37, 'Pretest', '2019-12-04/051233', '201831085');
INSERT INTO `mhs_detail` (`nim`, `kode_matkul`, `kelas_mhs`, `lapKe`, `nilai`, `jenis`, `tgl_input`, `penginput`) VALUES
('201931279', 'C31040107', 'D', '2', 27, 'Pretest', '2019-12-04/051246', '201831085'),
('201931139', 'C31040107', 'D', '2', 85, 'Pretest', '2019-12-04/051238', '201831085'),
('201931136', 'C31040107', 'D', '2', 35, 'Pretest', '2019-12-04/051253', '201831085'),
('201931130', 'C31040107', 'D', '2', 42, 'Pretest', '2019-12-04/051208', '201831085'),
('201931132', 'C31040107', 'D', '2', 96, 'Pretest', '2019-12-04/051225', '201831085'),
('201931123', 'C31040107', 'D', '2', 45, 'Pretest', '2019-12-04/051246', '201831085'),
('201931112', 'C31040107', 'D', '3', 70, 'Pretest', '2019-12-04/051247', '201831085'),
('201931134', 'C31040107', 'D', '3', 75, 'Pretest', '2019-12-04/051206', '201831085'),
('201931128', 'C31040107', 'D', '3', 70, 'Pretest', '2019-12-04/051218', '201831085'),
('201931268', 'C31040107', 'D', '3', 85, 'Pretest', '2019-12-04/051234', '201831085'),
('201931127', 'C31040107', 'D', '3', 90, 'Pretest', '2019-12-04/051248', '201831085'),
('201931109', 'C31040107', 'D', '3', 100, 'Pretest', '2019-12-04/051211', '201831085'),
('201931131', 'C31040107', 'D', '3', 100, 'Pretest', '2019-12-04/051224', '201831085'),
('201931111', 'C31040107', 'D', '3', 70, 'Pretest', '2019-12-04/051236', '201831085'),
('201931140', 'C31040107', 'D', '3', 75, 'Pretest', '2019-12-04/051207', '201831085'),
('201931140', 'C31040107', 'D', '3', 75, 'Pretest', '2019-12-04/051209', '201831085'),
('201931110', 'C31040107', 'D', '3', 30, 'Pretest', '2019-12-04/051225', '201831085'),
('201931135', 'C31040107', 'D', '3', 20, 'Pretest', '2019-12-04/051247', '201831085'),
('201931279', 'C31040107', 'D', '3', 70, 'Pretest', '2019-12-04/051201', '201831085'),
('201931107', 'C31040107', 'D', '3', 80, 'Pretest', '2019-12-04/051216', '201831085'),
('201931117', 'C31040107', 'D', '3', 40, 'Pretest', '2019-12-04/051229', '201831085'),
('201931137', 'C31040107', 'D', '3', 80, 'Pretest', '2019-12-04/051244', '201831085'),
('201931133', 'C31040107', 'D', '3', 80, 'Pretest', '2019-12-04/051258', '201831085'),
('201931126', 'C31040107', 'D', '3', 80, 'Pretest', '2019-12-04/051210', '201831085'),
('201931108', 'C31040107', 'D', '3', 95, 'Pretest', '2019-12-04/051224', '201831085'),
('201931116', 'C31040107', 'D', '3', 100, 'Pretest', '2019-12-04/051236', '201831085'),
('201931114', 'C31040107', 'D', '3', 95, 'Pretest', '2019-12-04/051250', '201831085'),
('201931123', 'C31040107', 'D', '3', 85, 'Pretest', '2019-12-04/051207', '201831085'),
('201931115', 'C31040107', 'D', '3', 90, 'Pretest', '2019-12-04/051222', '201831085'),
('201931106', 'C31040107', 'D', '3', 75, 'Pretest', '2019-12-04/051236', '201831085'),
('201931132', 'C31040107', 'D', '3', 95, 'Pretest', '2019-12-04/051249', '201831085'),
('201931125', 'C31040107', 'D', '3', 80, 'Pretest', '2019-12-04/051208', '201831085'),
('201931121', 'C31040107', 'D', '3', 95, 'Pretest', '2019-12-04/051231', '201831085'),
('201931269', 'C31040107', 'D', '3', 75, 'Pretest', '2019-12-04/051244', '201831085'),
('201931130', 'C31040107', 'D', '3', 45, 'Pretest', '2019-12-04/051258', '201831085'),
('201931118', 'C31040107', 'D', '3', 65, 'Pretest', '2019-12-04/051210', '201831085'),
('201931129', 'C31040107', 'D', '3', 95, 'Pretest', '2019-12-04/051224', '201831085'),
('201931119', 'C31040107', 'D', '3', 100, 'Pretest', '2019-12-04/051239', '201831085'),
('201931136', 'C31040107', 'D', '3', 65, 'Pretest', '2019-12-04/051224', '201831085'),
('201931124', 'C31040107', 'D', '3', 30, 'Pretest', '2019-12-04/051237', '201831085'),
('201931139', 'C31040107', 'D', '3', 90, 'Pretest', '2019-12-04/051214', '201831085'),
('201931138', 'C31040107', 'D', '3', 65, 'Pretest', '2019-12-04/051224', '201831085'),
('201831012', 'C31040203', 'D', '6', 70, 'Laporan', '2019-12-04/081208', '201831120'),
('201831066', 'C31040203', 'D', '6', 50, 'Laporan', '2019-12-04/081219', '201831120'),
('201831142', 'C31040203', 'D', '6', 60, 'Laporan', '2019-12-04/081232', '201831120'),
('201831146', 'C31040203', 'D', '6', 65, 'Laporan', '2019-12-04/081250', '201831120');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `kode_matkul` varchar(20) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `tgl_poin` varchar(20) DEFAULT NULL,
  `nilai_poin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `port_view`
--

CREATE TABLE `port_view` (
  `portnya` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `kode_matkul` varchar(20) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `tgl_presensi` varchar(20) DEFAULT NULL,
  `status_presensi` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pretest`
--

CREATE TABLE `pretest` (
  `kode_matkul` varchar(20) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `tgl_pretest` varchar(20) DEFAULT NULL,
  `nilai_pretest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tabs_diawal_fri`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tabs_diawal_fri` (
`jam_matkul` varchar(20)
,`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`kelas_matkul` varchar(2)
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tabs_diawal_mon`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tabs_diawal_mon` (
`jam_matkul` varchar(20)
,`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`kelas_matkul` varchar(2)
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tabs_diawal_sat`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tabs_diawal_sat` (
`jam_matkul` varchar(20)
,`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`kelas_matkul` varchar(2)
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tabs_diawal_thu`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tabs_diawal_thu` (
`jam_matkul` varchar(20)
,`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`kelas_matkul` varchar(2)
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tabs_diawal_tue`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tabs_diawal_tue` (
`jam_matkul` varchar(20)
,`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`kelas_matkul` varchar(2)
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tabs_diawal_wed`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tabs_diawal_wed` (
`jam_matkul` varchar(20)
,`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`kelas_matkul` varchar(2)
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tambah_mk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tambah_mk` (
`kode_matkul` varchar(20)
,`nama_matkul` varchar(50)
,`jam_matkul` varchar(20)
,`kelas_matkul` varchar(2)
,`nidn` varchar(15)
,`hari_matkul` varchar(15)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_materi`
--

CREATE TABLE `upload_materi` (
  `nim` varchar(10) DEFAULT NULL,
  `kode_matkul` varchar(20) DEFAULT NULL,
  `tmp_file` varchar(60) DEFAULT NULL,
  `tgl_upl_mtr` date DEFAULT NULL,
  `sizeFile` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_pretest`
--

CREATE TABLE `upload_pretest` (
  `nim` varchar(10) DEFAULT NULL,
  `kode_matkul` varchar(20) DEFAULT NULL,
  `tmp_file` varchar(30) DEFAULT NULL,
  `tgl_upl_mtr` date DEFAULT NULL,
  `sizeFile` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur untuk view `kode_nama_kelas`
--
DROP TABLE IF EXISTS `kode_nama_kelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kode_nama_kelas`  AS  select `matkul`.`kode_matkul` AS `kode_matkul`,`matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`matkul_detail`.`nidn` AS `nidn`,`matkul_detail`.`hari_matkul` AS `hari_matkul`,`matkul`.`nama_matkul` AS `nama_matkul` from (`matkul_detail` join `matkul` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tabs_diawal_fri`
--
DROP TABLE IF EXISTS `tabs_diawal_fri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabs_diawal_fri`  AS  select `matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`dosen`.`nama_dosen` AS `nama_dosen` from ((`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) join `dosen` on(`matkul_detail`.`nidn` = `dosen`.`nidn`)) where `matkul_detail`.`hari_matkul` = 'jumat' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tabs_diawal_mon`
--
DROP TABLE IF EXISTS `tabs_diawal_mon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabs_diawal_mon`  AS  select `matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`dosen`.`nama_dosen` AS `nama_dosen` from ((`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) join `dosen` on(`matkul_detail`.`nidn` = `dosen`.`nidn`)) where `matkul_detail`.`hari_matkul` = 'senin' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tabs_diawal_sat`
--
DROP TABLE IF EXISTS `tabs_diawal_sat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabs_diawal_sat`  AS  select `matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`dosen`.`nama_dosen` AS `nama_dosen` from ((`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) join `dosen` on(`matkul_detail`.`nidn` = `dosen`.`nidn`)) where `matkul_detail`.`hari_matkul` = 'sabtu' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tabs_diawal_thu`
--
DROP TABLE IF EXISTS `tabs_diawal_thu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabs_diawal_thu`  AS  select `matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`dosen`.`nama_dosen` AS `nama_dosen` from ((`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) join `dosen` on(`matkul_detail`.`nidn` = `dosen`.`nidn`)) where `matkul_detail`.`hari_matkul` = 'kamis' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tabs_diawal_tue`
--
DROP TABLE IF EXISTS `tabs_diawal_tue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabs_diawal_tue`  AS  select `matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`dosen`.`nama_dosen` AS `nama_dosen` from ((`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) join `dosen` on(`matkul_detail`.`nidn` = `dosen`.`nidn`)) where `matkul_detail`.`hari_matkul` = 'selasa' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tabs_diawal_wed`
--
DROP TABLE IF EXISTS `tabs_diawal_wed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabs_diawal_wed`  AS  select `matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`dosen`.`nama_dosen` AS `nama_dosen` from ((`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) join `dosen` on(`matkul_detail`.`nidn` = `dosen`.`nidn`)) where `matkul_detail`.`hari_matkul` = 'rabu' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tambah_mk`
--
DROP TABLE IF EXISTS `tambah_mk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tambah_mk`  AS  select `matkul`.`kode_matkul` AS `kode_matkul`,`matkul`.`nama_matkul` AS `nama_matkul`,`matkul_detail`.`jam_matkul` AS `jam_matkul`,`matkul_detail`.`kelas_matkul` AS `kelas_matkul`,`matkul_detail`.`nidn` AS `nidn`,`matkul_detail`.`hari_matkul` AS `hari_matkul` from (`matkul` join `matkul_detail` on(`matkul`.`kode_matkul` = `matkul_detail`.`kode_matkul`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `demo_device`
--
ALTER TABLE `demo_device`
  ADD PRIMARY KEY (`sn`);

--
-- Indeks untuk tabel `demo_finger`
--
ALTER TABLE `demo_finger`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `demo_log`
--
ALTER TABLE `demo_log`
  ADD PRIMARY KEY (`log_time`);

--
-- Indeks untuk tabel `demo_user`
--
ALTER TABLE `demo_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `nim` (`nim`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indeks untuk tabel `matkul_detail`
--
ALTER TABLE `matkul_detail`
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `nidn` (`nidn`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `mhs_detail`
--
ALTER TABLE `mhs_detail`
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `nim` (`nim`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `pretest`
--
ALTER TABLE `pretest`
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `nim` (`nim`);

--
-- Indeks untuk tabel `upload_materi`
--
ALTER TABLE `upload_materi`
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `upload_pretest`
--
ALTER TABLE `upload_pretest`
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `nim` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `demo_user`
--
ALTER TABLE `demo_user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`),
  ADD CONSTRAINT `informasi_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`);

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`);

--
-- Ketidakleluasaan untuk tabel `matkul_detail`
--
ALTER TABLE `matkul_detail`
  ADD CONSTRAINT `matkul_detail_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `matkul_detail_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`);

--
-- Ketidakleluasaan untuk tabel `mhs_detail`
--
ALTER TABLE `mhs_detail`
  ADD CONSTRAINT `mhs_detail_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`),
  ADD CONSTRAINT `mhs_detail_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`);

--
-- Ketidakleluasaan untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD CONSTRAINT `poin_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `poin_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`);

--
-- Ketidakleluasaan untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`),
  ADD CONSTRAINT `presensi_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`);

--
-- Ketidakleluasaan untuk tabel `pretest`
--
ALTER TABLE `pretest`
  ADD CONSTRAINT `pretest_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `pretest_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`);

--
-- Ketidakleluasaan untuk tabel `upload_materi`
--
ALTER TABLE `upload_materi`
  ADD CONSTRAINT `upload_materi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`),
  ADD CONSTRAINT `upload_materi_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`);

--
-- Ketidakleluasaan untuk tabel `upload_pretest`
--
ALTER TABLE `upload_pretest`
  ADD CONSTRAINT `upload_pretest_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `upload_pretest_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mhs` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
