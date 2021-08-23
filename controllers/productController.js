module.exports = {
    detail:(req, res) => {
        res.render('single',{
            title: 'Detalle de producto'
        })
    },
    womens:(req, res) => {
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