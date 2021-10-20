const db = require('../database/models')
const thousand = require('../functions/thousand')
const color = require('../functions/colores')
const categoria = require('../functions/categorias')
const talle = require('../functions/talle')
const marca = require('../functions/marcas')

module.exports = {
    vistacrear: (req, res) => {
        res.render('productAdd',{
            title: 'Crea un producto',
            
        })
    },
    guardarproducto: (req, res) =>{
        console.log(req.body)
        db.products.create({
            name: req.body.name,
            color: req.body.color,
            price: req.body.price,
            discount: req.body.discount,
            price: req.body.price,
            description: req.body.description,
            linkpago: req.body.linkpago,
            color_id: color(req.body.color),
            categoryId: categoria(req.body.categoria),
            talleId: talle(req.body.talla),
            marcaId: marca(req.body.mark),

            
        })
        .then(() =>{
            return res.redirect('/')
        })
        .catch(error=> {
            console.log(error)
        })
    },
    vistaeditar: (req, res) => {
        db.products.findByPk(req.params.products,{
            include: ['colores', 'talle', 'categoria','imagen', 'marcas']
        })
        .then(productos => {
            res.render('productEdit', {
                title: 'Editar '+productos.name,
                producto: productos
            })
        })
    },
    guardaredit: (req, res) => {
        db.products.update({
            color: req.body.color,
            price: req.body.price,
            discount: req.body.discount,
            price: req.body.price,
            description: req.body.description,
            linkpago: req.body.linkpago,
            color_id:color(req.body.color),
            categoryId: categoria(req.body.categoria),
            talleId: talle(req.body.talla),
            marcaId: marca(req.body.mark),
        })
        .then(res.redirect('/admin/list'))
        .catch(errors => res.send(errors))
    },
    list: (req, res) => {
        res.render('administrador',{
            title: "Titulo alguno"
        })
    },

    vistaedit: (req, res) => {
        res.render('productEdit', {
            title: 'editar Producto'
        })
    }
}