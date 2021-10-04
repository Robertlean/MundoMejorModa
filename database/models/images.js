module.exports = (sequelize, dataTypes) => {
    let alias = "image";
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
            unique: true
        },
        idProduct: {
            type: dataTypes.INTEGER,
            allowNull: false,
        }
    }

    let config = {
        tableName: "images",
        timestamps: false,
        underscored: true
    }
    const image = sequelize.define(alias, cols, config);
    image.associate = models => {
        image.belongsTo(models.products, {
            as: "imagen",
            foreignKey: "idProduct"
        })
    }
        
    return image;

}