<template>
  <div id="list">
    <ul class="list">
      <li @click="goto(item)" class="item" v-for="item in hotLabels">{{item.destination}}</li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
export default {
  name: 'list',
  props: {
    hotLabels: Array,
    default: []
  }
}
</script>

<style lang="stylus" scoped>

</style>
