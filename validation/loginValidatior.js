const {check, body} = require('express-validator');
const  bcrypt  = require ( 'bcryptjs' ) ;
const db = require('../database/models');

/* Falta incorporar la base de datos */

module.exports = [
    /* Chequear si hay información en el input */
    check('email').isEmail().withMessage('Ingrese un mail válido'),

    /* Chequear si al menos hay 6 caracteres*/
    check('password').isLength({min:6}).withMessage('Contraseña muy corta'),
    body('password')
    .custom((value,{req}) => {
        return db.Users.findOne({
            where: {
                email: req.body.email
            }
        })
        .then(usuario => {
            if(!bcrypt.compareSync(value, usuario.dataValues.pass)){
                return Prome.reject('No coincide la contraseña')
            }
        })
        .catch(() => {
            return Prome.rejec('Credenciales Invalidas, intente nuevamente')
        })
    }),


    /* Falta validaciones para el chequeo en la base de datos */  
    body('email')
    .custom((value, {req}) =>{
      
       let usuario =  db.users.find(user => user.email === value && bcrypt.compareSync(req.body.password, user.password))
        if(usuario){
            return true
        }else{
            return false
        }
    }).withMessage('Email o contraseña incorrectos')

]