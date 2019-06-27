<!--
Grid Item Component
-->

<template lang='pug'>

a.box(v-in-viewport='-250' :href='project.href' target="_blank")

	visual.background(v-if='project.bg' fill :image='project.bg')
	visual.video(v-if='project.video' loop mute fill
		:autoplay='true'
		:fallback='project.fallback'
		:video='project.video')

	.copy
		p.project-info {{ project.info }}
		p.project-name {{ project.name }}
		p.project-tools {{ project.tools }}

</template>

<script lang='coffee'>

	export default
		# pass defined data as prop
		props: ['project']

</script>

<style lang='stylus' scoped>

item-height = 400px

// overlay
.video
.background
	width 100%
	height 100%
	opacity 1
	transition opacity 700ms ease

	.box:hover &
		opacity 0.3

// grid item
.box
	min-height rem(item-height)
	overflow hidden
	background black
	opacity 1
	flex 1 1 (max-w/4)
	position relative
	padding 30px 20px

	&:nth-child(3n+1)
		flex 1 1 (max-w/2)
		min-width 50%

		.copy
			max-width 80%

// project-info & stagger transition
.copy
	> *
		transform translateX(-100%)
		color white
		opacity 0
		z-index 10
		transition transform 400ms smooth-in-out, opacity 500ms ease 200ms

	for i in (1..9)
		> *:nth-child({i})
			transition-delay 400ms - (i*70)

	.box:hover &
		> *
			transform translateX(0)
			opacity 1

.project-info
	font-size rem(20px)
	line-height 1.22
	letter-spacing 0
	margin-top 0

.project-tools
	font-family 'Noto Serif JP', sans-serif
	line-height 1.2
	font-size rem(12px)

.project-name
	font-size rem(32px)
	font-weight 900

// mobile viewport
.in-viewport
	@media (max-width tablet)
		.video
		.background
			opacity 0.3
		.copy > *
				transform translateX(0)
				opacity 1

</style>
