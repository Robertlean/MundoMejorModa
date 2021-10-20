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
        color_id: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        categoryId: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        talleId: {
            type: dataTypes.INTEGER,
            allowNull: false,
        },
        marcaId: {
            type: dataTypes.INTEGER,
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
        }
    }

    let config = {
        tableName: "products",
        timestamps: false,
        underscored: true,
    }
    const products = sequelize.define(alias, cols, config);

    products.associate = models => {
        products.belongsTo(models.categories,{
            as: "categoria",
            foreignKey: "categoryId"
        })
        
        products.hasMany(models.images,{
            as: "imagen",
            foreignKey: "id"
        })

        products.belongsTo(models.colors, {
            as: "colores",
            foreignKey: "color_id"
        })

        products.belongsTo(models.marcs, {
            as: "marcas",
            foreignKey: "marcaId"
        })

        products.belongsTo(models.talla, {
            as: "talle",
            foreignKey: "talleId"
        })
    }
        
    return products;

}