<template>
    <div class="content-wrapper">
      <!-- START PAGE CONTENT-->
      <div class="page-heading row">
          <breadcrumb :title='title' class="col-6"></breadcrumb>
          <router-link v-if="$can('create notifications')" :to="{name:'add.notification'}" class="col-6 text-right mt-5"><button type="button" class="btn btn-primary">Add New</button></router-link>
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

export default {
   data() {
    return {
     title: 'Thông báo',
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
              name: 'id',
              orderable: true,
          },
          {
              label: 'Tiêu đề',
              name: 'title',
              orderable: true,
          },
          {
              label: 'Tài khoản',
              name: 'user.name',
              orderable: true,
          },
           {
              label: 'Action',
              name: 'edit.notification',
              orderable: false,
              component: TableButton,
              event: "click",
              handler: this.deleteNotification,
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
      async  getData(url = route("notifications"), options = this.tableProps) {
           await axios.get(url, {
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
            this.getData(route("notifications"), tableProps);
        },
         deleteNotification: function (id) {
             Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if(Permissions.indexOf('delete notifications') == -1){
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Bạn không có quyền xoá!',
                    })
                }else{
                    if (result.value) {
                        //Send Request to server
                        this.$store.dispatch('notification/deleteNotification', id).then(
                            this.getData(route("notifications"), this.tableProps)
                        )
                    }
                }
            })

          }
    },
    
}
</script>

<style>

</style>
