const db = require('../database/models')

module.exports = {
    index:(req, res) => {
        db.products.findAll({
            include: ['talle']
        })
        .then(productos =>{
            let marcas = db.marcs.findAll()
            .then(marcas => {
                let marcsName = [];
                marcas.forEach(marca => {
                    let nombreMarca = marca.name;
                    nombreMarca= nombreMarca.split(" ");
                    nombreMarca = nombreMarca.join('-');
                    marcsName.push(nombreMarca)
                });
            })
            res.render('index', {
                title: 'Inicio',
                productos,
                marcas
            })
        })

        /* let productos = db.products.findAll({
            association: {include: ['colores']},
           
        })
        let marcas = db.marcs.findAll()        
        Promise.all([productos, marcas])    
        .then(([productos, marcas]) => {
            let marcsName = [];
            marcas.forEach(marca => {
                let nombreMarca = marca.name;
                nombreMarca= nombreMarca.split(" ");
                nombreMarca = nombreMarca.join('-');
                marcsName.push(nombreMarca)
            });
          
          
            res.render('index',{
                title: "Inicio",
                productos,
                marcsName
            })
       })
       .catch(error => console.log(error)) */
    }   

}