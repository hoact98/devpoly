
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
                  <form @submit.prevent="addRole" @keydown="form.onKeydown($event)">
                    <div class="row">
                    <div class="col-5 col-sm-3">
                        <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="general-tab" data-toggle="pill" href="#general" role="tab" aria-controls="general" aria-selected="true">General</a>
                        <a class="nav-link" id="permission-tab" data-toggle="pill" href="#permission" role="tab" aria-controls="permission" aria-selected="false">Permission</a>
                        </div>
                    </div>
                    <div class="col-7 col-sm-9">
                        <div class="tab-content" id="vert-tabs-tabContent">
                        <div class="tab-pane text-left fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
                            <div class="form-group">
                                <label for="exampleInputName">Name:</label>
                                <input type="text" v-model="form.name" :class="{ 'is-invalid': form.errors.has('name') }"  class="form-control" id="exampleInputName" placeholder="Enter username">
                                <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                            </div>
                            <v-button :loading="form.busy">Submit</v-button>
                        </div>
                        <div class="tab-pane fade" id="permission" role="tabpanel" aria-labelledby="permission-tab">
                          <div class="form-check">
                            <input type="checkbox" v-model="selectAll" class="form-check-input" id="select_all">
                            <label class="form-check-label" for="select_all"><strong>Select all</strong></label>
                          </div>
                          <div class="form-check" v-for="permission in permissions" :key="permission.id">
                            <input class="form-check-input" type="checkbox" :id="'per_'+permission.id" :value="permission.id" v-model="form.permission_id">
                            <label class="form-check-label" :for="'per_'+permission.id">{{permission.name}}</label>
                          </div>
                           <div class="text-danger" v-if="form.errors.has('permission_id')" v-html="form.errors.get('permission_id')" />
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
      permission_id: []
    }),
    title: 'Add role',
  }),
   computed: {
        permissions () {
            return this.$store.state.permission.permissions;
        },
         selectAll: {
             get: function () {
                return this.permissions ? this.form.permission_id.length == this.permissions.length : false;
            },
            set: function (value) {
                var permission_id = [];

                if (value) {
                    this.permissions.forEach(function (permission) {
                        permission_id.push(permission.id);
                    });
                }

                this.form.permission_id = permission_id;
            }
        },
   },
  created: function () {
      this.$store.dispatch('permission/fetch');
  },
  methods: {
   
    async addRole () {
     await this.form.post(route('create.role'))
     .then(response => {
        if(response.data.status == 'success'){
          this.$router.push({ name: 'roles' })
            Swal.fire(
                'Created',
                'Role created Successfully',
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