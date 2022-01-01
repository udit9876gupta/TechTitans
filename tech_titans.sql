-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 12:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_titans`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'sushil kumar', 'sushilkumarsri08@gmail.com', 'services are delayed'),
(2, 'udit gupta', 'UDITGUPTA9876@GMAIL.COM', 'amazing services...');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_details` varchar(2000) NOT NULL,
  `p_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_name`, `cat`, `p_image`, `p_details`, `p_price`) VALUES
(1, 'AMD RYZEN 5 3600XT', 'cpu', 'images/ryzen-5-3600xt-1-550x550.jpg', '# of CPU Cores : 6 <br>\r\n# of Threads : 12 <br>\r\nMax Boost Clock : Up to 4.5GHz <br>\r\nBase Clock : 3.8GHz <br>\r\nDefault TDP / TDP : 95W <br>', 21890),
(2, 'INTEL CORE I9-10900K', 'cpu', 'images/i9-10900k-2-550x550.jpg', '20 MB Intel® Smart Cache Cache <br>\r\n10 Cores <br>\r\n20 Threads <br>\r\n5.30 GHz Max Turbo Frequency <br>\r\nK - Unlocked <br>\r\n10th Generation <br>\r\n ', 47600),
(3, 'AMD RYZEN 7 3800XT', 'cpu', 'images/ryzen-7-3800xt-1-550x550.jpg', '# of CPU Cores : 8 <br>\r\n# of Threads : 16 <br>\r\nMax Boost Clock : Up to 4.7GHz <br>\r\nBase Clock : 3.9GHz <br>\r\nDefault TDP / TDP : 105W <br>', 31590),
(4, 'INTEL CORE I7-10700', 'cpu', 'images/i7-10700-1-550x550.jpg', '16 MB Intel® Smart Cache Cache <br>\r\n8 Cores <br>\r\n16 Threads <br>\r\n4.80 GHz Max Turbo Frequency <br>\r\n10th Generation <br>', 28200),
(5, 'ASUS VG27AQL1A 27 inch', 'peripherals', 'images/ASUS-27-inch-WQHD-TUF-Gaming-VG27AQL1A-Gaming-Monitor.jpg', 'TUF Gaming VG27AQL1A Gaming Monitor –27 inch WQHD (2560×1440), IPS,170Hz (above 144Hz), ELMB SYNC, Adaptive-sync, G-Sync compatible ready, 1ms (MPRT), 130 % sRGB, HDR', 33500),
(6, 'Samsung 24 Inch Curved', 'peripherals', 'images/Samsung-24-Inch-Curved-AMD-Freesync-FHD-Gaming-Monitor-LC24RG50FQWXXL.jpg', 'Immerse yourself fully in the game through the Curved screen <br>\r\nFlawless gameplay with 144hz refresh rate and AMD FreeSync <br>\r\nBetter gaming experience with Game Mode <br>', 15800),
(7, 'Asus ROG Swift PG27VQ', 'peripherals', 'images/PG27VQ-2.jpg', 'ROG Swift PG27VQ Curved Gaming Monitor – 27 inch 2K WQHD (2560×1440), overclockable 165Hz, 1ms, G-SYNC, Aura Sync Technology', 77600),
(8, 'HyperX HX-KB5ME2-US', 'peripherals', 'images/HyperX-Alloy-Core-RGB-Gaming-Keyboard-Membrane-Switches-With-RGB-Backlight-HX-KB5ME2-US.jpg', 'Signature light bar and dynamic RGB lighting effects <br>\r\nDurable, solid frame <br>\r\nQuiet, responsive keys with anti-ghosting functionality <br>\r\nSpill resistant <br>\r\nDedicated media controls <br>\r\nQuick access buttons for brightness, lighting modes, and Game Mode <br>\r\nKeyboard Lock Mode <br>', 6250),
(9, 'Ant Esports KM540W', 'peripherals', 'images/Ant-Esports-KM540W-Gaming-Backlit-Keyboard-and-Mouse-Combo.jpg', 'Ant Esports KM540W Gaming Backlit Keyboard and Mouse Combo, LED Wired Gaming Keyboard, Ergonomic & Wrist Rest Keyboard, Programmable Gaming Mouse for PC/ Laptop / Mac – Black\r\n\r\n', 1550),
(10, 'Razer Viper', 'peripherals', 'images/Razer-Viper-Ultralight-Ambidextrous-Wired-Gaming-Mouse-RZ01-02550100-R3M1.jpg', 'Fastest Mouse Switch in Gaming <br>\r\n16,000 DPI Optical Sensor <br>\r\nChroma RGB Lighting <br>\r\n8 Programmable Buttons <br>\r\nDrag-Free Cord <br>', 5399),
(11, 'Cooler Master MM711', 'peripherals', 'images/MM711.jpg', '6′ Wired USB Connection <br>\r\n16000 dpi Optical Sensor <br>\r\nSix Buttons <br>\r\n1000 Hz Polling Rate <br>', 3849),
(12, 'ASUS ROG Strix GeForce RTX 2060 SUPER', 'gpu', 'images/ASUS-ROG-STRIX-RTX2060S-A8G-GAMING-Graphic-Card.jpg', 'ROG Strix GeForce® RTX 2060 SUPER™ Advanced <br> edition 8GB GDDR6 with powerful cooling for higher <br> refresh rates and a super performance boost', 43780),
(13, 'GALAX GeForce RTX 3070 SG', 'gpu', 'images/GALAX-GeForce-RTX-3070-SG-1-Click-OC-8GB-GDDR6-Graphic-Card-37NSL6MD1GNA-1.jpg', 'The all-new GALAX Serious Gaming <br>\r\n Edition has equipped with 1-Clip Booster, <br>\r\n which can be installed at the back plate and  <br>\r\n it is the precision and quality that win. <br>\r\n When the fan is at the back the PCB is in fact <br>\r\n much shorter than the cooler and the key is to <br>\r\n allow air to flow as easy as they could, therefore <br>\r\n GALAX built larger holes that allows air to <br>\r\n flow through to fulfil the first requirement.', 98500),
(14, 'ASUS Radeon RX 5700 XT', 'gpu', 'images/ASUS-Radeon-RX-5700-XT-TUF-3-RX5700XT-O8G-GAMING-Graphic-Card.jpg', 'The ASUS TUF Gaming X3 Radeon™ RX 5700 XT OC edition <br>\r\n 8GB GDDR6 is built for durability and performance <br>\r\n at 1440p.', 36750),
(15, 'Gigabyte Radeon RX 570', 'gpu', 'images/Gigabyte-Radeon-RX-570-GAMING-8G-Graphic-Card-GV-RX570GAMING-8GD.jpg', 'Powered by Radeon ™ RX 570 <br>\r\nWINDFORCE 2X with 90mm Blade Fan Design <br>\r\nRGB Fusion 2.0 – synchronize with other AORUS devices <br>\r\nStylish Metal Back Plate <br>\r\nIntuitive AORUS Graphics Engine <br>', 15350),
(16, 'Corsair Vengeance LPX 8GB', 'ram', 'images/Corsair-Vengeance-LPX-8GB-8GBx1-3200MHz-DDR4-Desktop-Memory-CMK8GX4M1E3200C16.jpg', 'Each VENGEANCELPX module is built with a pure <br>\r\n aluminum heatspreaderfor faster heat dissipation <br>\r\n and cooler operation; and the custom performance <br> \r\nPCB helps manage heat and provides superior <br>\r\n overclocking headroom.', 4950),
(17, 'G.SKILL Trident Z RGB 8GB', 'ram', 'images/GSKILL-Trident-Z-RGB-8GB-DDR4-3200MHz-RAM-F4-3200C16S-8GTZR.jpg', 'Featuring a completely exposed light bar with <br>\r\n vibrant RGB LEDs, merged with the award-winning <br>\r\n Trident Z heatspreader design, and constructed <br>\r\n with the highest quality components, the Trident <br>\r\n Z RGB DDR4 memory kit combines the most vivid RGB <br>\r\n lighting with uncompromised performance.', 4282),
(18, 'ADATA XPG SPECTRIX D60G Series 16GB', 'ram', 'images/ADATA-XPG-SPECTRIX-D60G-Series-16GB-8GBx2-DDR4-3600MHz-RGB-RAM-AX4U360038G18A-DT60.jpg', 'The XPG SPECTRIX D60G DDR4 memory features a <br>\r\n unique dual RGB light strip design that gives <br>\r\n it the largest RGB surface area of any memory module!', 9800),
(19, 'G.SKILL Sniper X Series 16GB', 'ram', 'images/GSKILL-Sniper-X-Series-16GB-3600MHz-DDR4-Memory-F4-3600C19D-16GSXWB.jpg', 'G.SKILL Sniper X series is the latest DDR4 <br>\r\n memory engineered for the ultimate gaming <br>\r\n experience, with enhanced memory performance <br>\r\n for smoother gameplay and faster load times.', 7750),
(20, 'ASUS ROG STRIX Z490-E', 'motherboard', 'images/ASUS-ROG-STRIX-Z490-E-GAMING-INTEL-MOTHERBOARD.jpg', 'Intel® Z490 LGA 1200 ATX gaming motherboard <br>\r\n featuring 16 power stages, AI Overclocking, <br>\r\n AI Cooling, AI Networking, WiFi 6 (802.11ax), <br>\r\n Intel® 2.5 Gb Ethernet, dual M.2 with heatsinks, <br>\r\n USB 3.2 Gen 2, SATA and AURA Sync RGB lighting.', 27450),
(21, 'ASUS TUF B450-PLUS', 'motherboard', 'images/ASUS-TUF-B450-PLUS-GAMING-Motherboard.jpg', 'AMD B450 ATX gaming motherboard with Aura <br>\r\n Sync RGB LED lighting, DDR4 3200MHz support, <br>\r\n 32Gbps M.2, HDMI 2.0b, Type C and native <br>\r\n USB 3.1 Gen 2.', 9327),
(22, 'MSI B450 Tomahawk Max', 'motherboard', 'images/B450-Tomahawk-Max.jpg', 'Military style with extended heatsink <br>\r\n design for better thermal solution, <br>\r\n plus DDR4 Boost, Core Boost, Turbo M.2 <br>\r\n and USB 3.2 Gen2 connector.', 10550),
(23, 'ASUS TUF GAMING X570-PLUS', 'motherboard', 'images/ASUS-TUF-GAMING-X570-PLUS-AMD-X570-ATX-Gaming-Motherboard.jpg', 'AMD AM4 X570 ATX gaming motherboard with <br>\r\n PCIe 4.0, dual M.2, 14 Dr. MOS power <br>\r\n stages, HDMI, DP, SATA 6Gb/s, USB 3.2 Gen 2 <br>\r\n and Aura Sync RGB lighting.', 18450),
(24, 'Seagate Exos X16 16TB 7200 RPM', 'hdd', 'images/Seagate-Exos-X16-16TB-7200-RPM-SATA-Enterprise-Hard-Drive-ST16000NM001G.jpg', '5-year Manufacturer Limited Warranty <br>\r\nStandard model ship in 512e format, <br> support either 512e or 4Kn Fast Format logical sector size  <br> \r\nHelium sealed-drive design delivers <br> lower total cost of ownership through lower power and weight <br>\r\nDigital environmental sensors to <br>\r\n monitor internal drive conditions <br>\r\n for optimal operation and performance <br>\r\nProven enterprise-class reliability <br>\r\n backed by a 2.5M-hr MTBF rating <br>\r\n', 44375),
(25, 'WD Blue 2TB 5400 RPM', 'hdd', 'images/WD-Blue-2TB-5400-RPM-256MB-Internal-Hard-Drive-WD20EZAZ.jpg', 'Boost your PC storage with WD Blue 3.5-inch <br>\r\n drive that’s available in capacity up to 6TB. <br>\r\n It operates over SATA 6Gbps host interface, <br>\r\n features large cache, and delivers solid <br>\r\n reliability for office and web applications. <br>\r\n Give your desktop a performance and storage <br>\r\n boost when you combine an SSD to maximize <br>\r\n speed of data access and a WD Blue drive <br>\r\n for colossal storage capacity.', 4175),
(26, 'Samsung 970 EVO Plus 250GB', 'ssd', 'images/SAMSUNG-970-EVO-PLUS-250GB-NVME-INTERNAL-SSD-MZ-V7S250BW-400x400.jpg', 'The SSD that goes further <br>\r\nNext level SSD speed <br>\r\nDesign Flexibility <br>\r\nExceptional Endurance <br>\r\nUnparalleled Reliability <br>', 4750),
(27, 'SAMSUNG 860 EVO 2.5 inch 500GB', 'ssd', 'images/SAMSUNG-860-EVO-500GB-3D-NAND-Internal-SATA-SSD-MZ-76E500BW-400x400.jpg', 'The newest edition to the world’s best-selling* <br>\r\n SATA SSD series, the Samsung 860 EVO. <br>\r\n Specially designed for mainstream PCs <br>\r\n and laptops, with the latest V-NAND <br>\r\n and a robust algorithm-based controller, <br>\r\n this fast and reliable SSD comes in a wide <br>\r\n range of compatible form factors and capacities.', 5900),
(28, 'NZXT Kraken X53 240mm', 'liquid', 'images/NZXT-Kraken-X53-240mm-AIO-Liquid-Cooler-with-RGB.jpg', 'The refreshed Kraken X Series is a must-have <br>\r\n for any build, providing better cooling, <br>\r\n stunning visual effects, and intuitive <br>\r\n installation.', 11099),
(29, 'DEEPCOOL CASTLE 240 RGB', 'liquid', 'images/DEEPCOOL-CASTLE-240-RGB-V2-240MM-CPU-LIQUID-COOLER-DP-GS-H12AR-CSL240V2-1.jpg', 'DEEPCOOL CASTLE 240 RGB V2 240MM CPU <br>\r\n LIQUID COOLER DP-GS-H12AR-CSL240V2', 7442),
(30, 'Noctua NH-U12A', 'air', 'images/Noctua-NH-U12A-Premium-120mm-CPU-Cooler-with-High-Performance-Quiet-NF-A12x25-PWM-Fan.jpg', 'The NH-U12A is the latest, 5th generation <br>\r\n of Noctua’s award-winning NH-U12 series <br>\r\n of 120mm size premium-quality quiet CPU coolers.', 4955),
(31, 'Cooler Master Hyper 212', 'air', 'images/Cooler-Master-Hyper-212-LED-CPU-Coolers-RR-212L-16PR-R1.jpg', 'Four direct contact heat pipes for continuous <br>\r\n contact between CPU and cooler  <br>\r\nUpgradable to dual fans with quick snap fan bracket  <br>\r\nWide-range PWM fan with unique blade design and red LEDs <br>\r\nVersatile all-in-one mounting solution  <br>\r\n for Intel and AMD sockets <br>\r\nOptimized bracket design for easy installation <br>', 3250),
(32, 'Antec NX210 ARGB', 'cabinet', 'images/Antec-NX210-ARGB-ATX-Mid-Tower-Cabinet-with-Tempered-Glass-Side-Panel.jpg', 'The NX210 mid-tower gaming case effortlessly <br>\r\n combines a bevy of in-demand features: USB 3.0 <br>\r\n connectivity, ample storage drive bays, <br>\r\n room for expansion, and includes four  <br>\r\n ARGB LED fans(Single mode only). With support <br>\r\n for up to a 240mm liquid cooling radiator <br>\r\n in front, NX210 is easy to build <br>\r\n with and easy to cool.', 3252),
(33, 'Fractal Design Meshify C', 'cabinet', 'images/Fractal-Design-Meshify-C-White-TG-Tempered-Glass-Case-FD-CA-MESH-C-WT-TGC.jpg', 'Meshify strikes an aggressive pose in the <br>\r\n Fractal Design lineup with unparalleled <br>\r\n cooling performance and a defiant new look.', 9490),
(34, 'GIGABYTE GP-B700H 700W', 'others', 'images/GIGABYTE-GP-B700H-700W-SLI-CrossFire-80-PLUS-BRONZE-Modular-PSU.jpg', 'Modular Design <br>\r\nHigh quality Japanese electrolytic capacitors <br>\r\n120mm smart control fan <br>\r\n80 Plus Bronze certified <br>\r\nSingle 12V rail <br>\r\nSupports NVIDIA SLI / AMD CROSSFIRE <br>\r\n5 years warranty (Adjusted according to different regions) <br>', 5500),
(35, 'CORSAIR CX550 550 Watt', 'others', 'images/CORSAIR-CX550-550-Watt-80-Plus-Bronze-Certification-PSU-CP-9020121-UK.jpg', 'CX Series power supply units provide modern power <br>\r\n supply technologies and 80 PLUS Bronze efficiency <br>\r\n at a competitive price point.', 5250),
(36, 'Noctua NT-H1', 'others', 'images/noctua-nt-h1-thermal-compound.jpg', 'Noctua NT-H1 Thermal Compound', 527),
(37, 'Cooler Master MasterGel Pro', 'others', 'images/Cooler-Master-MasterGel-Pro-CPU-Cooling-Thermal-Paste-New-Edition-MGY-ZOSG-N15M-R2.jpg', 'Exclusively flat nozzle syringe designed to <br>\r\n enhance application experience.', 360),
(38, 'DORYLUS CL940N', 'gamingpc', 'images/DOLYRUS_CL940N.png', '-Intel Core i5 10400f (6 Core, 12 Threads, Upto 4.3 Ghz) <br>\r\n-1 X 8GB ADATA XPG Gammix D30 DDR4 3000MHz <br>\r\n-MSI GeForce GTX 1650 D6 Ventus XS 4G OCV1 <br>\r\n-240GB ADATA SATA SSD <br>\r\n-1 TB WD Blue SATA HDD 7200 RPM <br>', 66200),
(39, 'DORYLUS RZ360N', 'gamingpc', 'images/DOLYRUS_RZ360N.png', '-AMD Ryzen 5 3500 (6Core, 6Threads, Upto 4.1 Ghz) <br>\r\n-1 X 8GB ADATA XPG Gammix D30 DDR4 3000MHz <br>\r\n-MSI GeForce GTX 1660 Super Ventus XS OC 6GB <br>\r\n-480GB ADATA SATA SSD <br>\r\n-1 TB WD Blue SATA HDD 7200 RPM <br>', 88400),
(40, 'SOLENOPSIS RZ700XT', 'gamingpc', 'images/Lian_Li_O11_Air.png', '-AMD Ryzen 7 5800X (8Core, 16 Threads, Upto 4.7 Ghz) <br>\r\n-2 X 16GB ADATA XPG Gammix D30 DDR4 3200MHz <br>\r\n-Inno 3D RTX 3080 iChill X4 10 GB <br>\r\n-512 GB ADATA S11 Pro Nvme m.2 SSD <br>\r\n-1 TB WD Blue SATA HDD 7200 RPM <br>', 247000),
(41, 'METALLICA X900X', 'gamingpc', 'images/Antec_Torque.png', '-Intel Core i9 10920x (12 Core, 24 Threads, Upto 4.6 Ghz) <br>\r\n-2 X 32GB G.Skill Ripjaws V DDR4 3200MHz <br>\r\n-MSI GeForce RTX 3090 Suprim 24 GB <br>\r\n-1TB Samsung 970 Evo PLUS NVMe m.2 SSD <br>\r\n-2 TB WD Blue SATA HDD 5400 RPM <br>', 435800),
(42, 'DACETON CL400', 'protean', 'images/Antec_NX310.png', ' -AMD Ryzen 7 5800X (8Core, 16 Threads, Upto 4.7 Ghz) <br>\r\n -1 X 16GB DDR4 3000MHz <br>\r\n -1 X Nvidia GeForce RTX 3060 12GB <br>\r\n -256 GB S40G Nvme m.2 SSD <br>', 158400),
(43, 'MYRMEX RZ460G', 'protean', 'images/Antec_GX202.png', '-AMD Ryzen 5 4650G (6Core, 12Threads, Upto 4.2 Ghz) <br>\r\n-1 X 8GB DDR4 3000MHz <br>\r\n-1 X Nvidia GeForce GTX 1660 Super 6GB <br>\r\n-120GB ADATA/Crucial SATA SSD <br>', 95500),
(44, 'MYRMEX RZ800X', 'protean', 'images/Antec_DF700_Flux.png', '-AMD Ryzen 7 5800X (8Core, 16 Threads, Upto 4.7 Ghz) <br>\r\n-1 X 16GB DDR4 3200MHz <br>\r\n-1 X Nvidia GeForce RTX 3060 12GB <br>\r\n-256 GB S40G Nvme m.2 SSD <br>', 169200),
(45, 'PHEIDOLE X900X', 'protean', 'images/Lian_Li_Lancool_II_Black.png', '-Intel Core i9 10900x (10 Core, 20 Threads, Upto 4.5 Ghz) <br>\r\n-2 X 16GB DDR4 3000MHz <br>\r\n-1 X Nvidia GeForce RTX 3070 8GB <br>\r\n-250GB Samsung 970 EVO NVMe m.2 SSD <br> ', 243600);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'udit gupta', 'UDITGUPTA9876@GMAIL.COM', '12345'),
(10, 'udit', 'uditg610@gmail.com', '9876'),
(13, 'sushil kumar', 'sushilkumarsri08@gmail.com', 'abcd'),
(14, 'srishti', 'srishtid01@gmail.com', 'dorara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
