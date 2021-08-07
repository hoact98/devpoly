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
import ReactiveLink from '../../../components/ReactiveLink.vue';
export default {
   data() {
      return {
      title: 'Danh sách giải pháp',
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
              name:'key',
              orderable: false,
          },
           {
              label: 'Tiêu đề',
              name:'title',
              orderable: true,
              width: 10,
          },
           {
              label: 'Người đăng',
              name: 'user.name',
              columnName: 'users.name',
              orderable: true,
          },
          {
              label: 'Link demo',
              name: 'demo_url',
              component: ReactiveLink,
              orderable: true,
          },
          {
              label: 'Link github',
              name: 'link_github',
              component: ReactiveLink,
              orderable: true,
          },
          {
              label: 'Số bình luận',
              name: 'feedbacks.length',
              orderable: false,
          },
          {
              label: 'Thử thách',
              name: 'challenge.title',
              columnName: 'challenges.title',
              orderable: true,
          },
          {
              label: 'Action',
              name: 'edit.solution',
              orderable: false,
              component: TableButton,
              event: "click",
              handler: this.deleteSolution,
          }
      ]
    };
  },
   components:{
      Footer,
      TableButton,
      ReactiveLink
  },
    created() {
        this.getData();
    },
    methods: {
        getData(url = route("solutions"), options = this.tableProps) {
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
            this.getData(route("solutions"), tableProps);
        },
         deleteSolution(id) {
            Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {

              if (result.value) {
                //Send Request to server
                this.$store.dispatch('solution/deleteSolution', id).then(
                    this.getData(route("solutions"), this.tableProps)
                )
                }

            })
          }
    }
}

</script>

<style>

</style>
