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
                                    <div class="tab-pane fade show active contacts_body" id="tab-1">
                                        <ul class="contacts">
                                            <li class="active">
                                                <div class="d-flex bd-highlight">
                                                    <div class="img_cont">
                                                        <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                                                        <span class="online_icon"></span>
                                                    </div>
                                                    <div class="user_info">
                                                        <span>Khalid</span>
                                                        <p>Kalid is online</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex bd-highlight">
                                                    <div class="img_cont">
                                                        <img src="https://2.bp.blogspot.com/-8ytYF7cfPkQ/WkPe1-rtrcI/AAAAAAAAGqU/FGfTDVgkcIwmOTtjLka51vineFBExJuSACLcBGAs/s320/31.jpg" class="rounded-circle user_img">
                                                        <span class="online_icon offline"></span>
                                                    </div>
                                                    <div class="user_info">
                                                        <span>Taherah Big</span>
                                                        <p>Taherah left 7 mins ago</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex bd-highlight">
                                                    <div class="img_cont">
                                                        <img src="https://i.pinimg.com/originals/ac/b9/90/acb990190ca1ddbb9b20db303375bb58.jpg" class="rounded-circle user_img">
                                                        <span class="online_icon"></span>
                                                    </div>
                                                    <div class="user_info">
                                                        <span>Sami Rafi</span>
                                                        <p>Sami is online</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex bd-highlight">
                                                    <div class="img_cont">
                                                        <img src="https://static.turbosquid.com/Preview/001214/650/2V/boy-cartoon-3D-model_D.jpg" class="rounded-circle user_img">
                                                        <span class="online_icon offline"></span>
                                                    </div>
                                                    <div class="user_info">
                                                        <span>Rashid Samim</span>
                                                        <p>Rashid left 50 mins ago</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane fade contacts_body" id="tab-2">
                                        <ul class="contacts">
                                            <li class="active">
                                                <div class="d-flex bd-highlight">
                                                    <div class="img_cont">
                                                        <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                                                    </div>
                                                    <div class="user_info">
                                                        <span>Khalid</span>
                                                        <p>Kalid is online</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="d-flex bd-highlight">
                                                    <div class="img_cont">
                                                        <img src="https://2.bp.blogspot.com/-8ytYF7cfPkQ/WkPe1-rtrcI/AAAAAAAAGqU/FGfTDVgkcIwmOTtjLka51vineFBExJuSACLcBGAs/s320/31.jpg" class="rounded-circle user_img">
                                                    </div>
                                                    <div class="user_info">
                                                        <span>Taherah Big</span>
                                                        <p>Taherah left 7 mins ago</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 pl-0">
                        <div class="ibox" style="height:700px">
                            <div class="ibox-body">
                                <div class="nav-tabs">
                                    <div class="d-flex bd-highlight">
                                        <div class="img_cont">
                                            <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                                            <span class="online_icon"></span>
                                        </div>
                                        <div class="user_info">
                                            <span>Chat with Khalid</span>
                                            <p>admin</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="msg_card_body">
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
                                        </div>
                                        <div class="msg_cotainer">
                                            Hi, how are you samim?
                                            <span class="msg_time">8:40 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Hi Khalid i am good tnx how about you?
                                            <span class="msg_time_send">8:55 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
                                        </div>
                                    </div>
                                </div>
                                 <div class="type_msg">
                                    <div class="input_msg_write">
                                    <input type="text" class="write_msg" placeholder="Type a message" />
                                    <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
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
    .contacts_body{
        padding:  0.75rem 0 !important;
        overflow-y: auto;
        white-space: nowrap;
        height: 555px;
    }
    .msg_card_body{
        overflow-y: auto;
        height: 540px;
    }
    .contacts{
        list-style: none;
        padding: 0;
    }
    .contacts li{
        width: 100% !important;
        padding: 5px 10px;
        margin-bottom: 15px !important;
    }
    .user_img{
        height: 50px;
        width: 50px;
        border:1.5px solid #f5f6fa;
    }
    .user_img_msg{
        height: 40px;
        width: 40px;
        border:1.5px solid #f5f6fa;
    }
	.img_cont{
        position: relative;
        height: 50px;
        width: 50px;
	}
	.img_cont_msg{
			height: 40px;
			width: 40px;
	}
	.online_icon{
		position: absolute;
		height: 10px;
		width:10px;
		background-color: #4cd137;
		border-radius: 50%;
		bottom: 0.2em;
		right: 0.2em;
		border:1.5px solid white;
	}
	.offline{
		background-color: #c23616 !important;
	}
	.user_info{
		margin-top: auto;
		margin-bottom: auto;
		margin-left: 15px;
	}
	.user_info span{
		font-size: 14px;
		color: black;
	}
	.user_info p{
	font-size: 10px;
	color: rgba(24, 23, 23, 0.6);
	}
    	.msg_cotainer{
		margin-top: auto;
		margin-bottom: auto;
		margin-left: 10px;
		border-radius: 25px;
		background-color: #82ccdd;
		padding: 10px;
		position: relative;
	}
	.msg_cotainer_send{
		margin-top: auto;
		margin-bottom: auto;
		margin-right: 10px;
		border-radius: 25px;
		background-color: #78e08f;
		padding: 10px;
		position: relative;
	}
	.msg_time{
		position: absolute;
		left: 0;
		bottom: -15px;
		color: rgba(22, 22, 22, 0.5);
		font-size: 10px;
	}
	.msg_time_send{
		position: absolute;
		right:0;
		bottom: -15px;
		color: rgba(12, 12, 12, 0.5);
		font-size: 10px;
	}
	.msg_head{
		position: relative;
	}
    .input_msg_write input {
        background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
        border: medium none;
        color: #4c4c4c;
        font-size: 15px;
        min-height: 48px;
        width: 100%;
    }

    .type_msg {
        border-top: 1px solid #c4c4c4;
        border-bottom: 1px solid #c4c4c4;
        position: relative;
    }
    .msg_send_btn {
        background: #05728f none repeat scroll 0 0;
        border: medium none;
        border-radius: 50%;
        color: #fff;
        cursor: pointer;
        font-size: 17px;
        height: 33px;
        position: absolute;
        right: 0;
        top: 11px;
        width: 33px;
    }
</style>