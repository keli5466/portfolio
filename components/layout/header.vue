<!--
The layout header
-->


<template lang='pug'>

.header

	.max-w
		visual.logo(image='./kl-logo.png' background=''
			:class='{fullOpac: active}')
		.primary-nav
			a.nav-item(href='#intro' :class='{active: !active}'
				v-scroll-to="'#intro'") home
			a.nav-item(href='#work'
				:class='{active: active}'
				v-scroll-to="'#work'") work
			a.nav-item(href='mailto:kellylinehan2@gmail.com?subject=Call Me Beep Me If You Want To Reach Me') contact


</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default
	data: ->
		active: false
		scrollPos: 0
		load: false

	mounted: ->
		window.addEventListener 'scroll', @watchScroll

	methods:
		watchScroll: ->
			console.log 'his'
			@scrollPos = window.pageYOffset || document.documentElement.scrollTop
			if @scrollPos > 500
				@active = true
			else
				@active = false
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->


<style lang='stylus' scoped>

.content.scaleup,
.logo
		opacity 0
		transform translateY(10px)
		transition transform 500ms cubic-bezier(0, 0, 0.2, 1), opacity 1s ease
		transition-delay 300ms


for i in (1..20)
	.nav-item:nth-child({i})
		opacity 0
		transform translateY(10px)
		transition transform 500ms cubic-bezier(0, 0, 0.2, 1), opacity 1s ease
		transition-delay 300ms + (i*120)

.loaded
	.logo
	.nav-item
		opacity 1
		transform translateY(0px)

	.social-links > *
		opacity 0



.header
	width 100%
	margin-h auto
	position fixed
	background white
	height rem(nav-height)
	top 0
	left 0
	z-index 10

.max-w
	display flex
	align-items center
	height 100%

.logo
	width rem(40px)
	margin-right auto
	opacity 0.5
	transition opacity 300ms ease-in-out
	&.fullOpac
	&:hover
		opacity 1

.nav-item
	display inline-block
	text-transform uppercase
	opacity 1
	transition opacity 300ms ease-in-out
	&:not(.active):hover
		opacity 0.5
	&:not(:last-child)
		margin-right rem(56px)

.active
	background-image linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%)
	background-repeat no-repeat
	background-position 0 96%
	background-size 100% 25%
	transition all 0.25s ease-in
	&:active
	&:hover
		background-size 100% 88%

</style>
