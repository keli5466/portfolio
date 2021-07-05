<!--
marquee
-->

<template lang='pug'>

.marquee.max-w
	.social-links
		a(href='https://github.com/whatdakell' target="_blank") GitHub
		a(href='https://codepen.io/WhatDaKell' target="_blank") CodePen
		a(href='https://www.linkedin.com/in/kelly-linehan/' target="_blank") LinkedIn
	.content(:class='{scaledown: active , scaleup: !active }')
		h1.headline Kelly <br> Linehan
		h2.subhead Front-end Web Developer

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default
	data: ->
		active: false
		scrollPos: 0

	mounted: ->
		window.addEventListener 'scroll', @watchScroll

	methods:

		watchScroll: ->
			@scrollPos = window.pageYOffset || document.documentElement.scrollTop
			if @scrollPos > 200
				@active = true
			else
				@active = false

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>


.content
		opacity 0
		transition opacity 2s ease 1s


for i in (1..20)
	.social-links a:nth-child({i})
		opacity 0
		transform translateY(10px)
		transition transform 500ms cubic-bezier(0, 0, 0.2, 1), opacity 1s ease
		transition-delay 400ms + (i*120)

.loaded
	.social-links a
		opacity 1
		transform translateY(0px)
	.content
			opacity 1


shadow-width = 5px
primary-shadow = #7AD9F5
secondary-shadow = #A7E7E7

purple-grad = #C471ED
pink-grad = #F64F59

.arrow
	display block

.marquee
	height 100vh
	width 100%
	position relative

.social-links
	position absolute
	vw-calc(left, large-gutter)
	bottom 50%
	transform rotate(-90deg) translateX(-50%)
	transform-origin top left
	background-image linear-gradient(120deg, rgba(purple-grad ,0.3) 0%, rgba(pink-grad ,0.3) 100%)
	background-repeat no-repeat
	background-position 0 96%
	background-size 100% 15%
	padding-bottom 5px
	transition all 0.25s ease-in
	&:active
	&:hover
		background-size 100% 88%
	> *
		// font-family 'Noto Serif JP', sans-serif
		margin-right rem(40px)
		// font-weight 300
		text-transform uppercase
		// font-size(18px)
		display inline-block
		transform translateY(0)
		opacity 0.8
		backface-visibility hidden
		transition all 0.25s ease-in
		&:hover
			opacity 1
			transform translate3d(0,-5px,0)

.content
	color black
	position fixed
	top 50%
	background white
	left 50%
	cursor default
	text-transform uppercase
	backface-visibility hidden
	transform translate3d(-50%,-50%,0) scale(1);

	@media (max-width mobile)
		left 60%
		.headline
			font-size rem(80px)

.headline
	font-size rem(110px)
	text-shadow shadow-width shadow-width 0 primary-shadow
	transition text-shadow 200ms ease-in
	.content:hover &
		text-shadow (-(shadow-width)) (-(shadow-width)) 0 secondary-shadow

.subhead
	margin-top 5%
	background-image linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%)
	background-repeat no-repeat
	background-position 0 96%
	background-size 100% 25%
	transition all 200ms ease-in
	display inline-block
	.content:hover &
		background-size 100% 88%

.content:hover
	.subhead
		background-size 100% 88%
	.content
		text-shadow (-(shadow-width)) (-(shadow-width)) 0 secondary-shadow


@keyframes drawLine
	0%
		transform-origin 0% 0%
		transform scale(1,0)
	60%
		transform-origin 0% 0%
		transform scale(1,1)
	60.1%
		transform-origin 0% 100%
		transform scale(1,1)
	100%
		transform-origin 0% 100%
		transform scale(1,0)

</style>
