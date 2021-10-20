module.exports = {
    transform: transform => {
        let marcsName = [];
        transform.forEach(valor => {
            let nombreValor = valor;
            nombreValor = nombreValor.split(" ");
            nombreValor = nombreValor.join('-')
            marcsName.push(nombreValor)
        })

    }
    
}