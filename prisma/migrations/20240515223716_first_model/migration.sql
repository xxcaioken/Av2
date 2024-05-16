-- CreateTable
CREATE TABLE `jogadores` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `idade` INTEGER NOT NULL,
    `posicao` VARCHAR(191) NOT NULL,
    `nacionalidade` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `times` (
    `id` VARCHAR(191) NOT NULL,
    `anoDeFundacao` VARCHAR(191) NOT NULL,
    `pais` VARCHAR(191) NOT NULL,
    `tecnico` VARCHAR(191) NOT NULL,
    `idDoJogador` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `partidas` (
    `id` VARCHAR(191) NOT NULL,
    `anoDeFundacao` VARCHAR(191) NOT NULL,
    `pais` VARCHAR(191) NOT NULL,
    `tecnico` VARCHAR(191) NOT NULL,
    `idDoTime` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `times` ADD CONSTRAINT `times_idDoJogador_fkey` FOREIGN KEY (`idDoJogador`) REFERENCES `jogadores`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `partidas` ADD CONSTRAINT `partidas_idDoTime_fkey` FOREIGN KEY (`idDoTime`) REFERENCES `times`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
