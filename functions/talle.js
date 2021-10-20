module.exports = talle => {
    let valor
    switch (talle) {
        case 's':
            valor = 1
            break;
        case 'm':
            valor = 2
            break;
        case 'l':
            valor = 3
            break;
        case 'xl':
            valor = 4
            break;
        case 'xxl':
            valor = 5
            break;
        case 'xxxl':
            valor = 6
            break;
    }
    return valor
}