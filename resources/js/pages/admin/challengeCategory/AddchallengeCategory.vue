<<<<<<< HEAD
=======

>>>>>>> 9b7d408 (admin new)
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
                <form @submit.prevent="addChallengeCategory" @keydown="form.onKeydown($event)">
                  <div class="card-body">
                    <div class="form-group">
                    <label>Name:</label>
                         <input v-model="form.name" :class="{ 'is-invalid': form.errors.has('name') }" class="form-control" type="text" name="name">
                      <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                    </div>
                   <div class="form-group">
                    <label >Description:</label>
<<<<<<< HEAD
                    <ckeditor v-model="form.description" :class="{ 'is-invalid': form.errors.has('description') }" name="description"></ckeditor>
                      <div class="text-danger" v-if="form.errors.has('description')" v-html="form.errors.get('description')" />
=======
                    <ckeditor  v-model="form.description" :class="{ 'is-invalid': form.errors.has('description') }" name="description" value="Hello, World!"></ckeditor>
>>>>>>> 9b7d408 (admin new)
                    </div>

                    <div class="form-group">
                         <label for="">Image</label>
                       <input type="file" @change="upload($event)" :class="{ 'is-invalid': form.errors.has('image') }" class="form-control" name="image">
                       <div class="text-danger" v-if="form.errors.has('image')" v-html="form.errors.get('image')" />
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
<<<<<<< HEAD
=======
import Breadcrumb from '../../../components/Breadcrumb.vue'

>>>>>>> 9b7d408 (admin new)
export default {
   data:() => ({
    form: new Form({
      name: '',
      description: '',
      image: ''
    }),
    title: 'Thêm Danh Mục Thử Thách',
  }),
<<<<<<< HEAD
=======
    components: {
      Breadcrumb
    },
>>>>>>> 9b7d408 (admin new)
     computed: {
      },
    methods: {
      upload(event){
        this.form.image = event.target.files[0];
        },
        async addChallengeCategory () {
     await this.form.post(route('create.challengecategory'))
     .then(response => {
        if(response.data.status == 'success'){
          this.$router.push({ name: 'challengecategories' })
            Swal.fire(
                'Created',
                'Challenge Category created Successfully',
                'success'
            );
        }
    }).catch(()=>{
      Swal.fire({
              icon: 'error',
              title: 'Oops...',
              text: 'Something went wrong!',
            })
    });
<<<<<<< HEAD
=======


>>>>>>> 9b7d408 (admin new)
    },
    }
}
</script>

<style>
<<<<<<< HEAD
</style>
=======

</style>
>>>>>>> 9b7d408 (admin new)
