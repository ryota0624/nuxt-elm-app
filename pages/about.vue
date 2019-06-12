<template>
  <Elm :elm-element-initializer="init" :created-app="receivedApp"></Elm>
</template>
<script>
import { Elm as About } from './About.elm'
import Elm from '~/components/Elm'

export default {
  components: {
    Elm
  },
  data() {
    return {
      init: About.Main.init,
      receivedApp(app) {}
    }
  }
}
</script>
<style></style>
