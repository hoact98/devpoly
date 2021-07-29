<template>
    <div class="content-wrapper">
        <!-- START PAGE CONTENT-->
        <div class="page-heading">
            <breadcrumb :title='title'></breadcrumb>
        </div>
        <div class="page-content fade-in-up">
             <div class="row">
                    <div class="col-lg-3 col-md-4 pr-0 border-right">
                        <div class="ibox" style="height:700px">
                            <div class="ibox-body">
                                <form class="mail-search mb-3" action="javascript:;">
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="Search here...">
                                    </div>
                                </form>
                                <ul class="nav nav-tabs tabs-line">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#tab-1" data-toggle="tab"><i class="ti-user"></i> Thành viên</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#tab-2" data-toggle="tab"><i class="fa fa-users"></i> Nhóm</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="tab-1">
                                       
                                    </div>
                                    <div class="tab-pane fade" id="tab-2">
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 pl-0">
                        <div class="ibox" style="height:700px">
                            <div class="ibox-body">
                                <div class="nav-tabs">
                                     <div class="admin-block d-flex">
                                        <div class="mr-3">
                                            <img src="/files/1627378141-5.jpg" class="rounded-circle" width="40px" height="40" />
                                        </div>
                                        <div class="admin-info">
                                            <div class="font-strong">Hoa Chu</div><small>user</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
        </div>
        <!-- END PAGE CONTENT-->
        <Footer></Footer>
    </div>
</template>

<script>
import Footer from '../../../components/AdminFooter.vue';

export default {
   data:() => ({
    title: 'Trao đổi',
  }),
   components:{
      Footer
  },
    methods: {
      
    }
}
</script>

<style>

</style>