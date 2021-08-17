var express = require('express');
var router = express.Router();

/* Controlador para el usuario */
const userController = require('../controllers/userController')

/* Validaciones para el metodo POST - No hacerlo hasta que tengamos la DB */
const loginValidation = require('../validation/loginValidatior')
const registerValidator = require('../validation/registerValidator')

/* GET users login. */
router.get('/about', userController.about);
router.post('/register', userController.processRegister)

module.exports = router;
