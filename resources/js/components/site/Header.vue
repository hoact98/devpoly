<template>
  <header>
    <div class="container">
      <div class="row">
        <div class="col-3 col-sm-0 align-item-center column-mobile hide-on-tablet">
          <svg
            class="icon-mobile"
            focusable="false"
            viewBox="0 0 24 24"
            aria-hidden="true"
          >
            <path
              d="M4 18h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1s.45 1 1 1zm0-5h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1s.45 1 1 1zM3 7c0 .55.45 1 1 1h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1z"
            ></path>
          </svg>
        </div>
        <div class="col-9 col-sm-12 login-and-setting">
          <div class="col-9 col-sm-12 login-and-setting">
            <router-link :to="{ name: 'profile' }" v-if="inforUser != null">
              <div class="info">
                <img
                  v-if="inforUser != null"
                  :src="'/' + inforUser.avatar"
                  alt=""
                  class="img-user"
                  height="30"
                  width="30"
                />
                <h2
                  v-if="inforUser != null"
                  style="margin-left: 1rem; text-decoration: none; color: dodgerblue"
                >
                  Xin chào {{ inforUser.username }}
                </h2>
              </div>
            </router-link>
            <router-link :to="{ name: 'login' }" v-else>
              <button class="login">Đăng nhập</button>
            </router-link>
            <button
              @click="isLoggedIn"
              v-if="inforUser != null"
              style="margin-left: 1rem; text-decoration: none; color: black"
            >
              Đăng xuất
            </button>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  computed: {
    inforUser() {
      return this.$store.state.auth.infoUser;
    },
  },
  methods: {
    isLoggedIn() {
      console.log(this.$store.state.auth.isLoggedIn);
      return this.$store.state.auth.isLoggedIn;
    },
  },
};
</script>

<style scoped>
.login {
  font-size: 18px;
}
.img-user {
  max-width: 70px;
}
.info {
  display: flex;
  justify-content: flex-end;
  padding: 1rem;
}
</style>
