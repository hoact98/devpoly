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
                      <th style="text-align:center">ID</th>
                      <th style="text-align:center">Username</th>
                      <th style="text-align:center">Email</th>
                      <th style="text-align:center">Address</th>
                      <th style="text-align:center">Gender</th>
                      <th style="text-align:center">Role</th>
                      <th style="text-align:center">Phone</th>
                      <th style="text-align:center"><router-link to="/admin/add-memtor"><button type="button" class="btn btn-primary">Add New</button></router-link></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td style="text-align:center">183</td>
                      <td style="text-align:center">John Doe</td>
                      <td style="text-align:center">thai@gmail.com</td>
                      <td style="text-align:center">thai binh</td>
                      <td style="text-align:center">Male</td>
                      <td style="text-align:center">Active</td>
                      <td style="text-align:center">123456789</td>
                      <td style="text-align:center">
                        <button type="button" class="btn btn-info">Update</button>
                        <button type="button" class="btn btn-danger">Delele</button>
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
     title: 'Mentor',
    };
  },
    components: {
      Breadcrumb
    }
}
</script>

<style>

</style>