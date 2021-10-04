module.exports = (sequelize, dataTypes) => {
    let alias = "marcs";
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
        image: {
            type:dataTypes.STRING,
            
        }
    }

    let config = {
        tableName: "marcs",
        timestamps: false,
        underscored: true
    }
    const marca = sequelize.define(alias, cols, config);
    marca.associate = models => {
        marca.hasMany(models.marcs,{
            as: "marca",
            foreignKey: "idMarca"
        })
    }
        
    return marca;

}