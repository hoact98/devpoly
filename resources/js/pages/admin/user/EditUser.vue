
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
               <form @submit.prevent="updateUser">
                <div class="card-body">
                    <div class="form-group">
                    <label for="exampleInputName">Username:</label>
                    <input type="text"  v-model="user.username" class="form-control" name="username" placeholder="Enter username">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email:</label>
                    <input type="email" v-model="user.email" class="form-control" name="email" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="">Avatar</label>
                    <input type="file" @change="upload($event)" class="form-control" name="avatar">
                    <img :src="'/'+user.avatar" alt="">

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
import { mapGetters } from 'vuex'
export default {
   data() {
    return {
     title: 'Cập nhật người dùng',
     file: ''
    };
  },
    components: {
      Breadcrumb
    },
      computed: mapGetters({
      user: 'user/user'
  }),
   
   created()  {
       this.$store.dispatch('user/fetchOne',this.$route.params.id);
    },
    methods: {
        upload(event){
        this.file = event.target.files[0];
        },
        updateUser () {
        let myFormData = new FormData();
         myFormData.append('avatar', this.file);
         myFormData.append('username', this.user.username);
         myFormData.append('email', this.user.email);
         myFormData.append('id', this.user.id);
        // Submit the form.
       
        this.$store.dispatch('user/editUser',myFormData);

        // Redirect home.
        this.$router.push({ name: 'users' })
        },
      
    }
}
</script>

<style>

</style>