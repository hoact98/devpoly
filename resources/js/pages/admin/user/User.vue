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
                <h3 class="card-title">DataTable with minimal features & hover style</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
               <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th style="text-align:center">ID</th>
                      <th style="text-align:center">Username</th>
                      <th style="text-align:center">Email</th>
                      <th style="text-align:center">Avatar</th>
                      <th style="text-align:center"><router-link :to="{name: 'add.user'}"><button type="button" class="btn btn-primary">Add New</button></router-link></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="user in users" :key="user.id">
                      <td style="text-align:center">{{user.id}}</td>
                      <td style="text-align:center">{{user.username}}</td>
                      <td style="text-align:center">{{user.email}}</td>
                      <td style="text-align:center"><img :src="'/'+user.avatar" alt="" width="60px"></td>
                      <td style="text-align:center">
                        <router-link :to="{name: 'edit.user', params: { id: user.id }}" class="btn btn-info">Edit
                        </router-link>
                        <button class="btn btn-danger" @click="deleteUser(user.id)">Delete</button>
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
import Breadcrumb from '../../../components/Breadcrumb.vue'
export default {
   data() {
    return {
     title: 'Danh sách người dùng',
    };
  },
    components: {
      Breadcrumb
    },
    computed: {
          users () {
              return this.$store.state.user.users;
          }
      },
      created: function () {
          this.$store.dispatch('user/fetch');
      },
      methods: {
          deleteUser: function (id) {
            let result = confirm('Are you sure');

            if (!result) {
                  return;
              }

              this.$store.dispatch('user/deleteUser', id);
          }
      }
}
</script>

<style>

</style>