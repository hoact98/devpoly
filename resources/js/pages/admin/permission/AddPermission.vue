
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
              <div class="card-body">
                  <form @submit.prevent="addPermission" @keydown="form.onKeydown($event)">
                    <div class="row">
                    <div class="col-5 col-sm-3">
                        <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="general-tab" data-toggle="pill" href="#general" role="tab" aria-controls="general" aria-selected="true">General</a>
                        </div>
                    </div>
                    <div class="col-7 col-sm-9">
                        <div class="tab-content" id="vert-tabs-tabContent">
                        <div class="tab-pane text-left fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
                            <div class="form-group">
                                <label for="exampleInputName">Name:</label>
                                <input v-model="form.name" type="text" :class="{ 'is-invalid': form.errors.has('name') }" name="name" class="form-control" id="exampleInputName" placeholder="Enter name">
                                <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                            </div>
                             <v-button :loading="form.busy">Submit</v-button>
                        </div>
                      
                        </div>
                    </div>
                    </div>
              </form>
              </div>
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
    }),
    title: 'Add permission',
  }),
    methods: {
        async addPermission () {
        
      await this.form.post(route('create.permission'))
      .then(response => {
        if(response.data.status == 'success'){
          this.$router.push({ name: 'permissions' })
            Swal.fire(
                'Created',
                'Permission created Successfully',
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