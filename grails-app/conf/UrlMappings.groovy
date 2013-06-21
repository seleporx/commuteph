class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"index")
		name searchMap: "/routes/from-$location-to-$destination"(controller: "routes", action: "search")
		name addMap: "/add/from-$location-to-$destination"(controller: "routes", action: "add")
		"500"(view:'/error')
	}
}
