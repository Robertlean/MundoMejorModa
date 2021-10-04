module.exports = (sequelize, dataTypes) => {
    let alias = "genres";
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
        },
    }

    let config = {
        tableName: "genres",
        timestamps: false,
        underscored: true
    }

    const genres = sequelize.define(alias, cols, config);
    genres.associate = models => {
        genres.hasMany(models.products,{
            as: "genero",
            foreignKey: "id"
        })
    }
    return genres;

}