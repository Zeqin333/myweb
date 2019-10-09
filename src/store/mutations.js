import * as types from './mutation-types'

const mutations = {
  [types.SET_MODE](state, mode) {
    state.mode = mode
  },
  [types.SET_DEST_INFO](state, destInfo) {
    state.destInfo = destInfo
  },
  [types.SET_ID](state, id) {
    state.id = id
  },
  [types.SET_USER_ID](state, user_id) {
    state.user_id = user_id
  },
  [types.SET_USER_IMG](state, user_img) {
    state.user_img = user_img
  },
  [types.SET_AUTHOR_ID](state, author_id) {
    state.author_id = author_id
  },
  [types.SET_INDEX](state, set_index) {
    state.set_index = set_index
  }
}

export default mutations
