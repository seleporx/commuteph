package org.commuteph.frontend.controllers

import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.*
import grails.converters.JSON

class WidgetsController {

	def add_alight() {
	}
	def add_walk() {
	}
	def add_trike() {
	}
	def add_jeep() {
	}
	def add_bus() {
	}
	def add_fx() {
	}
	def add_mrt() {
	}
	def add_lrt() {
	}
	def add_lrt2() {
	}
	
	def recent() {
		def recent = []
		def http = new HTTPBuilder('http://commuteph-api.herokuapp.com/')
		
		http.get(path : '/routes/recent/', contentType : TEXT) { resp, reader ->
			JSON.parse(reader.text).each {
				pop ->
				recent.add([location: pop.location, destination: pop.destination])
			}
		}
		
		if(params.int('id') == 1) {
			render view: 'sidebar_recentadded', model: [recent: recent]
			return
		}
	}

	def popular() {
		def popular = []
		def http = new HTTPBuilder('http://commuteph-api.herokuapp.com/')

		http.get(path : '/routes/popular/', contentType : TEXT) { resp, reader ->
			JSON.parse(reader.text).each {
				pop ->
				popular.add([location: pop.location, destination: pop.destination])
			}
		}
		
		if(params.int('id') == 1) {
			render view: 'sidebar_popular', model: [popular: popular]
			return
		}
	}
	
	def missing() {
		def missing = []
		def http = new HTTPBuilder('http://commuteph-api.herokuapp.com/')

		http.get(path : '/routes/missing/', contentType : TEXT) { resp, reader ->
			JSON.parse(reader.text).each {
				pop ->
				missing.add([location: pop.location, destination: pop.destination])
			}
		}
		
		if(params.int('id') == 1) {
			render view: 'sidebar_missing', model: [missing: missing]
			return
		}
		
		render view: 'home_missing', model: [missing: missing]
		return
	}
}
