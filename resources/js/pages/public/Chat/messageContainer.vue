<template>
    <div class="card-body msg_card_body">
    <div
      class="d-flex justify-content-start mb-4"
        v-for="(message, index) in messages"
      :key="index"
    >
         <message-item :message="message"/>
    </div>
  </div>
</template>

<script>
import messageItem from './messageItem.vue';
export default {
    components: {messageItem},
    props:['messages'],
}
</script>