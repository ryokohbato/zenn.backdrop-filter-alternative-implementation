<template>
  <div id="app">
    <LoginForm></LoginForm>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import LoginForm from "./components/LoginForm.vue";

@Component({
  components: {
    LoginForm,
  },
})
export default class App extends Vue {}
</script>

<style lang="scss">
html {
  background-color: #222;
  background-image: url("./assets/background.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 100%;
  width: 100%;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  margin-top: 60px;
}
</style>
