process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

module.exports = {
    
    // Other webpack configurations...
    node: {
      __dirname: false,
      __filename: false,
      global: true,
    },
  
    // Other webpack configurations...
  };
  
