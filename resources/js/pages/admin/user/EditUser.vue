
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
                <form @submit.prevent="updateUser"  @keydown="form.onKeydown($event)">
                  <div class="row">
                    <div class="col-5 col-sm-3">
                        <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                          <a class="nav-link active" id="general-tab" data-toggle="pill" href="#general" role="tab" aria-controls="general" aria-selected="true">General</a>
                          <a class="nav-link" id="permission-tab" data-toggle="pill" href="#permission" role="tab" aria-controls="permission" aria-selected="false">Permission</a>
                          <a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">Password</a>
                        </div>

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
                    <div class="col-7 col-sm-9">
                      <div class="tab-content" id="vert-tabs-tabContent">
                          <div class="tab-pane text-left fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
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
                                <v-button :loading="form.busy">Submit</v-button>
                          </div>
                           <div class="tab-pane fade" id="permission" role="tabpanel" aria-labelledby="permission-tab">
                            <input type="hidden" v-model="permission_id">
                            <div class="form-check" v-for="permission in data.permissions" :key="permission.id">
                              <input class="form-check-input" type="checkbox" :id="'per_'+permission.id" :value="permission.id" v-model="form.permission_id">
                              <label class="form-check-label" :for="'per_'+permission.id">{{permission.name}}</label>
                            </div>
                            <div class="text-danger" v-if="form.errors.has('permission_id')" v-html="form.errors.get('permission_id')" />
                            <v-button :loading="form.busy">Submit</v-button>
                      </div>
                      <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                        <form @submit.prevent="updatePassword"  @keydown="form.onKeydown($event)">
                            <div class="form-group">
                                <label for="exampleInputName">Mật khẩu hiện tại:</label>
                                <input type="password" v-model="formPass.password" :class="{ 'is-invalid': formPass.errors.has('password') }" class="form-control" name="username" placeholder="Enter name">
                                <div class="text-danger" v-if="formPass.errors.has('password')" v-html="formPass.errors.get('password')" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName">Mật khẩu mới:</label>
                                <input type="password" v-model="formPass.new_password" :class="{ 'is-invalid': formPass.errors.has('new_password') }" class="form-control" name="username" placeholder="Enter name">
                                <div class="text-danger" v-if="formPass.errors.has('new_password')" v-html="formPass.errors.get('new_password')" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName">Xác nhận mật khẩu:</label>
                                <input type="password" v-model="formPass.new_confirm_password" :class="{ 'is-invalid': formPass.errors.has('new_confirm_password') }" class="form-control" name="username" placeholder="Enter name">
                                <div class="text-danger" v-if="formPass.errors.has('new_confirm_password')" v-html="formPass.errors.get('new_confirm_password')" />
                            </div>
                            <v-button :loading="formPass.busy">Submit</v-button>
                        </form>
                      </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
                </form>
            <!-- /.card -->
            </div>
          <!--/.col (left) -->
        </div>
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</template>

<script>
export default {
  data: () => ({
    form: new Form({
      username: "",
      name: "",
      email: "",
      avatar: "",
      role_id: "",
      address: "",
      password: "",
      phone: "",
      gender: "",
      is_active: "",
      permission_id: [],
    }),
    formPass: new Form({
      password: "",
      new_password: "",
      new_confirm_password: "",
    }),
    title: "Cập nhật người dùng",
  }),

  computed: {
    data() {
      return this.$store.state.user.user;
    },

    permission_id() {
      var permission_id = [];
      this.data.user.has_permission.forEach(function (permission) {
        permission_id.push(permission.permission_id);
      });
      this.form.permission_id = permission_id;
    },
  },

  components: {
    Breadcrumb,
  },
  computed: mapGetters({
    data: "user/user",
  }),

  created() {
    this.$store.dispatch("user/fetchOne", this.$route.params.id);
  },
  methods: {
    upload(event) {
      this.form.avatar = event.target.files[0];
    },
    async updateUser() {
      this.form.name = this.data.user.information.name;
      this.form.username = this.data.user.username;
      this.form.email = this.data.user.email;
      this.form.role_id = this.data.user.role.role_id;
      this.form.address = this.data.user.information.address;
      this.form.phone = this.data.user.information.phone;
      this.form.gender = this.data.user.information.gender;
      this.form.is_active = this.data.user.is_active;
      await this.form
        .post(route("update.user", this.$route.params.id))
        .then((response) => {
          if (response.data.status == "success") {
            this.$router.push({ name: "users" });
            Swal.fire("Update", "User update  Successfully", "success");
          }
        })
        .catch(() => {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
          });
        });
    },
    updatePassword() {
      this.formPass
        .post(route("change.password", this.$route.params.id))
        .then((response) => {
          if (response.data.status == "success") {
            this.$router.push({ name: "users" });
            Swal.fire("Update", "Password update  Successfully", "success");
          }
        })
        .catch(() => {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
          });
        });
    },
  },
};
</script>

<style>
</style>
