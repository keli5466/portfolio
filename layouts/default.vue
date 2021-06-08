<!--
Default layout
-->

<template lang='pug'>

.home(:class='{loaded: load}')

	layout-header

	marquee#intro

	grid#work

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default
	components:
		'grid': require '~/components/work-grid'
		'marquee': require '~/components/marquee'
		'layout-header': require '~/components/layout/header'

	data: ->

		load: false

	mounted: ->
		window.addEventListener 'load', @onload

	methods:

		onload: -> 
			@load = true
			console.log @load
</script>



<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
	.App 
		position: relative;
		opacity: 1;
		&:not(.ready) 
			overflow: hidden;
			&:after 
				content: '';
				position: absolute;
				top: 0;
				left: 0;
				background-image: url('https://seeddownload.cdn-apple.com/prod/public/atlc_build/prod/1.5/images/animated_spinner.gif');
				background-repeat: no-repeat;
				background-size: 30px;
				width: 100%;
				height: 100vh;
				background-position: center center;
				z-index: 2002;
				bottom: 0;
				right: 0;
			
		
		&:before 
			content: '';
			display: block;
			position: fixed;
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
			background-color: white;
			height: 100%;
			width: 100%;
			opacity: 1;
			z-index: 2000;
			transition: opacity 0.7s ease;
		
		&.ready 
			&:after 
				display: none;
			
			&:before 
				opacity: 0;
				pointer-events: none;
			
		
	


</style>
