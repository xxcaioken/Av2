/*
  Warnings:

  - You are about to drop the column `idDoJogador` on the `times` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `times` DROP FOREIGN KEY `times_idDoJogador_fkey`;

-- AlterTable
ALTER TABLE `times` DROP COLUMN `idDoJogador`;
