<!--
Default layout
-->

<template lang='pug'>

.home

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
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
</style>
