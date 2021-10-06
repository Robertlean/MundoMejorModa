var express = require('express');
var router = express.Router();
var { detail, womens, mens, mostraradd, mostraredit, marcas } =require('../controllers/productController');


/* GET products pages. */
router.get('/detail', detail);
router.get('/:genre', womens);
router.get('/:genre',mens);
router.get('/agregar', mostraradd);

router.get('/editar/:id', mostraredit)
// ruta de marcas
router.get('/marca/:id', marcas)
module.exports = router;
