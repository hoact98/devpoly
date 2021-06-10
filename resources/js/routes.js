import AdminLayout from './layouts/admin.vue';
import MainLayout from './layouts/main.vue';
import LoginLayout from './layouts/login.vue';
function page(path) {
  return () =>
    import( `./pages/${path}`).then(
      m => m.default || m
    );
}

// Routes
const routes = [
  {
    path: '/',
    component: MainLayout,
    children: [
      {
        path: 'home',
        alias: '',
        component: page('public/Home.vue'),
        meta: {guest: true},
        name: 'home',
      }
    ]
  },
  {
    path: '/user',
    component: LoginLayout,
    children: [
      {
        path: 'login',
        component: page('admin/auth/Login.vue'),
        name: 'admin.login',
        meta: {guest: true},
      }
    ]
  },
  {
    path: '/admin',
    component: AdminLayout,
    children: [
      {
        path: 'dashboard',
        alias: '',
        component: page("admin/dashboard/Dashboard.vue"),
        name: 'dashboard',
      }, 
       {
        path: 'users',
        component: page("admin/user/User.vue"),
        name: 'users',
      },
      
      {
        path: 'user/add',
        component: page("admin/user/AddUser.vue"),
        name: 'add.user',
      },
      {
        path: 'user/edit/:id',
        component: page("admin/user/EditUser.vue"),
        name: 'edit.user',
      },
      {
        path: 'roles',
        component: page("admin/role/Role.vue"),
        name: 'roles',
      },
      {
        path: 'role/add',
        component: page("admin/role/AddRole.vue"),
        name: 'role/add',
      },
      {
        path: 'role/edit/:id',
        component: page("admin/role/EditRole.vue"),
        name: 'role/edit',
      },
      {
        path: 'permissions',
        component: page("admin/permission/Permission.vue"),
        name: 'permissions',
      },
      {
        path: 'permission/add',
        component: page("admin/permission/AddPermission.vue"),
        name: 'permission/add',
      },
      {
        path: 'permission/edit/:id',
        component: page("admin/permission/EditPermission.vue"),
        name: 'permission/edit',
      },
       {
        path: 'categories',
        component: page("admin/category/Category.vue"),
        name: 'categories',
      },
      {
        path: 'category/add',
        component: page("admin/category/AddCategory.vue"),
        name: 'add.category',
      },
      {
        path: 'category/edit/:id',
        component: page("admin/category/EditCategory.vue"),
        name: 'edit.category',
      },{
        path: 'challenges',
        component: page("admin/challenge/Challenge.vue"),
        name: 'challenges'
      },
      {
        path: 'challenge/add',
        component: page("admin/challenge/AddChallenge.vue"),
        name: 'add.challenge'
      },
      {
        path: 'challenge/edit/:id',
        component: page("admin/challenge/EditChallenge.vue"),
        name: 'edit.challenge'
      },
      {
        path: 'mentors',
        component: page('admin/mentor/Mentor.vue')
      },
      {
        path: 'mentor/add',
        component: page('admin/mentor/AddMentor.vue')
      },
    ]
  }, 
 
  {
    // not found handler
    path: '*',
    component: page("errors/404.vue"),
    
  }
]

export default routes