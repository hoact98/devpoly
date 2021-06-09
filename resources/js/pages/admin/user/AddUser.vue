
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
                <h3 class="card-title">Quick Example <small>jQuery Validation</small></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
               <form @submit.prevent="addUser" @keydown="form.onKeydown($event)">
                <div class="card-body">
                    <div class="form-group">
                    <label for="exampleInputName">Username:</label>
                   <input v-model="form.username" :class="{ 'is-invalid': form.errors.has('username') }" class="form-control" type="text" name="username">
          <!-- <has-error :form="form" field="username" /> -->
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email:</label>
                     <input v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" type="email" name="email">
                  </div>
                 
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input v-model="form.password" :class="{ 'is-invalid': form.errors.has('password') }" class="form-control" type="password" name="password">
                  </div>
                  <div class="form-group">
                    <label for="">Avatar</label>
                    <input type="file" @change="upload($event)" class="form-control" name="avatar">

                  </div>
                  <div class="form-group">
                  <label>Role</label>
                  <select class="form-control select2" style="width: 100%;">
                    <option value="">Role</option>
                    <option>Alaska</option>
                    <option>California</option>
                    <option>Delaware</option>
                    <option>Tennessee</option>
                    <option>Texas</option>
                    <option>Washington</option>
                  </select>
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
                     <label for="exampleInputGender">Gender:</label>
                      <div class="form-check">
                          <input class="form-check-input" type="radio" id="male" name="radio1">
                          <label class="form-check-label" for="male">Male</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" id="female" name="radio1" checked>
                          <label class="form-check-label" for="female">Female</label>
                        </div>
                    </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" :loading="form.busy" class="btn btn-primary">Submit</button>
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
import Form from 'vform'
import Breadcrumb from '../../../components/Breadcrumb.vue'
export default {
   data:() => ({
    form: new Form({
      username: '',
      email: '',
       password: '',
        file: ''
    }),
    title: 'Thêm người dùng',
  }),
    components: {
      Breadcrumb
    },
    methods: {
      upload(event){
        this.form.file = event.target.files[0];
        },
        async addUser () {
          let myFormData = new FormData();
         myFormData.append('avatar', this.form.file);
         myFormData.append('username', this.form.username);
         myFormData.append('email', this.form.email);
         myFormData.append('id', this.form.id);
      // Submit the form.
      await this.$store.dispatch('user/addUser',myFormData)

      this.$router.push({ name: 'users' })
    },
    }
}
</script>

<style>

</style>