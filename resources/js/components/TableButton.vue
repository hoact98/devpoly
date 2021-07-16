<template>
   <div>
        <router-link :to="{name: name, params: { id: data.id }}" class="btn btn-info">Sửa
        </router-link>
        <button
        type="button"
        @click="click(data.id)"
        class="btn btn-danger"
       >
        Xoá
    </button>
   </div>
</template>
<script>
export default {
    props: {
        data: {},
        name: '',
        click: {},
        meta: {},
        classes: {},
    },
}
</script>