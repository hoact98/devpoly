<template>
    <div class="content-wrapper">
        <!-- START PAGE CONTENT-->
        <div class="page-heading">
            <breadcrumb :title='title'></breadcrumb>
        </div>
        <div class="page-content fade-in-up">
            <div class="ibox">
                <div class="ibox-head">
                    <div class="ibox-title">{{title}}</div>
                </div>
                <div class="ibox-body">
                    <form @submit.prevent="updateChallengeCategory" @keydown="form.onKeydown($event)">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Tên: </label>
                            <div class="col-sm-10">
                                 <input v-model="data.name" :class="{ 'is-invalid': form.errors.has('name'),}" class="form-control" type="text" name="name" />
                                <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Mô tả: </label>
                            <div class="col-sm-10">
                                <ckeditor v-model="data.description" :class="{'is-invalid': form.errors.has('description'),}" name="description"></ckeditor>
                                <div  class="text-danger" v-if="form.errors.has('description')"
                                  v-html="form.errors.get('description')"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Ảnh: </label>
                            <div class="col-sm-10">
                               <input type="file" @change="upload($event)"
                                :class="{'is-invalid': form.errors.has('image'),}"
                                class="form-control" name="image"/>
                              <div class="text-danger" v-if="form.errors.has('image')" v-html="form.errors.get('image')" />
                              <img :src="'/' + data.image" alt="" width="200" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10 ml-sm-auto">
                                <button class="btn btn-info" type="submit">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            
        </div>
        <!-- END PAGE CONTENT-->
        <Footer></Footer>
    </div>
</template>

<script>
import Footer from '../../../components/AdminFooter.vue';
import { mapGetters } from "vuex";
export default {
  data: () => ({
    form: new Form({
      name: "",
      description: "",
      image: "",
    }),
    title: "Cập nhật danh mục",
  }),
  components:{
    Footer
  },
  computed: mapGetters({
    data: "challengecategory/challengecategory",
  }),
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

<style></style>
