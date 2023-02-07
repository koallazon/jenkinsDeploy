<template>
  <div>
    <h2>홈페이지입니다.</h2>
    <nuxt-link :to="{ path: '/content' }">content</nuxt-link>
  </div>
</template>

<script>
export default {
  name: 'homePage',
}
</script>
