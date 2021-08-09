module.exports = {
    index:(req, res) => {
        res.render('index',{
            title: 'Inicio'
        })
    },
    cart: (req, res) => {
        res.render('cart', {
            title: 'Carrito de compras'
        })
    }

}