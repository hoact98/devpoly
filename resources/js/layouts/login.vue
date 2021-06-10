<template>
  <div class="hold-transition login-page">
      <slot />
      <router-view/>
  </div>
</template>

<script>

export default {
  name: 'LoginLayout',
}
</script>
