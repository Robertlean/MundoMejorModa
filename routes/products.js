var express = require('express');
var router = express.Router();
var { detail, mostraradd, mostraredit, marcas } =require('../controllers/productController');


/* GET products pages. */
router.get('/detail/:product', detail);
router.get('/agregar', mostraradd);
router.get('/editar/:product', mostraredit)

module.exports = router;
