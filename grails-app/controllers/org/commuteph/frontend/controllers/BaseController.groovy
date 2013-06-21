package org.commuteph.frontend.controllers

import grails.converters.JSON

class BaseController {
	def redisService

    def loadPlaces() {
		def places = []
		
		JSON.parse(redisService.get('places')).each { place ->
			places.add("{id: '${place}', text: '${place}'}")
		}
		session.places = places
	}
}
