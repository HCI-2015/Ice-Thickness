class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"login")
        "/controllerlist"(view:"controllerlist")
        "500"(view:'/error')
	}
}
