var express = require('express');
var router = express.Router();
var { detail, womens } =require('../controllers/productController');


/* GET home page. */
router.get('/detail', detail);
router.get('/womens', womens);

module.exports = router;
