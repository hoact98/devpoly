require('./bootstrap');
import Vue from 'vue'
import VueRouter from 'vue-router';
import Vuex from 'vuex'
import store from './store/index';
import routes from './routes'
import App from './App.vue'
import CKEditor from "ckeditor4-vue";


Vue.use(VueRouter);
Vue.use(Vuex);
Vue.use(CKEditor);
// const router = new VueRouter({
//   router,
//   store,
//   mode: 'history'
// })

// window.events = new Vue();

/* eslint-disable no-new */

Vue.use(VueRouter)
const router = new VueRouter({
	routes,
	mode: 'history',
})

new Vue({
    el: '#app',
	router,
	store,
    render: h => h(App)
}).$mount('#app')