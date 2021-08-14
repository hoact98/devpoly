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
                      <th>Username</th>
                      <th>Email</th>
                      <th>Avatar</th>
                      <th>
                        <router-link :to="{ name: 'add.mentor' }"
                          ><button type="button" class="btn btn-primary">
                            Add New
                          </button></router-link
                        >
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(mentor, index) in mentors[0].users" :key="index">
                      <td>{{ index + 1 }}</td>
                      <td>{{ mentor.username }}</td>
                      <td>{{ mentor.email }}</td>
                      <td>
                        <img :src="'/' + mentor.avatar" alt="" width="60px" />
                      </td>
                      <td>
                        <router-link
                          :to="{ name: 'edit.user', params: { id: mentor.id } }"
                          class="btn btn-info"
                          >Edit
                        </router-link>
                        <button
                          class="btn btn-danger"
                          @click="deleteMentor(mentor.id)"
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
    title: 'Mentor',
      currentPage: 1,
    };
  },
  computed: {
    mentors() {
   
      return this.$store.state.mentor.mentors.data;
    },
    totalPage() {
      return this.$store.state.mentor.mentors.last_page;
    },
  },
  watch: {
    currentPage() {
      this.getData();
    },
  },
  created: function () {
    this.$store.dispatch("mentor/fetch", this.currentPage);
  },
  methods: {
    getData() {
      this.$store.dispatch("mentor/fetch", this.currentPage);
    },
    deleteMentor(id) {
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
          this.$store.dispatch("mentor/deleteMentor", id);
        }
      });
    },
  },
};
</script>

<style>
</style>
