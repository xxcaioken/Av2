/*
  Warnings:

  - You are about to drop the column `idDoTime` on the `partidas` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `partidas` DROP FOREIGN KEY `partidas_idDoTime_fkey`;

-- AlterTable
ALTER TABLE `partidas` DROP COLUMN `idDoTime`;
