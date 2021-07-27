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
                    <form @submit.prevent="addChallengeCategory" @keydown="form.onKeydown($event)">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Tên: </label>
                            <div class="col-sm-10">
                                <input v-model="form.name" type="text" :class="{ 'is-invalid': form.errors.has('name') }" name="name" class="form-control" id="exampleInputName" placeholder="Enter name">
                                <div class="text-danger" v-if="form.errors.has('name')" v-html="form.errors.get('name')"></div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Mô tả: </label>
                            <div class="col-sm-10">
                               <ckeditor v-model="form.description" :class="{ 'is-invalid': form.errors.has('description') }" name="description"></ckeditor>
                                <!-- <input v-model="form.name" type="text" :class="{ 'is-invalid': form.errors.has('name') }" name="name" class="form-control" id="exampleInputName" placeholder="Enter name"> -->
                                <div class="text-danger" v-if="form.errors.has('description')" v-html="form.errors.get('description')" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Ảnh: </label>
                            <div class="col-sm-10">
                                <input type="file" @change="upload($event)" :class="{ 'is-invalid': form.errors.has('image') }" class="form-control" name="image">
                                <div class="text-danger" v-if="form.errors.has('image')" v-html="form.errors.get('image')" />
                                <img id="previewImg" alt="" width="200" />
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
export default {
   data:() => ({
    form: new Form({
      name: '',
      description: '',
      image: ''
    }),
    title: 'Thêm Danh Mục Thử Thách',
  }),
   components:{
      Footer
  },
    methods: {
      upload(event){
        var file = this.form.image = event.target.files[0];
            if(file){
                var reader = new FileReader();
                reader.onload = function(){
                    $('#previewImg').attr("src",reader.result);
                }
                reader.readAsDataURL(file);
            }
        },
        async addChallengeCategory () {
     await this.form.post(route('create.challengecategory'))
     .then(response => {
        if(response.data.status == 'success'){
          this.$router.push({ name: 'challengecategories' })
            Swal.fire(
                'Created',
                'Challenge Category created Successfully',
                'success'
            );
        }
    }).catch(()=>{
      Swal.fire({
              icon: 'error',
              title: 'Oops...',
              text: 'Something went wrong!',
            })
    });
    },
    }
}
</script>

<style>
</style>