var express = require('express');
var router = express.Router();
var {allbrand, brand} = require('../controllers/productController');

router.get('/', allbrand);
router.get('/:brandid', brand)

module.exports = router;