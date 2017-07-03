//
// Library
//
$         = require('jquery');
_         = require('lodash');
Vue       = require('vue/dist/vue.js');
VueRouter = require('vue-router/dist/vue-router.common');
Vuex      = require('vuex');

require('normalize.css');
require('font-awesome/css/font-awesome.css');

//
// Settings
//
Vue.config.debug         = process.env.NODE_ENV == 'development';
Vue.config.devtools      = process.env.NODE_ENV == 'development';
Vue.config.productionTip = process.env.NODE_ENV == 'development';
Vue.config.silent        = process.env.NODE_ENV != 'development';

Vue.use(VueRouter);

//
// Utils
//

//
// View Models
//
