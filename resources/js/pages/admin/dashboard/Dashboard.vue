<template>
    <div class="content-wrapper">
            <!-- Main content -->
            <div class="page-content fade-in-up">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="ibox bg-success color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong" v-if="challenges">{{challenges.length}}</h2>
                                <h2 class="m-b-5 font-strong" v-else>0</h2>
                                <div class="m-b-5">Thử thách</div><i class="ti-shopping-cart widget-stat-icon"></i>
                                <!-- <div><i class="fa fa-level-up m-r-5"></i><small>25% higher</small></div> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="ibox bg-info color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong" v-if="solutions">{{solutions.length}}</h2>
                                <h2 class="m-b-5 font-strong" v-else>0</h2>
                                <div class="m-b-5">Giải pháp</div><i class="ti-bar-chart widget-stat-icon"></i>
                                <!-- <div><i class="fa fa-level-up m-r-5"></i><small>17% higher</small></div> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="ibox bg-warning color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong" v-if="categories">{{categories.length}}</h2>
                                <h2 class="m-b-5 font-strong" v-else>0</h2>
                                <div class="m-b-5">Danh mục</div><i class="fa fa-money widget-stat-icon"></i>
                                <!-- <div><i class="fa fa-level-up m-r-5"></i><small>22% higher</small></div> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="ibox bg-danger color-white widget-stat">
                            <div class="ibox-body">
                                <h2 class="m-b-5 font-strong" v-if="users">{{users.length}}</h2>
                                <h2 class="m-b-5 font-strong" v-else>0</h2>
                                <div class="m-b-5">Tài khoản</div><i class="ti-user widget-stat-icon"></i>
                                <!-- <div><i class="fa fa-level-down m-r-5"></i><small>-12% Lower</small></div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <Footer></Footer>
    </div>
</template>
<script>
import { mapGetters } from 'vuex'
import Footer from '../../../components/AdminFooter.vue';
export default {
    data() {
        return {
        title: 'Dashboard',
        };
    },
    computed: mapGetters({
        users: 'user/all',
        challenges: 'challenge/all',
        categories: 'challengecategory/all',
        solutions: 'solution/all',
    }),
    created () {
        this.$store.dispatch('user/all');
        this.$store.dispatch('challenge/all');
        this.$store.dispatch('challengecategory/all');
        this.$store.dispatch('solution/all');
    },
  components:{
      Footer
  }
}
</script>