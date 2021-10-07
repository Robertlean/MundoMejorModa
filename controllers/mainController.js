const db = require('../database/models')

module.exports = {
    index:(req, res) => {
        let productos = db.products.findAll({
            include: ['colores'],
           
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
       .catch(error => console.log(error))
    }   

}