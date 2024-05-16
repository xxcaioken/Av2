-- DropForeignKey
ALTER TABLE `times` DROP FOREIGN KEY `times_idDoJogador_fkey`;

-- AlterTable
ALTER TABLE `times` MODIFY `idDoJogador` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `times` ADD CONSTRAINT `times_idDoJogador_fkey` FOREIGN KEY (`idDoJogador`) REFERENCES `jogadores`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
