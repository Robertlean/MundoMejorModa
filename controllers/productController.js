/* Data base */
const db = require('../database/models')

module.exports = {
    detail:(req, res) => {
        db.products.findOne({
            name: req.params.id
        })
        .then(product => {
            res.render('single',{
                title: product.name,
                producto: product
            })
        })
        .catch(error => res.send(error))        
    },
    womens:(req, res) => {
        db.category.finAll({
            where: {
                name: req.params.id
            },
            associate:[productos]
        })
        .then(result =>{
            console.log(result)
            res.render('womens',{
                title: 'Ropa Femenina',
                producto: result,

            })
        })
        /* Continuar por aquí. No probar por que se romperá */
        res.render('womens',{
            title: 'Ropa femenina'
        })
    },
    mens:(req, res) => {
        res.render('mens',{
            title: 'Ropa masculina'
        })
    },
    mostraradd: (req, res) => {
        res.render('productAdd',{
            title: 'Agregar un producto'
        })
    },
    mostraredit: (req, res) => {
        res.render('productEdit', {
            title: "Editar producto"
        })
    }



}