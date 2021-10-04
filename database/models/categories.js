module.exports = (sequelize, dataTypes) => {
    let alias = "categories";
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
        }
    }

    let config = {
        tableName: "categories",
        timestamps: false,
        underscored: true
    }
    const categorie = sequelize.define(alias, cols, config);
    categorie.associate = models => {
        categorie.hasMany(models.products,{
            as: "categoria",
            foreignKey: "id"
        })
    }
        
    return categorie;

}