import auth from './middleware/auth';
import guest from './middleware/guest';

function page(path) {
    return () =>
        import (`./pages/${path}`).then(
            m => m.default || m
        );
}

// Routes
const routes = [
    {
        path: '/',
        meta:{layout: 'home'},
        component: page('public/Home.vue'),
        name:'home'
        
    },
    {
        path: '/home-dashboard',
        meta: {layout: 'home'},
        component: page('public/Dashboard.vue'),
        name: 'homeDashboard',
    },
    {
        path: '/login',
        meta: {layout: 'auth'},
        component: page('auth/Login.vue'),
        name: 'login',
    }, {
        path: '/register',
        meta: {layout: 'auth'},
        component: page('auth/Register.vue'),
        name: 'register',
    },
    {
        path: '/chat',
        alias: '',
        meta: {layout: 'main',middleware: auth},
        component: page("public/Chat/container.vue"),
        name: 'chat',
    },
    {
        path: '/overview/:slug',
        alias: '',
        meta: {layout: 'main'},
        component: page('public/Overview.vue'),
        name: 'overview',
    },
    {
        path: '/solution',
        alias: '',
        meta: {layout: 'main'},
        component: page('public/SolutionList.vue'),
        name: 'solution',
    },
    {
        path: '/get-detail-solution/:id',
        alias: '',
        meta: {layout: 'main'},
        component: page('public/SolutionDetail.vue'),
        name: 'showDetailSolution',
    },
    {
        path: '/feedback',
        alias: '',
        meta: {layout: 'main'},
        component: page('public/Feedback.vue'),
        name: 'feedback',
    },
    {
        path: '/chanllenge/:slug',
        alias: '',
        meta: {layout: 'main'},
        component: page('public/Chanllenge.vue'),
        name: 'chanllenge',
    },
    {
        path: "/payment",
        meta: {layout: 'main'},
        component: page("public/Payment.vue"),
        name: "payment"
    },
    {
        path: "/profile",
        meta: {layout: 'main', middleware: auth},
        component: page("public/Profile.vue"),
        name: "profile"
    },
    {
        path: '/admin',
        meta: {layout: 'admin', middleware: auth},
        component: page("admin/dashboard/Dashboard.vue"),
        name: 'dashboard',
    },
    {
        path: '/admin/users',
        meta: {layout: 'admin', middleware: auth},
        component: page("admin/user/User.vue"),
        name: 'users',
    },

    {
        path: '/admin/user-add',
        meta: {layout: 'admin', middleware: auth},
        component: page("admin/user/AddUser.vue"),
        name: 'add.user',
    },
    {
        path: '/admin/user-edit/:id',
        meta: {layout: 'admin',middleware: auth},

        component: page("admin/user/EditUser.vue"),
        name: 'edit.user',
    },
    {
        path: '/admin/roles',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/role/Role.vue"),
        name: 'roles',
    },
    {
        path: '/admin/role-add',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/role/AddRole.vue"),
        name: 'add.role',
    },
    {
        path: '/admin/role-edit/:id',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/role/EditRole.vue"),
        name: 'edit.role',
    },
    {
        path: '/admin/permissions',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/permission/Permission.vue"),
        name: 'permissions',
    },
    {
        path: '/admin/permission-add',
        meta: {layout: 'admin',middleware: auth},

        component: page("admin/permission/AddPermission.vue"),
        name: 'add.permission',
    },
    {
        path: '/admin/permission-edit/:id',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/permission/EditPermission.vue"),
        name: 'edit.permission',
    },
    {
        path: '/admin/challengecategories',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/challengeCategory/challengeCategory.vue"),
        name: 'challengecategories',
    },
    {
        path: '/admin/challengecategory-add',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/challengeCategory/AddchallengeCategory.vue"),
        name: 'add.challengecategory',
    },
    {
        path: '/admin/challengecategory-edit/:id',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/challengeCategory/EditchallengeCategory.vue"),
        name: 'edit.challengecategory',
    }, {
        path: '/admin/challenges',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/challenge/Challenge.vue"),
        name: 'challenges'
    },
    {
        path: '/admin/challenge-add',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/challenge/AddChallenge.vue"),
        name: 'add.challenge'
    },
    {
        path: '/admin/challenge-edit/:id',
        meta: {layout: 'admin',middleware: auth},
        component: page("admin/challenge/EditChallenge.vue"),
        name: 'edit.challenge'
    },
    {
        path: '/admin/mentors',
        meta: {layout: 'admin'},
        component: page('admin/mentor/Mentor.vue'),
        name: 'mentors'
    },
    {
        path: '/admin/mentor-add',
        meta: {layout: 'admin'},
        component: page('admin/mentor/AddMentor.vue'),
        name: 'add.mentor'
    },
    {
        path: '/admin/login',
        meta: {layout: 'admin-login', middleware: guest},
        component: page('auth/LoginAdmin.vue'),
        name: 'admin.login'
    },
    {
        // not found handler
        path: '*',
        component: page("errors/404.vue"),

    }
]


export default routes