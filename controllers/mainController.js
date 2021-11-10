const db = require('../database/models');
const thousand = require('../functions/thousand')
const {insertguion} = require('../functions/transformUrl')


module.exports = {      
    index:(req, res) => {       
        db.products.findAll({
            include: ['imagen'],
            limit: 15
        })
        .then(product =>{            
            res.render('index', {
                title: 'Inicio',
                productos: product,
                marcsName: insertguion(product),
                thousand
            })
        })
    }   

}