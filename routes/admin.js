var express = require('express');
var router = express.Router();

const adminController = require('../controllers/adminController')
const multer = require('../middlewares/upImageProducts')

router.get('/create', adminController.vistacrear);
router.post('/create', adminController.guardarproducto);
router.get('/edit/:producto', adminController.vistaeditar);
router.post('/edit/:producto', adminController.guardaredit);
router.get('/list', adminController.list)



router.get('/edit', adminController.vistaedit)

module.exports = router;