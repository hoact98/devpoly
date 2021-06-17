<template>
  <div class="content-wrapper">
     <breadcrumb :title='title'></breadcrumb>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">{{title}}</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form id="quickForm">
                <div class="card-body">
                    <div class="form-group">
                    <label for="exampleInputName">Username:</label>
                    <input type="text" class="form-control" id="exampleInputName" placeholder="Enter username">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email:</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputAddress">Address:</label>
                    <input type="email" class="form-control" id="exampleInputAdress" placeholder="Enter address">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPhone">Phone:</label>
                    <input type="email" class="form-control" id="exampleInputPhone" placeholder="Enter phone">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputGender">Gender</label>
                    <input type="email" class="form-control" id="exampleInputGender" placeholder="Enter gender">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputRole">Role</label>
                    <input type="email" class="form-control" id="exampleInputRole" placeholder="Enter role">
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
            </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6">

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</template>

<script>
export default {
   data() {
    return {
     title: 'Add mentor',
    };
  }
   
}
</script>

<style>

</style>