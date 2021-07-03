<template>
   <div class="content-wrapper">
    <breadcrumb :title='title'></breadcrumb>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">{{title}}</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                 <table  class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>name</th>
                      <th><router-link :to="{name:'add.permission'}"><button type="button" class="btn btn-primary">Add New</button></router-link></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(permission,index) in permissions" :key="index">
                      <td>{{index+1}}</td>
                      <td>{{permission.name}}</td>
                      <td>
                         <router-link :to="{name: 'edit.permission', params: { id: permission.id }}" class="btn btn-info">Edit
                        </router-link>
                        <button class="btn btn-danger" @click="deletePermission(permission.id)">Delete</button>
                      </td>
                    </tr>

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</template>

<script>
export default {
   data() {
    return {
     title: 'Permissions',
    };
  },
    computed: {
          permissions () {
              return this.$store.state.permission.permissions;
          }
      },
      created: function () {
          this.$store.dispatch('permission/fetch');
      },
      methods: {
          deletePermission: function (id) {
             Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {

              if (result.value) {
                //Send Request to server
                this.$store.dispatch('permission/deletePermission', id);
                }
            })
          }
      }
}
</script>

<style>

</style>
