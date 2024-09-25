import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function borrowBook() {
  try {
    const book = await prisma.book.findFirst();
    const member = await prisma.member.findFirst();

    if (!book) {
      console.error('No books found in the database.');
      return;
    }

    if (!member) {
      console.error('No members found in the database.');
      return;
    }

    const rental = await prisma.rental.create({
      data: {
        book: {
          connect: { id: book.id }
        },
        member: {
          connect: { id: member.id }
        },
        borrowedAt: new Date()
      }
    });

    console.log('Book borrowed successfully:', rental);
  } catch (error) {
    console.error('Error borrowing book:', error);
  } finally {
    await prisma.$disconnect();
  }
}

borrowBook();
