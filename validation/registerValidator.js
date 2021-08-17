const {check, body} = require('express-validator');
const  bcrypt  = require ( 'bcryptjs' );
const db = require('../database/models')

/* Falta incorporar la base de datos */

module.exports = [
    check('name')
    .notEmpty()
    .withMessage('Ingrese un nombre')
    .bail()
    .isLength({
        min:2, max: 50
    }).withMessage('El nombre tiene que tener como mínimo 2 caracteres').bail()
    .isAlpha().withMessage('El nombre debe contener solo letras'),

    body('mail')
    .custom(function(value){
        console.log(value)
        return db.users.findOne({
            where:{
                mail:value
            }
            })
            .then(user => {
                console.log(user)
                if(user){
                    return Promise.reject('Este mail ya está registrado')
                }
            })
    }),

    check('mail')
    .isEmail().withMessage('Debes ingresar un mail válido'),

    check('password')
    .isLength({
        min:6
    }).withMessage('La contraseña debe tener al menos 6 caracteres'),

    body('confirmar')
    .custom((value, {req}) => {
        if(value !== req.body.password){
            return false
        }
        return true
    }).withMessage('Las contraseñas no coinciden'),

]