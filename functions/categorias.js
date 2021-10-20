module.exports = cat => {
    let valor
    switch (cat) {
        case 'chaquetas':
            valor = 1
            break;
        case 'polerones':
            valor = 2
            break;
        case 'poleras':
            valor = 3
            break;
        case 'parcas':
            valor = 4
            break;
        case 'camisas':
            valor = 5
            break;
        case 'casacas':
            valor = 6
            break;
        case 'shorts':
            valor = 7
            break;
        case 'pantalones':
            valor = 8
            break;
    }
    return valor
}