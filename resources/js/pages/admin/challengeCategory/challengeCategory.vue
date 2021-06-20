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
              <router-link :to="{name: 'add.challengecategory'}"><button type="button" class="btn btn-primary">Add New</button></router-link>
              <div class="card-body">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th style="text-align: center">ID</th>
                      <th style="text-align: center">Name</th>
                      <th style="text-align: center">SlTT</th>
                      <th style="text-align: center">Detail</th>
                    <th style="text-align: center">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="challengecategory in challengecategories" :key="challengecategory.id">
                      <td><p>{{ challengecategory.id }}</p></td>
                      <td><p>{{ challengecategory.name }}</p></td>
                      <th>Sl TT</th>
                      <th>Detail</th>
                      <td>
                        <router-link
                          :to="{
                            name: 'edit.challengecategory',
                            params: { id: challengecategory.id },
                          }"
                          class="btn btn-info"
                          >Edit
                        </router-link>
                        <button
                          class="btn btn-danger"
                          @click="deletechallengecategory(challengecategory.id)"
                        >
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
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</template>

<script>
import Breadcrumb from "../../../components/Breadcrumb.vue";
export default {
  data() {
    return {
      title: "Challenge Category",
    };
  },
  components: {
    Breadcrumb,
  },
  computed: {
    challengecategories() {
      return this.$store.state.challengecategory.challengecategories;
    },
  },
  created: function () {
    this.$store.dispatch("challengecategory/fetch");
  },
  methods: {
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
