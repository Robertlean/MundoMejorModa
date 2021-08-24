/* Requiero la base de datos */
const db = require('../database/models');

/* Modulos */
const bcrypt = require("bcryptjs"); //se requiere encriptado
const { validationResult } = require('express-validator'); //se requiere express-validator

module.exports = {
    /* Aquí falta lógica */
    about:(req,res) =>{
        res.render('about')
    },
    administrador: (req, res) => {        
        return res.render('administrador',{
          title: 'Administrador'
      })
     },
    
    processRegister: (req,res) => {
        let errors = validationResult(req);
        console.log(req.body)

        if (errors.isEmpty()){
            db.users.create({
                name: req.body.name.trim(),
                mail: req.body.email.trim(),
                password: bcrypt.hashSync(req.body.password.trim(), 10),
                rol: 'usuario',
                telefono: req.body.telefono,
                calle: req.body.calle,
                comuna: req.body.comuna

            })
            .then(result => {
                console.log('llegue aquí')
                res.redirect('/users/login')
            })
            .catch(errores => {
          
                errores.errors.forEach(error => {
                  if (error.path == "name") {
                    errors["name"] = {};
                    errors["name"]["msg"] = error.message
                  };
                  if (error.path == "email") {
                    errors["email"] = {};
                    errors["email"]["msg"] = error.message
                  };
                  if (error.path == "password") {
                    errors["password"] = {};
                    errors["password"]["msg"] = error.message
                  }
                  //return res.redirect('/login')
                })
                res.render('login', {
                  title: "Iniciar Sesión",
                  css: "estilos.css",
                  errors: errors,
                  old: req.body
                })
              })
        }

    },
  processLogin: (req, res) => {
    let errors = validationResult(req);
    const { email } = req.body;

    if (errors.isEmpty()) {
      db.users.findOne({
        where: {
          mail: email
        }
      })
        .then(usuario => {
          req.session.usuario = {
            name: user.name,
            email: user.email,
            rol: user.rol,
            telefono: user.telefono,
            calle: user.calle,
            comuna: user.comuna
          }
          res.locals.usuario = req.session.usuario
          return res.redirect('/pete')
        })
        .catch(error => {
          res.send(error)
          
        })
    } else {
      return res.render('index', {
        title: 'Inicio',
        errores: errors.mapped()
      })
    }
    
      /* let user = db.users.find(user => user.email === email)
      req.session.userLogin = {
        name: user.name,
        email: user.email,
        rol: user.rol,
        telefono: user.telefono,
        calle: user.calle,
        comuna: user.comuna
      } */
    


  },
   
}