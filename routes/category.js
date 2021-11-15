var express = require('express');
var router = express.Router();
var {all, category} = require('../controllers/productController');

router.get('/', all);
router.get('/:catid', category)



module.exports = router;