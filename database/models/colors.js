module.exports = (sequelize, dataTypes) => {
    let alias = "colors";
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
        hexa:{
            type: dataTypes.STRING,
            allowNull: false
        },
    }

    let config = {
        tableName: "colors",
        timestamps: false,
        underscored: true,
        freezeTableName: true,
    }
    const color = sequelize.define(alias, cols, config);
    color.associate = models => {
        color.hasMany(models.products,{
            as: "colores",
            foreignKey: "idColor",
            where: "color"
        })
    }
    return color;

}