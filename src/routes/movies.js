const routes = require('express').Router()
const moviesController = require('../controllers/movies')
const authMiddleware = require('../middlewares/auth')

routes.get('/', moviesController.listMovies)
routes.get('/:id', moviesController.detailMovies)
routes.post('/', authMiddleware.authCheck, moviesController.createMovies)
routes.delete('/:id', authMiddleware.authCheck, moviesController.deleteMovie)
routes.patch('/:id', moviesController.updateMovie)

module.exports = routes
