module.exports = (sequelize, dataTypes) => {
    let alias = "color";
    let cols = {
        id:  {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        abrev: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        },
        hexadecimal:{
            type: dataTypes.STRING,
            allowNull: false
        },
    }

    let config = {
        tableName: "color",
        timestamps: false,
        underscored: true,
        freezeTableName: true,
    }
    const color = sequelize.define(alias, cols, config);
    color.associate = models => {
        color.hasMany(models.products,{
            as: "colores",
            foreignKey: "id",
            where: "color"
        })
    }
    return color;

}