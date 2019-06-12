<template>
  <div>
    <Elm
      :flags="header.flags"
      :elm-element-initializer="header.init"
      :created-app="header.receivedApp"
    ></Elm>
    <nuxt />
  </div>
</template>
<script>
import Elm from '~/components/Elm'
import { Elm as Header } from '~/components/Header.elm'
export default {
  components: {
    Elm
  },
  data() {
    return {
      header: {
        init: Header.Header.init,
        receivedApp(app) {},
        flags: this.$router.currentRoute.fullPath
      }
    }
  }
}
</script>
<style></style>
