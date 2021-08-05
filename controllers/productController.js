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
    }

}