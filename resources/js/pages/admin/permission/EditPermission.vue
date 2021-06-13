
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
                  <form @submit.prevent="updatePermission" @keydown="form.onKeydown($event)">
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
                                <input v-model="permission.name" :class="{ 'is-invalid': form.errors.has('name') }" type="text" name="name" class="form-control" id="exampleInputName" placeholder="Enter name">
                            <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                            </div>
                            <button type="submit" :disabled="form.busy" class="btn btn-primary">Submit</button>
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
import Breadcrumb from '../../../components/Breadcrumb.vue'
import { mapGetters } from 'vuex'

export default {
   data:() => ({
    form: new Form({
      name: '',
      guard_name: ''
    }),
    title: 'Edit permission'
  }),
    components: {
      Breadcrumb
    },
    computed: mapGetters({
      permission: 'permission/permission'
  }),
      created () {
        this.$store.dispatch('permission/fetchOne',this.$route.params.id);
       
      },
    methods: {
      
        async updatePermission () {
        this.form.name = this.permission.name
        this.form.guard_name = this.permission.guard_name
      await this.form.post(route('update.permission',this.$route.params.id))
      .then(response => {
        if(response.data.status == 'success'){
            this.$router.push({ name: 'permissions' })
            Swal.fire(
                'Update',
                'Permission update  Successfully',
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