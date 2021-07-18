<template>
  <div class="auth-form__container">
    <div class="auth-form__header">
      <h3 class="auth-form__heading">Đăng ký</h3>
      <router-link :to="{ name: 'login' }">
        <span class="auth-form__switch-btn">Đăng nhập</span></router-link
      >
    </div>
    <form
      @submit.prevent="authenticate"
      id="login-form"
      class="form"
      action=""
      method="post"
    >
      <div class="auth-form__form">
        <div class="auth-form__group">
          <input
            v-model="form.username"
            :class="{ 'is-invalid': form.errors.has('username') }"
            type="username"
            name="username"
            placeholder="username"
            id="username"
            class="auth-form__input"
          />
        </div>
        <div class="auth-form__group">
          <input
            v-model="form.email"
            :class="{ 'is-invalid': form.errors.has('email') }"
            type="email"
            name="email"
            placeholder="Email"
            id="email"
            class="auth-form__input"
          />
        </div>
        <div class="auth-form__group">
          <input
            v-model="form.password"
            :class="{ 'is-invalid': form.errors.has('password') }"
            type="password"
            name="password"
            placeholder="******"
            id="password"
            class="auth-form__input"
          />
        </div>
        <div class="auth-form__group">
          <input
            v-model="form.password_confirmation"
            :class="{ 'is-invalid': form.errors.has('password_confirmation') }"
            type="password"
            name="password_confirmation"
            placeholder="******"
            id="password_confirmation"
            class="auth-form__input"
          />
        </div>
      </div>

      <div class="auth-form__aside">
        <p class="auth-form__policy-text">
          Bằng việc đăng ký, bạn đã đồng ý với DevFpoly về
          <a href="#" class="auth-form__policy-link">Điều khoản dịch vụ</a> &
          <a href="#" class="auth-form__policy-link">Chính sách bảo mật</a>
        </p>
      </div>

      <div class="auth-form__controls">
            <router-link :to="{ name: 'home' }">
        <button class="btn auth-form__controls-back">Trở lại</button></router-link
      >

        <button type="submit" class="btn btn--primary">Đăng ký</button>
      </div>
    </form>
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
      password_confirmation: "",
    }),
  }),
  methods: {
    authenticate() {
      register(this.form)
        .then((res) => {
          this.$router.push({ name: "login" });
        })
        .catch((err) => {
          console.log(err);
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
