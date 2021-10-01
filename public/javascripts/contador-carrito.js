// const addToShoppingCart = document.querySelectorAll('.addToCartButton');
// let contenedorCarrito = document.querySelector('#contadorCarritoItems');
// let contador =0;
// addToShoppingCart.forEach(addToCartButton => {
//     addToCartButton.addEventListener('click', () => {
//         contador++;
//         contenedorCarrito.innerHTML= contador;
//         contenedorCarrito.style.color= 'white';
//     });
// })

window.addEventListener('load', function(){
    const addToShoppingCart = document.querySelectorAll('.addToCartButton');
    let contenedorCarrito = document.querySelector('#contadorCarritoItems');

    let cantidadProducto = document.querySelectorAll('.minicart-quantity');
    
    
    addToShoppingCart.forEach(addToCartButton => {
        addToCartButton.addEventListener('click', () => {
            cantidadProducto
           contador++
            contenedorCarrito.innerHTML= contador;
          
            contenedorCarrito.style.color= 'white';
        });
    })
    
})


// function recuperarLs(){
//     let productos;
//     if(localStorage.getItem('_name') === null){
//       productos =[];
//     }else{
//       productos = JSON.parse(localStorage.getItem('_name'))  
//     }
//     return productos
//   }
//   function contadorCarrito(){
//     let productos;
//     let contador = 0
//     productos =  recuperarLs();
//     productos.forEach(producto => {
//       contador++
     
//     });
//     return contador
    
//   }
