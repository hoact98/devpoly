
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
               <form @submit.prevent="addUser" @keydown="form.onKeydown($event)">
                <div class="card-body">
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
                      <label>Role</label>
                      <select class="form-control select2" v-model="form.role_id" :class="{ 'is-invalid': form.errors.has('role_id') }" name="role_id" style="width: 100%;">
                        <option value="">Role</option>
                        <option v-for="role in roles" :key="role.id" :value="role.id">{{role.name}}</option>
                      </select>
                        <div class="text-danger" v-if="form.errors.has('role_id')" v-html="form.errors.get('role_id')" />
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
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                   <v-button :loading="form.busy">Submit</v-button>
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
      username: '',
      name: '',
      email: '',
      password: '',
      avatar: '',
      role_id: '',
      address: '',
      phone: '',
      gender: '',
      is_active: ''
    }),
    title: 'Thêm người dùng',
  }),
     computed: {
          roles () {
              return this.$store.state.role.roles;
          }
      },
      created: function () {
          this.$store.dispatch('role/fetch');
      },
    methods: {
      upload(event){
        this.form.avatar = event.target.files[0];
        },
        async addUser () {
      
     await this.form.post(route('create.user'))
     .then(response => {
        if(response.data.status == 'success'){
          this.$router.push({ name: 'users' })
            Swal.fire(
                'Created',
                'User created Successfully',
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