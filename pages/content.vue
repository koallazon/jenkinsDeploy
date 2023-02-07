<template>
  <div>
    <h2>홈</h2>
    <nuxt-link :to="{ path: '/main' }">home</nuxt-link>
    <div v-if="Array.isArray(list)">{{ list }}</div>
  </div>
</template>

<script>
export default {
  name: 'ContentPage',
  async asyncData({ $axios, error }) {
    console.log('👀 isServer', process.server)
    // error({ message: 'Error fetching data...' })
    throw new Error('내가했어')

    const data = await $axios.get('https://dev-msa-api.hanatour.com/contents/v1/banner/global-top')
    // console.log('🚀 ~ file: index.vue:15 ~ asyncData ~ data', data.data)
    // console.log('asyncData', process.server ? '서버에서 작동 중' : '클라이언트에서 작동 중')
    // error({ message: 'Error fetching data...' })
    return { list: data.data }
  },
  data: () => {
    return {
      list: null,
    }
  },
  mounted() {
    // setTimeout(() => {
    //   this.$nuxt.error({ statusCode: 404, message: '내가 에러낸거야' })
    // }, 2000)
  },
}
</script>
