<template>
    <div class="login-wrapper">
        <div class="auth-form">
            <div class="auth-form__container">
                <div class="auth-form__header">
                    <h3 class="auth-form__heading">Đăng ký</h3>
                    <span class="auth-form__switch-btn"
                        ><router-link :to="{ name: 'login' }"
                            >Đăng nhập</router-link
                        ></span
                    >
                </div>

                <form
                    @submit.prevent="register"
                    @keydown="form.onKeydown($event)"
                >
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input
                                v-model="form.username"
                                :class="{
                                    'is-invalid': form.errors.has('username')
                                }"
                                type="username"
                                name="username"
                                placeholder="username"
                                class="auth-form__input"
                            />
                        </div>
                        <div class="auth-form__group">
                            <input
                                v-model="form.email"
                                :class="{
                                    'is-invalid': form.errors.has('email')
                                }"
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
                                :class="{
                                    'is-invalid': form.errors.has('password')
                                }"
                                type="password"
                                name="password"
                                placeholder="******"
                                class="auth-form__input"
                            />
                        </div>
                        <div class="auth-form__group">
                            <input
                                v-model="form.password_confirmation"
                                :class="{
                                    'is-invalid': form.errors.has(
                                        'password_confirmation'
                                    )
                                }"
                                type="password"
                                name="password_confirmation"
                                placeholder="Mật khẩu"
                                id="password_confirmation"
                                class="auth-form__input"
                            />
                        </div>
                    </div>

                    <div class="auth-form__aside">
                        <p class="auth-form__policy-text">
                            Bằng việc đăng ký, bạn đã đồng ý với DevFpoly về
                            <a href="#" class="auth-form__policy-link"
                                >Điều khoản dịch vụ</a
                            >
                            &
                            <a href="#" class="auth-form__policy-link"
                                >Chính sách bảo mật</a
                            >
                        </p>
                    </div>

                    <div class="auth-form__controls">
                        <button class="btn auth-form__controls-back">
                            Trở lại
                        </button>
                        <button class="btn btn-primary">Đăng ký</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data: () => ({
        form: new Form({
            username: "",
            email: "",
            password: "",
            password_confirmation: ""
        })
    }),
    methods: {
        authenticate() {
            register(this.form)
                .then(res => {
                    this.$router.push({ name: "login" });
                })
                .catch(err => {
                    console.log(err);
                    //   this.showAlert(this.authError, "error");
                });
        }
    },
    mputed: {
        authError() {
            return this.$store.getters.AUTH_ERROR;
        }
    }
};
</script>
<style scoped>
  @import "../../../sass/auth.css";
</style>
