package org.commuteph.frontend.controllers

import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.*
import grails.converters.JSON

class RoutesController extends BaseController {
	def beforeInterceptor = loadPlaces()

	def add() {
		def location = params.location.replace('-', ' ')
		def destination = params.destination.replace('-', ' ')

		params.location = location
		params.destination = destination

		if(request.method == 'POST') {
			def pathLocation = location
			def paths = []

			for(def i = 0; i < params.int('count') + 1; i++) {
				def d = params."destination:${i}"

				if(d != null) {
					paths.add([location: pathLocation,
						destination: d,
						mode: params."mode:${i}",
						bound: params."bound:${i}",
						fare: 0])

					pathLocation = d
				}
			}

			if(paths.size == 0) {
				render text: 'ERROR'
				return
			}

			def http = new HTTPBuilder('http://api.commute.ph/')
			def postParams = [location: location,
				destination: destination,
				path: paths as JSON]

			http.post(path: '/routes/add/', body: postParams, requestContentType: URLENC) { resp, json -> }
		}
	}

	def search() {
		if(params.location == '' || params.destination == '') {
			redirect controller: 'index'
			return
		}

		def http = new HTTPBuilder('http://api.commute.ph/')
		def location = params.location.replace('-', ' ')
		def destination = params.destination.replace('-', ' ')
		def postParams = [location: location, destination: destination]
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

				routes.add(paths: paths, routeId: route.routeId)
			}

			render view: 'search', model: [location: location, destination: destination, routes: routes]
		}
	}

	def direction() {
		if(params.location == '' || params.destination == '' || params.routeId == null || params.location == null || params.destination == null) {
			redirect controller: 'index'
			return
		}

		def location = params.location.replace('-', ' ')
		def destination = params.destination.replace('-', ' ')
		def routeId = params.int('routeId')

		def http = new HTTPBuilder('http://api.commute.ph/')
		def postParams = [location: location, destination: destination, routeId: routeId]

		http.post(path: '/routes/getDirection/', body: postParams, requestContentType: URLENC) { resp, json ->
			def res = JSON.parse(json.text)

			def paths = []

			JSON.parse(res.paths.head()).each { path ->
				paths.add(location: path.location,
				destination: path.destination,
				fare: path.fare,
				bound: path.bound,
				mode: path.mode)
			}

			render view: 'direction', model: [location: location, destination: destination, paths: paths, routeId: routeId]
		}
	}

	def browse() {
		def recent = []
		def http = new HTTPBuilder('http://api.commute.ph/')

		http.get(path : '/routes/recent/', query: [max: 20], contentType : TEXT) { resp, reader ->
			JSON.parse(reader.text).each { pop ->
				recent.add([location: pop.location, destination: pop.destination, routeId: pop.routeId])
			}
		}

		render view: 'browse', model: [recent: recent]
		return
	}

	def needed() {
		def missing = []
		def http = new HTTPBuilder('http://api.commute.ph/')

		http.get(path : '/routes/missing/', query: [max: 20], contentType : TEXT) { resp, reader ->
			JSON.parse(reader.text).each { pop ->
				missing.add([location: pop.location, destination: pop.destination])
			}
		}

		render view: 'needed', model: [missing: missing]
		return
	}

	def r() {
		if(params.location == '' || params.destination == '') {
			redirect controller: 'index'
			return
		}

		redirect action: 'search', params: [location: params.location.replace(' ', '-'), destination: params.destination.replace(' ', '-')], mapping: 'searchMap'
	}
}
