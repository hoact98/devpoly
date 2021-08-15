<template>
  <section class="content challenge">
    <div class="container">
      <div class="row"></div>

      <div class="row">
        <div class="col-md-8">
          <!-- jquery validation -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">{{ title }}</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form
              @submit.prevent="submitSolution"
              @keydown="form.onKeydown($event)"
            >
              <div class="card-body">
                <div class="form-group">
                  <label for="">Title:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Title"
                    name="title"
                    v-model="form.title"
                    :class="{
                      'is-invalid': form.errors.has('title'),
                    }"
                  />
                  <div
                    class="text-danger"
                    v-if="form.errors.has('title')"
                    v-html="form.errors.get('title')"
                  />
                </div>
                <div class="form-group">
                  <label for="">Description:</label>
                  <ckeditor
                    name="description"
                    v-model="form.description"
                    :class="{ 'is-invalid': form.errors.has('description') }"
                  ></ckeditor>
                </div>

                <div class="form-group">
                  <label for="">Link GitHub:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Link GitHub"
                    name="link_github"
                    v-model="form.link_github"
                    :class="{ 'is-invalid': form.errors.has('link_github') }"
                  />
                  <div
                    class="text-danger"
                    v-if="form.errors.has('link_github')"
                    v-html="form.errors.get('link_github')"
                  />
                </div>
                <div class="form-group">
                  <label for="">Link Demo:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Link Demo"
                    name="demo_url"
                    v-model="form.demo_url"
                    :class="{ 'is-invalid': form.errors.has('demo_url') }"
                  />
                  <div
                    class="text-danger"
                    v-if="form.errors.has('demo_url')"
                    v-html="form.errors.get('demo_url')"
                  />
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.card -->
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
    form: new Form({
      title: "",
      description: "",
      link_github: "",
      demo_url: "",
      challen_id: "",
    }),
    title: "Submit Solution",
  }),
  computed: mapGetters({
    challenge: "challenge/challenge",
  }),
  created() {
    this.$store.dispatch("challenge/fet_One_Data", this.$route.params.slug);
  },
  methods: {
    async submitSolution() {
      this.form.challen_id = this.challenge.id;
      if (this.form.challen_id != "") {
        await this.form
          .post(route("create.solution"))
          .then((response) => {
            this.$router.push({name: 'showDetailSolution', params: { id: response.data.data.id }});
          })
          .catch(() => {
            Swal.fire({
              icon: "error",
              title: "Oops...",
              text: "Something went wrong!",
            });
          });
      }
    },
  },
};
</script>

<style lang="scss">
@import "../../../sass/addSolution.scss";
</style>
