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
        db.products.findAll({
            where: {
                name: req.params.genre
            },
            include: ["producto"]
        })
        .then(result =>{
            console.log(result)
            res.render('womens',{
                title: 'Ropa Femenina',
                //producto: result,

            })
        })
        .then(error => res.send(error))
       
    },
    mens:(req, res) => {
        db.genres.findAll({
            where: {
                name: req.params.genre
            },
            include: ['producto']
        })
        .then(result =>{
            console.log(result)
            res.render('mens',{
                title: 'Ropa Masculina',
                //producto: result,

            })
        })
        .then(error => res.send(error))
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
    },
    // metodos para marcas

}