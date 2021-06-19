<template>
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Admin</b> devchallange</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

        <form @submit.prevent="login" @keydown="form.onKeydown($event)">
          <div class="input-group">
            <input type="email" v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" placeholder="Email">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
            <div class="text-danger" v-if="form.errors.has('email')" v-html="form.errors.get('email')" />
          <div class="input-group mt-3">
            <input type="password" v-model="form.password" :class="{ 'is-invalid': form.errors.has('password') }" class="form-control" placeholder="Password">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
            <div class="text-danger" v-if="form.errors.has('password')" v-html="form.errors.get('password')" />
          <div class="row mt-3">
            <div class="col-8">
              <div class="icheck-primary">
                <input type="checkbox" v-model="form.remember" id="remember">
                <label for="remember">
                  Remember Me
                </label>
              </div>
            </div>
            <!-- /.col -->
            <div class="col-4">
              <button type="submit" class="btn btn-primary btn-block">Sign In</button>
            </div>
            <!-- /.col -->
          </div>
        </form>

      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="#">I forgot my password</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
</template>
<script>
export default {
   data:() => ({
    form: new Form({
      email: '',
      password: '',
      remember: ''
    }),
  }),
    methods: {
      async login () {
          await this.form.post(route('admin.login'))
          .then(response => {
            if(response.data.status == 'success'){
              this.$router.push({ name: 'dashboard' })
            }
        });
      },
    }
}
</script>