modules = {
    css {
		resource url: 'css/app.css'
		resource url: 'css/styles.css'
	}
	
	js {
		dependsOn 'jquery'
	}
	
	'commuteph' {
		dependsOn 'css, js'
	}
}