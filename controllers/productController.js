/* Data base */
const db = require("../database/models");
const thousand = require('../functions/thousand')
const capitalize = require('../functions/capitalize')
const {insertguion, insertespacio, capitalbrand} = require('../functions/transformUrl')

/* Nos trae un numero */
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


  /* Start section blend */

  allbrand: (req, res) => {
    let brand = db.marcs.findAll({
      include: ['productos']
    })

    let products = db.products.findAll({
      include: ['imagen','categoria','talle']
    })
    Promise.all([brand, products])
    .then(([brand, products]) => {
      console.log(brand)
      res.render('marca', {
        title: 'Todos nuestros productos',
        brand,
        products,
        marcsName: insertguion(products),
        capitalize,
        thousand
      })
    })


    /* db.marcs.findAll({
        where: {
          name: marcaNombre,
        },
        include: [
          {
            association: "productos",
            include: ["talle", "imagen", "categoria", "genero"],
          },
        ],
      })
      .then((productos) => {
        return res.send(productos);
      })
      .catch((error) => {
        console.log(error);
      }); */
  },
  brand: (req, res) => {
    let marcs = db.marcs.findOne({
      where: {name: capitalbrand(req.params.brandid)}
    })
    let products = db.products.findAll({
      
    })
  },

  /* End section brand */

  /* Start section category */
  all: (req, res) => {
    let categories = db.categories.findAll({
      include: ['producto']
    })
    let products = db.products.findAll({
      include: ['imagen','categoria','talle']
    });
    let color = db.color.findAll()
    Promise.all([categories, products,color])
    .then(([categories, products, color]) => {
      console.log(color)
      res.render('mens', {
        title: 'Todos nuestros productos',
        categories,
        products,
        color,
        marcsName: insertguion(products),
        capitalize,
        thousand
      })
    })

  },
  category: (req, res) => {
    /* let categorie = db.categorie.findOne({
      where: {name: req.params.catid,
      include: ['producto']}
    })
    let product = db.products.findAll{
      where: {categoryId : categ(req.params.catid)}
    } */

    db.products.findAll({
      include: ['imagen', 'categoria', 'talle'],
      where: {categoryId: categ(req.params.catid)}
    })
    .then(product => {
      db.categories.findOne({
        where: {name: req.params.catid}
      }).then(category => {
        console.log(product[0].imagen[0].name)
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
