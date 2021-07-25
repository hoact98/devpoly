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
                      placeholder="Title"
                      name="title"
                      v-model="data.title"
                      :class="{ 'is-invalid': form.errors.has('title') }"
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
                      class="form-control select2"
                      aria-label="Default select example"
                      name="language"
                      v-model="data.language"
                      :class="{ 'is-invalid': form.errors.has('language') }"
                    >
                      <option value="">Chọn Ngôn Ngữ</option>
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
                      placeholder="Link-Figma"
                      name="link_figma"
                      v-model="data.link_figma"
                    />
                    <div
                      class="text-danger"
                      v-if="form.errors.has('link_figma')"
                      v-html="form.errors.get('link_figma')"
                    />
                  </div>
                  <div class="form-group">
                    <label for="">Soucre:</label>
                    <input
                      type="file"
                      class="form-control"
                      placeholder="Soucre"
                      name="=soucre"
                      @change="uploadSource($event)"
                      :class="{ 'is-invalid': form.errors.has('soucre') }"
                    />
                    <div
                      class="text-danger"
                      v-if="form.errors.has('soucre')"
                      v-html="form.errors.get('soucre')"
                    />
                  </div>
                  <div class="form-group">
                    <label for="">Image:</label>
                    <input
                      type="file"
                      class="form-control"
                      placeholder="Image"
                      name="=challenge_image"
                      @change="uploadImage($event)"
                      :class="{
                        'is-invalid': form.errors.has('challenge_image'),
                      }"
                    />
                    <div
                      class="text-danger"
                      v-if="form.errors.has('challenge_image')"
                      v-html="form.errors.get('challenge_image')"
                    />
                    <img :src="'/' + data.challenge_image" alt="" width="200" />
                  </div>
                  <div class="form-group">
                    <label for="">Level:</label>
                    <select
                      class="form-control select2"
                      aria-label="Default select example"
                      name="level"
                      v-model="data.level"
                      :class="{ 'is-invalid': form.errors.has('level') }"
                    >
                      <option value="">Chọn độ khó</option>
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
                      class="form-control select2"
                      aria-label="Default select example"
                      name="cate_challen_id"
                      v-model="data.cate_challen_id"
                      :class="{
                        'is-invalid': form.errors.has('cate_challen_id'),
                      }"
                    >
                      <option value="">Chọn danh mục thử thách</option>
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
                  <button
                    type="submit"
                    :disabled="form.busy"
                    class="btn btn-primary"
                  >
                    Submit
                  </button>
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
import { mapGetters } from "vuex";
export default {
  data: () => ({
    form: new Form({
      title: "",
      description: "",
      soucre: "",
      challenge_image: "",
      language: "",
      link_figma: "",
      level: "",
      cate_challen_id: "",
    }),
    title: "Edit Challenge",
  }),
  computed: mapGetters({
    data: "challenge/challenge",
  }),
  created() {
    this.$store.dispatch("challenge/fetchOne", this.$route.params.id);
  },
  methods: {
     uploadSource(event) {
      this.form.soucre = event.target.files[0];
    },
    uploadImage(event) {
      this.form.challenge_image = event.target.files[0];
    },
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
