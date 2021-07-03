<template>
  <div id="login">
    <h3 class="text-center text-white pt-5">Register form</h3>
    <div class="container">
      <div id="login-row" class="row justify-content-center align-items-center">
        <div id="login-column" class="col-md-6">
          <div id="login-box" class="col-md-12">
            <form
              @submit.prevent="authenticate"
              id="login-form"
              class="form"
              action=""
              method="post"
            >
              <h3 class="text-center text-info">Register</h3>
              <div class="form-group">
                <label for="username" class="text-info">Username:</label><br />
                <input
                  v-model="form.username"
                  :class="{ 'is-invalid': form.errors.has('username') }"
                  type="username"
                  name="username"
                  placeholder="username"
                  id="username"
                  class="form-control"
                />
                <div
                  class="text-danger"
                  v-if="form.errors.has('username')"
                  v-html="form.errors.get('username')"
                />
              </div>
              <div class="form-group">
                <label for="email" class="text-info">Email:</label><br />
                <input
                  v-model="form.email"
                  :class="{ 'is-invalid': form.errors.has('email') }"
                  type="email"
                  name="email"
                  placeholder="Email"
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
                  type="password"
                  name="password"
                  placeholder="******"
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
                <label for="password" class="text-info">Password Confirmation:</label><br />
                <input
                  v-model="form.password_confirmation"
                  :class="{ 'is-invalid': form.errors.has('password_confirmation') }"
                  type="password"
                  name="password_confirmation"
                  placeholder="******"
                  id="password_confirmation"
                  class="form-control"
                />
                <div
                  class="text-danger"
                  v-if="form.errors.has('password_confirmation')"
                  v-html="form.errors.get('password_confirmation')"
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
import { register } from "../../helpers/auth";
export default {
  data: () => ({
    form: new Form({
      username: "",
      email: "",
      password: "",
      password_confirmation :""
    }),
  }),
  methods: {
    authenticate() {
      register(this.form)
        .then((res) => {
          this.$router.push({ name: "login" });
        })
        .catch((err) => {
            console.log(err);;
          //   this.showAlert(this.authError, "error");
        });
    },
  },
  mputed: {
    authError() {
      return this.$store.getters.AUTH_ERROR;
    },
  },
};
</script>
