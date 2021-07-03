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
              <form @submit.prevent="addChallenge" @keydown="form.onKeydown($event)">
                <div class="card-body">
                  <div class="form-group">
                    <label for="">Title:</label>
                    <input type="text" class="form-control" placeholder="Title" name="title" v-model="form.title" :class="{
                        'is-invalid': form.errors.has('title'), }"/>
                    <div class="text-danger" v-if="form.errors.has('title')" v-html="form.errors.get('title')" />
                  </div>
                  <div class="form-group">
                    <label for="">Description:</label>
                    <ckeditor name="description" v-model="form.description"
                      :class="{ 'is-invalid': form.errors.has('description') }"></ckeditor>
                  </div>
                  <div class="form-group">
                    <label for="">Language:</label>
                    <select class="form-control select2" aria-label="Default select example" name="language" v-model="form.language"
                      :class="{ 'is-invalid': form.errors.has('language') }">
                      <option value="">Chọn Ngôn Ngữ</option>
                      <option value="HTML CSS JS">HTML CSS JS</option>
                      <option value="PHP">PHP</option>
                      <option value="PYTHON">PYTHON</option>
                    </select>
                    <div class="text-danger" v-if="form.errors.has('language')"
                      v-html="form.errors.get('language')"/>
                  </div>
                  <div class="form-group">
                    <label for="">Link-Figma:</label>
                    <input type="text"
                      class="form-control"
                      placeholder="Link-Figma"
                      name="link_figma"
                      v-model="form.link_figma"
                      :class="{ 'is-invalid': form.errors.has('link_figma') }"/>
                    <div class="text-danger"
                      v-if="form.errors.has('link_figma')"
                      v-html="form.errors.get('link_figma')" />
                  </div>
                  <div class="form-group">
                    <label for="">Level:</label>
                    <select class="form-control select2"
                      aria-label="Default select example" name="level"
                      v-model="form.level"
                      :class="{ 'is-invalid': form.errors.has('level') }">
                      <option value="">Chọn độ khó</option>
                      <option value="1">Easy</option>
                      <option value="2">Normal</option>
                      <option value="3">Dificult</option>
                    </select>
                    <div class="text-danger" v-if="form.errors.has('level')" v-html="form.errors.get('level')" />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCa">Category:</label>
                    <select
                      class="form-control select2"
                      aria-label="Default select example"
                      name="cate_challen_id"
                      v-model="form.cate_challen_id"
                      :class="{'is-invalid': form.errors.has('cate_challen_id'), }">
                      <option value="">Chọn danh mục thử thách</option>
                      <option v-for="challengecategory in challengecategories"
                        :key="challengecategory.id"
                        :value="challengecategory.id">
                        {{ challengecategory.name }}
                      </option>
                    </select>
                    <div
                      class="text-danger"
                      v-if="form.errors.has('cate_challen_id')"
                      v-html="form.errors.get('cate_challen_id')"/>
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
    title: "Add Challenge",
  }),
  computed: {
    challengecategories() {
      return this.$store.state.challengecategory.challengecategories;
    },
  },
  created: function () {
    this.$store.dispatch("challengecategory/fetch");
  },
  methods: {
    async addChallenge() {
        await this.form
          .post(route("create.challenge"))
          .then((response) => {
            if (response.data.status == "success") {
              this.$router.push({ name: "challenges" });
              Swal.fire("Created", "Challenge created Successfully", "success");
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
