const db = require('../database/models');
const thousand = require('../functions/thousand')


module.exports = {      
    index:(req, res) => {       
        db.products.findAll({
            include: ['imagen'],
            limit: 15
        })
        .then(product =>{            
            let marcsName = [];
            product.forEach(producto => {
                let nombreMarca = producto.name;
                nombreMarca= nombreMarca.split(" ");
                nombreMarca = nombreMarca.join('-');
                marcsName.push(nombreMarca)
            });
            console.log(marcsName)
            res.render('index', {
                title: 'Inicio',
                productos: product,
                marcsName,
                thousand
            })
        })
    }   

}