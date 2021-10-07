require('dotenv').config()
module.exports={  
    "development": {
      "username": process.env.DB_USERNAME,
      "password": process.env.DB_PASSWORD,
      "database": "mundomejormodaDB",
      "host": "localhost",
      "dialect": "postgres",
      "port":5432
    },
    "test": {
      "username": "postgres",
      "password": "PGADMIN",
      "database": "mundomejormodaDB",
      "host": "localhost",
      "dialect": "postgres",
      "port": 5432
    },
    "production": {
      "username": "postgres",
      "password": null,
      "database": "mundomejormodda",
      "host": "127.0.0.1:52999",
      "dialect": "postgres"
    }
  }
