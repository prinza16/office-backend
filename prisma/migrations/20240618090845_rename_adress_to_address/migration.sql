/*
  Warnings:

  - You are about to drop the column `adress` on the `Customers` table. All the data in the column will be lost.
  - Added the required column `address` to the `Customers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Customers" DROP COLUMN "adress",
ADD COLUMN     "address" TEXT NOT NULL;
