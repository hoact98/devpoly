<template>
   <section class="content feedback">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="feedback-title">Feedback</h1>
                        </div>
                    </div>
                    <div v-for="(feedback,index) in feedbacks" :key="index">
                        <div v-if="feedbacks[index+1] || feedbacks.length == index+1">
                    <div class="row content-feedback" v-if="(feedback.solution_id != feedbacks[1].solution_id) || feedbacks.length == index+1">
                        <div class="col-9 col-md-9 col-xs-9 col-lg-9 col-xl-9 feedback-wrapper">
                            <div class="row">
                                <div class="col-12" v-for="(feedback,index) in feedbacks" :key="index">
                                    <div v-if="feedback.parent_id==0">
                                        <div class="feedback-content">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-12 col-md-12">
                                                    <div v-if="auth">
                                                        <div v-if="feedback.upvote.length>0">
                                                            <div v-for="(upvote,index) in feedback.upvote" :key="index">
                                                                <button v-if="upvote.user_id==auth.id" @click="upvoteFeedback(feedback.id)" type="button" class="upvote button-block" style="width:100%; background: #1bb21b;">
                                                                    <div class="icon">
                                                                <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                                </div>
                                                                <span v-if="feedback.upvote" v-html="feedback.upvote.length == 0 ? 'Thích':feedback.upvote.length"></span>
                                                                </button>
                                                                <button v-if="upvote.user_id!=auth.id && feedback.upvote.length==index+1" @click="upvoteFeedback(feedback.id)" type="button" class="upvote button-block" style="width:100%;">
                                                                    <div class="icon">
                                                                <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                                </div>
                                                                <span v-if="feedback.upvote" v-html="feedback.upvote.length == 0 ? 'Thích':feedback.upvote.length"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <button v-else @click="upvoteFeedback(feedback.id)" type="button" class="upvote button-block" style="width:100%;">
                                                            <div class="icon">
                                                        <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                        </div>
                                                        <span v-if="feedback.upvote" v-html="feedback.upvote.length == 0 ? 'Thích':feedback.upvote.length"></span>
                                                        </button>
                                                    </div>
                                                    <div v-else>
                                                        <div class="button-block">
                                                        <div class="icon">
                                                            <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                        </div> 
                                                            <span v-if="feedback.upvote">{{feedback.upvote.length==0?'Thích':feedback.upvote.length}}</span>
                                                        </div>
                                                    </div>

                                                    <div class="feedback-user-section">
                                                        <div class="feedback-user-info" v-if="feedback.users">
                                                            <div class="feedback-user-img">
                                                                <img v-if="feedback.users.image" :src="'/'+feedback.users.image" alt=""/>
                                                                <img v-else :src="feedback.users.photo_url" alt=""/>
                                                            </div>

                                                            <div>
                                                                 <p class="feedback-user-name">{{feedback.users.name}}</p>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-lg-9 col-md-12">
                                                    <div class="feedback-detail">
                                                        <p v-html="feedback.feedback_content"></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feedback-time">
                                            <span>an hour ago</span>
                                        </div>
                                    </div>
                                    <div v-if="feedback.parent_id>0">
                                         <div class="row">
                                        <div class="col-1">

                                        </div>
                                        <div class="col-11 reply-feedback">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-12">
                                                    <div v-if="auth">
                                                        <div v-if="feedback.upvote.length>0">
                                                            <div v-for="(upvote,index) in feedback.upvote" :key="index">
                                                                <button v-if="upvote.user_id==auth.id" @click="upvoteFeedback(feedback.id)" type="button" class="upvote button-block" style="width:100%; background: #1bb21b;">
                                                                    <div class="icon">
                                                                    <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                                    </div>
                                                                    <span v-if="feedback.upvote" v-html="feedback.upvote.length == 0 ? 'Thích':feedback.upvote.length"></span>
                                                                </button>
                                                                <button v-else-if="upvote.user_id!=auth.id && feedback.upvote.length==index+1" @click="upvoteFeedback(feedback.id)" type="button" class="upvote button-block" style="width:100%;">
                                                                    <div class="icon">
                                                                    <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                                    </div>
                                                                    <span v-if="feedback.upvote" v-html="feedback.upvote.length == 0 ? 'Thích':feedback.upvote.length"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <button v-else @click="upvoteFeedback(feedback.id)" type="button" class="upvote button-block" style="width:100%;">
                                                            <div class="icon">
                                                            <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                            </div>
                                                            <span v-if="feedback.upvote" v-html="feedback.upvote.length == 0 ? 'Thích':feedback.upvote.length"></span>
                                                        </button>
                                                    </div>
                                                    <div v-else class="button-block">
                                                        <div class="icon">
                                                        <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                                                    </div> 
                                                        <span v-if="feedback.upvote">{{feedback.upvote.length==0?'Thích':feedback.upvote.length}}</span>
                                                    </div>

                                                   <div class="feedback-user-section">
                                                        <div class="feedback-user-info" v-if="feedback.users">
                                                            <div class="feedback-user-img">
                                                                <img v-if="feedback.users.image" :src="'/'+feedback.users.image" alt=""/>
                                                                <img v-else :src="feedback.users.photo_url" alt=""/>
                                                            </div>

                                                            <div>
                                                                 <p class="feedback-user-name">{{feedback.users.name}}</p>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>

                                                <div class="col-lg-9 col-md-12">
                                                    <div class="reply-feedback-detail">
                                                        <p v-html="feedback.feedback_content"></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="feedback-time">
                                        <span>54 minutes ago</span>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>

                        <div class="col-3 col-md-3 col-xs-3 col-lg-3 col-xl-3">
                            <div class="challenge-info">
                                <div class="author-info">
                                    <div class="author-avatar">
                                        <img class="author-image" :src="'/'+feedback.avatar" alt="">
                                    </div>
                                    <p class="author-name" v-html="feedback.name"></p>
                                </div>

                                <router-link :to="{ name: 'showDetailSolution', params: { id: feedback.solution_id } }">
                                    <div>
                                    <img class="challenge-image" :src="'/'+feedback.image" alt="">
                                    </div>
                                    <div class="challenge-title">
                                        <p v-html="feedback.solutions.title"></p>
                                    </div>
                                </router-link>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
            </section>
</template> 

<script>
export default {
    data(){
        return {}
    },
    computed: {
        feedbacks () {
            return this.$store.state.feedback.feedbackByCate;
        },
        auth(){
            return this.$store.state.auth.user;
        }
    },
    created: function(){
        this.$store.dispatch('feedback/byCate',this.$route.params.slug);
        this.$store.dispatch('auth/fetchUser');
        this.$store.dispatch("challengecategory/get_One_Data", this.$route.params.slug);
    },
    methods:{
         upvoteFeedback(id){
            axios.post(route('upvote.feedback',id))
                .then(response => {
                if(response.data.status == 'success'){
                    this.$store.dispatch('feedback/byCate',this.$route.params.slug);
                }
                })
                // eslint-disable-next-line
                .catch(errors => {
                    //Handle Errors
                })
    }
    }
}
</script>

<style lang="scss">
@import "../../../sass/feedback.scss";
</style>