<template>
  <div>
    <h2>메인페이지입니다.</h2>
    <nuxt-link :to="{ path: '/content' }">home</nuxt-link>
  </div>
</template>

<script>
export default {
  name: 'mainPage',
}
</script>
