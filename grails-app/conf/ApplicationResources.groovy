modules = {
    css {
		resource url: 'css/app.css'
		resource url: 'css/styles.css'
		resource url: 'css/select2.css'
	}
	
	js {
		dependsOn 'jquery'
	}
	
	'commuteph' {
		dependsOn 'css, js'
	}
}