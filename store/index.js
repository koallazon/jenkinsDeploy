export const state = () => ({
  counter: 0,
})

export const actions = {
  async nuxtServerInit(actionContext, context) {
    console.log('nuxtServerInit', context)
  },
}
