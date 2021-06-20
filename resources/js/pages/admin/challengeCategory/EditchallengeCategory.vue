<<<<<<< HEAD
=======

>>>>>>> 9b7d408 (admin new)
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
<<<<<<< HEAD
              <form @submit.prevent="updateChallengeCategory" @keydown="form.onKeydown($event)" >
                <div class="card-body">
                  <div class="form-group">
                    <label>Name:</label>
                    <input v-model="data.name" :class="{ 'is-invalid': form.errors.has('name'),}" class="form-control" type="text" name="name" />
                    <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                  </div>
                  <div class="form-group">
                    <label>Description:</label>
                    <ckeditor v-model="data.description" :class="{'is-invalid': form.errors.has('description'),}" name="description"></ckeditor>
                    <div  class="text-danger" v-if="form.errors.has('description')"
                      v-html="form.errors.get('description')"/>
=======
              <form
                @submit.prevent="updateChallengeCategory"
                @keydown="form.onKeydown($event)"
              >
                <div class="card-body">
                  <div class="form-group">
                    <label>Name:</label>
                    <input
                      v-model="data.name"
                      :class="{ 'is-invalid': form.errors.has('name') }"
                      class="form-control"
                      type="text"
                      name="name"
                    />
                    <div
                      class="text-danger"
                      v-if="form.errors.has('name')"
                      v-html="form.errors.get('name')"
                    />
                  </div>
                  <div class="form-group">
                    <label>Description:</label>
                    <ckeditor
                      v-model="data.description"
                      :class="{ 'is-invalid': form.errors.has('description') }"
                      name="description"
                    ></ckeditor>
>>>>>>> 9b7d408 (admin new)
                  </div>

                  <div class="form-group">
                    <label for="">Image</label>
<<<<<<< HEAD
                    <input type="file"
                      @change="upload($event)"
                      :class="{'is-invalid': form.errors.has('image'),}"
                      class="form-control"
                      name="image"/>
                    <div class="text-danger" v-if="form.errors.has('image')" v-html="form.errors.get('image')" />
=======
                    <input
                      type="file"
                      @change="upload($event)"
                      :class="{ 'is-invalid': form.errors.has('image') }"
                      class="form-control"
                      name="image"
                    />
                    <div
                      class="text-danger"
                      v-if="form.errors.has('image')"
                      v-html="form.errors.get('image')"
                    />
>>>>>>> 9b7d408 (admin new)
                    <img :src="'/' + data.image" alt="" width="200" />
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

<<<<<<< HEAD
<script>
=======

<script>
import Breadcrumb from "../../../components/Breadcrumb.vue";
>>>>>>> 9b7d408 (admin new)
import { mapGetters } from "vuex";
export default {
  data: () => ({
    form: new Form({
      name: "",
      description: "",
      image: "",
    }),
    title: "Cập nhật Danh Muc Thu Thach",
  }),
<<<<<<< HEAD
  computed: mapGetters({
    data: "challengecategory/challengecategory",
  }),
=======
  components: {
    Breadcrumb,
  },
  computed: mapGetters({
    data: "challengecategory/challengecategory",
  }),

>>>>>>> 9b7d408 (admin new)
  created() {
    this.$store.dispatch("challengecategory/fetchOne", this.$route.params.id);
  },
  methods: {
    upload(event) {
      this.form.image = event.target.files[0];
    },
    async updateChallengeCategory() {
      this.form.name = this.data.name;
      this.form.description = this.data.description;
      await this.form
        .post(route("update.challengecategory", this.$route.params.id))
        .then((response) => {
          if (response.data.status == "success") {
            this.$router.push({ name: "challengecategories" });
            Swal.fire(
              "Update",
              "Challenge Category update  Successfully",
              "success"
            );
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

<<<<<<< HEAD
<style></style>
=======
<style>
</style>
>>>>>>> 9b7d408 (admin new)
