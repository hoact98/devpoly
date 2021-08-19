<template>
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="col-12 profile-share-customize">
          <button class="btn-share btn-block bg-button">
            <i class="ti-twitter-alt"></i> Chia sẻ
          </button>
         <router-link :to="{name:'settings'}">
            <button class="btn-customize btn-block bg-button">
            <svg
              class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
              focusable="false"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M7 14c-1.66 0-3 1.34-3 3 0 1.31-1.16 2-2 2 .92 1.22 2.49 2 4 2 2.21 0 4-1.79 4-4 0-1.66-1.34-3-3-3zm13.71-9.37l-1.34-1.34a.9959.9959 0 00-1.41 0L9 12.25 11.75 15l8.96-8.96c.39-.39.39-1.02 0-1.41z"
              ></path></svg
            >Tuỳ chỉnh
          </button>
         </router-link>
        </div>
      </div>

      <div class="row">
        <div class="col-12 col-sm-4">
          <div class="profile-user block-style">
            <div class="user-image">
              <img width="100%" v-if="auth.image" :src="'/'+auth.image" alt="" />
              <img width="100%" v-else :src="auth.photo_url" alt="" />
            </div>

            <div class="user-nickname">
              <h2>{{auth.name}}</h2>
            </div>

            <div class="user-github">
              <a :href="auth.github_url" target="_blank"
                ><svg
                  class="github-icon"
                  focusable="false"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"
                  ></path></svg
              ></a>
            </div>
          </div>
        </div>

        <div class="col-12 col-sm-8">
          <div class="block-style">
            <div class="skill-head">
              <h3>Skills and Endorsements</h3>
              <div class="d-flex">
                <button class="btn-block btn-add bg-button">Add</button>
                <button class="btn-block btn-edit bg-button">Edit</button>
              </div>
            </div>

            <div class="skill-body mt-4 mb-4">
              <div class="user-skill-wrapper">
                <h4>Devchallenges skills</h4>
                <div class="skill-list">
                  <button class="btn-skill">
                    <span class="">Mentoring</span>
                    <svg
                      class="MuiSvgIcon-root icon-skill"
                      focusable="false"
                      viewBox="0 0 24 24"
                      aria-hidden="true"
                    >
                      <path
                        d="M18 13h-5v5c0 .55-.45 1-1 1s-1-.45-1-1v-5H6c-.55 0-1-.45-1-1s.45-1 1-1h5V6c0-.55.45-1 1-1s1 .45 1 1v5h5c.55 0 1 .45 1 1s-.45 1-1 1z"
                      ></path>
                    </svg>
                  </button>
                  <button class="btn-skill">
                    <span class="">Teamwork</span>
                    <svg
                      class="MuiSvgIcon-root icon-skill"
                      focusable="false"
                      viewBox="0 0 24 24"
                      aria-hidden="true"
                    >
                      <path
                        d="M18 13h-5v5c0 .55-.45 1-1 1s-1-.45-1-1v-5H6c-.55 0-1-.45-1-1s.45-1 1-1h5V6c0-.55.45-1 1-1s1 .45 1 1v5h5c.55 0 1 .45 1 1s-.45 1-1 1z"
                      ></path>
                    </svg>
                  </button>
                </div>
                <div class="other-skill">
                  <h4>Other Skill</h4>
                  <button class="btn-skill">
                    <span class="">HTML&CSS</span>
                    <svg
                      class="MuiSvgIcon-root icon-skill"
                      focusable="false"
                      viewBox="0 0 24 24"
                      aria-hidden="true"
                    >
                      <path
                        d="M18 13h-5v5c0 .55-.45 1-1 1s-1-.45-1-1v-5H6c-.55 0-1-.45-1-1s.45-1 1-1h5V6c0-.55.45-1 1-1s1 .45 1 1v5h5c.55 0 1 .45 1 1s-.45 1-1 1z"
                      ></path>
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
   computed: mapGetters({
    auth: 'auth/user'
  }),
  
  created () {
    this.$store.dispatch('auth/fetchUser');
  },
  methods: {
    
  }
};
</script>

<style scoped>
.content {
  margin-top: 65px;
  margin-bottom: 40px;
  color: var(--black);
}

.profile-share-customize {
  display: flex;
  justify-content: flex-end;
  padding-top: 24px;
  padding-bottom: 24px;
}

.btn-block {
  outline: none;
  border: none;
  height: 3.6rem;
  font-size: 1.2rem;
  font-weight: 500;
  border-radius: 4px;
  cursor: pointer;
  color: var(--white-grey);
  display: inline-block;
  box-sizing: border-box;
  transition: 0.3s;
  font-family: "Poppins", sans-serif;
  margin-top: 0px;
  min-width: 5rem;
}
.profile-share-customize button {
  min-width: 8rem;
}

.profile-share-customize .btn-share {
  margin-right: 16px;
}

.profile-share-customize .btn-customize {
  width: 12rem;
}

.btn-block:hover {
  border: 1px solid #8d99a7;
  box-shadow: 0 4px 6px -1px rgb(0 0 0 / 10%), 0 2px 4px -1px rgb(0 0 0 / 6%);
}

.block-style {
  margin-bottom: 16px;
  font-family: "Lato", sans-serif;
  padding: 16px;
  background-color: var(--background);
  border-radius: var(--border-radius-main);
  box-shadow: 0 5px 15px 0 #dedede;
}

.profile-user .user-image img {
  border-radius: var(--border-radius-main);
}

.profile-user .user-nickname {
  padding: 30px 0;
  color: var(--primary-color);
}

.profile-user .user-github {
  text-align: right;
}

.profile-user .user-github .github-icon {
  text-align: right;
  fill: var(--grey-color);
  width: 18px;
}

.skill-head {
  display: flex;
  justify-content: space-between;
  color: var(--black-bold);
}

.skill-head h3 {
  font-size: 1.8rem;
  color: var(--primary-color);
}

.btn-skill {
  font-family: "Poppins", sans-serif;
  background-color: var(--background-light);
  border: 1px solid var(--grey-color);
  padding: 8px 12px;
  padding-right: 0;
  border-radius: var(--border-radius-main);
  color: #fff;
  outline: none;
  display: inline-block;
  margin-top: 12px;
  margin-bottom: 4px;
  font-weight: 500;
  color: var(--black);
}

.btn-skill:hover {
  box-shadow: 0 5px 15px 0 #dedede;
}

.user-skill-wrapper span {
  display: inline-block;
  margin-left: 4px;
}

.icon-skill {
  margin-left: 8px;
}

.btn-skill span {
  display: inline-block;
  border-right: 1px solid #454f59;
  padding-right: 12px;
}

.skill-body h4 {
  font-size: 1.6rem;
}

.other-skill {
  margin-top: 26px;
}

.btn-add {
  margin-right: 4px;
}

.overlay {
  position: fixed;
  height: 100vh;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.5);
  display: none;
}

.add-skill-form,
.edit-skill-form {
  position: fixed;
  width: 440px;
  min-height: 68%;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: var(--background-light);
  font-size: 1.6rem;
  color: var(--black);
  display: none;
  box-shadow: none;
}

.edit-skill-form {
  min-height: 10%;
}

.add-skill-form h5,
.edit-skill-form h5 {
  font-size: 1.6rem;
  color: var(--primary-color);
}

.exit-add-skill,
.exit-edit-skill {
  cursor: pointer;
  font-size: 20px;
}

.exit-add-skill:hover,
.exit-edit-skill:hover {
  fill: orangered;
}

.skill-form-wrap label {
  font-size: 1.2rem;
}

.skill-form-wrap {
  font-family: "Poppins", sans-serif;
}

.skill-form-wrap input {
  background: inherit;
  width: 100%;
  padding: 10px;
  color: var(--black);
  border: 1px solid #c9d0da;
  border-radius: var(--border-radius-main);
  margin-top: 6px;
  outline: none;
}

.skill-form-wrap input:focus {
  border: 1px solid #2a8ec7;
}

.skill-form-wrap .helper-text {
  font-size: 1rem;
}

.skill-list-add {
  margin-top: 16px;
  background: var(--background-light);
}


.skill-list-suggestions button {
  min-width: 8rem;
  margin: 8px 4px;
}

.btn-add-finish,
.btn-edit-finish {
  text-align: right;
}
.btn-add-finish button,
.btn-edit-finish button {
  height: 4.6rem;
  width: 9rem;
  margin-top: 16px;
}

.btn-add-finish button:hover,
.btn-edit-finish button:hover {
  background-color: #2a8ec7;
}

.icon-delete {
  font-size: 1.8rem;
  margin: 0;
}

.skill-item {
  padding: 12px 0;
  border-bottom: 1px solid #454f59;
}
</style>
