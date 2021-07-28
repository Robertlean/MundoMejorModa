var express = require('express');
var router = express.Router();
var { detail } =require('../controllers/productController');


/* GET home page. */
router.get('/detail', detail);

module.exports = router;
