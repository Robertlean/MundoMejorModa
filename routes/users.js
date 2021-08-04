var express = require('express');
var router = express.Router();

const userController = require('../controllers/userController')

/* GET users login. */
router.get('/login', userController.login);
router.get('/about', userController.about)

module.exports = router;
