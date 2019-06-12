<template>
  <Elm :elm-element-initializer="init" :created-app="receivedApp"></Elm>
</template>
<script>
import { Elm as Index } from './Index.elm'
import Elm from '~/components/Elm'
export default {
  components: {
    Elm
  },
  data() {
    return {
      init: Index.Index.init,
      receivedApp(app) {}
    }
  }
}
</script>
<style></style>
