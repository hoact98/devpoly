<template>
    <div class="content-wrapper">
      <!-- START PAGE CONTENT-->
      <div class="page-heading row">
          <breadcrumb :title='title' class="col-6"></breadcrumb>
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
     title: 'Hoá đơn',
     data: {},
      tableProps: {
          search: '',
          length: 10,
          column: 'id',
          dir: 'asc'
      },
      columns: [
          {
              label: 'STT',
              name: 'key',
              orderable: true,
          },
          {
              label: 'Mã hoá đơn',
              name: 'order_nr',
              orderable: true,
          },
          {
              label: 'Họ tên',
              name: 'user.name',
              orderable: true,
          },
          {
              label: 'upgrade',
              name: 'upgrade.name',
              orderable: true,
          },
          {
              label: 'Thời hạn',
              name: 'expiration',
              orderable: true,
          },
          {
              label: 'Trạng thái',
              name: 'status',
              orderable: true,
          },
           {
              label: 'Action',
              name: 'edit.order',
              orderable: false,
              component: TableButton,
              event: "click",
              handler: this.deleteOrder,
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
      async  getData(url = route("orders"), options = this.tableProps) {
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
            this.getData(route("orders"), tableProps);
        },
         deleteOrder: function (id) {
             Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if(Permissions.indexOf('delete orders') == -1){
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Bạn không có quyền xoá!',
                    })
                }else{
                    if (result.value) {
                        //Send Request to server
                        this.$store.dispatch('order/deleteOrder', id).then(
                            this.getData(route("orders"), this.tableProps)
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
