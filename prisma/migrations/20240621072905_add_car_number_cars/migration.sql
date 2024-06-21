/*
  Warnings:

  - Added the required column `car_number` to the `Cars` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Cars" ADD COLUMN     "car_number" TEXT NOT NULL;
