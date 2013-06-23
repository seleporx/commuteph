package org.commuteph.frontend.controllers

class IndexController extends BaseController {
	def beforeInterceptor = loadPlaces()
	
    def index() {
		render view: '/index'
	}
	
	def about() {
		render view: '/about'
	}
}
