<template>
  <div class="content-wrapper">
    <breadcrumb :title="title"></breadcrumb>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">{{ title }}</h3>
              </div>
              <!-- /.card-header -->

              <div class="card-body">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Image</th>
                    <th><router-link :to="{name: 'add.challengecategory'}"><button type="button" class="btn btn-primary">Add New</button></router-link></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(challengecategory,index) in challengecategories" :key="index">
                      <td>{{ index+1 }}</td>
                      <td>{{ challengecategory.name }}</td>
                      <td><img :src="'/'+challengecategory.image" alt="" width="60px"></td>
                      <td>
                        <router-link :to="{ name: 'edit.challengecategory',params: { id: challengecategory.id },}" class="btn btn-info">Edit
                        </router-link>
                        <button class="btn btn-danger"
                          @click="deletechallengecategory(challengecategory.id)">
                          Delete
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
           <nav aria-label="Page navigation example">
          <ul class="pagination">
            <li class="page-item" v-if="currentPage > 1">
              <a class="page-link" href="#" @click.prevent="currentPage--"
                >Previous</a
              >
            </li>
            <li v-for="page in totalPage" :key="page" class="page-item">
              <a
                class="page-link"
                href="#"
                @click.prevent="currentPage = page"
                >{{ page }}</a
              >
            </li>
            <li class="page-item" v-if="currentPage < totalPage">
              <a class="page-link" href="#" @click.prevent="currentPage++"
                >Next</a
              >
            </li>
          </ul>
        </nav>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: "Challenge Category",
         currentPage: 1,
    };
  },
  computed: {
    challengecategories() {
      return this.$store.state.challengecategory.challengecategories.data;
    },
        totalPage() {
      return this.$store.state.challengecategory.challengecategories.last_page;
    },
  },
  created: function () {
    this.$store.dispatch("challengecategory/fetch", this.currentPage);
  },
    watch: {
    currentPage() {
      this.getData();
    },
  },
  methods: {
        getData() {
    this.$store.dispatch("challengecategory/fetch", this.currentPage);
    },
    deletechallengecategory(id) {
      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!",
      }).then((result) => {
        if (result.value) {
          //Send Request to server
          this.$store.dispatch("challengecategory/deletechallengecategory", id);
        }
      });
    },
  },
};
</script>

<style>
</style>
