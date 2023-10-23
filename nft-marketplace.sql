-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 03:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nft-marketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract_metadata`
--

CREATE TABLE `contract_metadata` (
  `id` int(11) NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `social_urls` varchar(191) DEFAULT NULL,
  `seller_fee_basis_points` int(11) DEFAULT NULL,
  `fee_recipient` varchar(191) DEFAULT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract_metadata`
--

INSERT INTO `contract_metadata` (`id`, `uuid`, `name`, `description`, `image`, `social_urls`, `seller_fee_basis_points`, `fee_recipient`, `symbol`, `address`) VALUES
(1, 'e826371d-3262-43a7-969f-1e7db0228683', 'Bored Ape Yacht Club', 'The Bored Ape Yacht Club is a collection of 10,000 unique Bored Ape NFTs— unique digital collectibles living on the Ethereum blockchain. Your Bored Ape doubles as your Yacht Club membership c', 'https://45e69487444edd6aa6839789bcfbe392.ipfscdn.io/ipfs/bafybeihda2p3npywbc5egv3fzwkbepcih3npkp5g7pzfpdkpta7fmrl6am/BAYC%20PFP.avif', '{\"twitter\":\"https://twitter.com/BoredApeYC\",\"discord\":\"https://discord.com/invite/3P5K3dzgdB\",\"etherscan\":\"https://etherscan.io/address/0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d\"}', 300, '0xE28A3B91B02834A8fBe5b1A8FF2587591c5dddea', 'BAYC', '0x8720dbc6C5722f15b059F814366889b0cE8a9816'),
(4, 'a3f69703-07ab-4728-be33-497b790b452c', 'Azuki', 'Take the red bean to join the garden. View the collection at azuki.com/gallery.Azuki starts with a collection of 10,000 avatars that give you membership access to The Garden: a corner of the ', 'https://45e69487444edd6aa6839789bcfbe392.ipfscdn.io/ipfs/bafybeiadwvlnhv24zixkedhd5gtitgl7e43u3kbswrvmoynqw4mxuu2fvm/Azuki%20PFP.avif', NULL, 100, '0xc3d4412dA45E5272183E8d53aFEA600A8F44dA39', 'AZK', '0x982fC72D6EDBE0D9BEA5A8Da81f0d1bC4ee4f6bc'),
(5, '518a171e-edd9-42e3-abee-d7761302420a', 'Lives of Asuna', 'Glimpse into 10,000 unique lives lived by Asuna through this collection of hand-drawn, anime-inspired NFTs by Zumi and Hagglefish.', 'https://45e69487444edd6aa6839789bcfbe392.ipfscdn.io/ipfs/bafybeif5lzexvetjbf2n7fv54w2t766boj2odq5v2yshxjnw4hlestjjwe/LOA%20PFP.jpg', NULL, 100, '0xc3d4412dA45E5272183E8d53aFEA600A8F44dA39', 'LOA', '0xDFfA91A8Cb5e5986F13894579E4422E4afFa5FF4'),
(6, '37cb5bb8-a28f-48c1-8aea-b7dba18385ee', 'Pudgy Penguins', 'Pudgy Penguins is a collection of 8,888 NFT’s, accelerating Web3 innovation through IP utilization and community empowerment. Embodying love, empathy, & compassion, the Pudgy Penguins are a b', 'https://45e69487444edd6aa6839789bcfbe392.ipfscdn.io/ipfs/bafybeigswbfbec6kdtn7rw3tq5vbixh3zrfg3qvj5wsroxvcruj5ubwvum/PP%20PFP.avif', NULL, 100, '0xc3d4412dA45E5272183E8d53aFEA600A8F44dA39', 'PP', '0xF2aa2C3387F6c3BA406D17eda18ad2258DD9C3e1'),
(7, '9a6c35e7-747f-47cd-b59b-2967cb113b56', 'Kaiju Kingz', '3,333 Genesis Kaiju Kingz created by Augminted Labs to protect the metaverse. The community is all about growth and providing a place for the future of web3 to learn, build, and conquer. Join', 'https://45e69487444edd6aa6839789bcfbe392.ipfscdn.io/ipfs/bafybeif2g7nhaioo3uch6ljkpdunlredlu2sqf3h2norln7grmqa5ywt4m/KK%20PFP.png', NULL, 100, '0xc3d4412dA45E5272183E8d53aFEA600A8F44dA39', 'KK', '0x5360Da743353d7853bcC562c153c7d52Fe8179Bf'),
(8, '5a008e06-1fde-4d02-9fe1-4a0d0bfe1bf4', 'Moon Birds', 'Moonbirds is the art collector’s PFP. Each of the 10,000 digital artworks in the collection grants holders access to unique experiences to connect with artists and own and champion their art.', 'https://45e69487444edd6aa6839789bcfbe392.ipfscdn.io/ipfs/bafybeihwzwouzkrwybbrqrsytqyxst35cirgsxqarlygp4zqp2spgrulyq/MB%20PFP.avif', NULL, 100, '0xc3d4412dA45E5272183E8d53aFEA600A8F44dA39', 'MB', '0x897CDdbbb05fC9488854AF6d554cAe95197c6e9a');

-- --------------------------------------------------------

--
-- Table structure for table `nft`
--

CREATE TABLE `nft` (
  `id` varchar(255) NOT NULL,
  `owner` text NOT NULL,
  `type` text NOT NULL,
  `supply` int(11) NOT NULL,
  `metadata` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('e50cba39-ac04-407e-a717-bd7d315f6822', '2124af6db617d7fd30062397205c7be0945ce9f8ec678b98477933601ab1f833', '2023-10-22 17:07:11.322', '20231022170711_init', NULL, NULL, '2023-10-22 17:07:11.289', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract_metadata`
--
ALTER TABLE `contract_metadata`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `nft`
--
ALTER TABLE `nft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contract_metadata`
--
ALTER TABLE `contract_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
