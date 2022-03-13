<template>
  <div class="container">
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
  height: calc(100vh - 60px);
  width: 100vw;

  .form {
    $form-width: 400px;
    background-color: #2228;
    border-radius: 8px;
    display: inline-block;
    height: 500px;
    width: $form-width;

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

      &:focus {
        background-color: #aaa3;
        border-bottom: 2px solid #42b983;
        outline: 0;
        transition: all .3s;
      }

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
