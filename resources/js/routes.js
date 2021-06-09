import AdminLayout from './layouts/admin.vue';
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
    component: page("admin/dashboard/Dashboard.vue"),
    name: 'home'
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
      }, {
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
  }, {
    // not found handler
    path: '*',
    component: page("errors/404.vue"),
    
  }
]

export default routes