import { Request, Response } from 'express'
import { Card } from '../entities/Card'

export const getCards = async (req: Request , res: Response) =>  {
  try {
    const cards = await Card.find();
    return res.json(cards);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
}

export const getCard = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const card = await Card.findOneBy({ id: parseInt(id) });

    if (!card) return res.status(404).json({ message: "Card not found" });

    return res.json(card);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
};

export const createCard = async (req: Request , res: Response) =>  {
  if (Array.isArray(req.body)) {
    for (const card of req.body) {
      const newCard = new Card();
      newCard.name = card.name;
      newCard.img = card.img;
      await newCard.save();
    }
    res.send("Nice")
    return
  }

    const { name, img } = req.body
    const card = new Card()
    card.name = name
    card.img = img
    await card.save()
    return res.json(card)
}

export const updateCard = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const card = await Card.findOneBy({ id: parseInt(id) });
    if (!card) return res.status(404).json({ message: "Not Card found" });
    await Card.update({ id: parseInt(id) }, req.body);
    return res.sendStatus(204);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
};

export const deleteCard = async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const result = await Card.delete({ id: parseInt(id) });

    if (result.affected === 0)
      return res.status(404).json({ message: "Card not found" });
    return res.sendStatus(204);
  } catch (error) {
    if (error instanceof Error) {
      return res.status(500).json({ message: error.message });
    }
  }
};