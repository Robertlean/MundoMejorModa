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
            .then(usuario => {
              req.session.usuario = {
                name: user.name,
                email: user.email,
                rol: user.rol,
                telefono: user.telefono,
                calle: user.calle,
                comuna: user.comuna
              }
              console.log(usuario)
              res.locals.usuario = req.session.usuario
              r

                console.log('llegue aquí')
                res.redirect('/')
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
            console.log(usuario)
            res.locals.usuario = req.session.usuario
            if (recordar){
              res.cookie('MundoMejor', req.session.usuario,{maxAge: 1000*60*60*24})
            }
            
            return res.redirect('/')
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
      


    },
   
}