# Load .env vars
require('dotenv').config() if require('fs').existsSync '.env'

# Config object
module.exports =

	# HTML head
	head:
		title: 'my-project'
		meta: [
			{ charset: 'utf-8'}
			{ name: 'viewport', content: 'width=device-width, initial-scale=1' }
			{ 'http-equiv': 'X-UA-Compatible', content: 'IE=edge' }
			{ name: 'msapplication-tap-highlight', content:'no' }
		]
		link: [
			{ rel: 'icon', 	type: 'image/x-icon', href: '/favicon.ico' }
		]

	# Global styles
	css: [
		'normalize.css'
		'~/assets/app.styl'
	]
	plugins: [
		'~/plugins/vue-visual'
		{ src: '~/plugins/scroll-to-anchor', ssr: false }
		{ src: '~/plugins/vue-visual', ssr: false }
		# { src: '~/plugins/vue-scroll' , ssr: false}
	]
	server: [
		port: 3000,
		host: '0.0.0.0',
	],

	# Nuxt modules
	modules: [
		'blamo'
	]
