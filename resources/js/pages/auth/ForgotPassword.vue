<template>
     <div class="content">
        <div class="brand">
            <a class="link" href="index.html">DevPOLY</a>
        </div>
        <form @submit.prevent="forgot" @keydown="form.onKeydown($event)">
            <div  ref="form">
                <h3 class="m-t-10 m-b-10">Quên mật khẩu</h3>
                <p class="m-b-20">Nhập địa chỉ email của bạn vào bên dưới và chúng tôi sẽ gửi cho bạn hướng dẫn đặt lại mật khẩu.</p>
                <div class="form-group">
                    <input type="email" class="form-control" name="email" autocomplete v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" placeholder="Nhập địa chỉ email">
                    <div class="text-danger" v-if="form.errors.has('email')" v-html="form.errors.get('email')" />
                </div>
                <div class="form-group">
                    <button class="btn btn-info btn-block" type="submit">Đặt lại mật khẩu</button>
                </div>
            </div>
             <p class="m-b-20 d-none" ref="noti" >Chúng tôi đã gửi một liên kết đến email của bạn. Vui lòng kiểm tra email để đặt lại mật khẩu!</p>
        </form>
    </div>
</template>
<style scoped>
@import '../../../../public/assets/css/pages/auth-light.css';
</style>
<script>
export default {
    data: () => ({
    form: new Form({
      email: '',
    }),
  }),
 methods: {
    async forgot () {
      // Submit the form.
       await this.form.post(route('user.forgot_pass'))
        .then(response => {
          var result = response.data;
            this.$refs.form.classList.add('d-none');
            this.$refs.noti.classList.remove("d-none");
        })
       
    },
  }  
}
</script>