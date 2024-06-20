/*
  Warnings:

  - You are about to drop the column `name` on the `Customers` table. All the data in the column will be lost.
  - Added the required column `company_name` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `position_dealer` to the `Customers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Customers" DROP COLUMN "name",
ADD COLUMN     "company_name" TEXT NOT NULL,
ADD COLUMN     "position_dealer" TEXT NOT NULL,
ALTER COLUMN "customer_id" DROP DEFAULT;
