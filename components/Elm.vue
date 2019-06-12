<template>
  <div ref="elm_node"></div>
</template>
<script>
import * as elmConnector from '~/elm_connector/index'

export default {
  components: {},
  props: {
    elmElementInitializer: {
      type: Function,
      required: true,
      default: null
    },
    createdApp: {
      type: Function,
      required: false,
      default: null
    },
    flags: {
      type: [Object, String, Number, Array],
      required: false,
      default: null
    }
  },
  mounted() {
    const elmNode = this.$refs.elm_node
    const elmApp = this.$props.elmElementInitializer({
      node: elmNode,
      flags: this.$props.flags
    })
    elmConnector.connect(this, elmApp)
    this.$props.createdApp && this.$props.createdApp(elmApp)
  }
}
</script>
<style></style>
