module.exports = function(req, res, next){
    if(req.cookies.userMundoMejor){
        console.log(req.cookies.userMundoMejor);
        req.session.usuario = req.cookies.userMundoMejor;
        res.locals.usuarui = req.session.usuario
    }
    next();
}