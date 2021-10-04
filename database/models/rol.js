module.exports = (sequelize, dataTypes) => {
    let alias = "rol";
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
        tableName: "rol",
        timestamps: false,
        underscored: true
    }
    const rol = sequelize.define(alias, cols, config);
    rol.associate = models => {
        rol.belongsTo(models.users, {
            as: "rol",
            foreignKey: "rolId",
        })
    }
    return rol;
}