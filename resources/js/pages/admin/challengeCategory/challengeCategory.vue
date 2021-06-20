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
<<<<<<< HEAD
              
=======
              <router-link :to="{name: 'add.challengecategory'}"><button type="button" class="btn btn-primary">Add New</button></router-link>
>>>>>>> 9b7d408 (admin new)
              <div class="card-body">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
<<<<<<< HEAD
                      <th>ID</th>
                      <th>Name</th>
                      <th>Image</th>
                    <th><router-link :to="{name: 'add.challengecategory'}"><button type="button" class="btn btn-primary">Add New</button></router-link></th>
=======
                      <th style="text-align: center">ID</th>
                      <th style="text-align: center">Name</th>
                      <th style="text-align: center">SlTT</th>
                      <th style="text-align: center">Detail</th>
                    <th style="text-align: center">Action</th>
>>>>>>> 9b7d408 (admin new)
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="challengecategory in challengecategories" :key="challengecategory.id">
<<<<<<< HEAD
                      <td>{{ challengecategory.id }}</td>
                      <td>{{ challengecategory.name }}</td>
                      <td><img :src="'/'+challengecategory.image" alt="" width="60px"></td>
                      <td>
                        <router-link :to="{ name: 'edit.challengecategory',params: { id: challengecategory.id },}" class="btn btn-info">Edit
                        </router-link>
                        <button class="btn btn-danger"
                          @click="deletechallengecategory(challengecategory.id)">
=======
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
>>>>>>> 9b7d408 (admin new)
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
<<<<<<< HEAD
=======
import Breadcrumb from "../../../components/Breadcrumb.vue";
>>>>>>> 9b7d408 (admin new)
export default {
  data() {
    return {
      title: "Challenge Category",
    };
  },
<<<<<<< HEAD
=======
  components: {
    Breadcrumb,
  },
>>>>>>> 9b7d408 (admin new)
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
<<<<<<< HEAD
</style>
=======
</style>
>>>>>>> 9b7d408 (admin new)
