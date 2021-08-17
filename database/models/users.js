module.exports = (sequelize, dataTypes) => {

    let alias = "users";
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
        telefono: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        },
        calle: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        },
        mail: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        },
        password: {
            type: dataTypes.STRING,
            allowNull: false
        },
        comuna: {
            type: dataTypes.STRING,
            allowNull: true
        },
        rol: {
            type: dataTypes.STRING,
            allowNull: true
        }

    }

    let config = {
        tableName: "users",
        timestamps: false,
        underscored: true
    }

    const users = sequelize.define(alias, cols, config);

    return users;
}