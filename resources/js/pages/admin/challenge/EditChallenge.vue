<template>
  <div class="content-wrapper">
    <breadcrumb :title="title"></breadcrumb>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">{{ title }}</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form
                @submit.prevent="updateChallenge"
                @keydown="form.onKeydown($event)"
              >
                <div class="card-body">
                  <div class="form-group">
                    <label for="">Title:</label>
                    <input
                      type="text"
                      class="form-control"
                      id=""
                      placeholder="Title"
                      name="title"
                     v-model="data.title"
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
                         v-model="data.description"
                      :class="{ 'is-invalid': form.errors.has('description') }"
                    ></ckeditor>
                  </div>
                  <div class="form-group">
                    <label for="">Language:</label>
                    <select
                      class="form-select"
                      aria-label="Default select example"
                      name="language"
                              v-model="data.language"
                      :class="{ 'is-invalid': form.errors.has('language') }"
                    >
                      <option selected>Chọn Ngôn Ngữ</option>
                      <option value="HTML CSS JS">HTML CSS JS</option>
                      <option value="PHP">PHP</option>
                      <option value="PYTHON">PYTHON</option>
                    </select>
                    <div
                      class="text-danger"
                      v-if="form.errors.has('language')"
                      v-html="form.errors.get('language')"
                    />
                  </div>
                  <div class="form-group">
                    <label for="">Link-Figma:</label>
                    <input
                      type="text"
                      class="form-control"
                      id=""
                      placeholder="Link-Figma"
                      name="link_figma"
                          v-model="data.link_figma"
                      :class="{ 'is-invalid': form.errors.has('link_figma') }"
                    />
                    <div
                      class="text-danger"
                      v-if="form.errors.has('link_figma')"
                      v-html="form.errors.get('link_figma')"
                    />
                  </div>
                  <div class="form-group">
                    <label for="">Level:</label>
                    <select
                      class="form-select"
                      aria-label="Default select example"
                      name="level"
                                v-model="data.level"
                      :class="{ 'is-invalid': form.errors.has('level') }"
                    >
                      <option selected>Chọn độ khó</option>
                      <option value="1">Easy</option>
                      <option value="2">Normal</option>
                      <option value="3">Dificult</option>
                    </select>
                    <div
                      class="text-danger"
                      v-if="form.errors.has('level')"
                      v-html="form.errors.get('level')"
                    />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCa">Category:</label>
                    <select
                      class="form-select"
                      aria-label="Default select example"
                      name="cate_challen_id"
                                      v-model="data.cate_challen_id"
                      :class="{
                        'is-invalid': form.errors.has('cate_challen_id'),
                      }"
                    >
                      <option selected>Chọn danh mục thử thách</option>
                      <option
                        v-for="challengecategory in data.challengecategory"
                        :key="challengecategory.id"
                        :value="challengecategory.id"
                      >
                        {{ challengecategory.name }}
                      </option>
                    </select>
                    <div
                      class="text-danger"
                      v-if="form.errors.has('cate_challen_id')"
                      v-html="form.errors.get('cate_challen_id')"
                    />
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit"  :disabled="form.busy" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6"></div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</template>

<script>
import Breadcrumb from "../../../components/Breadcrumb.vue";
import { mapGetters } from "vuex";
export default {
  data: () => ({
    form: new Form({
      title: "",
      description: "",
      language: "",
      link_figma: "",
      level: "",
      cate_challen_id: "",
    }),
    title: "Edit Challenge",
  }),
  components: {
    Breadcrumb,
  },
  computed: mapGetters({
    data: "challenge/challenge",
  }),

  created() {
    this.$store.dispatch("challenge/fetchOne", this.$route.params.id);
  },
  methods: {
    async updateChallenge() {
      this.form.title = this.data.title;
      this.form.description = this.data.description;
      this.form.language = this.data.language;
      this.form.link_figma = this.data.link_figma;
      this.form.level = this.data.level;
    this.form.cate_challen_id = this.data.cate_challen_id;
      await this.form
        .post(route("update.challenge", this.$route.params.id))
        .then((response) => {
          if (response.data.status == "success") {
            this.$router.push({ name: "challenges" });
            Swal.fire("Update", "Challenge update  Successfully", "success");
          }
        })
        .catch(() => {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
          });
        });
    },
  },
};
</script>

<style>
</style>
