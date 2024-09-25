import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

function i(){
  return Math.floor(Math.random()*9.999)
}

function generateIsbn(){
  return `${i()}${i()}${i()}-${i()}${i()}${i()}${i()}${i()}${i()}${i()}${i()}${i()}`
}

async function addBook() {
  try {
    const book = await prisma.book.create({
      data: {
        title: 'Animal Farm',
        isbn: generateIsbn(),
        author: {
          connect: { id: 1 }
        },
        genres: {
          connect: [{ id: 1 }, { id: 2 }]
        }
      }
    });

    console.log('Book added:', book);
  } catch (error) {
    console.error('Error adding book:', error);
  } finally {
    await prisma.$disconnect();
  }
}

addBook();
