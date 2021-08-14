
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
              <div class="card-body">
                 <form @submit.prevent="addMentor" @keydown="form.onKeydown($event)">
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
                                <label for="exampleInputName">Username:</label>
                                <input v-model="form.username" :class="{ 'is-invalid': form.errors.has('username') }" class="form-control" type="text" name="username">
                                <div class="text-danger" v-if="form.errors.has('username')" v-html="form.errors.get('username')" />
                              </div>
                              <div class="form-group">
                                <label for="exampleInputName">Name:</label>
                                <input v-model="form.name" :class="{ 'is-invalid': form.errors.has('name') }" class="form-control" type="text" name="name">
                                <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Email:</label>
                                <input v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" type="email" name="email">
                              <div class="text-danger" v-if="form.errors.has('email')" v-html="form.errors.get('email')" />
                              </div>
                            
                              <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input v-model="form.password" :class="{ 'is-invalid': form.errors.has('password') }" class="form-control" type="password" name="password">
                              <div class="text-danger" v-if="form.errors.has('password')" v-html="form.errors.get('password')" />
                              </div>
                              <div class="form-group">
                                <label for="">Avatar</label>
                                <input type="file" @change="upload($event)" :class="{ 'is-invalid': form.errors.has('avatar') }" class="form-control" name="avatar">
                                <div class="text-danger" v-if="form.errors.has('avatar')" v-html="form.errors.get('avatar')" />
                              </div>
                              <div class="form-group">
                                <label for="exampleInputAddress">Address:</label>
                                <input type="text" class="form-control" v-model="form.address" :class="{ 'is-invalid': form.errors.has('address') }" id="exampleInputAdress" placeholder="Enter address">
                                  <div class="text-danger" v-if="form.errors.has('address')" v-html="form.errors.get('address')" />
                              
                              </div>
                              <div class="form-group">
                                <label for="exampleInputPhone">Phone:</label>
                                <input type="text" class="form-control" v-model="form.phone" :class="{ 'is-invalid': form.errors.has('phone') }" id="exampleInputPhone" placeholder="Enter phone">
                                  <div class="text-danger" v-if="form.errors.has('phone')" v-html="form.errors.get('phone')" />
                              </div>
                              <div class="form-group">
                                <label for="exampleInputGender">Gender:</label>
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" :value="1" v-model="form.gender" id="male" name="gender" checked>
                                  <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" :value="0" v-model="form.gender" id="female" name="gender">
                                  <label class="form-check-label" for="female">Female</label>
                                </div>
                                  <div class="text-danger" v-if="form.errors.has('gender')" v-html="form.errors.get('gender')" />

                              </div>
                              <div class="form-group">
                                <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" v-model="form.is_active" id="customSwitch1">
                                <label class="custom-control-label" for="customSwitch1">Active</label>
                              </div>
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
      username: '',
      name: '',
      email: '',
      password: '',
      avatar: '',
      address: '',
      phone: '',
      gender: '',
      is_active: '',
      permission_id: []
    }),
    title: 'Thêm người dùng',
  }),
     computed: {
          roles () {
              return this.$store.state.role.roles;
          },
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
          this.$store.dispatch('role/fetch');
           this.$store.dispatch('permission/fetch');
      },
    methods: {
      upload(event){
        this.form.avatar = event.target.files[0];
        },
        async addMentor () {
      
     await this.form.post(route('create.mentor'))
     .then(response => {
        if(response.data.status == 'success'){
          this.$router.push({ name: 'mentors' })
            Swal.fire(
                'Created',
                'Mentor created Successfully',
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