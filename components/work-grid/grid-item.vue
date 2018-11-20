<!--
The layout header
-->

<template lang='pug'>


.box
	visual.background(v-if='project.bg' fill :image='project.bg')
	.copy
	<!-- visual.video(v-if='project.video' loop mute
		background='cover'
		load-video='visible'
		:autoplay='true'
		:fallback='project.fallback'
		:playsinline= 'true'
		:video='project.video') -->
	.copy

		p.project-info {{project.info}}
		p.project-name {{project.name}}
		a.arrow(:href='project.href') >>

</template>

<script lang='coffee'>
	export default
		props: ['project']
</script>

<style lang='stylus' scoped>

.background
	width 100%
	height 100%
	opacity 1
	transition opacity 300ms ease
.video
	width 100%
	height 100%
	position absolute
	left 0
	top 0
.box
	min-height rem(350px)
	overflow hidden
	background black
	width 25%
	position relative
	padding 3%
	&:hover
		.background
			opacity 0.5
		p
			transform translateX(0)
			opacity 1
	//- Every 6th Item starting at the first
	&:nth-child(7n)
	&:nth-child(5n+1)
		width 50%

.project-info
	font-size rem(20px)

.project-name
	font-size rem(30px)

.copy
	> *
		transform translateX(-100%)
		color white
		opacity 0
		z-index 10
		transition transform 300ms ease, opacity 300ms ease

	for i in (1..9)
		> *:nth-child({i})
			transition-delay 300ms - (i*120)
</style>
