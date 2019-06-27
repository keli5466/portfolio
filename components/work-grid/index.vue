<!--
Grib/Masonary component
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
	position relative
	z-index 9
	max-width: 1920px;
	justify-content: center;

	&:before
		content ''
		width 100%
		height rem(nav-height)
		background-image linear-gradient(to top,#fff,hsla(0,0%,100%,0))

.background
	width 100%
	height 100%

</style>
