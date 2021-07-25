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
                      <th>Name</th>
                      <th>Email</th>
                      <th>Avatar</th>
                      <th>
                        <router-link :to="{ name: 'add.user' }"
                          ><button type="button" class="btn btn-primary">
                            Add New
                          </button></router-link
                        >
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(user, index) in users" :key="index">
                      <td>{{ index + 1 }}</td>
                      <td>{{ user.username }}</td>
                      <td v-if="user.information">
                        {{ user.information.name }}
                      </td>
                      <td v-else></td>
                      <td>{{ user.email }}</td>
                      <td>
                        <img :src="'/' + user.avatar" alt="" width="60px" />
                      </td>
                      <td>
                        <router-link
                          :to="{ name: 'edit.user', params: { id: user.id } }"
                          class="btn btn-info"
                          >Edit
                        </router-link>
                        <button
                          class="btn btn-danger"
                          @click="deleteUser(user.id)"
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
      title: "Danh sách người dùng",
      currentPage: 1,
    };
  },
  computed: {
    users() {
      return this.$store.state.user.users.data;
    },
    totalPage() {
      return this.$store.state.user.users.last_page;
    },
  },
  watch: {
    currentPage() {
      this.getData();
    },
  },
  created: function () {
    this.$store.dispatch("user/fetch", this.currentPage);
  },
  methods: {
    getData() {
      this.$store.dispatch("user/fetch", this.currentPage);
    },
    deleteUser(id) {
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
          this.$store.dispatch("user/deleteUser", id);
        }
      });
    },
  },
};
</script>

<style>
</style>
