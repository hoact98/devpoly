<template>
  <section class="content challenge">
    <div class="container">
      <div class="row figma-wrapper">
        <div class="col-12">
          <iframe class="figma" v-if="data" :src="data.link_figma" allowfullscreen />
        </div>
      </div>

      <div class="row">
        <div class="col-md-8 col-xs-12 col-lg-8 col-xl-8">
          <h1 class="challenge-title">{{ data.title }}</h1>

          <div
            v-if="data"
            v-html="data.description"
            class="challenge-detail challenge-block mb-4"
          ></div>

          <div class="challenge-require challenge-block">
            <p>
              Once you completed, submit your solutions by providing URLs for both GitHub
              repository and live app on any hosting platform (<a href="/"
                >5 Free Hosting Platform</a
              >) and explain briefly what you have done.
            </p>
            <p>
              As long as you fulfill all the user stories, you can give your personal
              touches by adding transition, using your own images, changing colors,...
            </p>
            <p>
              Remember to put your name on the footer to prevent other from submitting
              your solutions.
            </p>
            <p>You can check others’ solutions and give them feedbacks.</p>
          </div>
        </div>

        <div class="col-md-4 col-xs-12 col-lg-4 col-xl-4">
          <div class="challenge-instruction">
            <h4>How to start</h4>
            <ol class="mt-4 mb-4">
              <li>Read the challenge's details</li>
              <li>Start the challenge and download the resources</li>
              <li>Check designs on Figma</li>
              <li>Have fun coding!!</li>
            </ol>
            <a v-if="checkBtnDownload && check == false">
              <button class="button-block" disabled>
                <svg
                  class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                  focusable="false"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    d="M16.59 9H15V4c0-.55-.45-1-1-1h-4c-.55 0-1 .45-1 1v5H7.41c-.89 0-1.34 1.08-.71 1.71l4.59 4.59c.39.39 1.02.39 1.41 0l4.59-4.59c.63-.63.19-1.71-.7-1.71zM5 19c0 .55.45 1 1 1h12c.55 0 1-.45 1-1s-.45-1-1-1H6c-.55 0-1 .45-1 1z"
                  ></path>
                </svg>

                <span disabled>Start and download</span>
              </button>
            </a>
            <a
              v-else-if="checkBtnDownload && check == true"
              v-on:click="addChallengeToUser"
              :href="'/' + data.soucre"
              download
            >
              <button class="button-block button-download">
                <svg
                  class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                  focusable="false"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    d="M16.59 9H15V4c0-.55-.45-1-1-1h-4c-.55 0-1 .45-1 1v5H7.41c-.89 0-1.34 1.08-.71 1.71l4.59 4.59c.39.39 1.02.39 1.41 0l4.59-4.59c.63-.63.19-1.71-.7-1.71zM5 19c0 .55.45 1 1 1h12c.55 0 1-.45 1-1s-.45-1-1-1H6c-.55 0-1 .45-1 1z"
                  ></path>
                </svg>

                <span>Start and download</span>
              </button>
            </a>

            <router-link
              v-else
              :to="{ name: 'add_solution', params: { slug: data.slug } }"
            >
              <button class="button-block">
                <span>Submit Solution</span>
              </button>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import { mapGetters } from "vuex";
import axios from "axios";
export default {
  data: () => ({
    title: " Challenge",
    checkBtnDownload: true,
  }),
  computed: mapGetters({
    data: "challenge/challenge",
    check: "auth/IS_LOGGEND_IN",
  }),
  created() {
    this.$store.dispatch("challenge/fet_One_Data", this.$route.params.slug);
    this.getChallengeToUser();
  
  },
  methods: {
    async addChallengeToUser() {
      const id = this.data.id;
      axios
        .post(
          route("addChallengeToUser.challenge", {
            id,
          })
        )
        .then((response) => {
          this.checkBtnDownload = false;
        })
        .catch(() => {});
    },
    async getChallengeToUser() {
      const slug = this.$route.params.slug;
      axios
        .get(
          route("getChallengeToUser.challenge", {
            slug,
          })
        )
        .then((response) => {
          if (response.data.data == this.data.id) {
            this.checkBtnDownload = false;
          } else {
            this.checkBtnDownload = true;
          }
        })
        .catch(() => {
          console.log("Not Data");
        });
    },
  },
};
</script>

<style lang="scss">
@import "../../../sass/challenge.scss";
</style>
