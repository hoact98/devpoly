<template>
    <img :src="'/'+data.image" alt="" :class="classes">
</template>
<script>
export default {
    props: {
        data: {},
        classes: {},
    },
}
</script>