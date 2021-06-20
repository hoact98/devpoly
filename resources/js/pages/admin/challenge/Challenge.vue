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
                      <th>Title</th>
                      <th>Category</th>
                      <th>Level</th>
                      <th>Language</th>
                      <th>
                        <router-link :to="{name:'add.challenge'}" >
                          <button type="button" class="btn btn-primary">Add New</button>
                        </router-link>
                    </th>

                <th style="text-align: center">
                  <router-link to="/admin/challenge/add"
                    ><button type="button" class="btn btn-primary">
                      Add New
                    </button></router-link
                  >
                </th>
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th style="text-align: center">ID</th>
                      <th style="text-align: center">Title</th>
                      <th style="text-align: center">Category</th>
                      <th style="text-align: center">Detail</th>
                      <th style="text-align: center">Action</th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="challenge in challenges" :key="challenge.id">

                      <td>{{ challenge.id }}</td>
                      <td>{{ challenge.title }} </td>
                      <td>{{ challenge.category.name }} </td>
                      <td>{{challenge.level}}</td>
                      <td>{{challenge.language}}</td>
                      <td>
                        <router-link :to="{ name: 'edit.challenge',params: { id: challenge.id },}" class="btn btn-info">Edit
                        </router-link>
                        <button class="btn btn-danger" @click="deletechallenge(challenge.id)">Delete</button>

                      <td>
                        <p>{{ challenge.id }}</p>
                      </td>
                      <td>
                        <p>{{ challenge.title }}</p>
                      </td>
                      <td>
                        <p>{{ challenge.cate_challen_id }}</p>
                      </td>
                      <th>Detail</th>
                      <td>
                        <router-link
                          :to="{
                            name: 'edit.challenge',
                            params: { id: challenge.id },
                          }"
                          class="btn btn-info"
                          >Edit
                        </router-link>
                        <button
                          class="btn btn-danger"
                          @click="deletechallenge(challenge.id)"
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
      title: "Challenge",
    };
  },


  components: {
    Breadcrumb,
  },

  computed: {
    challenges() {
      return this.$store.state.challenge.challenges;
    },
  },
  created: function () {
    this.$store.dispatch("challenge/fetch");
  },
  methods: {
    deletechallenge(id) {
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
          this.$store.dispatch("challenge/deletechallenge", id);
        }
      });
    },
  },
};
</script>

<style>
</style>




