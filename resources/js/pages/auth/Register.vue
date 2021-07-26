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
                        <button class="btn btn--primary">Đăng ký</button>
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
@import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
:root {
    --primary-color: #6d2fff;
    --black: #32353a;
    --white: #ffffff;
    --border-radius-main: 6px;
}

html {
    font-size: 62.5%;
}

body {
    font-family: "Poppins", sans-serif;
    margin: 0;
    padding: 0;
}

.btn {
    min-width: 142px;
    height: 34px;
    text-decoration: none;
    border: none;
    border-radius: 2px;
    font-size: 1.5rem;
    cursor: pointer;
    outline: none;
    color: var(--text-color);
    background: var(--white-color);
    display: inline-flex;
    justify-content: center;
    align-items: center;
    padding: 0 12px;
}

.login-wrapper {
    background: linear-gradient(to top, #6d2fff, #6f42c1);
    height: 100vh;
}
.auth-form {
    position: fixed;
    transform: translate(-50%, -50%);
    top: 50%;
    left: 50%;
    width: 500px;
    border-radius: 5px;
    background: #fff;
    overflow: hidden;
}
.auth-form__container {
    padding: 32px;
    padding-bottom: 22px;
}

.auth-form__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 6px;
}

.auth-form__heading {
    font-size: 2.2rem;
    font-weight: 500;
    color: var(--text-color);
}

.auth-form__switch-btn {
    font-size: 1.4rem;
    font-weight: 500;
    color: var(--primary-color);
    cursor: pointer;
}

.auth-form__input {
    width: 100%;
    height: 40px;
    margin-top: 16px;
    padding: 0 12px;
    font-size: 1.4rem;
    border-radius: 2px;
    border: 1px solid #d5d5d5;
    outline: none;
}

.auth-form__input:focus {
    border-color: #777;
}

.auth-form__aside {
    margin-top: 18px;
}

.auth-form__policy-text {
    font-size: 1.2rem;
    line-height: 1.8rem;
    text-align: center;
    padding: 0 10px;
}

.auth-form__policy-link {
    text-decoration: none;
    color: var(--primary-color);
}

.auth-form__controls {
    margin-top: 80px;
}

.btn.btn--primary {
    background: var(--primary-color);
    color: var(--white);
}

.auth-form__controls {
    display: flex;
    justify-content: flex-end;
}
.auth-form__controls-back {
    margin-right: 8px;
}

.auth-form__controls-back:hover {
    background-color: rgba(0, 0, 0, 0.05);
}

.auth-form-help {
    display: flex;
    justify-content: flex-end;
}

.auth-form__help-link {
    font-size: 1.4rem;
    text-decoration: none;
    color: #939393;
}

.auth-form-help-separate {
    display: block;
    width: 1px;
    height: 22px;
    background: #eaeaea;
    margin: 1px 16px 0;
}

.auth-form-help-fogot {
    color: var(--primary-color);
}
</style>
