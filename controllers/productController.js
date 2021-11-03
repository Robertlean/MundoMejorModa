/* Data base */
const db = require("../database/models");
const thousand = require('../functions/thousand')

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
  all: (req, res) => {
    db.categories.findAll({
        include: ["producto"],
      })
      .then((result) => {
        console.log(result);
        res.render("mens", {
          title: "Indumentaría por categoria",
          producto: result,
        });
      })
      .then((error) => res.send(error));
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
};
