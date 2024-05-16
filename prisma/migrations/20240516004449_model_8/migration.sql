-- CreateTable
CREATE TABLE `jogador_times` (
    `id` VARCHAR(191) NOT NULL,
    `idDoJogador` VARCHAR(191) NULL,
    `idDoTime` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `jogador_times` ADD CONSTRAINT `jogador_times_idDoJogador_fkey` FOREIGN KEY (`idDoJogador`) REFERENCES `jogadores`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `jogador_times` ADD CONSTRAINT `jogador_times_idDoTime_fkey` FOREIGN KEY (`idDoTime`) REFERENCES `times`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
