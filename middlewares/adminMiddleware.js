//aca requeriria los usuarios de la base de datos 

module.exports = function sessionUserAdminCheck(req,res,next){
  if(req.session.usuario && req.session.usuario.rol == "admin"){
      next()
  }else{
    req.session.url = req.originalUrl;
      res.redirect('/')
  }
}