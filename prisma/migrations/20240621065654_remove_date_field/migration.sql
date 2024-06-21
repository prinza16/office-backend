/*
  Warnings:

  - You are about to drop the column `date` on the `Cars` table. All the data in the column will be lost.
  - You are about to drop the column `date` on the `Meetings` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Cars" DROP COLUMN "date";

-- AlterTable
ALTER TABLE "Meetings" DROP COLUMN "date";
