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
            <router-link :to="{ name: 'login' }">
              <button class="login">Login</button>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script>
export default {};
</script>

<style></style>
