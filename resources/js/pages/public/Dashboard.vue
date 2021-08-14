<template>
  <div class="content">
    <div class="container">
      <div class="dashboard-title">
        <h1>Dashboard</h1>
      </div>
      <div class="row">
        <div class="select-box col-lg-4">
          <div v-if="(currentChallenges == 0)" class="select-box-content">
            <div class="image">
              <img src="images/solutions.png" alt="" />
            </div>
            <div class="desc-select text-center">
              You have no onging projects
            </div>
            <div class="select-button text-center">
              <button>Select a Challenges</button>
            </div>
          </div>
          <div v-else class="select-box-content">
            <h4>Ongoing projects</h4>
            <div class="listing-challenges">
              <div v-for="(challenge,index) in dataChallenges" :key="index" class="item-challenge">
                <router-link :to="{name: 'chanllenge',params:{ slug:challenge.slug}}">
                <div class="challenge-image"><img :src="'/' + challenge.challenge_image" alt="" width="100"></div>
                <div class="challenge-desc"> 
                  <div class="challenge-name">{{ challenge.title }}</div>
                </div>
                </router-link>
              </div>
            </div>
          </div>
        </div>
        <div class="overview col-lg-3">
          <div class="overview-content">
            <div class="overview-title">
              <h4>Overview</h4>
            </div>
            <div class="reputations">
              <span class="reputations-value">0</span>
              <span class="reputations-text">reputations</span>
            </div>
            <div class="overview-row">
              <div class="overview-key">Upvotes</div>
              <div class="overview-value">0</div>
            </div>
            <div class="overview-row">
              <div class="overview-key">Solutions</div>
              <div class="overview-value">0</div>
            </div>
            <div class="overview-row">
              <div class="overview-key">Solutions</div>
              <div class="overview-value">0</div>
            </div>
          </div>
        </div>
        <div class="latest-tutorials col-lg-4">
          <div class="lastest-tutorial-content">
            <div class="tutorial-title">
              <h4>Latest Tutorials</h4>
            </div>
            <a href="#">
              <div class="tutorial-row">
                <div class="tutorial-title">Css animation</div>
                <div class="tutorial-image">
                  <img src="images/item.PNG" alt="" />
                </div>
              </div>
            </a>
            <a href="#">
              <div class="tutorial-row">
                <div class="tutorial-title">Media queries</div>
                <div class="tutorial-image">
                  <img src="images/item.PNG" alt="" />
                </div>
              </div>
            </a>
            <a href="#">
              <div class="tutorial-row">
                <div class="tutorial-title">CSS position</div>
                <div class="tutorial-image">
                  <img src="images/item.PNG" alt="" />
                </div>
              </div>
            </a>
            <a href="#">
              <div class="tutorial-row">
                <div class="tutorial-title">promise, Async/Await</div>
                <div class="tutorial-image">
                  <img src="images/item.PNG" alt="" />
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { mapGetters } from "vuex";
import axios from "axios";
export default {
  data: () => ({
    title: " Challenge",
    currentChallenges: null,
    dataChallenges: [],
  }),
  created() {
    this.getChallenge();
  },
  methods: {
    async getChallenge() {
      axios
        .get(route("getChallenge.user"))
        .then((response) => {
          this.currentChallenges = response.data.data.challenges.length;
          this.dataChallenges = response.data.data.challenges;
        })
        .catch(() => {
          console.log("Not Data");
        });
    },
  },
};
</script>

<style lang="scss">
@import "../../../sass/dashboard.scss";
</style>