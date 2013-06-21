package org.commuteph.frontend.controllers

import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.URLENC
import grails.converters.JSON

class RoutesController extends BaseController {
	def beforeInterceptor = loadPlaces()

	def add() {
		if(request.method == 'POST') {
			def pathLocation = params.location
			def paths = []

			for(def i = 0; i < params.int('count') + 1; i++) {
				def destination = params."destination:${i}"
				if(destination != null) {
					paths.add([location: pathLocation,
						destination: destination,
						mode: params."mode:${i}",
						bound: params."bound:${i}",
						fare: 0])

					pathLocation = destination
				}
			}

			if(paths.size == 0) {
				render text: 'ERROR'
				return
			}

			def http = new HTTPBuilder('http://commuteph-api.herokuapp.com/')
			def postParams = [location: params.location,
				destination: params.destination,
				path: paths as JSON]

			http.post(path: '/routes/add/', body: postParams, requestContentType: URLENC) { resp, json -> }
		}
	}

	def search() {
		if(params.location == '' || params.destination == '')
			redirect controller: 'index'
		
		def http = new HTTPBuilder('http://commuteph-api.herokuapp.com/')
		def postParams = [location: params.location, destination: params.destination]
		def location = params.location
		def destination = params.destination
		def routes = []

		http.post(path: '/routes/search/', body: postParams, requestContentType: URLENC) { resp, json ->
			JSON.parse(json.text).each { route ->
				def paths = []

				JSON.parse(route.paths).each { path ->
					paths.add(location: path.location,
					destination: path.destination,
					fare: path.fare,
					bound: path.bound,
					mode: path.mode)
				}

				routes.add(paths: paths)
			}

			render view: 'search', model: [location: location, destination: destination, routes: routes]
		}
	}
	
	def r() {
		redirect action: 'search', params: [location: params.location, destination: params.destination], mapping: 'searchMap'
	}
}
