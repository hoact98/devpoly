<template>
  <div class="content-wrapper">
      <!-- START PAGE CONTENT-->
      <div class="page-heading row">
          <breadcrumb :title='title' class="col-6"></breadcrumb>
          <router-link :to="{name:'add.challengecategory'}" class="col-6 text-right mt-5"><button type="button" class="btn btn-primary">Add New</button></router-link>
      </div>
      <div class="page-content fade-in-up">
        <div class="ibox">
              <div class="ibox-head">
                  <div class="ibox-title">{{title}}</div>
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
import ImageComponent from '../../../components/ImageComponent.vue';

export default {
  data() {
    return {
      title: "Challenge Category",
       data: {},
      tableProps: {
          search: '',
          length: 10,
          column: 'id',
          dir: 'asc'
      },
      columns: [
          {
              label: 'ID',
              name:'id',
              orderable: true,
          },
          {
              label: 'Tên',
              name: 'name',
              orderable: true,
              // columnName: name,
          },
          {
              label: 'Hình ảnh',
              orderable: false,
              component: ImageComponent,
              width: 10,
          },
          {
              label: 'Tổng số thử thách',
              name:'challenges.length',
              orderable: false,
          },
          {
              label: 'Action',
              name: 'edit.challengecategory',
              orderable: false,
              component: TableButton,
              event: "click",
              handler: this.deletechallengecategory,
          }
      ]
    };
  },
  components:{
    Footer,
    TableButton,
    ImageComponent
  },
  created() {
        this.getData();
    },
  methods: {
    getData(url = route("challengecategories"), options = this.tableProps) {
        axios.get(url, {
            params: options
        })
        .then(response => {
            var result = response.data;
            for(var i in result['data']){
                result['data'][i].key=Number(i)+1;
            }
            this.data = result;
        })
        // eslint-disable-next-line
        .catch(errors => {
            //Handle Errors
        })
    },
    reloadTable(tableProps) {
        this.getData(route("challengecategories"), tableProps);
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
          this.$store.dispatch("challengecategory/deletechallengecategory", id).then(
                    this.getData(route("challengecategories"), this.tableProps)
                )
        }
      });
    },
  }
};
</script>

<style>
</style>
