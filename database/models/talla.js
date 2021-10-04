module.exports = (sequelize, dataTypes) => {
    let alias = "talla";
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        name: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        }
    }
    let config = {
        tableName: "talla",
        timestamps: false,
        underscored: true,
        freezeTableName: true,
    }

    const talla = sequelize.define(alias, cols, config);
    talla.associate = models => {
        talla.hasMany(models.products,{
            as: "producto",
            foreignKey: "id"
        })
    }
    
    return talla;
}