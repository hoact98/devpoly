<template>
     <div class="content col-12">
                <div class="container-sm">
                    <div class="overview row">
                        <div class="description col-xl-8 col-lg-6">
                            <div class="container-content">
                                <div class="desc-time">
                                    Latest Update: February 10, 2021
                                </div>
                                <div class="desc-title">
                                    <h1>Responsive Web Developer</h1>
                                </div>
                                <div class="short-desc" v-if="data "  v-html="data.description">

                                </div>
                                <div id="desc-box" class="desc-box1">
                                    <div class="box-title">
                                        <h5>For those who want to:</h5>
                                    </div>
                                    <ul id="box-list" class="box1-list">
                                        <li>Start with <strong>Coding</strong></li>
                                        <li>Practice <strong>HTML, CSS, and basic JavaScript</strong></li>
                                        <li>Building websites with <strong> real-life practices.</strong></li>
                                    </ul>
                                </div>
                                <div id="desc-box" class="desc-box2">
                                    <div class="box-title">
                                        <h5>Rules:</h5>
                                    </div>
                                    <ul id="box-list" class="box2-list">
                                        <li>✅<strong> Recommend</strong> to use only HTML, CSS, and JavaScript</li>
                                        <li>✅<strong> Fulfill</strong> all the user stories
                                        </li>
                                        <li>✅<strong> Follow the design,</strong> you can add animations, change images,...</li>
                                        <li>🚫<strong> Do not copy</strong> existing solutions</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="require col-xl-4 col-lg-6">
                            <div class="container-content">
                                <div class="require-image">
                                    <img v-if="data "   :src="'/'+data.image" alt="error">
                                </div>
                                <div class="require-title">
                                    <h5>Certificate Requirements</h5>
                                </div>
                                <ul class="list-require">
                                    <li>Completed 8 challenges</li>
                                    <li>Completed 8 challenges</li>
                                </ul>
                                <div class="progres">
                                    <!-- <h5>Progress</h5>
                                    <p>0 / 8 completed</p>
                                    <div class="progres-level">
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                        <div class="progres-level-item"></div>
                                    </div> -->
                                </div>

                                <div class="apply-button">
                                    <button>APPLY FOR CERTIFICATE</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  v-if="data "   class="product">
                        <div class="product-title">
                            <h2>Products you will build</h2>
                            <div class="list-product row">
                                <div     v-for="challenge in data.challenges" :key="challenge.id" class="product-item col-xl-4 col-md-6">
                                    <router-link :to="{name: 'chanllenge',params:{ slug:challenge.slug}}">
                                        <div class="product-content">
                                            <div class="product-image">
                                                <img src="images/404_image.png" alt="">
                                            </div>
                                            <div class="product-content-title">
                                            {{challenge.title}}
                                            </div>
                                            <div v-html="challenge.description.substring(0,150)+' ...' " class="product-desc">

                                            </div>
                                            <div class="product-level">
                                                <div class="product-level-name">
                                                    <p>Beginner</p>
                                                </div>
                                                <div class="product-level-main">
                                                    <div  v-for="level in challenge.level" :key="level"  class="product-level-item"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </router-link>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</template>


<script>
import { mapGetters } from "vuex";
export default {
  data: () => ({
    title: "Chi Tiet Danh Muc Thu Thach",
  }),
  computed: mapGetters({
    data: "challengecategory/challengecategory",

  }),
  created() {
    this.$store.dispatch("challengecategory/get_One_Data", this.$route.params.slug);
  },
  methods: {
  },
};
</script>

<style lang="scss">
@import "../../../sass/overview.scss";
</style>
