/*
  Warnings:

  - Made the column `idDoJogador` on table `jogador_times` required. This step will fail if there are existing NULL values in that column.
  - Made the column `idDoTime` on table `jogador_times` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `jogador_times` DROP FOREIGN KEY `jogador_times_idDoJogador_fkey`;

-- DropForeignKey
ALTER TABLE `jogador_times` DROP FOREIGN KEY `jogador_times_idDoTime_fkey`;

-- AlterTable
ALTER TABLE `jogador_times` MODIFY `idDoJogador` VARCHAR(191) NOT NULL,
    MODIFY `idDoTime` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `jogador_times` ADD CONSTRAINT `jogador_times_idDoJogador_fkey` FOREIGN KEY (`idDoJogador`) REFERENCES `jogadores`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `jogador_times` ADD CONSTRAINT `jogador_times_idDoTime_fkey` FOREIGN KEY (`idDoTime`) REFERENCES `times`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
