-- CreateTable
CREATE TABLE `contract_metadata` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `image` VARCHAR(191) NOT NULL,
    `social_urls` VARCHAR(191) NULL,
    `seller_fee_basis_points` INTEGER NOT NULL,
    `fee_recipient` VARCHAR(191) NOT NULL,
    `symbol` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `id`(`id`),
    UNIQUE INDEX `uuid`(`uuid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `nft` (
    `id` VARCHAR(255) NOT NULL,
    `owner` TEXT NOT NULL,
    `type` TEXT NOT NULL,
    `supply` INTEGER NOT NULL,
    `metadata` LONGTEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
