-- DropForeignKey
ALTER TABLE `partidas` DROP FOREIGN KEY `partidas_idDoTime_fkey`;

-- AlterTable
ALTER TABLE `partidas` MODIFY `idDoTime` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `partidas` ADD CONSTRAINT `partidas_idDoTime_fkey` FOREIGN KEY (`idDoTime`) REFERENCES `times`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
