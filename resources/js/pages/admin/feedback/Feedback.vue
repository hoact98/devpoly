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
import ApprovedFeedback from '../../../components/ApprovedFeedback.vue';
export default {
   data() {
      return {
      title: 'Danh sách bình luận',
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
              label: 'Nội dung',
              name: 'feedback_content',
              orderable: true,
              width: 10,
          },
          {
              label: 'Họ tên',
              name: 'users.name',
              columnName: 'users.name',
              orderable: true,
          },
          {
              label: 'Giải pháp',
              name: 'solutions.title',
              columnName: 'solutions.title',
              orderable: true,
          },
          
          {
              label: 'Phê duyệt',
              name: 'is_approved',
              component: ApprovedFeedback,
              orderable: true,
              event: "click",
              handler: this.updateApproved,
          },
           {
              label: 'Lượt thích',
              name: 'upvote.length',
              orderable: false,
          },
          {
              label: 'Action',
              name: 'add.feedback',
              orderable: false,
              component: TableButton,
              event: "click",
              handler: this.deleteFeedback,
          }
      ]
    };
  },
   components:{
      Footer,
      TableButton,
      ApprovedFeedback
  },
    created() {
        this.getData();
    },
    methods: {
        getData(url = route("feedbacks"), options = this.tableProps) {
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
            this.getData(route("feedbacks"), tableProps);
        },   
        updateApproved(id){
            this.$store.dispatch('feedback/updateApproved', id).then(
                this.getData(route("feedbacks"), this.tableProps)
            )
        },
        deleteFeedback(id) {
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
                this.$store.dispatch('feedback/deleteFeedback', id).then(
                    this.getData(route("feedbacks"), this.tableProps)
                )
                }

            })
          }
    }
}

</script>

<style>

</style>
