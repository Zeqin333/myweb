import { loginMode } from 'common/js/config'
import { getLS } from 'common/js/util'

const state = {
  mode: getLS('loginMode') ? getLS('loginMode') : loginMode.fail, // 语义化
  destInfo: getLS('address_id') ? getLS('address_id') : 1,
  id: getLS('id') ? getLS('id') : 1,
  user_id: getLS('user_id') ? getLS('user_id') : 1,
  user_img: '',
  author_id: getLS('author_id') ? getLS('author_id') : 1,
  set_index :0
}

export default state
