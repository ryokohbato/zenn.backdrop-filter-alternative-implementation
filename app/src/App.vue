<template>
  <div id="app" :style="backgroundSize">
    <LoginForm/>
  </div>
</template>

<script lang="ts">
import LoginForm from "./components/LoginForm.vue";

export default {
  data () {
    return {
      backgroundHeight: window.innerHeight * 0.75 < window.innerWidth ? window.innerWidth * 4 / 3 : window.innerHeight,
      backgroundWidth: window.innerHeight * 0.75 < window.innerWidth ? window.innerWidth : window.innerHeight * 0.75,
    }
  },
  computed: {
    backgroundSize: function () {
      return {
        backgroundSize: `${this.backgroundWidth}px ${this.backgroundHeight}px`,
      };
    }
  },
  methods: {
    resizeHandler: function () {
      if (window.innerHeight * 0.75 < window.innerWidth) {
        this.backgroundHeight = window.innerWidth * 4 / 3;
        this.backgroundWidth = window.innerWidth;
      } else {
        this.backgroundHeight = window.innerHeight;
        this.backgroundWidth = window.innerHeight * 0.75;
      }
    }
  },
  mounted () {
    window.addEventListener('resize', this.resizeHandler);
  },
  beforeDestroy () {
    window.removeEventListener('resize', this.resizeHandler);
  },
  components: {
    LoginForm,
  },
}
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
  background-image: url("./assets/background.jpg");
  background-position: center;
  background-repeat: no-repeat;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  height: calc(100vh - 60px);
  text-align: center;
  padding-top: 60px;
  width: 100vw;

  .container {
    margin-left: 50%;
    transform: translateX(-50%);
  }
}
</style>
