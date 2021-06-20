<template>
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
      <img src="/dist/img/AdminLTELogo.png" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <router-link :to="{name: 'home'}" class="d-block">Alexander Pierce</router-link>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
              <router-link :to="{name: 'dashboard'}" class="nav-link active"> 
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                  Dashboard
                </p>
            </router-link>
          </li>
          <li class="nav-item">
             <a href="javascript:;" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Quản trị người dùng
                <i class="fas fa-angle-left right"></i>
              </p>
             </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link :to="{name: 'users'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách người dùng</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link :to="{name: 'roles'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Role</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link :to="{name: 'permissions'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Permission</p>
                </router-link>
              </li>
            </ul>
          </li>
          <li class="nav-item">
             <a href="javascript:;" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Quản trị Memtor
                <i class="fas fa-angle-left right"></i>
              </p>
             </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link :to="{name:'mentors'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách Memtor</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link :to="{name:'add.mentor'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm Memtor</p>
                </router-link>
              </li>
            </ul>
          </li>
          <li class="nav-item">
             <a href="javascript:;" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Quản trị Danh Mục
                <i class="fas fa-angle-left right"></i>
              </p>
             </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link :to="{name: 'challengecategories'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách Danh Mục</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link :to="{name: 'add.challengecategory'}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm Danh Mục</p>
                </router-link>
              </li>
            </ul>
          </li>
          <li class="nav-item">
              <a href="javascript:;" class="nav-link">
                <i class="nav-icon fas fa-table"></i>
              <p>
                Quản trị Thử Thách
                <i class="fas fa-angle-left right"></i>
              </p>
              </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link :to="{name: 'challenges'}" class="nav-link" >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách Thử Thách</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link :to="{name: 'add.challenge'}" class="nav-link" >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm Thử Thách</p>
                </router-link>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

</template>

<script>

export default {
  name: 'sidebar'
}
</script>
