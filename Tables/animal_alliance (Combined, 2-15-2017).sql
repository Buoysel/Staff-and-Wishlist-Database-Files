-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2017 at 07:37 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_alliance`
--
CREATE DATABASE IF NOT EXISTS `animal_alliance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `animal_alliance`;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `Director_ID` int(11) NOT NULL,
  `Director_Name` varchar(255) NOT NULL,
  `Director_Title` varchar(255) DEFAULT NULL,
  `Director_Image` varchar(255) DEFAULT NULL,
  `Director_Bio` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`Director_ID`, `Director_Name`, `Director_Title`, `Director_Image`, `Director_Bio`) VALUES
(1, 'Nancy Williams', NULL, '../FileUploads/AnimalClinic/img/directors/nwilliams.jpg', NULL),
(2, 'John Dobson', NULL, '../FileUploads/AnimalClinic/img/directors/jdobson.jpg', NULL),
(3, 'Sara Lehner', NULL, '../FileUploads/AnimalClinic/img/directors/slehner.jpg', NULL),
(4, 'Kristin Johnson', NULL, '../FileUploads/AnimalClinic/img/directors/kjohnson.jpg', NULL),
(5, 'Jane Dempsey', NULL, '../FileUploads/AnimalClinic/img/directors/jdempsey.jpg', NULL),
(6, 'Karen Martin', NULL, '../FileUploads/AnimalClinic/img/directors/kmartin.jpg', NULL),
(7, 'Allyson McPhaul', NULL, '../FileUploads/AnimalClinic/img/directors/amcphaul.jpg', NULL),
(8, 'Ryan Langley', NULL, '../FileUploads/AnimalClinic/img/directors/rlangley.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical_supplies`
--

CREATE TABLE `medical_supplies` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Item_Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_supplies`
--

INSERT INTO `medical_supplies` (`Item_ID`, `Item_Name`, `Item_Price`) VALUES
(12, 'Isopropyl Alcohol', '12.15'),
(13, 'AA Batteries', '10.20'),
(14, '9V Batteries', '8.79'),
(15, 'Clorox Bleach', '7.13'),
(16, 'Clorox Disinfecting Wipes', '11.97'),
(17, 'Dawn Dish Detergent', '2.67'),
(18, 'Distilled Water', '44.99'),
(19, 'Dryer Sheets', '3.47'),
(20, 'Electric Blankets - Twin Size', '46.95'),
(21, 'Hand Soap Refill', '3.84'),
(22, 'Hand Sanitizer Refill', '5.97'),
(23, 'Karo Syrup', '7.49'),
(24, 'Laundry Detergent', '8.97'),
(25, 'Mop', '8.24'),
(26, 'Mop Head', '5.48'),
(27, 'Spare Newspaper', '0.00'),
(28, 'OxiClean', '4.99'),
(29, 'Hydrogen Peroxide', '1.09'),
(30, 'Paper Towels', '8.99'),
(31, 'Rice - Large Bag', '8.92'),
(32, 'Towels', '6.68'),
(33, '13-Gal. Trashbags', '14.97'),
(34, '39-Gal. Trashbags', '8.97'),
(35, 'Tube Socks', '4.93'),
(36, 'Washcloths', '3.92'),
(37, 'Ziploc Sandwich Bags', '2.98'),
(38, 'Zip Ties', '5.64');

-- --------------------------------------------------------

--
-- Table structure for table `office_supplies`
--

CREATE TABLE `office_supplies` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Item_Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_supplies`
--

INSERT INTO `office_supplies` (`Item_ID`, `Item_Name`, `Item_Price`) VALUES
(4, 'Sharpie Markers', '5.61'),
(5, 'Paper', '14.99'),
(6, 'Hand Sanitizer', '8.68'),
(7, 'Highlighter', '6.49'),
(8, 'Masking Tape', '3.98'),
(9, 'Scotch Tape Refills', '6.35'),
(10, 'Staples', '3.59'),
(11, 'Pens', '4.19');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `Staff_Name` varchar(255) NOT NULL,
  `Staff_Title` varchar(255) DEFAULT NULL,
  `Staff_Image` varchar(255) DEFAULT NULL,
  `Staff_Bio` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Staff_Title`, `Staff_Image`, `Staff_Bio`) VALUES
(1, 'Christina Richards', 'Executive Director', '../FileUploads/AnimalClinic/img/staff/crichards.jpg', NULL),
(2, 'Kristen Hayes Taylor', 'Clinic Supervisor', '../FileUploads/AnimalClinic/img/staff/khtaylor.jpg', NULL),
(3, 'Dr. Michelle Redfern, DVM', 'Chief Veterinarian', '../FileUploads/AnimalClinic/img/staff/mredfern.jpg', NULL),
(4, 'Dr. Donovan Qualls, DVM', 'Associate Veterinarian', '../FileUploads/AnimalClinic/img/staff/dqualls.jpg', NULL),
(5, 'Heather Knight', 'Vet. Tech./Data Entry', '../FileUploads/AnimalClinic/img/staff/hknight.jpg', NULL),
(6, 'Monica Koch', 'Vet. Tech./Data Entry', '../FileUploads/AnimalClinic/img/staff/mkoch.jpg', NULL),
(7, 'Pam Kellett', 'Vet. Tech.', '../FileUploads/AnimalClinic/img/staff/pkellett.jpg', NULL),
(8, 'Jamie Haney', 'Vet. Tech.', '../FileUploads/AnimalClinic/img/staff/jhaney.jpg', NULL),
(9, 'Lindsay Cooper', 'Vet. Tech.', '../FileUploads/AnimalClinic/img/staff/lcooper.jpg', NULL),
(10, 'Nikki Gilbert', 'Vet. Tech.', '../FileUploads/AnimalClinic/img/staff/ngilbert.jpg', NULL),
(11, 'Erin Galloway', 'Vet. Tech.', '../FileUploads/AnimalClinic/img/staff/egalloway.jpg', NULL),
(12, 'Stephanie Mittag', 'Vet. Tech.', '../FileUploads/AnimalClinic/img/staff/smittag.jpg', NULL),
(13, 'Andria Dennis', 'Surgical Tech.', '../FileUploads/AnimalClinic/img/staff/adennis.jpg', NULL),
(14, 'Mike McMillion', 'Transport Driver', '../FileUploads/AnimalClinic/img/staff/mmcmillion.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transport_supplies`
--

CREATE TABLE `transport_supplies` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Item_Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_supplies`
--

INSERT INTO `transport_supplies` (`Item_ID`, `Item_Name`, `Item_Price`) VALUES
(39, 'Plastic Crates (Any Size)', '9.99'),
(40, 'Fuel Gift Cards', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Item_price` decimal(6,2) NOT NULL,
  `Item_Image` varchar(255) DEFAULT NULL,
  `Item_URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`Item_ID`, `Item_Name`, `Item_price`, `Item_Image`, `Item_URL`) VALUES
(4, 'Sharpie Markers', '5.61', '../FileUploads/AnimalClinic/img/items/sharpies.jpg', 'https://smile.amazon.com/Sharpie-30174-Permanent-Marker-Green/dp/B00005NIUB?sa-no-redirect=1'),
(5, 'Paper', '14.99', '../FileUploads/AnimalClinic/img/items/paper.jpg', 'https://smile.amazon.com/Georgia-Pacific-Spectrum-Standard-Multipurpose-998606/dp/B00BB5DJU6/ref=sr_1_1?s=office-products&ie=UTF8&qid=1486584332&sr=1-1&keywords=copier+paper'),
(6, 'Hand Sanitizer', '8.68', '../FileUploads/AnimalClinic/img/items/handsanitizer.jpg', 'https://smile.amazon.com/Germ-x-Original-Sanitizer-Fluid-Ounce/dp/B002JY1DCO/ref=sr_1_3_s_it?s=hpc&ie=UTF8&qid=1486587036&sr=1-3&keywords=germ%2Bx%2Bhand%2Bsanitizer&th=1'),
(7, 'Highlighter', '6.49', '../FileUploads/AnimalClinic/img/items/highlighter.jpg', 'http://www.officedepot.com/a/products/469829/Office-Depot-Brand-100percent-Recycled-Pen/'),
(8, 'Masking Tape', '3.98', '../FileUploads/AnimalClinic/img/items/maskingtape.jpg', 'http://www.homedepot.com/p/3M-Scotch-1-88-in-x-60-yds-General-Purpose-Masking-Tape-2020-48A/100012928'),
(9, 'Scotch Tape Refills', '6.35', '../FileUploads/AnimalClinic/img/items/scotchrefill.jpg', 'https://www.walmart.com/ip/Scotch-Magic-Tape-Refill-1-2-x-1296-3-Pack/14922755'),
(10, 'Staples', '3.59', '../FileUploads/AnimalClinic/img/items/staples.jpg', 'http://www.staples.com/Staples-reg-One-Touch-trade-Premium-Staples-1-4-Leg-Length-5-000-Pack/product_938368'),
(11, 'Pens', '4.19', '../FileUploads/AnimalClinic/img/items/pens.jpg', 'http://www.staples.com/G2-Premium-Gel-Ink-Pen/product_SS942089'),
(12, 'Isopropyl Alcohol', '12.15', '../FileUploads/AnimalClinic/img/items/alchohol.jpg', 'https://smile.amazon.com/99-Isopropyl-Alcohol-Antispetic-Solution/dp/B00BWYM006?sa-no-redirect=1'),
(13, 'AA Batteries', '10.20', '../FileUploads/AnimalClinic/img/items/aabatteries.jpg', 'https://smile.amazon.com/Energizer-L91BP-8-Ultimate-Lithium-Batteries/dp/B0000DC4EL/ref=zg_bs_389577011_10?_encoding=UTF8&refRID=B6NZYZP6EVZ3C4XR1AHD&th=1'),
(14, '9V Batteries', '8.79', '../FileUploads/AnimalClinic/img/items/9vbatteries.jpg', 'https://smile.amazon.com/Duracell-MN-1604-Pack-MN1604/dp/B0164F986Q/ref=sr_1_3_s_it?s=hpc&ie=UTF8&qid=1486588853&sr=1-3&th=1'),
(15, 'Clorox Bleach', '7.13', '../FileUploads/AnimalClinic/img/items/clorox.jpg', 'https://smile.amazon.com/Clorox-Bleach-Regular-64-oz/dp/B0014D2BKY/ref=sr_1_3_s_it?s=hpc&ie=UTF8&qid=1486589029&sr=1-3&keywords=clorox&th=1'),
(16, 'Clorox Disinfecting Wipes', '11.97', '../FileUploads/AnimalClinic/img/items/wipes.jpg', 'https://smile.amazon.com/Clorox-Disinfecting-Wipes-Value-Citrus/dp/B00HSC9F2C/ref=sr_1_2_s_it?s=hpc&ie=UTF8&qid=1486589029&sr=1-2&keywords=clorox'),
(17, 'Dawn Dish Detergent', '2.67', '../FileUploads/AnimalClinic/img/items/dishdetergent.jpg', 'https://www.walmart.com/ip/Dawn-Ultra-Original-Scent-Dishwashing-Liquid-38-Fl-Oz/15018298'),
(18, 'Distilled Water', '44.99', '../FileUploads/AnimalClinic/img/items/water.jpg', 'http://www.chemworld.com/ChemWorld-Distilled-Water-p/CWDISW-4.htm?gclid=CKLB2478gdICFQqmaQodh34FIw'),
(19, 'Dryer Sheets', '3.47', '../FileUploads/AnimalClinic/img/items/dryersheets.jpg', 'https://www.walmart.com/ip/Bounce-Outdoor-Fresh-Fabric-Softener-Dryer-Sheets-80-sheets/11045983'),
(20, 'Electric Blankets - Twin Size', '46.95', '../FileUploads/AnimalClinic/img/items/blankets.jpg', 'https://www.walmart.com/ip/Sunbeam-Heated-Fleece-Electric-Blanket/21596887'),
(21, 'Hand Soap Refill', '3.84', '../FileUploads/AnimalClinic/img/items/soaprefill.jpg', 'https://www.walmart.com/ip/Equate-Clear-Liquid-Hand-Soap-Refill-56-fl-oz/24073985'),
(22, 'Hand Sanitizer Refill', '5.97', '../FileUploads/AnimalClinic/img/items/sanitizerrefill.jpg', 'https://www.walmart.com/ip/Germ-X-Original-Hand-Sanitizer-Refill-56-oz/37750841'),
(23, 'Karo Syrup', '7.49', '../FileUploads/AnimalClinic/img/items/karosyrup.jpg', 'https://smile.amazon.com/Karo-Light-Corn-Syrup-16oz/dp/B0019N5T4Y?sa-no-redirect=1'),
(24, 'Laundry Detergent', '8.97', '../FileUploads/AnimalClinic/img/items/laundrydetergent.jpg', 'https://www.walmart.com/ip/Tide-Simply-Clean-and-Fresh-Refreshing-Breeze-Liquid-Laundry-Detergent-89-Loads-138-fl-oz/33963161'),
(25, 'Mop', '8.24', '../FileUploads/AnimalClinic/img/items/mop.jpg', 'https://www.walmart.com/ip/Quickie-Manufacturing-25-Cotton-Super-Scrub-Wet-Mop/21781841'),
(26, 'Mop Head', '5.48', '../FileUploads/AnimalClinic/img/items/mophead.jpg', 'https://www.walmart.com/ip/Libman-16-Cotton-Wet-Mop-Head-Refill/24538710'),
(27, 'Spare Newspaper', '0.00', '../FileUploads/AnimalClinic/img/items/newspaper.jpg', ''),
(28, 'OxiClean', '4.99', '../FileUploads/AnimalClinic/img/items/oxiclean.jpg', 'http://www.staples.com/OxiClean-Max-Force-Laundry-Stain-Remover-Spray-12-oz/product_924211?cid=PS:GooglePLAs:924211&ci_src=17588969&ci_sku=924211&KPID=924211&cvosrc=PLA.google-SALES.Cleaning%20Supplies%20%26%20Facilities%20Maintenance&cvo_crid=45560782422'),
(29, 'Hydrogen Peroxide', '1.09', '../FileUploads/AnimalClinic/img/items/peroxide.jpg', 'https://www.walgreens.com/store/c/walgreens-hydrogen-peroxide-3-first-aid-antiseptic/ID=prod6056574-product?ext=gooPLA_-_Health_Care&pla&kpid=sku6052668&sst=2959c02c-b7c0-4fae-8bf8-97bbfaea74b3&adtype=pla'),
(30, 'Paper Towels', '8.99', '../FileUploads/AnimalClinic/img/items/papertowels.jpg', 'https://smile.amazon.com/gp/product/B015TYDZTE/ref=s9_acsd_top_hd_bw_b12OYj_c_x_1_w?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-5&pf_rd_r=G0P80ZK1V83GHM3FF1CE&pf_rd_t=101&pf_rd_p=3a5dd557-ba6c-504c-b670-c4055647d760&pf_rd_i=15347401'),
(31, 'Rice - Large Bag', '8.92', '../FileUploads/AnimalClinic/img/items/rice.jpg', 'https://www.walmart.com/ip/Great-Value-Long-Grain-Enriched-Rice-20-Lb/10315883'),
(32, 'Towels', '6.68', '../FileUploads/AnimalClinic/img/items/towels.jpg', 'https://www.walmart.com/ip/Mainstays-Essential-True-Colors-Bath-Towel-Collection/23565953'),
(33, '13-Gal. Trashbags', '14.97', '../FileUploads/AnimalClinic/img/items/13galtrashbags.jpg', 'http://www.homedepot.com/p/HDX-13-Gal-Kitchen-Drawstring-White-Trash-Bag-150-Count-HDX716866/203472820'),
(34, '39-Gal. Trashbags', '8.97', '../FileUploads/AnimalClinic/img/items/39galtrashbags.jpg', 'http://www.homedepot.com/p/HDX-39-Gal-Outdoor-Yard-Drawstring-Clear-Trash-Bags-35-Count-HDX-960296/203378696'),
(35, 'Tube Socks', '4.93', '../FileUploads/AnimalClinic/img/items/tubesocks.jpg', 'https://www.walmart.com/ip/Starter-Men-s-6-Pack-Of-Tube-Socks/37821745'),
(36, 'Washcloths', '3.92', '../FileUploads/AnimalClinic/img/items/washcloths.jpg', 'https://www.walmart.com/ip/Mainstays-18-Pack-Washcloth-Collection/16610932'),
(37, 'Ziploc Sandwich Bags', '2.98', '../FileUploads/AnimalClinic/img/items/ziploc.jpg', 'https://www.walmart.com/ip/Ziploc-Sandwich-Bags-90-count/40642918'),
(38, 'Zip Ties', '5.64', '../FileUploads/AnimalClinic/img/items/zipties.jpg', 'http://www.homedepot.com/p/GE-4-in-Plastic-Cable-Ties-Clear-100-Pack-51225/203724459'),
(39, 'Plastic Crates (Any Size)', '9.99', '../FileUploads/AnimalClinic/img/items/crates.jpg', 'https://www.containerstore.com/shopping/plastic-crates.html'),
(40, 'Fuel Gift Cards', '10.00', '../FileUploads/AnimalClinic/img/items/fuelcard.jpg', 'https://www.svmcards.com/sunoco-gift-cards/ShowDetails.cfm?ProdID=30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`Director_ID`);

--
-- Indexes for table `medical_supplies`
--
ALTER TABLE `medical_supplies`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `office_supplies`
--
ALTER TABLE `office_supplies`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `transport_supplies`
--
ALTER TABLE `transport_supplies`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`Item_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `Director_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_supplies`
--
ALTER TABLE `medical_supplies`
  ADD CONSTRAINT `medical_supplies_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `wishlist` (`Item_ID`);

--
-- Constraints for table `office_supplies`
--
ALTER TABLE `office_supplies`
  ADD CONSTRAINT `office_supplies_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `wishlist` (`Item_ID`);

--
-- Constraints for table `transport_supplies`
--
ALTER TABLE `transport_supplies`
  ADD CONSTRAINT `transport_supplies_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `wishlist` (`Item_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
