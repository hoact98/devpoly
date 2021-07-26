require('./bootstrap');
import Vue from 'vue'
import VueRouter from 'vue-router';
import Vuex from 'vuex'
import store from './store/index';
import routes from './routes'
import App from './App.vue'
import CKEditor from "ckeditor4-vue";
import DataTable from 'laravel-vue-datatable';
import VueRouteMiddleware from 'vue-route-middleware';
import MainLayout from "./layouts/main.vue";
import HomeLayout from "./layouts/home.vue";
import AdminLayout from "./layouts/admin.vue";
import AdminLogin from "./layouts/AdminLogin.vue";
import AuthLayout from "./layouts/Auth.vue";
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

Vue.use(Vuex);
Vue.use(CKEditor);
Vue.use(DataTable);
Vue.component('breadcrumb', require('./components/Breadcrumb.vue').default);
Vue.component('checkbox', require('./components/Checkbox.vue').default);
Vue.component('v-button', require('./components/Button.vue').default);
Vue.component('admin-layout',AdminLayout);
Vue.component('home-layout',HomeLayout);
Vue.component('main-layout',MainLayout);
Vue.component('admin-login-layout',AdminLogin);
Vue.component('auth-layout',AuthLayout);
// const router = new VueRouter({
//   router,
//   store,
//   mode: 'history'
// })

window.events = new Vue();
/* eslint-disable no-new */
Vue.config.productionTip = false
Vue.use(VueRouter)
const router = new VueRouter({
        routes,
        mode: 'history',
    })
    router.beforeEach(VueRouteMiddleware());

    // initialize(store, router);
new Vue({
    el: '#app',
    router,
    store,
    render: h => h(App)
}).$mount('#app')