<script lang="coffee">
if $('#home').exists()

  # router = new VueRouter({
  #   routes:
  #     [
  #       { path: '/diary'   , component: require('./../components/Diary.vue') }
  #       { path: '/calendar', component: require('./../components/Calendar.vue') }
  #     ]
  # })

  new Vue({
    # router: router
    el: '#home'
    data:
      message: "hello2"
  })
</script>

<style lang="sass?indentedSyntax">
.home
</style>
