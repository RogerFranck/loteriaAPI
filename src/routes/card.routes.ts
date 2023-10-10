import { Router } from 'express'
import { createCard, deleteCard, getCard, getCards, updateCard } from '../controllers/card.controller'

const router = Router()
const apiRoute = '/cards'

router.get(apiRoute, getCards)
router.get(`${apiRoute}/:id`, getCard)
router.post(apiRoute, createCard)
router.put(`${apiRoute}/:id`, updateCard)
router.delete(`${apiRoute}/:id`, deleteCard)

export default router