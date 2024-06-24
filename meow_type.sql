-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2024 pada 19.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meow_type`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `deskripsi`
--

CREATE TABLE `deskripsi` (
  `id` int(11) NOT NULL,
  `kucing_id` int(11) NOT NULL,
  `negara_kode` char(2) NOT NULL,
  `teks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `deskripsi`
--

INSERT INTO `deskripsi` (`id`, `kucing_id`, `negara_kode`, `teks`) VALUES
(1, 1, 'id', 'Kucing Abysinian adalah salah satu ras kucing tertua yang diketahui, dengan sejarahnya yang dapat ditelusuri kembali ke Mesir kuno. Dikenal karena keanggunan dan kecerdasannya, kucing Abysinian berasal dari daerah pegunungan Ethiopia dan disebut-sebut dalam catatan sejarah sejak zaman firaun. Mereka diperkenalkan ke Eropa pada abad ke-19 dan segera mendapat popularitas sebagai kucing peliharaan yang aktif dan cerdas. Saat ini, Abysinian tetap menjadi salah satu ras favorit di banyak negara, dikenal dengan bulu tipisnya yang halus, tubuh yang ramping, serta sifat yang ramah dan sosial terhadap manusia dan hewan lainnya.'),
(2, 2, 'id', 'Kucing American Curl adalah ras yang dikenal dengan telinga yang melengkung ke belakang secara unik. Dilahirkan pertama kali di California pada tahun 1981, mereka berasal dari seekor kucing liar dengan mutasi genetik yang menyebabkan telinga melengkung. Melalui perkawinan selektif, ras ini berkembang pesat dan diakui oleh American Cat Fanciers Association pada tahun 1986. American Curl memiliki tubuh yang sedang hingga besar, bulu halus atau semi-panjang, dan wajah yang lembut. Mereka dikenal karena kepribadian yang ramah dan kecerdasan yang tinggi, menjadikannya pilihan populer sebagai hewan peliharaan di seluruh dunia.'),
(3, 3, 'id', 'Kucing American Shorthair adalah ras kucing yang berasal dari Eropa, dianggap sebagai keturunan kucing pelaut yang dikenalkan ke Amerika pada abad ke-17. Mereka awalnya digunakan untuk mengendalikan populasi tikus di kapal-kapal dagang. Selama bertahun-tahun, mereka berkembang menjadi kucing yang kuat dan tangguh dengan bulu pendek, wajah persegi, dan tubuh berotot. Saat ini, American Shorthair dikenal sebagai kucing yang ramah, baik, dan mudah beradaptasi dengan lingkungan rumah tangga. Mereka memiliki sifat yang tenang dan stabil, cocok untuk keluarga atau individu yang mencari kucing yang mudah dirawat dan penyayang.'),
(4, 4, 'id', 'Kucing Bengal adalah hasil persilangan antara kucing domestik dengan kucing liar Asia, seperti kucing leopard Benggala. Dipelihara pertama kali pada tahun 1960-an oleh Jean Mill di Amerika Serikat, mereka dikembangkan untuk memiliki pola bulu yang mirip dengan kucing liar, tetapi sifatnya tetap ramah dan cocok sebagai hewan peliharaan. Kucing Bengal memiliki bulu tebal dengan pola belang yang kontras, seringkali berwarna coklat atau silver. Mereka dikenal sebagai kucing yang aktif, cerdas, dan suka bermain, dengan kecenderungan untuk berinteraksi dengan manusia dan hewan peliharaan lainnya. Kini, kucing Bengal menjadi salah satu ras yang populer di kalangan pecinta kucing di seluruh dunia.'),
(5, 5, 'id', 'Kucing Birman adalah ras yang memiliki sejarah yang kaya dan misterius. Dikatakan berasal dari Burma (sekarang Myanmar) pada abad ke-20, kucing Birman legendaris dikaitkan dengan kuil Buddhis di sana, di mana mereka dianggap suci dan dipelihara oleh pendeta. Mereka pertama kali diperkenalkan ke Eropa pada akhir abad ke-19, dan sejak itu popularitas mereka terus meningkat. Kucing Birman dikenal karena bulu yang halus dan tebal, dengan pola khas warna tubuhnya yang kontras. Mereka memiliki temperamen yang tenang, ramah, dan cerdas, membuat mereka ideal sebagai hewan peliharaan dalam rumah tangga yang aktif.'),
(6, 6, 'id', 'Kucing Bombay adalah ras yang menawan dan elegan, berasal dari Amerika Serikat pada awal 1950-an melalui perkawinan silang antara kucing berbulu hitam yang mirip dengan Burmese dan American Shorthair. Diciptakan untuk menyerupai kucing hitam India, kucing ini memiliki bulu halus berkilau dan mata emas yang menonjol. Secara fisik, Bombay adalah kucing yang berotot dan kompak dengan telinga yang kecil dan kaki yang ramping. Mereka dikenal sebagai kucing yang cerdas, ramah, dan penuh kasih sayang terhadap pemiliknya. Hari ini, Bombay tetap menjadi salah satu ras yang populer di Amerika Utara dan Eropa, sering kali dihargai karena kepribadiannya yang lembut dan penampilannya yang elegan.'),
(7, 7, 'id', 'Kucing British Shorthair adalah ras kucing yang memiliki sejarah panjang dan kaya. Asalnya dapat ditelusuri kembali ke Inggris abad ke-19, di mana mereka pertama kali muncul sebagai kucing pekerja di gudang-gudang untuk menjaga dari hama tikus. Ras ini berkembang dari kucing domestik lokal dengan ciri-ciri fisik yang kuat, termasuk tubuh yang besar dan padat, wajah bulat dengan pipi yang tembam, dan mata yang besar dan bulat. Saat ini, British Shorthair dikenal sebagai kucing yang ramah dan tenang, cocok sebagai hewan peliharaan dalam rumah tangga. Mereka populer di seluruh dunia karena penampilan mereka yang indah dan sifat yang menyenangkan.'),
(8, 8, 'id', 'Kucing Calico dikenal dengan corak bulu uniknya yang terdiri dari warna putih, hitam, dan oranye. Sejarah mereka mencakup keberadaan di Jepang sejak abad ke-17, dianggap sebagai simbol keberuntungan dan perlindungan. Secara genetik, pola warna mereka terkait dengan kromosom X, dengan mayoritas kucing Calico adalah betina. Saat ini, mereka populer sebagai hewan peliharaan di seluruh dunia, dikenal karena sifat yang ramah dan aktif. Meski terkadang dianggap sebagai simbol keberuntungan di beberapa budaya, mereka adalah kucing yang penuh kepribadian dan bisa menjadi teman yang setia dan menyenangkan dalam rumah tangga modern.'),
(9, 9, 'id', 'Kucing Domestic adalah keturunan dari kucing liar Afrika (Felis lybica) yang mulai dijinakkan sekitar 9.000 tahun yang lalu di Timur Tengah, khususnya di wilayah Bulan Sabit Subur. Pada awalnya, kucing dipelihara untuk mengendalikan populasi hama seperti tikus di sekitar permukiman manusia dan lumbung pangan. Seiring waktu, kucing domestik menyebar ke seluruh dunia melalui jalur perdagangan dan migrasi manusia. Saat ini, kucing domestik adalah salah satu hewan peliharaan paling populer di dunia, dikenal karena sifatnya yang mandiri, adaptif, dan penuh kasih sayang. Mereka telah menjadi bagian integral dari banyak rumah tangga, berperan sebagai teman dan anggota keluarga.'),
(10, 10, 'id', 'Kucing Mau Mesir adalah salah satu ras kucing domestik tertua yang berasal dari Mesir kuno, sekitar 1400 SM, sering digambarkan dalam seni dan artefak dari era tersebut. Nama \"Mau\" berarti kucing dalam bahasa Mesir kuno. Kucing ini terkenal dengan bulunya yang berbintik alami dan mata hijau yang menawan. Awalnya, ras ini hampir punah pada abad ke-20 tetapi diselamatkan oleh penggemar kucing di Eropa dan Amerika Utara. Saat ini, kucing Mau Mesir dikenal sebagai ras yang aktif dan penyayang, dengan populasi yang stabil dan diakui oleh berbagai asosiasi kucing internasional.'),
(11, 11, 'id', 'Kucing Exotic Shorthair, dikenal sebagai versi berbulu pendek dari kucing Persia, pertama kali dikembangkan di Amerika Serikat pada 1950-an. Awalnya, peternak mencoba menyilangkan kucing Persia dengan kucing American Shorthair untuk menghasilkan kucing berbulu pendek dengan karakteristik wajah dan tubuh Persia. Ras ini diakui secara resmi oleh Cat Fanciers\' Association pada 1967. Saat ini, Exotic Shorthair sangat populer karena penampilan menggemaskan dengan wajah bulat dan hidung pesek, serta bulunya yang mudah dirawat. Mereka dikenal sebagai hewan peliharaan yang ramah, tenang, dan penuh kasih sayang, menjadikannya favorit di kalangan pecinta kucing di seluruh dunia.'),
(12, 12, 'id', 'Kucing Khao Manee adalah kucing langka asal Thailand yang dikenal karena bulu putih bersih dan mata yang bisa berbeda warna (heterokromia). Nama \"Khao Manee\" berarti \"permata putih\" dalam bahasa Thai. Sejarahnya berakar pada kerajaan Siam, di mana kucing ini dihargai sebagai pembawa keberuntungan. Dulu hanya dimiliki oleh keluarga kerajaan, kucing ini hampir punah tetapi berhasil diselamatkan oleh pecinta kucing internasional. Saat ini, Khao Manee menjadi lebih dikenal dan dibudidayakan di luar Thailand, namun tetap langka dan mahal. Popularitasnya terus meningkat karena penampilannya yang unik dan kepribadiannya yang ramah dan cerdas.'),
(13, 13, 'id', 'Kucing Maine Coon adalah salah satu ras kucing domestik tertua dan terbesar di dunia. Asal-usulnya sering dikaitkan dengan legenda bahwa kucing ini merupakan hasil persilangan antara kucing domestik dan rakun, meskipun secara genetis hal ini tidak mungkin. Ras ini berasal dari negara bagian Maine di Amerika Serikat dan pertama kali diakui pada akhir abad ke-19. Maine Coon dikenal dengan tubuh besar, bulu tebal, dan ekor panjang berbulu lebat. Saat ini, Maine Coon sangat populer di seluruh dunia, dihargai sebagai hewan peliharaan karena sifatnya yang ramah, cerdas, dan mudah beradaptasi dengan berbagai lingkungan.'),
(14, 14, 'id', 'Kucing Manx, yang dikenal karena ekornya yang sangat pendek atau bahkan tidak ada, berasal dari Pulau Man di Laut Irlandia. Kucing ini telah ada sejak zaman kuno dan diyakini terbentuk akibat mutasi genetik alami. Sejarahnya sering dikaitkan dengan cerita rakyat setempat, termasuk mitos bahwa mereka adalah penumpang terakhir di bahtera Nuh. Saat ini, Manx masih populer di kalangan pecinta kucing dan diakui oleh berbagai organisasi kucing internasional. Mereka dihargai karena kepribadian mereka yang ramah dan aktif, serta bentuk tubuhnya yang unik. Populasinya tetap stabil berkat upaya pembiakan yang hati-hati.'),
(15, 15, 'id', 'Kucing Munchkin adalah ras kucing yang terkenal dengan kaki pendeknya, akibat mutasi genetik alami yang dikenal sebagai achondroplasia. Pertama kali ditemukan di Amerika Serikat pada tahun 1983, kucing ini mulai dikenal luas setelah seorang wanita bernama Sandra Hochenedel menemukan dua ekor kucing dengan kaki pendek dan memutuskan untuk membiakkan mereka. Meskipun pada awalnya menimbulkan kontroversi di kalangan pecinta kucing karena masalah kesehatan potensial, Munchkin kini telah diakui oleh beberapa asosiasi kucing internasional, termasuk The International Cat Association (TICA) pada tahun 1994. Saat ini, Munchkin menjadi salah satu ras kucing yang populer di seluruh dunia karena penampilannya yang unik dan sifatnya yang ramah serta lincah.'),
(16, 16, 'id', 'Kucing Norwegian Forest Cat, atau \"skogkatt\" dalam bahasa Norwegia, adalah ras kucing domestik yang berasal dari Norwegia, diperkirakan telah berkembang selama ribuan tahun. Ras ini mungkin keturunan kucing domestik yang dibawa oleh Viking dari Inggris dan kucing berbulu panjang dari Crusader. Dengan bulu tebal dan tahan air serta tubuh yang kuat, kucing ini beradaptasi dengan baik di iklim dingin Skandinavia. Pada tahun 1930-an, upaya pelestarian dimulai, tetapi Perang Dunia II menunda perkembangannya. Setelah perang, program pembiakan resmi dilanjutkan, dan pada 1970-an, ras ini diakui secara internasional. Saat ini, Norwegian Forest Cat populer sebagai hewan peliharaan yang ramah dan mandiri di seluruh dunia.'),
(17, 17, 'id', 'Kucing Ocicat adalah ras yang menarik dengan sejarah unik. Pertama kali muncul pada tahun 1964 dari persilangan antara kucing Abyssinian, Siamese, dan American Shorthair, Ocicat awalnya dianggap sebagai kecelakaan genetik yang menghasilkan motif tabby yang eksotis. Namun, popularitasnya tumbuh pesat dan pada 1987, Ocicat diakui sebagai ras yang terpisah. Asal-usulnya terletak di Amerika Serikat. Saat ini, Ocicat dikenal sebagai kucing yang cerdas, ramah, dan aktif. Mereka memiliki bulu yang pendek dan berkilau dengan warna yang bervariasi, seperti coklat, perak, dan merah. Ocicat adalah kucing yang sangat disukai sebagai hewan peliharaan karena kepribadiannya yang menyenangkan dan penampilannya yang menarik.'),
(18, 18, 'id', 'Kucing Persian adalah salah satu ras kucing yang paling terkenal dan disukai di seluruh dunia. Asal usulnya dapat ditelusuri ke Persia kuno (sekarang Iran) dan diperkirakan telah ada sejak abad ke-17. Kucing Persian memiliki ciri fisik yang khas, seperti bulu panjang, wajah datar dengan hidung pesek, dan mata bulat besar. Selain itu, mereka dikenal sebagai kucing yang tenang, ramah, dan suka bermain. Saat ini, kucing Persian masih menjadi salah satu ras yang populer sebagai hewan peliharaan di banyak negara, terutama karena sifatnya yang menyenangkan dan penampilannya yang cantik.'),
(19, 19, 'id', 'Kucing Ragdoll adalah ras kucing yang berasal dari Amerika Serikat pada tahun 1960-an. Ras ini dikembangkan oleh seorang wanita bernama Ann Baker, yang menggabungkan beberapa ras kucing seperti Anggora, Persia, dan Birman. Nama \"Ragdoll\" sendiri mengacu pada sifatnya yang tenang dan mudah dijinakkan, mirip dengan boneka. Ragdoll dikenal karena ukurannya yang besar, bulunya yang lebat dan halus, serta mata birunya yang menawan. Mereka adalah kucing yang sangat ramah, suka bermain, dan cenderung tenang dalam situasi yang ramai. Saat ini, Ragdoll menjadi salah satu ras kucing yang populer di seluruh dunia karena sifatnya yang menyenangkan dan mudah bergaul.'),
(20, 20, 'id', 'Kucing Russian Blue adalah salah satu ras kucing yang dikenal dengan bulu berwarna biru abu-abu yang indah dan mata berwarna hijau yang intens. Asal usulnya diperdebatkan, tetapi diyakini berasal dari wilayah Arkhangelsk di Rusia Utara atau dari Arkhangelsk ke Norwegia dan kemudian ke Inggris pada abad ke-19. Ras ini memiliki sejarah yang kaya sebagai kucing peliharaan bangsawan dan dianggap sebagai simbol keberuntungan dan kecantikan. Saat ini, Russian Blue dikenal sebagai kucing yang cerdas, ramah, dan cenderung pendiam, cocok untuk keluarga yang tenang dan lingkungan yang stabil.'),
(21, 21, 'id', 'Kucing Scottish Fold adalah salah satu ras kucing yang terkenal dengan telinga melipatnya yang unik. Asal usulnya berasal dari Skotlandia pada tahun 1960-an ketika seorang petani bernama William Ross menemukan seekor kucing dengan telinga melipat di peternakannya. Melalui pembiakan selektif, ras ini menjadi populer di seluruh dunia. Kondisi saat ini dari kucing Scottish Fold adalah sebagai salah satu ras yang cukup populer di kalangan pecinta kucing, dengan karakteristik fisik yang menarik dan sifat yang ramah serta penyayang. Meskipun demikian, mereka juga memiliki risiko genetik terkait dengan kelainan tulang dan sendi.'),
(22, 22, 'id', 'Kucing Siamese, juga dikenal sebagai \"Wichien Maat\" di Thailand, memiliki sejarah panjang sebagai simbol keberuntungan dan keagungan di Kerajaan Siam (sekarang Thailand). Kucing ini pertama kali diperkenalkan ke Barat pada abad ke-19 dan segera menjadi favorit di kalangan pecinta kucing di Eropa dan Amerika Utara. Mereka dikenal karena bulu pendek berwarna cerah dengan pola tubuh yang elegan, telinga besar segitiga, dan mata biru yang menawan. Saat ini, kucing Siamese diakui sebagai salah satu ras kucing paling populer di dunia dengan sifat yang cerdas, ramah, dan penurut, membuatnya menjadi pilihan ideal sebagai hewan peliharaan.'),
(23, 23, 'id', 'Kucing Singapura adalah ras kucing kecil yang berasal dari Singapura. Dikenal sebagai kucing yang ramah, aktif, dan cerdas, mereka memiliki sejarah yang menarik. Meskipun asal-usulnya tidak pasti, kucing-kucing ini diyakini telah ada di Singapura sejak abad ke-19 dan mungkin berasal dari kucing-kucing yang dibawa oleh pelaut dari daerah Asia Tenggara. Kondisi saat ini menunjukkan bahwa Kucing Singapura telah menjadi ras yang diakui secara internasional dan populer di banyak negara. Mereka memiliki tubuh yang ramping, bulu halus dengan warna cokelat gelap, mata yang besar dan ekspresif, serta telinga yang besar dan tegak.'),
(24, 24, 'id', 'Kucing Sphynx adalah ras yang unik karena tidak memiliki bulu, dengan kulit yang terasa seperti kulit jeruk. Asal usulnya bermula pada tahun 1966 di Kanada ketika seekor kucing bertubuh kecil tanpa bulu bernama Prune lahir dari induk dengan bulu. Melalui persilangan selektif, breeders mengembangkan ras ini. Kucing Sphynx awalnya mengalami beberapa masalah kesehatan seperti masalah kulit, tetapi dengan perkembangan genetika dan perawatan yang cermat, kondisi kesehatannya telah meningkat. Saat ini, Sphynx dikenal sebagai kucing yang ramah, aktif, dan suka berinteraksi dengan manusia, menjadikannya salah satu ras yang populer di kalangan pecinta kucing.'),
(25, 25, 'id', 'Kucing Tortoiseshell, juga dikenal sebagai kucing Tortie, merupakan jenis kucing dengan pola bulu yang unik, biasanya terdiri dari campuran warna cokelat, merah, dan hitam. Asal usulnya tidak pasti, tetapi diperkirakan berasal dari Asia Tenggara. Secara historis, mereka dianggap sebagai simbol keberuntungan di beberapa budaya, dengan kepercayaan bahwa mereka dapat membawa keberuntungan kepada pemiliknya. Saat ini, kucing Tortoiseshell sering ditemukan di berbagai wilayah di seluruh dunia dan menjadi salah satu jenis kucing yang populer di kalangan pecinta kucing karena kombinasi unik warna bulunya yang menarik dan sifat yang bersemangat.'),
(26, 26, 'id', 'Kucing Turkish Anggora adalah salah satu ras kucing tertua yang berasal dari wilayah Anatolia, Turki. Sejarahnya yang kaya mencakup legenda sebagai kucing keramat di istana-istana Turki pada abad ke-16. Mereka terkenal dengan bulu panjang, halus, dan berkilau yang sering kali berwarna putih, meskipun ada varietas dengan pola dan warna lain. Turkish Anggora memiliki postur tubuh yang elegan dan anggun, dengan mata yang besar dan berwarna cerah. Saat ini, ras ini dikenal karena kecerdasan, keaktifan, dan keterikatannya pada pemiliknya. Mereka sering dijadikan kucing peliharaan karena sifatnya yang ramah dan penampilan yang menawan.'),
(27, 27, 'id', 'Kucing Tuxedo, atau juga dikenal sebagai kucing \"tuxie,\" adalah jenis kucing dengan pola warna yang mirip dengan jas smoking manusia. Sejarah kucing Tuxedo dapat ditelusuri kembali ke zaman Mesir kuno, di mana kucing dengan pola warna serupa dipuja sebagai makhluk mistik. Asal usul nama \"Tuxedo\" berasal dari kemiripan polanya dengan pakaian formal pria. Saat ini, kucing Tuxedo dikenal karena kecerdasannya, kepribadiannya yang ramah, dan kemampuannya dalam beradaptasi dengan lingkungan. Mereka sering dianggap sebagai kucing yang elegan dan cerdas, menjadi pilihan populer sebagai hewan peliharaan di banyak rumah tangga di seluruh dunia.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dna`
--

CREATE TABLE `dna` (
  `id` int(11) NOT NULL,
  `riwayat_id` int(11) NOT NULL,
  `kucing_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `kucing_id` int(11) NOT NULL,
  `negara_kode` char(2) NOT NULL,
  `min` text NOT NULL,
  `max` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id`, `kucing_id`, `negara_kode`, `min`, `max`) VALUES
(1, 1, 'id', '3000000', '10000000'),
(2, 2, 'id', '5000000', '15000000'),
(3, 3, 'id', '1500000', '5000000'),
(4, 4, 'id', '8000000', '20000000'),
(5, 5, 'id', '5000000', '15000000'),
(6, 6, 'id', '4000000', '12000000'),
(7, 7, 'id', '6000000', '18000000'),
(8, 8, 'id', '2000000', '8000000'),
(9, 9, 'id', '500000', '2000000'),
(10, 10, 'id', '5000000', '15000000'),
(11, 11, 'id', '4000000', '12000000'),
(12, 12, 'id', '7000000', '20000000'),
(13, 13, 'id', '10000000', '30000000'),
(14, 14, 'id', '3000000', '10000000'),
(15, 15, 'id', '6000000', '18000000'),
(16, 16, 'id', '8000000', '25000000'),
(17, 17, 'id', '4000000', '12000000'),
(18, 18, 'id', '5000000', '15000000'),
(19, 19, 'id', '7000000', '20000000'),
(20, 20, 'id', '5000000', '15000000'),
(21, 21, 'id', '5000000', '15000000'),
(22, 22, 'id', '4000000', '12000000'),
(23, 23, 'id', '10000000', '30000000'),
(24, 24, 'id', '2000000', '8000000'),
(25, 25, 'id', '6000000', '18000000'),
(26, 26, 'id', '10000000', '30000000'),
(27, 27, 'id', '2000000', '8000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kucing`
--

CREATE TABLE `kucing` (
  `id` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kucing`
--

INSERT INTO `kucing` (`id`, `jenis`) VALUES
(1, 'Abyssinian'),
(2, 'American Curl'),
(3, 'American Shorthair'),
(4, 'Bengal'),
(5, 'Birman'),
(6, 'Bombay'),
(7, 'British Shorthair'),
(8, 'Calico'),
(9, 'Domestic'),
(10, 'Egyptian Mau'),
(11, 'Exotic Shorthair'),
(12, 'Khao Manee'),
(13, 'Maine Coon'),
(14, 'Manx'),
(15, 'Munchkin'),
(16, 'Norwegian Forest'),
(17, 'Ocicat'),
(18, 'Persian'),
(19, 'Ragdoll'),
(20, 'Russian Blue'),
(21, 'Scottish Fold'),
(22, 'Siamese'),
(23, 'Singapura'),
(24, 'Sphynx'),
(25, 'Tortoiseshell'),
(26, 'Turkish Anggora'),
(27, 'Tuxedo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `langganan`
--

CREATE TABLE `langganan` (
  `id` int(11) NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `waktu_awal` timestamp NOT NULL DEFAULT current_timestamp(),
  `waktu_akhir` timestamp NOT NULL DEFAULT (current_timestamp() + interval 1 month)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `id` int(11) NOT NULL,
  `kode` char(2) NOT NULL,
  `nama` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`id`, `kode`, `nama`) VALUES
(1, 'id', 'indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `email` varchar(360) NOT NULL,
  `sandi` char(32) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `jenis_kelamin` enum('laki - laki','perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `negara` varchar(120) NOT NULL,
  `dibuat` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `foto` char(36) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tubuh`
--

CREATE TABLE `tubuh` (
  `id` int(11) NOT NULL,
  `kucing_id` int(11) NOT NULL,
  `panjang_min` int(11) NOT NULL,
  `panjang_max` int(11) NOT NULL,
  `berat_min` int(11) NOT NULL,
  `berat_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tubuh`
--

INSERT INTO `tubuh` (`id`, `kucing_id`, `panjang_min`, `panjang_max`, `berat_min`, `berat_max`) VALUES
(1, 1, 30, 40, 4, 5),
(2, 2, 41, 43, 2, 4),
(3, 3, 31, 38, 4, 6),
(4, 4, 20, 30, 3, 6),
(5, 5, 38, 46, 4, 6),
(6, 6, 22, 33, 3, 6),
(7, 7, 46, 53, 4, 7),
(8, 8, 20, 30, 2, 4),
(9, 9, 46, 56, 3, 7),
(10, 10, 46, 53, 4, 7),
(11, 11, 41, 48, 3, 6),
(12, 12, 25, 30, 3, 4),
(13, 13, 80, 120, 6, 9),
(14, 14, 46, 53, 3, 5),
(15, 15, 25, 30, 3, 4),
(16, 16, 46, 61, 5, 9),
(17, 17, 46, 51, 4, 7),
(18, 18, 25, 38, 7, 13),
(19, 19, 43, 53, 7, 9),
(20, 20, 46, 56, 4, 7),
(21, 21, 20, 25, 4, 6),
(22, 22, 53, 60, 4, 7),
(23, 23, 20, 30, 2, 3),
(24, 24, 20, 25, 3, 5),
(25, 25, 46, 53, 3, 5),
(26, 26, 46, 56, 3, 5),
(27, 27, 46, 53, 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `umur`
--

CREATE TABLE `umur` (
  `id` int(11) NOT NULL,
  `kucing_id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `umur`
--

INSERT INTO `umur` (`id`, `kucing_id`, `min`, `max`) VALUES
(1, 1, 9, 13),
(2, 2, 9, 16),
(3, 3, 15, 20),
(4, 4, 14, 16),
(5, 5, 12, 16),
(6, 6, 12, 16),
(7, 7, 12, 20),
(8, 8, 12, 15),
(9, 9, 10, 20),
(10, 10, 12, 15),
(11, 11, 12, 15),
(12, 12, 10, 12),
(13, 13, 12, 15),
(14, 14, 10, 15),
(15, 15, 12, 15),
(16, 16, 14, 16),
(17, 17, 12, 15),
(18, 18, 12, 17),
(19, 19, 15, 20),
(20, 20, 15, 20),
(21, 21, 12, 15),
(22, 22, 12, 20),
(23, 23, 9, 15),
(24, 24, 10, 15),
(25, 25, 15, 20),
(26, 26, 12, 17),
(27, 27, 12, 15);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kucing_id` (`kucing_id`),
  ADD KEY `negara_kode` (`negara_kode`);

--
-- Indeks untuk tabel `dna`
--
ALTER TABLE `dna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_id` (`riwayat_id`),
  ADD KEY `kucing_id` (`kucing_id`);

--
-- Indeks untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kucing_id` (`kucing_id`),
  ADD KEY `negara_kode` (`negara_kode`);

--
-- Indeks untuk tabel `kucing`
--
ALTER TABLE `kucing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis` (`jenis`);

--
-- Indeks untuk tabel `langganan`
--
ALTER TABLE `langganan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengguna_id` (`pengguna_id`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengguna_id` (`pengguna_id`);

--
-- Indeks untuk tabel `tubuh`
--
ALTER TABLE `tubuh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kucing_id` (`kucing_id`);

--
-- Indeks untuk tabel `umur`
--
ALTER TABLE `umur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kucing_id` (`kucing_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `deskripsi`
--
ALTER TABLE `deskripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `dna`
--
ALTER TABLE `dna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kucing`
--
ALTER TABLE `kucing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `langganan`
--
ALTER TABLE `langganan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `negara`
--
ALTER TABLE `negara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tubuh`
--
ALTER TABLE `tubuh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `umur`
--
ALTER TABLE `umur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD CONSTRAINT `deskripsi_ibfk_1` FOREIGN KEY (`kucing_id`) REFERENCES `kucing` (`id`),
  ADD CONSTRAINT `deskripsi_ibfk_2` FOREIGN KEY (`negara_kode`) REFERENCES `negara` (`kode`);

--
-- Ketidakleluasaan untuk tabel `dna`
--
ALTER TABLE `dna`
  ADD CONSTRAINT `dna_ibfk_1` FOREIGN KEY (`riwayat_id`) REFERENCES `riwayat` (`id`),
  ADD CONSTRAINT `dna_ibfk_2` FOREIGN KEY (`kucing_id`) REFERENCES `kucing` (`id`);

--
-- Ketidakleluasaan untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD CONSTRAINT `harga_ibfk_1` FOREIGN KEY (`kucing_id`) REFERENCES `kucing` (`id`),
  ADD CONSTRAINT `harga_ibfk_2` FOREIGN KEY (`negara_kode`) REFERENCES `negara` (`kode`);

--
-- Ketidakleluasaan untuk tabel `langganan`
--
ALTER TABLE `langganan`
  ADD CONSTRAINT `langganan_ibfk_1` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `tubuh`
--
ALTER TABLE `tubuh`
  ADD CONSTRAINT `tubuh_ibfk_1` FOREIGN KEY (`kucing_id`) REFERENCES `kucing` (`id`);

--
-- Ketidakleluasaan untuk tabel `umur`
--
ALTER TABLE `umur`
  ADD CONSTRAINT `umur_ibfk_1` FOREIGN KEY (`kucing_id`) REFERENCES `kucing` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
