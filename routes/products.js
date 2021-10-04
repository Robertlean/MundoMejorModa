var express = require('express');
var router = express.Router();
var { detail, womens, mens, mostraradd, mostraredit } =require('../controllers/productController');


/* GET products pages. */
router.get('/detail', detail);
router.get('/:genre', womens);
router.get('/:genre',mens);
router.get('/agregar', mostraradd);

router.get('/editar/:id', mostraredit)

module.exports = router;
