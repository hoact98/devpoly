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
                    <label for="exampleInputName">Title:</label>
                    <input type="text" class="form-control" id="exampleInputName" placeholder="Enter username">
                    </div>
                   <div class="form-group">
                    <label for="exampleInputDes">Description:</label>
                    <ckeditor value="Hello, World!"></ckeditor>
                    </div>
                     <div class="form-group">
                    <label for="exampleInputLa">Language:</label>
                    <input type="text" class="form-control" id="exampleInputLa" placeholder="Enter username">
                    </div>
                     <div class="form-group">
                    <label for="exampleInputFa">Link-Figma:</label>
                    <input type="text" class="form-control" id="exampleInputFa" placeholder="Enter username">
                    </div>
                    <div class="form-group">
                    <label for="exampleInputLe">Level:</label>
                    <input type="text" class="form-control" id="exampleInputLe" placeholder="Enter username">
                    </div>
                   
                       <div class="form-group">
                    <label for="exampleInputCa">Category:</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Open this select menu</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                        </select>
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
import Breadcrumb from '../../../components/Breadcrumb.vue'
export default {
   data() {
    return {
     title: 'Edit Challenge',
    };
  },
    components: {
      Breadcrumb
    }
}
</script>

<style>

</style>