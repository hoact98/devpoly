
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
               <form @submit.prevent="updateUser"  @keydown="form.onKeydown($event)">
                <div class="card-body">
                    <div class="form-group">
                    <label for="exampleInputName">Username:</label>
                    <input type="text" v-model="data.user.username" :class="{ 'is-invalid': form.errors.has('username') }" class="form-control" name="username" placeholder="Enter username">
                      <div class="text-danger" v-if="form.errors.has('username')" v-html="form.errors.get('username')" />
                   </div>
                    <div class="form-group">
                    <label for="exampleInputName">Name:</label>
                    <input type="text" v-model="data.user.information.name" :class="{ 'is-invalid': form.errors.has('name') }" class="form-control" name="username" placeholder="Enter name">
                    <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email:</label>
                    <input type="email" v-model="data.user.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" name="email" placeholder="Enter email">
                      <div class="text-danger" v-if="form.errors.has('email')" v-html="form.errors.get('email')" />
                  
                  </div>
                  <div class="form-group">
                    <label for="">Avatar</label>
                    <input type="file" @change="upload($event)" :class="{ 'is-invalid': form.errors.has('avatar') }" class="form-control" name="avatar">
                      <div class="text-danger" v-if="form.errors.has('avatar')" v-html="form.errors.get('avatar')" />
                    <img :src="'/'+data.user.avatar" alt="" width="200">
                  </div>
                    <div class="form-group">
                      <label>Role</label>
                      <select class="form-control select2" v-model="data.user.role.role_id" :class="{ 'is-invalid': form.errors.has('role_id') }" name="role_id" style="width: 100%;">
                        <option v-for="role in data.roles" :key="role.id" :value="role.id" :selected="role.id == data.user.role.role_id">{{role.name}}</option>
                      </select>
                      <div class="text-danger" v-if="form.errors.has('role_id')" v-html="form.errors.get('role_id')" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputAddress">Address:</label>
                      <input type="text" class="form-control" v-model="data.user.information.address" :class="{ 'is-invalid': form.errors.has('address') }" id="exampleInputAdress" placeholder="Enter address">
                      <div class="text-danger" v-if="form.errors.has('address')" v-html="form.errors.get('address')" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPhone">Phone:</label>
                      <input type="text" class="form-control" :class="{ 'is-invalid': form.errors.has('phone') }" v-model="data.user.information.phone" id="exampleInputPhone" placeholder="Enter phone">
                      <div class="text-danger" v-if="form.errors.has('phone')" v-html="form.errors.get('phone')" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputGender">Gender:</label>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" :value="1" v-model="data.user.information.gender" id="male" name="radio1">
                        <label class="form-check-label" for="male">Male</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" :value="0" v-model="data.user.information.gender" id="female" name="radio1">
                        <label class="form-check-label" for="female">Female</label>
                      </div>
                      <div class="text-danger" v-if="form.errors.has('gender')" v-html="form.errors.get('gender')" />
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" v-model="data.user.is_active" id="customSwitch1">
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
import { mapGetters } from 'vuex'
export default {
     data:() => ({
    form: new Form({
      username: '',
      name: '',
      email: '',
      avatar: '',
      role_id: '',
      address: '',
      password:'',
      phone: '',
      gender: '',
      is_active: ''
    }),
    title: 'Cập nhật người dùng',
  }),
      computed: mapGetters({
        data: 'user/user'
  }),
   
   created()  {
       this.$store.dispatch('user/fetchOne',this.$route.params.id);
    },
    methods: {
        upload(event){
         this.form.avatar = event.target.files[0];
        },
      async  updateUser () {
         this.form.name = this.data.user.information.name
        this.form.username = this.data.user.username
        this.form.email = this.data.user.email
        this.form.role_id = this.data.user.role.role_id
        this.form.address = this.data.user.information.address
        this.form.phone = this.data.user.information.phone
        this.form.gender = this.data.user.information.gender
        this.form.is_active = this.data.user.is_active
      await this.form.post(route('update.user',this.$route.params.id))
      .then(response => {
        if(response.data.status == 'success'){
           this.$router.push({ name: 'users' })
            Swal.fire(
                'Update',
                'User update  Successfully',
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