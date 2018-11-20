<!--
The layout header
-->

<template lang='pug'>

.header
	.max-w
		visual.logo(image='./logo.png' background='')
		scrollactive(active-class='active'
			:offset='100')
			ul.primary-nav
				a.nav-item.scrollactive-item(href='#intro') home
				a.nav-item.scrollactive-item(href='#work') work
				a.nav-item.scrollactive-item(href='#contact') contact

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
 # export default
 	# components:
 	# props: []
 	# data: ->
 	# computed:
	# watch:
 	# methods:
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
	.header
		width 100%
		margin-h auto
		position fixed
		top 0
		background white
		left 0
		z-index 100
		&:before
			background linear-gradient(to right,#FFEAEE,#F2EDFE)
			content ''
			position absolute
			top 0
			left 0
			height 100%
			width 60%

	.max-w
		width 90%
		display flex
		align-items center
		// border-bottom 1px solid black
		padding rem(10px) 5%
	.logo
		width rem(40px)
		margin-right auto
	.nav-item
		text-transform uppercase
		&:not(:last-child)
			margin-right rem(20px)
</style>
