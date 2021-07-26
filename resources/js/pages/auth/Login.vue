<template>
    <div class="login-wrapper">
        <!-- login form -->
        <div class="auth-form">
            <div class="auth-form__container">
                <div class="auth-form__header">
                    <h3 class="auth-form__heading">Đăng nhập</h3>
                    <span class="auth-form__switch-btn"
                        ><router-link :to="{ name: 'register' }"
                            >Đăng ký</router-link
                        ></span
                    >
                </div>

                <form
                    id="login-form"
                    @submit.prevent="login"
                    @keydown="form.onKeydown($event)"
                >
                    <div class="auth-form__form">
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
                                id="password"
                                class="auth-form__input"
                            />
                        </div>
                    </div>

                    <div class="auth-form__aside">
                        <div class="auth-form-help">
                            <a
                                href="#"
                                class="auth-form__help-link auth-form-help-fogot"
                                >Quên mật khẩu</a
                            >
                            <span class="auth-form-help-separate"> </span>
                            <a href="#" class="auth-form__help-link"
                                >Cần trợ giúp?</a
                            >
                        </div>
                    </div>

                    <div class="auth-form__controls">
                        <button class="btn auth-form__controls-back">
                            Trở lại
                        </button>
                        <button class="btn btn-primary">Đăng nhập</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- end login -->
    </div>
</template>
<script>
export default {
    data: () => ({
        form: new Form({
            email: "",
            password: ""
        })
    }),
    methods: {
        authenticate() {
            this.$store.dispatch("auth/LOGIN");
            login(this.form)
                .then(res => {
                    this.$store.commit("auth/LOGIN_SUCCESS", { res });
                    this.$router.push({ name: "home" });
                })
                .catch(err => {
                    this.$store.commit("auth/LOGIN_FAILED", { err });
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
