module.exports = (sequelize, dataTypes) => {
    let alias = "products";
    let cols = {
        id:  {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        name: {
            type: dataTypes.STRING,
            allowNull: false,
        },
        description :{
            type: dataTypes.STRING,
            allowNull: false,
        },
        price: {
            type: dataTypes.FLOAT,
            allowNull: false,
        },
        linkpago:{
            type: dataTypes.STRING,
            allowNull: false,
        },
        discount: {
            type: dataTypes.INTEGER,
        },
        idColor: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idTalle: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idCategory: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idMarca: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idGenre:{
            type: dataTypes.INTEGER,
            allowNull: false,
        }
    }

    let config = {
        tableName: "products",
        timestamps: false,
        underscored: true,
    }
    const products = sequelize.define(alias, cols, config);

    products.associate = models => {
        products.belongsTo(models.colors, {
            as: "colores",
            foreignKey: "idColor",
        })
        products.belongsTo(models.talla,{
            as: "talle",
            foreignKey: "idTalle"
        })
        products.belongsTo(models.categories,{
            as: "categoria",
            foreignKey: "idCategory"
        })
        products.belongsTo(models.marcs,{
            as: "marca",
            foreignKey: "idMarca"
        })
        products.belongsTo(models.genres,{
            as: "genero",
            foreignKey: "idGenre"
        })
        products.hasMany(models.image,{
            as: "imagen",
            foreignKey: "idProduct"
        })
    }
        
    return products;

}