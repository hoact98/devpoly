<template>
  <div class="">
    <div
      class="font-bold text-xl"
      style="
        color: #fff;
        font-weight: bold;
        font-size: 15px;
        text-align: center;
        margin: 1rem;
      "
    >
      {{ selected.name }} Chat
    </div>
    <div class="">
      <select
        style="width: 100%; height: 3rem; font-weight: bold"
        name=""
        id=""
        v-model="selected"
        @change="$emit('roomchanged', selected)"
        class="float-right"
      >
        <option
          style="width: 100%; height: 3rem; font-weight: bold; font-size: 15px"
          v-for="(room, index) in rooms"
          :key="index"
          :value="room"
        >
          {{ room.name }}
        </option>
      </select>
    </div>
  </div>
</template>

<script>
export default {
  props: ["rooms", "currentRoom"],
  data: function () {
    return {
      selected: "",
    };
  },
  created() {
    this.selected = this.currentRoom;
  },
};
</script>
