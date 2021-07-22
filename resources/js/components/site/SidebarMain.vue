<template>
  <aside class="sidebar hide-on-mobile">
    <div class="d-flex justify-content-between align-item-center">
      <div class="logo">
        <img class="hide-on-destop" src="images/logo.png" width="150" />

        <img
          class="hide-on-mobile hide-on-destop-large"
          src="images/logo-icon.png"
          width="40"
        />
        <!-- logo tablet -->
        <img
          class="hide-on-mobile hide-on-destop-large hide-on-destop"
          src="images/logo.png"
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
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M19 11H7.83l4.88-4.88c.39-.39.39-1.03 0-1.42a.9959.9959 0 00-1.41 0l-6.59 6.59c-.39.39-.39 1.02 0 1.41l6.59 6.59c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L7.83 13H19c.55 0 1-.45 1-1s-.45-1-1-1z"
              ></path>
            </svg>
            <span class="hide-on-destop">Home</span></router-link
          >

          <a href="" class="block-path">
            <img
              style="display: block"
              class="path-banner"
              src="svg/banner.svg"
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
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M2.53 19.65l1.34.56v-9.03l-2.43 5.86c-.41 1.02.08 2.19 1.09 2.61zm19.5-3.7L17.07 3.98c-.31-.75-1.04-1.21-1.81-1.23-.26 0-.53.04-.79.15L7.1 5.95c-.75.31-1.21 1.03-1.23 1.8-.01.27.04.54.15.8l4.96 11.97c.31.76 1.05 1.22 1.83 1.23.26 0 .52-.05.77-.15l7.36-3.05c1.02-.42 1.51-1.59 1.09-2.6zM7.88 8.75c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1zm-2 11c0 1.1.9 2 2 2h1.45l-3.45-8.34v6.34z"
              ></path>
            </svg>
            <span class="hide-on-destop">Overview</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'solution' }">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M12 3c-.46 0-.93.04-1.4.14-2.76.53-4.96 2.76-5.48 5.52-.48 2.61.48 5.01 2.22 6.56.43.38.66.91.66 1.47V19c0 1.1.9 2 2 2h.28c.35.6.98 1 1.72 1s1.38-.4 1.72-1H14c1.1 0 2-.9 2-2v-2.31c0-.55.22-1.09.64-1.46C18.09 13.95 19 12.08 19 10c0-3.87-3.13-7-7-7zm.5 11h-1v-2.59L9.67 9.59l.71-.71L12 10.5l1.62-1.62.71.71-1.83 1.83V14zm1 5c-.01 0-.02-.01-.03-.01V19h-2.94v-.01c-.01 0-.02.01-.03.01-.28 0-.5-.22-.5-.5s.22-.5.5-.5c.01 0 .02.01.03.01V18h2.94v.01c.01 0 .02-.01.03-.01.28 0 .5.22.5.5s-.22.5-.5.5zm0-2h-3c-.28 0-.5-.22-.5-.5s.22-.5.5-.5h3c.28 0 .5.22.5.5s-.22.5-.5.5z"
              ></path>
            </svg>
            <span class="hide-on-destop">Solutions</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'feedback' }">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M20 2H4c-1.1 0-1.99.9-1.99 2L2 22l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm-3 12H7c-.55 0-1-.45-1-1s.45-1 1-1h10c.55 0 1 .45 1 1s-.45 1-1 1zm0-3H7c-.55 0-1-.45-1-1s.45-1 1-1h10c.55 0 1 .45 1 1s-.45 1-1 1zm0-3H7c-.55 0-1-.45-1-1s.45-1 1-1h10c.55 0 1 .45 1 1s-.45 1-1 1z"
              ></path>
            </svg>
            <span class="hide-on-destop">Feedback</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'chat' }">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M20 6h-1v8c0 .55-.45 1-1 1H6v1c0 1.1.9 2 2 2h10l4 4V8c0-1.1-.9-2-2-2zm-3 5V4c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v13l4-4h9c1.1 0 2-.9 2-2z"
              ></path>
            </svg>
            <span class="hide-on-destop">Trao đổi hỏi đáp</span></router-link
          >
        </li>

        <li>
          <router-link :to="{ name: 'payment' }">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M20 6h-1v8c0 .55-.45 1-1 1H6v1c0 1.1.9 2 2 2h10l4 4V8c0-1.1-.9-2-2-2zm-3 5V4c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v13l4-4h9c1.1 0 2-.9 2-2z"
              ></path>
            </svg>
            <span class="hide-on-destop">Payment</span></router-link
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
