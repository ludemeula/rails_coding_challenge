const path = require('path');

module.exports = {
  mode: 'development',
  entry: './app/javascript/packs/application.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'public', 'packs'),
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'],
      },
      // outras regras, como para JS, imagens, etc
    ],
  },
};
