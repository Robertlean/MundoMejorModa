//aca requeriria los usuarios de la base de datos 

function administrador(req, res, next) {
  usuarios.forEach((usuario) => {
    if (usuario.tipo === req.query.usuario) {
      return res.send("/administrador");
    } else {
      return res.redirect("/");
    }
    next();
  });
}

module.exports = administrador;