<template>
  <div class="">
    <div class="img_cont_msg"></div>
    <div class="msg_cotainer" style="width: 10rem; background: #fff; color: black">
      {{ message.user.name }}: {{ message.message }}
      <!-- <span class="msg_time">{{ message.created_at }}</span> -->
    </div>
  </div>
</template>

<script>
export default {
  props: ["message"],
};
</script>
