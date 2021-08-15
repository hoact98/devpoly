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
                d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"
              ></path>
            </svg>
            <span class="hide-on-destop">Trang chủ</span></router-link
          >
        </li>
        <li>
          <router-link :to="{ name: 'homeDashboard' }">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M4 13h6c.55 0 1-.45 1-1V4c0-.55-.45-1-1-1H4c-.55 0-1 .45-1 1v8c0 .55.45 1 1 1zm0 8h6c.55 0 1-.45 1-1v-4c0-.55-.45-1-1-1H4c-.55 0-1 .45-1 1v4c0 .55.45 1 1 1zm10 0h6c.55 0 1-.45 1-1v-8c0-.55-.45-1-1-1h-6c-.55 0-1 .45-1 1v8c0 .55.45 1 1 1zM13 4v4c0 .55.45 1 1 1h6c.55 0 1-.45 1-1V4c0-.55-.45-1-1-1h-6c-.55 0-1 .45-1 1z"
              ></path></svg
            ><span class="hide-on-destop">Dashboard</span></router-link
          >
        </li>
        <li>
          <a href="#">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M12 11.55c-1.82-1.7-4.12-2.89-6.68-3.35C4.11 7.99 3 8.95 3 10.18v6.24c0 1.68.72 2.56 1.71 2.69 2.5.32 4.77 1.35 6.63 2.87.35.29.92.32 1.27.04 1.87-1.53 4.16-2.58 6.68-2.9.94-.13 1.71-1.06 1.71-2.02v-6.92c0-1.23-1.11-2.19-2.32-1.98-2.56.46-4.86 1.65-6.68 3.35zM12 8c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3z"
              ></path>
            </svg>
            <span class="hide-on-destop">Learn</span></a
          >
        </li>
        <li>
          <a href="#">
            <svg
              class="icon-cate"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 17h-2v-2h2v2zm2.07-7.75l-.9.92c-.5.51-.86.97-1.04 1.69-.08.32-.13.68-.13 1.14h-2v-.5c0-.46.08-.9.22-1.31.2-.58.53-1.1.95-1.52l1.24-1.26c.46-.44.68-1.1.55-1.8-.13-.72-.69-1.33-1.39-1.53-1.11-.31-2.14.32-2.47 1.27-.12.37-.43.65-.82.65h-.3C8.4 9 8 8.44 8.16 7.88c.43-1.47 1.68-2.59 3.23-2.83 1.52-.24 2.97.55 3.87 1.8 1.18 1.63.83 3.38-.19 4.4z"
              ></path>
            </svg>
            <span class="hide-on-destop">FAQ</span></a
          >
        </li>
        <!-- <li><a href="#">
                        <svg class="icon-cate" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M20 6h-1v8c0 .55-.45 1-1 1H6v1c0 1.1.9 2 2 2h10l4 4V8c0-1.1-.9-2-2-2zm-3 5V4c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v13l4-4h9c1.1 0 2-.9 2-2z"></path></svg>
                        <span class="hide-on-destop">Forum</span></a></li> -->
      </ul>
    </nav>
  </aside>
</template>

<script></script>

<style></style>
