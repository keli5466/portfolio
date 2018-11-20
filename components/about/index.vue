<!--
The layout header
-->

<template lang='pug'>

.about
	.left
		h2.name Kelly
		p.copy
			|Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur congue, tellus eu tempor varius, odio dui auctor eros, et tempus nisl lectus sed ante. Vestibulum interdum porta gravida. Pellentesque metus nulla, vehicula in porttitor non, cursus suscipit enim. Sed sed mattis elit. Vivamus gravida nunc id lectus tempor euismod. Fusce id blandit nisl. Phasellus ut quam varius, rhoncus lectus a, viverra sapien. Integer imperdiet euismod laoreet. Duis ipsum velit, posuere eget erat ac, lacinia rhoncus velit. Curabitur suscipit vitae quam vel feugiat.
	.right
		p.age 24
		p.education CU Boulder 2016'
		p.email kellylinehan2@gmail.com
		p.resume Download Resume
		p.phone (415)827-5505
		p.location Bay Area



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
.about
	padding 3%
	display flex
	flex-wrap wrap
	> *
		width 50%

.copy
	max-width rem(600px)

.right p
	width 50%
	float left
	&:before
		content ''
		height 10px
		width 10px
		display block
		background green
		display inline-block

</style>
