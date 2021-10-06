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
    const marcs = sequelize.define(alias, cols, config);
    marcs.associate = models => {
        marcs.hasMany(models.products,{
            as: "productos",
            foreignKey: "idmarca"
        })
    }
        
    return marcs;

}