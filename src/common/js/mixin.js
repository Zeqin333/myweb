import {mapMutations} from 'vuex'
// mixins: [playListMixin],
export const IdMixin = {
  methods: {
    ...mapMutations({
      setId: 'SET_ID'
    }),
    goto(id) {
      throw new Error('components must implement handlePlaylist method')
    }
  },
  watch: {
    handlePlaylist(id) {
      this.handlePlaylist(id)
    }
  }
}