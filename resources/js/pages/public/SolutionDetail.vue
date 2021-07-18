<template>
  <section class="content mt-4">
    <div class="container">
      <div class="row">
        <div class="col-12 col-md-12 col-xs-9 col-lg-9 col-xl-9">
          <div class="row info-solution">
            <div class="col-12">
              <div class="author">
                <div class="author-avatar">
                  <img src="images/avatar-1.png" alt="" />
                </div>
                <span class="author-nickname">  </span>
              </div>

              <div class="solution-title">
                <h3>{{ solution.title }}</h3>
              </div>

              <div>
                <span class="solution-time"> in 4 hours </span>
                <span style="display: inline-block; margin-left: 8px; margin-right: 8px"
                  >.</span
                >
                <span class="solution-edit"> edited </span>
              </div>

              <div class="solution-detail-des">
                <p>{{ solution.description }}</p>
              </div>
            </div>
          </div>

          <div class="row content-preview-wrap mt-4">
            <div class="col-12">
              <div class="preview-content">
                <div class="preview-content-head">
                  <h2>Preview</h2>

                  <div class="demo-code-block">
                    <button class="btn-demo">Demo</button>
                    <button class="btn-view-code">Code</button>
                  </div>
                </div>

                <div class="preview-content-body"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <h1 class="feedback-title">Feedback</h1>
            </div>
          </div>

          <div class="feedback-wrapper">
            <div class="row">
              <div class="col-12">
                <div class="feedback-content">
                  <div class="row">
                    <div class="col-lg-3 col-md-12 col-md-12">
                      <div class="upvote button-block">
                        <div class="icon">
                          <svg
                            class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                            focusable="false"
                            viewBox="0 0 24 24"
                            aria-hidden="true"
                          >
                            <path
                              d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"
                            ></path>
                          </svg>
                        </div>
                        <span>upvote</span>
                      </div>

                      <div class="feedback-user-section">
                        <div>
                          <div class="feedback-user-info">
                            <div class="feedback-user-img">
                              <img
                                src="https://avatars.githubusercontent.com/u/48230483?v=4"
                                alt=""
                              />
                            </div>

                            <div>
                              <p class="feedback-user-name">Kevin Rodriguez</p>
                              <span class="feedback-user-reputation">10 reputations</span>
                            </div>
                          </div>
                        </div>

                        <div class="user-skill-wrapper">
                          <div class="skill-list">
                            <button class="btn-feedback">
                              <span class="">Mentoring</span>
                              <svg
                                class="MuiSvgIcon-root icon-feedback"
                                focusable="false"
                                viewBox="0 0 24 24"
                                aria-hidden="true"
                              >
                                <path
                                  d="M18 13h-5v5c0 .55-.45 1-1 1s-1-.45-1-1v-5H6c-.55 0-1-.45-1-1s.45-1 1-1h5V6c0-.55.45-1 1-1s1 .45 1 1v5h5c.55 0 1 .45 1 1s-.45 1-1 1z"
                                ></path>
                              </svg>
                            </button>
                            <button class="btn-feedback">
                              <span class="">Mentoring</span>
                              <svg
                                class="MuiSvgIcon-root icon-feedback"
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
                          <span class="skill-more">more</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-9 col-md-12">
                      <div class="feedback-detail">
                        <p>
                          It looks dope! Just a small suggestion, try to create the "join"
                          element like a button or change its cursor to the pointer. Also,
                          give validations if we try to put invalid style email id.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-12">
                <div class="feedback-time">
                  <span>an hour ago</span>
                </div>
              </div>
              <div>
                <div class="col-12">
                  <div class="row">
                    <div class="col-1"></div>
                    <div class="col-11 reply-feedback">
                      <div class="row">
                        <div class="col-lg-3 col-md-12">
                          <div class="">
                            <div class="upvote button-block">
                              <div class="icon">
                                <svg
                                  class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                                  focusable="false"
                                  viewBox="0 0 24 24"
                                  aria-hidden="true"
                                >
                                  <path
                                    d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"
                                  ></path>
                                </svg>
                              </div>
                              <span>upvote</span>
                            </div>

                            <div class="reply-feedback-user-info">
                              <div class="feedback-user-img">
                                <img
                                  src="https://avatars.githubusercontent.com/u/48230483?v=4"
                                  alt=""
                                />
                              </div>

                              <div>
                                <p class="feedback-user-name">Kevin Rodriguez</p>
                                <span class="feedback-user-reputation"
                                  >10 reputations</span
                                >
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="col-lg-9 col-md-12">
                          <div class="reply-feedback-detail">
                            <p>
                              It looks dope! Just a small suggestion, try to create the
                              "join" element like a button or change its cursor to the
                              pointer. Also, give validations if we try to put invalid
                              style email id.
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-12">
                  <div class="feedback-time">
                    <span>54 minutes ago</span>
                  </div>
                </div>
              </div>

              <!-- feed back của chính tài khoản -->
              <div>
                <div class="col-12">
                  <div class="row">
                    <div class="col-1"></div>
                    <div class="col-11 reply-feedback">
                      <div class="row">
                        <div class="col-lg-3 col-md-12">
                          <div class="">
                            <div class="upvote button-block">
                              <div class="icon">
                                <svg
                                  class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                                  focusable="false"
                                  viewBox="0 0 24 24"
                                  aria-hidden="true"
                                >
                                  <path
                                    d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"
                                  ></path>
                                </svg>
                              </div>
                              <span>upvote</span>
                            </div>

                            <div class="reply-feedback-user-info">
                              <div class="feedback-user-img">
                                <img
                                  src="https://avatars.githubusercontent.com/u/48230483?v=4"
                                  alt=""
                                />
                              </div>

                              <div>
                                <p class="feedback-user-name">Kevin Rodriguez</p>
                                <span class="feedback-user-reputation"
                                  >10 reputations</span
                                >
                              </div>
                            </div>
                            <div class="edit button-block">
                              <div class="icon">
                                <svg
                                  class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                                  focusable="false"
                                  viewBox="0 0 24 24"
                                  aria-hidden="true"
                                >
                                  <path
                                    d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"
                                  ></path>
                                </svg>
                              </div>
                              <span>Edit</span>
                            </div>

                            <!-- <div class="edit button-block">
                                                                    <div class="icon">
                                                                        <svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M17.59 3.59c-.38-.38-.89-.59-1.42-.59H5c-1.11 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V7.83c0-.53-.21-1.04-.59-1.41l-2.82-2.83zM12 19c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3zm1-10H7c-1.1 0-2-.9-2-2s.9-2 2-2h6c1.1 0 2 .9 2 2s-.9 2-2 2z"></path></svg>
                                                                    </div>
                                                                    <span>Save</span>
                                                                </div> -->
                          </div>
                        </div>

                        <div class="col-lg-9 col-md-12">
                          <div class="reply-feedback-detail">
                            <p>
                              It looks dope! Just a small suggestion, try to create the
                              "join" element like a button or change its cursor to the
                              pointer. Also, give validations if we try to put invalid
                              style email id.
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-12">
                  <div class="feedback-time">
                    <span>1 minutes ago</span>
                  </div>
                </div>
              </div>
              <!-- end feedback của chính tài khoản đăng nhập -->

              <div>
                <div class="col-12">
                  <div class="row">
                    <div class="col-1"></div>
                    <div class="col-11">
                      <div class="row">
                        <div class="col-12">
                          <form action="">
                            <textarea
                              placeholder="Enter your reply"
                              name=""
                              class="reply-feedback-content"
                              cols="30"
                              rows="4"
                            ></textarea>
                            <div style="float: right">
                              <button class="send-feedback">Send</button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-12">
              <div class="row">
                <div class="col-12">
                  <form action="">
                    <textarea
                      placeholder="Enter your reply"
                      name=""
                      class="reply-feedback-content"
                      cols="30"
                      rows="6"
                    ></textarea>
                    <span class="helper-text"
                      >You can use Markdown to write and format your feedback.</span
                    >
                    <div style="float: right">
                      <button class="send-feedback">Send</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-12 col-xs-3 col-lg-3 col-xl-3">
          <div class="row">
            <div class="col-12">
              <div class="content-item">
                <div class="solution-challenge">
                  <div class="row">
                    <div class="col-12">
                      <div class="challenge-img">
                        <img src="images/challenge-img-1.png" alt="" />
                      </div>
                    </div>
                    <div class="col-12">
                      <div class="challenge-name">
                        <p>{{ solution.challenges.title }}</p>
                      </div>

                      <div class="challenge-level">
                        <span>{{ solution.challenges.level }}</span>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="solution-action">
                  <div class="upvote button-block">
                    <div class="icon">
                      <svg
                        class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                        focusable="false"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                      >
                        <path
                          d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"
                        ></path>
                      </svg>
                    </div>
                    <span>upvote</span>
                  </div>
                  <br />
                  <div class="feedback button-block">
                    <div class="icon">
                      <svg
                        class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                        focusable="false"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                      >
                        <path
                          d="M22 4c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4V4z"
                        ></path>
                      </svg>
                    </div>
                    <span>feedback</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-12">
              <div class="share-block">
                <div class="row">
                  <div class="col-6">
                    <h3>Share</h3>
                  </div>

                  <div class="col-6 share-social">
                    <div>
                      <svg
                        class="MuiSvgIcon-root icon-share icon-share-hover"
                        focusable="false"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                      >
                        <path
                          d="M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 0 1-1.93.07 4.28 4.28 0 0 0 4 2.98 8.521 8.521 0 0 1-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z"
                        ></path>
                      </svg>
                    </div>
                    <div>
                      <svg
                        class="MuiSvgIcon-root icon-share icon-share-hover"
                        focusable="false"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                      >
                        <path
                          d="M19 3a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14m-.5 15.5v-5.3a3.26 3.26 0 0 0-3.26-3.26c-.85 0-1.84.52-2.32 1.3v-1.11h-2.79v8.37h2.79v-4.93c0-.77.62-1.4 1.39-1.4a1.4 1.4 0 0 1 1.4 1.4v4.93h2.79M6.88 8.56a1.68 1.68 0 0 0 1.68-1.68c0-.93-.75-1.69-1.68-1.69a1.69 1.69 0 0 0-1.69 1.69c0 .93.76 1.68 1.69 1.68m1.39 9.94v-8.37H5.5v8.37h2.77z"
                        ></path>
                      </svg>
                    </div>
                    <a
                      class="share-copy-link icon-share-hover"
                      title="Copy solution link"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        height="22"
                        viewBox="0 0 24 24"
                        width="22"
                      >
                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                        <path
                          d="M15 1H4c-1.1 0-2 .9-2 2v13c0 .55.45 1 1 1s1-.45 1-1V4c0-.55.45-1 1-1h10c.55 0 1-.45 1-1s-.45-1-1-1zm4 4H8c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h11c1.1 0 2-.9 2-2V7c0-1.1-.9-2-2-2zm-1 16H9c-.55 0-1-.45-1-1V8c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v12c0 .55-.45 1-1 1z"
                        ></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-12">
              <div class="share-block">
                <div>
                  <div class="feedback-user-info">
                    <div class="feedback-user-img">
                      <img
                        src="https://avatars.githubusercontent.com/u/48230483?v=4"
                        alt=""
                      />
                    </div>

                    <div>
                      <p class="feedback-user-name">Kevin Rodriguez</p>
                      <span class="feedback-user-reputation">10 reputations</span>
                    </div>
                  </div>
                </div>

                <div class="user-skill-wrapper">
                  <div class="skill-list">
                    <button class="btn-feedback">
                      <span class="">Mentoring</span>
                      <svg
                        class="MuiSvgIcon-root icon-feedback"
                        focusable="false"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                      >
                        <path
                          d="M18 13h-5v5c0 .55-.45 1-1 1s-1-.45-1-1v-5H6c-.55 0-1-.45-1-1s.45-1 1-1h5V6c0-.55.45-1 1-1s1 .45 1 1v5h5c.55 0 1 .45 1 1s-.45 1-1 1z"
                        ></path>
                      </svg>
                    </button>
                    <button class="btn-feedback">
                      <span class="">Mentoring</span>
                      <svg
                        class="MuiSvgIcon-root icon-feedback"
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
                  <span class="skill-more">more</span>
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
export default {
  data() {
    return {
    };
  },
  computed: {
    solution() {
      return this.$store.state.solution.solution;
    },

  },
  created: function () {
    this.$store.dispatch("solution/fetchOne", this.$route.params.id);
  },
};
</script>

<style lang="scss">
@import "../../../sass/solution-detail.scss";
</style>
