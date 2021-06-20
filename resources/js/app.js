require('./bootstrap');
import Vue from 'vue'
import VueRouter from 'vue-router';
import Vuex from 'vuex'
import store from './store/index';
import routes from './routes'
import App from './App.vue'
import CKEditor from "ckeditor4-vue";

//Import Sweetalert2
import Swal from 'sweetalert2'
window.Swal = Swal
const Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    onOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
})
window.Toast = Toast

//Import v-from
import { Form } from 'vform'
window.Form = Form;

Vue.use(VueRouter);
Vue.use(Vuex);
Vue.use(CKEditor);
Vue.component('breadcrumb', require('./components/Breadcrumb.vue').default);
Vue.component('checkbox', require('./components/Checkbox.vue').default);
Vue.component('v-button', require('./components/Button.vue').default);

// const router = new VueRouter({
//   router,
//   store,
//   mode: 'history'
// })

// window.events = new Vue();

/* eslint-disable no-new */
Vue.config.productionTip = false
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