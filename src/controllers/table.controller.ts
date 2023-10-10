import { Request, Response } from 'express'
import { Card } from '../entities/Card'
import { Table } from '../entities/Table';

export const getTables = async (req: Request , res: Response) =>  {
  try {
    const tables = await Table.find({
      relations:{
        cards: true
      }
    });
    return res.json(tables);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
}

export const getTable = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const table = await Table.findOneBy({ id: parseInt(id) });

    if (!table) return res.status(404).json({ message: "table not found" });

    return res.json(table);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
};

export const createTable = async (req: Request, res: Response) => {
  const { cant } = req.params;
  const cards = await Card.find();
  const newArrayCards = [...cards];

  const tableResponse: Card[][] = [];
  for (let i = 0; i < Number(cant); i++) {
    let deck: Card[];
    do {
      //? Las cartas no se pueden repetir por que solo se estan ordenando
      const shuffledArray = newArrayCards.sort((a, b) => 0.5 - Math.random());
      deck = shuffledArray.slice(0, 16);
      //? El doWhile se encarga de verificar que ninguna tabla se repita
    } while (tableResponse.some(existingDeck => JSON.stringify(existingDeck) === JSON.stringify(deck)));

    tableResponse.push(deck);
    const table = new Table();
    table.cards = deck;
    await table.save();
  }

  res.json({ deck: tableResponse });
}


export const updateTable = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const table = await Table.findOneBy({ id: parseInt(id) });
    if (!table) return res.status(404).json({ message: "Not table found" });
    await Table.update({ id: parseInt(id) }, req.body);
    return res.sendStatus(204);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
};

export const deleteTable = async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const result = await Table.delete({ id: parseInt(id) });

    if (result.affected === 0)
      return res.status(404).json({ message: "Table not found" });
    return res.sendStatus(204);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
};