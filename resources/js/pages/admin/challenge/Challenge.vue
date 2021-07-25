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
                        <router-link :to="{ name: 'add.challenge' }">
                          <button type="button" class="btn btn-primary">
                            Add New
                          </button>
                        </router-link>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(challenge, index) in challenges" :key="index">
                      <td>{{ index + 1 }}</td>
                      <td>{{ challenge.title }}</td>
                      <td>{{ challenge.category.name }}</td>
                      <td>{{ challenge.level }}</td>
                      <td>{{ challenge.language }}</td>
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
      title: "Challenge",
      currentPage: 1,
    };
  },
  computed: {
    challenges() {
      return this.$store.state.challenge.challenges.data;
    },
    totalPage() {
      return this.$store.state.challenge.challenges.last_page;
    },
  },
watch: {
    currentPage() {
      this.getData();
    },
  },
  created: function () {
    this.$store.dispatch("challenge/fetch", this.currentPage);
  },
  methods: {
    getData() {
      this.$store.dispatch("challenge/fetch", this.currentPage);
    },
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
