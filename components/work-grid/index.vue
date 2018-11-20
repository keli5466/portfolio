<!--
The layout header
-->

<template lang='pug'>

.grid
	box(v-for="n in block" :key='n.score' :project='n')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import portfolio from './portfolio'
export default
	components:
		'box': require './grid-item'
	data:->
		block: portfolio
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
.grid
	display flex
	flex-flow row wrap
	width 100%

.background
	width 100%
	height 100%

</style>
