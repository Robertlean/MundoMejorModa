const db = require('../database/models')

module.exports = {
    index:(req, res) => {
        db.products.findAll({
            include: ['colores']
        })
        .then(product => {
            res.render('index',{
                title: "Inicio",
                productos: product
            })
       })
    }   

}