const middleware = {}

middleware['state'] = require('../middleware/state.js')
middleware['state'] = middleware['state'].default || middleware['state']

export default middleware
