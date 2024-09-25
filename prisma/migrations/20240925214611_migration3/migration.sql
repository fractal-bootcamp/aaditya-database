/*
  Warnings:

  - You are about to drop the `Author` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Genre` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Rental` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_BookGenres` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Book" DROP CONSTRAINT "Book_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Rental" DROP CONSTRAINT "Rental_bookId_fkey";

-- DropForeignKey
ALTER TABLE "Rental" DROP CONSTRAINT "Rental_memberId_fkey";

-- DropForeignKey
ALTER TABLE "_BookGenres" DROP CONSTRAINT "_BookGenres_A_fkey";

-- DropForeignKey
ALTER TABLE "_BookGenres" DROP CONSTRAINT "_BookGenres_B_fkey";

-- DropTable
DROP TABLE "Author";

-- DropTable
DROP TABLE "Genre";

-- DropTable
DROP TABLE "Rental";

-- DropTable
DROP TABLE "_BookGenres";
