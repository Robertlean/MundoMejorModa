var express = require('express');
var router = express.Router();
var { detail, womens, mens } =require('../controllers/productController');


/* GET home page. */
router.get('/detail', detail);
router.get('/womens', womens);
router.get('/mens',mens);

module.exports = router;
