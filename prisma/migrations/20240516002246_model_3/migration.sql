/*
  Warnings:

  - You are about to drop the column `anoDeFundacao` on the `partidas` table. All the data in the column will be lost.
  - You are about to drop the column `pais` on the `partidas` table. All the data in the column will be lost.
  - You are about to drop the column `tecnico` on the `partidas` table. All the data in the column will be lost.
  - Added the required column `Data` to the `partidas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Local` to the `partidas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Placar` to the `partidas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TimeDaCasa` to the `partidas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TimeVisitante` to the `partidas` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `partidas` DROP COLUMN `anoDeFundacao`,
    DROP COLUMN `pais`,
    DROP COLUMN `tecnico`,
    ADD COLUMN `Data` VARCHAR(191) NOT NULL,
    ADD COLUMN `Local` VARCHAR(191) NOT NULL,
    ADD COLUMN `Placar` VARCHAR(191) NOT NULL,
    ADD COLUMN `TimeDaCasa` VARCHAR(191) NOT NULL,
    ADD COLUMN `TimeVisitante` VARCHAR(191) NOT NULL;
