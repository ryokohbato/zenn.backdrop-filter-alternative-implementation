<template>
  <div class="container">
    <div class="glassed-background"></div>
    <div class="form">
      <img class="icon" src="../assets/ryokohbato.png" alt="" />
      <p class="name">ryokohbato</p>
      <div class="password">
        <input
          class="password__input"
          type="password"
          name="password"
          id="password"
          placeholder="PASSWORD"
        />
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class LoginForm extends Vue {}
</script>

<style scoped lang="scss">
.container {
  $form-width: 400px;
  background: inherit;
  background-position: 50% calc(50% + ((100vh - 500px) / 2 - 60px));
  border-radius: 8px;
  height: 500px;
  overflow: hidden;
  position: relative;
  width: $form-width;


  .glassed-background {
    background: inherit;
    filter: blur(12px) brightness(1.2);
    position: absolute;
    left: -12px;
    right: -12px;
    top: -12px;
    bottom: -12px;
  }

  .form {
    background-color: #2228;
    border-radius: 8px;
    display: inline-block;
    height: 500px;
    left: 0;
    position: absolute;
    top: 0;
    width: $form-width;
    z-index: 10;

    .icon {
      border-radius: 50%;
      height: calc($form-width * 0.5);
      margin-top: 60px;
      width: calc($form-width * 0.5);
    }

    .name {
      color: white;
      font-size: 28px;
      font-weight: bold;
    }

    .password {
      display: inline-block;
      width: 60%;

      &__input {
        background-color: #7773;
        border-radius: 4px;
        border: none;
        border-bottom: 2px solid white;
        color: white;
        font-size: 28px;
        padding: 0 12px;
        width: 80%;

        &::placeholder {
          font-size: 16px;
          color: #fff9;
          transform: translateY(-2px);
        }

        &:focus {
          background-color: #aaa3;
          border-bottom: 2px solid #42b983;
          outline: 0;
          transition: all .3s;
        }
      }

      &__submit {
        border-radius: 4px;
        border: 1px solid white;
        font-size: 18px;
        font-weight: bold;
        margin-top: 140px;
        padding: 5px 60px;
        width: 80%;
      }
    }
  }
}
</style>
