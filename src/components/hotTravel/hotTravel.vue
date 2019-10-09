<template>
  <div id="hotTravel">
    <new-travel :path="path" class="newTravel" :newTravels="newTravels" :hotMore="true"></new-travel>
  </div>
</template>

<script type="text/ecmascript-6">
  import NewTravel from 'components/newTravel/newTravel'
  export default {
    name: 'hotTravel',
    props: {
      newTravels: {
        type: Array,
        default: []
      },
      path: {
        type: String,
        default: ''
      }
    },
    components: {
      NewTravel
    }
  }
</script>

<style lang="stylus" scoped>
</style>
