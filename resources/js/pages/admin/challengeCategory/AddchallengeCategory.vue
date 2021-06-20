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
                    <ckeditor v-model="form.description" :class="{ 'is-invalid': form.errors.has('description') }" name="description"></ckeditor>
                      <div class="text-danger" v-if="form.errors.has('description')" v-html="form.errors.get('description')" />
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
export default {
   data:() => ({
    form: new Form({
      name: '',
      description: '',
      image: ''
    }),
    title: 'Thêm Danh Mục Thử Thách',
  }),
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
    },
    }
}
</script>

<style>
</style>