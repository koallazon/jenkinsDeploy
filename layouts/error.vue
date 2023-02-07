<template>
  <div class="container">
    내가 만든 에러페이지
    <h1 v-if="error.statusCode === 404">Page not found</h1>
    <h1 v-else>An error occurred</h1>
    <div style="padding: 30px; outline: 1px solid #dcc">{{ error.message }}</div>
    <NuxtLink to="/">Home page</NuxtLink>
  </div>
</template>

<script>
export default {
  props: ['error'],
  layout: 'errorLayout',
}
</script>
