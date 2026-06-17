-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2026 at 06:07 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_trpl1b_galangarrafisusanto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(255) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Avengers: Endgame', '2026-06-20 13:00:00', 2, 50000.00, 'Regular', 'Dolby Digital', 'Row G', NULL, NULL, NULL, NULL),
(2, 'Inception', '2026-06-20 16:00:00', 1, 45000.00, 'Regular', 'Standard Stereo', 'Row H', NULL, NULL, NULL, NULL),
(3, 'Interstellar', '2026-06-20 19:00:00', 3, 50000.00, 'Regular', 'Dolby Atmos', 'Row E', NULL, NULL, NULL, NULL),
(4, 'The Dark Knight', '2026-06-20 21:30:00', 2, 45000.00, 'Regular', 'Dolby Digital', 'Row F', NULL, NULL, NULL, NULL),
(5, 'Tenet', '2026-06-21 10:00:00', 1, 50000.00, 'Regular', 'Standard Stereo', 'Row I', NULL, NULL, NULL, NULL),
(6, 'Dunkirk', '2026-06-21 13:00:00', 4, 45000.00, 'Regular', 'Dolby Atmos', 'Row J', NULL, NULL, NULL, NULL),
(7, 'Gladiator 2', '2026-06-21 16:00:00', 2, 50000.00, 'Regular', 'Dolby Digital', 'Row K', NULL, NULL, NULL, NULL),
(8, 'Avatar: The Way of Water', '2026-06-21 19:00:00', 2, 80000.00, 'IMAX', NULL, NULL, 'IMAX-3D-01', '4D Motion Enabled', NULL, NULL),
(9, 'Oppenheimer', '2026-06-21 22:00:00', 3, 75000.00, 'IMAX', NULL, NULL, 'IMAX-2D-NONE', 'Standard Screen', NULL, NULL),
(10, 'Dune: Part Two', '2026-06-22 13:00:00', 2, 85000.00, 'IMAX', NULL, NULL, 'IMAX-3D-02', 'Vibration Seat', NULL, NULL),
(11, 'Spider-Man: No Way Home', '2026-06-22 16:00:00', 1, 80000.00, 'IMAX', NULL, NULL, 'IMAX-3D-03', '4D Motion Enabled', NULL, NULL),
(12, 'Doctor Strange 2', '2026-06-22 19:00:00', 2, 80000.00, 'IMAX', NULL, NULL, 'IMAX-3D-04', 'Light Effects', NULL, NULL),
(13, 'Top Gun: Maverick', '2026-06-22 22:00:00', 2, 75000.00, 'IMAX', NULL, NULL, 'IMAX-2D-NONE', 'Wind & Smoke Fitur', NULL, NULL),
(14, 'The Matrix Resurrections', '2026-06-23 10:00:00', 3, 80000.00, 'IMAX', NULL, NULL, 'IMAX-3D-05', 'Standard Screen', NULL, NULL),
(15, 'The Godfather', '2026-06-23 14:00:00', 2, 150000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack A', 'Personal Butler Call'),
(16, 'Titanic', '2026-06-23 18:00:00', 4, 150000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Pack B', 'Full Lounge Access'),
(17, 'La La Land', '2026-06-23 21:30:00', 2, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Pack C', 'Drink Delivery Only'),
(18, 'Spirited Away', '2026-06-24 13:00:00', 2, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Pack C', 'Drink Delivery Only'),
(19, 'Your Name', '2026-06-24 16:00:00', 1, 120000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack A', 'Personal Butler Call'),
(20, 'The Batman', '2026-06-24 19:00:00', 2, 150000.00, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Pack B', 'Full Service VIP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
