/* Data base */
const db = require("../database/models");

module.exports = {
  detail: (req, res) => {
    db.products
      .findOne({
        name: req.params.id,
      })
      .then((product) => {
        res.render("single", {
          title: product.name,
          producto: product,
        });
      })
      .catch((error) => res.send(error));
  },
  womens: (req, res) => {
    db.products
      .findAll({
        where: {
          name: req.params.genre,
        },
        include: ["genero"],
      })
      .then((result) => {
        console.log(result);
        res.render("womens", {
          title: "Ropa Femenina",
          //producto: result,
        });
      })
      .then((error) => res.send(error));
  },
  mens: (req, res) => {
    db.genres
      .findAll({
        where: {
          name: req.params.genre,
        },
        include: ["producto"],
      })
      .then((result) => {
        console.log(result);
        res.render("mens", {
          title: "Ropa Masculina",
          //producto: result,
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
