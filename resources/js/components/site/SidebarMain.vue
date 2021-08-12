<template>
  <aside class="sidebar hide-on-mobile">
    <div class="d-flex justify-content-between align-item-center">
      <div class="logo">
        <img class="hide-on-destop" src="/images/logo.png" width="150" />

        <img
          class="hide-on-mobile hide-on-destop-large"
          src="/images/logo-icon.png"
          width="40"
        />
        <!-- logo tablet -->
        <img
          class="hide-on-mobile hide-on-destop-large hide-on-destop"
          src="/images/logo.png"
          width="150"
        />
      </div>
      <div>
        <svg
          class="icon-hide-sidebar hide-on-tablet"
          focusable="false"
          viewBox="0 0 24 24"
          aria-hidden="true"
        >
          <path
            d="M18.3 5.71a.9959.9959 0 00-1.41 0L12 10.59 7.11 5.7a.9959.9959 0 00-1.41 0c-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"
          ></path>
        </svg>
      </div>
    </div>

    <nav class="nav">
      <ul>
        <li>
          <router-link :to="{ name: 'home' }">
            <i class="ti-arrow-left mr-2"></i>
            <span class="hide-on-destop">Home</span></router-link>

          <a href="" class="block-path">
            <img
              style="display: block"
              class="path-banner"
              src="/svg/banner.svg"
              alt="banner-home"
            />
            <div class="hide-on-destop">
              <span class="path-heading">Path</span><br />
              <span class="path-description">Reponsive Web Deverloper</span>
            </div>
          </a>
        </li>
        <li>
          <router-link :to="{ name: 'overview' }">
                <i class="ti-wallet mr-2"></i>
            <span class="hide-on-destop">Overview</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'solution' }">
                <i class="ti-light-bulb mr-2"></i>
            <span class="hide-on-destop">Solutions</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'feedback' }">
                <i class="ti-comments-smiley mr-2"></i>
            <span class="hide-on-destop">Feedback</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'chat' }">
                 <i class="ti-comments mr-2"></i>
            <span class="hide-on-destop">Trao đổi hỏi đáp</span></router-link
          >
        </li>

        <li>
          <router-link :to="{ name: 'premium' }">
                  <i class="ti-credit-card mr-2"></i>
            <span class="hide-on-destop">Premium</span></router-link
          >
        </li>
      </ul>
    </nav>
  </aside>
</template>

<script>
export default {};
</script>

<style></style>
