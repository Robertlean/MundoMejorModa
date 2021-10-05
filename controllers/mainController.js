const db = require('../database/models')

module.exports = {
    index:(req, res) => {
        let productos = db.products.findAll({
            include: ['colores'],
           
        })
        let marcas = db.marcs.findAll()
        console.log(marcas);
        Promise.all([productos, marcas])
    
        .then(([productos, marcas]) => {
            res.render('index',{
                title: "Inicio",
                productos,
                marcas
            })
       })
       .catch(error => console.log(error))
    }   

}