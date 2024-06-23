/*
  Warnings:

  - You are about to drop the column `color` on the `Cars` table. All the data in the column will be lost.
  - You are about to drop the column `no` on the `Cars` table. All the data in the column will be lost.
  - Added the required column `car_number` to the `Cars` table without a default value. This is not possible if the table is not empty.
  - Added the required column `end_time` to the `Cars` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location` to the `Cars` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Cars` table without a default value. This is not possible if the table is not empty.
  - Added the required column `start_time` to the `Cars` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Cars" DROP COLUMN "color",
DROP COLUMN "no",
ADD COLUMN     "car_number" TEXT NOT NULL,
ADD COLUMN     "end_time" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "location" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "start_time" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL DEFAULT 'use';
