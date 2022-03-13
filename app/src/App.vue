<template>
  <div id="app">
    <Background/>
    <GlassedBackground class="glassed-background"/>
    <LoginForm class="login-form"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Background from "./components/Background.vue";
import GlassedBackground from "./components/GlassedBackground.vue";
import LoginForm from "./components/LoginForm.vue";

@Component({
  components: {
    Background,
    GlassedBackground,
    LoginForm,
  },
})
export default class App extends Vue {}
</script>

<style lang="scss">
html {
  background-color: #222;
  height: 100%;
  width: 100%;
}

body {
  margin: 0;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  position: relative;
  text-align: center;

  .glassed-background {
    position: absolute;
    top: 0;
  }

  .login-form {
    margin-top: 60px;
    position: absolute;
    top: 0;
  }
}
</style>
