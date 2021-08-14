const {check, body} = require('express-validator');
const  bcrypt  = require ( 'bcryptjs' ) ;

/* Falta incorporar la base de datos */

module.exports = [
    /* Chequear si hay información en el input */
    check('email').isEmail().withMessage('Ingrese un mail válido'),

    /* Chequear si al menos hay 6 caracteres*/
    check('password').isLength({min:6}).withMessage('Contraseña muy corta'),

    /* Falta validaciones para el chequeo en la base de datos */   

]