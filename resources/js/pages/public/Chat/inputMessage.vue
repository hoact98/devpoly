<template>
  <div class="card-footer">
    <div class="input-group">
      <input
        style="width: 100%; height: 4rem; border-radius: 1rem"
        type="text"
        v-model="message"
        @keyup.enter="sendMessage()"
        placeholder="Say something"
        class="col-span-5"
      />
      <button
        @click="sendMessage()"
        style="width: 100%; padding: 1rem; border-radius: 1rem"
      >
        Send
      </button>
    </div>
  </div>
</template>

<script>
import Cookies from 'js-cookie';

export default {
  props: ["room"],
  data: function () {
    return {
      message: "",
      token:document.head.querySelector('meta[name="csrf-token"]').content
    };
  },
  methods: {
   sendMessage: function () {
      if (this.message == "") {
        return;
      }
      axios.post(route("newMessage",this.room.id ),{ message: this.message},{headers : {'Accept':'application/json','X-CSRF-TOKEN': this.token,
        'Authorization': 'Bearer '+ Cookies.get('token')}})
        .then((response) => {
          if (response.status == 200) {
            this.message = "";
            this.$emit("messagesent");
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
};
</script>
