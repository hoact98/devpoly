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
                 <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th style="text-align:center">ID</th>
                       <th style="text-align:center">Name</th>
                      <th style="text-align:center">Image</th>
                      <th style="text-align:center">Description</th>
                      <th style="text-align:center"><router-link to="/admin/add-category"><button type="button" class="btn btn-primary">Add New</button></router-link></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td style="text-align:center">183</td>
                      <td style="text-align:center">hihi</td>
                      <td style="text-align:center">image</td>
                      <td style="text-align:center">day la mot bai toan kho</td>
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
export default {
   data() {
    return {
     title: 'Categories',
    };
  }
}
</script>

<style>

</style>