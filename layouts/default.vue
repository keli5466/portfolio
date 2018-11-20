<!--
Default layout
-->

<template lang='pug'>

.home

	layout-header
	marquee#intro
	//- about
	grid#work
	//- footer

	//- nuxt

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default
	components:
		'grid': require '~/components/work-grid'
		'about': require '~/components/about'
		'marquee': require '~/components/marquee'
		'layout-header': require '~/components/layout/header'
		# 'footer': require '~/components/layout/footer'
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
</style>
