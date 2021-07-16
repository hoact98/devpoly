<template>
  <div class="content-wrapper">
      <!-- START PAGE CONTENT-->
      <div class="page-heading row">
          <breadcrumb :title='title' class="col-6"></breadcrumb>
          <router-link :to="{name:'add.challenge'}" class="col-6 text-right mt-5"><button type="button" class="btn btn-primary">Add New</button></router-link>
      </div>
      <div class="page-content fade-in-up">
        <div class="ibox">
              <div class="ibox-head">
                  <div class="ibox-title">Data Table</div>
              </div>
              <div class="ibox-body">
                  <data-table  :data="data"
                    :columns="columns"
                    @on-table-props-changed="reloadTable"
                    class="table table-head-fixed text-nowrap">
                  </data-table> 
              </div>
          </div>
      </div>
      <Footer></Footer>
  </div>
</template>

<script>
import Footer from '../../../components/AdminFooter.vue';
import TableButton from '../../../components/TableButton.vue';
export default {
  data() {
    return {
      title: "Thử thách",
       data: {},
      tableProps: {
          search: '',
          length: 10,
          column: 'id',
          dir: 'desc'
      },
      columns: [
          {
              label: 'ID',
              name:'id',
              orderable: true,
          },
          {
              label: 'Tiêu đề',
              name: 'title',
              orderable: true,
          },
          {
              label: 'Ngôn ngữ',
              name: 'language',
              orderable: true,
          },
          {
              label: 'Danh mục',
              name: 'category.name',
              orderable: true,
          },
          {
              label: 'Cấp độ',
              name: 'level',
              orderable: true,
          },
          {
              label: 'Action',
              name: 'edit.challenge',
              orderable: false,
              component: TableButton,
              event: "click",
              handler: this.deleteChallenge,
          }
      ]
    };
  },
   components:{
      Footer,
      TableButton
  },
  created() {
     this.getData();
  },
  methods: {
    getData(url = route("challenges"), options = this.tableProps) {
        axios.get(url, {
            params: options
        })
        .then(response => {
            this.data = response.data;
        })
        // eslint-disable-next-line
        .catch(errors => {
            //Handle Errors
        })
    },
    reloadTable(tableProps) {
        this.getData(route("challenges"), tableProps);
    },
    deleteChallenge(id) {
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
          this.getData();
        }
      });
    },
  },
};
</script>

<style>
</style>
