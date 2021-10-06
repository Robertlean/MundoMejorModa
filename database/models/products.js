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
        idcolor: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idtalle: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idcategory: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idmarca: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        idgenre:{
            type: dataTypes.INTEGER,
            allowNull: false,
        }
    }

    let config = {
        tableName: "products",
        timestamps: false,
        underscored: true,
        freezeTableName: true,
    }
    const products = sequelize.define(alias, cols, config);

    products.associate = models => {
        products.belongsTo(models.colors, {
            as: "colores",
            foreignKey: "idcolor",
        })
        products.belongsTo(models.talla,{
            as: "talle",
            foreignKey: "idtalle"
        })
        products.belongsTo(models.categories,{
            as: "categoria",
            foreignKey: "idcategory"
        })
        products.belongsTo(models.marcs,{
            as: "marca",
            foreignKey: "idmarca"
        })
        products.belongsTo(models.genres,{
            as: "genero",
            foreignKey: "idgenre"
        })
        products.hasMany(models.image,{
            as: "imagen",
            foreignKey: "idproduct"
        })
    }
        
    return products;

}