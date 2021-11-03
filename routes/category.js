var express = require('express');
var router = express.Router();
var {all} = require('../controllers/productController');

router.get('/all', all);


module.exports = router;