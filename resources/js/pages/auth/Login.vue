<template>
  <div id="login">
    <h3 class="text-center text-white pt-5">Login form</h3>
    <div class="container">
      <div id="login-row" class="row justify-content-center align-items-center">
        <div id="login-column" class="col-md-6">
          <div id="login-box" class="col-md-12">
            <form
              @submit.prevent="login"
              id="login-form"
              class="form"
              action=""
              method="post"
            >
              <h3 class="text-center text-info">Login</h3>
              <div class="form-group">
                <label for="username" class="text-info">Email:</label><br />
                <input
                  v-model="form.email"
                  :class="{ 'is-invalid': form.errors.has('email') }"
                  type="email"
                  name="email"
                  id="email"
                  class="form-control"
                />
                <div
                  class="text-danger"
                  v-if="form.errors.has('email')"
                  v-html="form.errors.get('email')"
                />
              </div>
              <div class="form-group">
                <label for="password" class="text-info">Password:</label><br />
                <input
                  v-model="form.password"
                  :class="{ 'is-invalid': form.errors.has('password') }"
                  type="text"
                  name="password"
                  id="password"
                  class="form-control"
                />
                <div
                  class="text-danger"
                  v-if="form.errors.has('password')"
                  v-html="form.errors.get('password')"
                />
              </div>
              <div class="form-group">
                <input
                  type="submit"
                  name="submit"
                  class="btn btn-info btn-md"
                  value="submit"
                />
              </div>
              <div id="register-link" class="text-right">
                <p href="#" class="text-info">Register here</p>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data: () => ({
    form: new Form({
      email: "",
      password: "",
    }),
  }),
  methods: {
    async login() {
      await this.form
        .post(route("login"))
        .then((response) => {
          if (response.data.status == "success") {
            console.log(response);
            //   this.$router.push({ name: 'challengecategories' })
          }
        })
        .catch(() => {});
    },
  },
};
</script>
