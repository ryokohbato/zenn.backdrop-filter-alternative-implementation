<template>
  <div class="background" :style="clipPath">
  </div>
</template>
<script lang="ts">
export default {
  data () {
    return {
      insetTop: 60,
      height: window.innerHeight,
      width: window.innerWidth,
    }
  },
  computed: {
    insetRight: function () {
      return (this.width - 400) / 2;
    },
    insetBottom: function () {
      return (this.height - 500 - this.insetTop);
    },
    insetLeft: function () {
      return (this.width - 400) / 2;
    },
    clipPath: function () {
      return {
        clipPath: `inset(${this.insetTop}px ${this.insetRight}px ${this.insetBottom}px ${this.insetLeft}px round 8px)`,
      }
    }
  },
  methods: {
    resizeHandler: function () {
      this.width = window.innerWidth;
      this.height = window.innerHeight;
    }
  },
  mounted () {
    window.addEventListener('resize', this.resizeHandler)
  },
  beforeDestroy () {
    window.removeEventListener('resize', this.resizeHandler)
  }
}
</script>

<style scoped lang="scss">
.background {
  background-image: url("../assets/background.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  // clip-path: inset(60px 647.5px 410px 647.5px round 8px);
  filter: saturate(1.5) blur(12px);
  height: 100vh;
  width: 100vw;
}
</style>
