<template>
   <div class="card-footer">
            <div class="input-group">
              <div class="input-group-append">
                <span class="input-group-text attach_btn"
                  ><i class="fas fa-paperclip"></i
                ></span>
              </div>
                 <input
          type="text"
          v-model="message"
          @keyup.enter="sendMessage()"
          placeholder="Say something"
          class="col-span-5"
        />
                <button @click="sendMessage()">Send</button>
              </div>

          </div>
</template>

<script>
import BaseRequest from "../../../core/BaseRequest";
export default {
  props: ["room"],
  data: function () {
    return {
      message: "",
    };
  },
  methods: {
    sendMessage: function () {
      if (this.message == "") {
        return;
      }
      BaseRequest
.post(route("newMessage", {
          message: this.message,
            roomID: this.room.id
        }))
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
