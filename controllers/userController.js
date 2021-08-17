module.exports = {
    /* Aquí falta lógica */
    about:(req,res) =>{
        res.render('about')
    },
    administrador: (req, res) => {
        
        return res.render('/administrador')
     }
   }