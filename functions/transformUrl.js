const capital = require('./capitalize')

module.exports = {
    insertguion: transform => {
        let marcsName = [];
        
        transform.forEach(valor => {
            let nombreValor = valor.name;
            nombreValor = nombreValor.split(" ");
            nombreValor = nombreValor.join('-')
            marcsName.push(nombreValor)
        })
        return marcsName
    },
    insertespacio: transform => {
        transform = transform.split("-")
        transform = transform.join(" ")
        return transform
    },
    capitalbrand: transform => {
        let marcsName = []

        transform = transform.split("-")
        transform.forEach( valor => {
            marcsName.push(capital(valor))
        })
        return marcsName.join(" ")
    }

}