<!--
The layout header
-->

<template lang='pug'>

.marquee
	//- visual.background(image='https://ih0.redbubble.net/image.335598764.1682/flat,1000x1000,075,f.u2.jpg')
	.content
		h1.headline Kelly <br> Linehan
		h2.subhead Front-end Web Developer

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

shadow-width = 5px
primary-shadow = #A7E7E7
secondary-shadow = #7AD9F5
.marquee
	height 100vh
	width 100%
	position relative
// .background
// 	width 100%
// 	height 80vh
.content
	color black
	position absolute
	left 10%
	top 50%
	transform translateY(-50%)
	// width 50%
	text-transform uppercase
.headline
	font-size rem(100px)
	text-shadow shadow-width shadow-width 0 primary-shadow
	transition text-shadow 200ms ease-in-out
	&:hover
		text-shadow (-(shadow-width)) (-(shadow-width)) 0 secondary-shadow
.subhead
	margin-top 5%


</style>
