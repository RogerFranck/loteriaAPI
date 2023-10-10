import { Router } from 'express'
import { createTable, deleteTable, getTable, getTables, updateTable } from '../controllers/table.controller'

const router = Router()
const apiRoute = '/table'

router.get(apiRoute, getTables)
router.get(`${apiRoute}/:id`, getTable)
router.post(apiRoute, createTable)
router.put(`${apiRoute}/:id`, updateTable)
router.delete(`${apiRoute}/:id`, deleteTable)

export default router