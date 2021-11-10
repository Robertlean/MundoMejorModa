/* Data base */
const db = require("../database/models");
const thousand = require('../functions/thousand')
const capitalize = require('../functions/capitalize')
const {insertguion, insertespacio} = require('../functions/transformUrl')
const categ = require('../functions/categorias')

module.exports = {
  detail: (req, res) => {
    console.log(req.params.product)
    let detalle = req.params.product
    detalle = detalle.split("-")
    detalle = detalle.join(" ")
    console.log(detalle)
    db.products.findOne({
        where : {name: detalle},
        include: ['categoria', 'talle', 'marcas']
      })
      .then((product) => {
        console.log(product)
        db.images.findAll({
          where: {id_product : product.id}
        })
        .then(img => {
          console.log(product)
          res.render("single", {
            title: product.name,
            producto: product,
            thousand,
            img
          });
        })        
      })
      .catch((error) => res.send(error));
  },
  
  mostraradd: (req, res) => {
    db.marcs.findAll()
    .then(marcas => {
    
      let marcsName = [];
      marcas.forEach(marca => {
          let nombreMarca = marca.name;
          nombreMarca= nombreMarca.split(" ");
          nombreMarca = nombreMarca.join('-');
          marcsName.push(nombreMarca)
      });
      res.render("productAdd", {
        title: "Agregar un producto",
        marcsName
        
      });
    })
   
  },
  mostraredit: (req, res) => {
    res.render("productEdit", {
      title: "Editar producto",
    });
  },
  // metodos para marcas

  marcas: (req, res) => {
    let marcaNombre = req.params.marca;
    marcaNombre = marcaNombre.split("-");
    marcaNombre = marcaNombre.join(" ");
    db.marcs
      .findAll({
        where: {
          name: marcaNombre,
        },
        include: [
          {
            association: "productos",
            include: ["colores", "talle", "imagen", "categoria", "genero"],
          },
        ],
      })
      .then((productos) => {
        return res.send(productos);
      })
      .catch((error) => {
        console.log(error);
      });
  },
  /* Start section category */
  all: (req, res) => {
    let categories = db.categories.findAll({
      include: ['producto']
    })
    let products = db.products.findAll({
      include: ['imagen','categoria','talle']
    });
    Promise.all([categories, products])
    .then(([categories, products]) => {
      
      res.render('mens', {
        title: 'Todos nuestros productos',
        categories,
        products,
        marcsName: insertguion(products),
        capitalize,
        thousand
      })
    })

  },
  category: (req, res) => {
    db.products.findAll({
      include: ['imagen', 'categoria', 'talle'],
      where: {id: categ(req.params.catid)}
    })
    .then(product => {
      db.categories.findOne({
        where: {name: req.params.catid}
      }).then(category => {
        console.log(product)
        res.render('category',{
          title: category.name,
          products: product,
          categories: category,
          marcsName: insertguion(product),
          capitalize,
          thousand
        })
      })
    })
  }
  /* End section category */
};
