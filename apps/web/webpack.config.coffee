DEV  = process.env.NODE_ENV == 'development' or process.env.NODE_ENV == undefined
TEST = process.env.NODE_ENV == 'test'
PRO  = process.env.NODE_ENV == 'production'

path = require('path')
webpack = require('webpack')
assetsPlugin = require('assets-webpack-plugin')

fileName = if DEV || TEST then 'bundle_web' else 'bundle_web-[hash]'

devtool = if DEV then 'cheap-module-eval-source-map' else false

plugins = [
  new assetsPlugin
  new webpack.DefinePlugin
    'process.env':
      NODE_ENV: JSON.stringify(process.env.NODE_ENV || 'development')
]
plugins.push(new webpack.optimize.UglifyJsPlugin()) if PRO

module.exports =
  entry: './frontend/application.js'
  output:
    path: path.resolve(__dirname, '..', '..', 'public')
    filename: fileName + '.js'
  module:
    rules: [
      {
        test: /\.css$/
        use: [
          'style-loader'
          'css-loader'
        ]
      }
      {
        test: /\.woff(\?v=\d+\.\d+\.\d+)?$/
        use: [ 'url-loader?limit=10000&mimetype=application/font-woff' ]
      }
      {
        test: /\.woff2(\?v=\d+\.\d+\.\d+)?$/
        use: [ 'url-loader?limit=10000&mimetype=application/font-woff' ]
      }
      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/
        use: [ 'url-loader?limit=10000&mimetype=application/octet-stream' ]
      }
      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/
        use: [ 'file-loader' ]
      }
      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/
        use: [ 'url-loader?limit=10000&mimetype=image/svg+xml' ]
      }
      {
        test: /\.sass$/
        use: [
          'style-loader'
          'css-loader'
          'sass-loader'
        ]
      }
      {
        test: /\.coffee$/
        use: 'coffee-loader'
      }
      {
        test: /\.vue$/
        loader: 'vue-loader'
        options:
          loaders:
            js: [ 'coffee-loader' ]
            css: [
              'css-loader'
              'sass-loader'
            ]
      }
    ]
  plugins: plugins
  devtool: devtool
  resolve:
    alias:
      'vue$': 'vue/dist/vue.common.js'
