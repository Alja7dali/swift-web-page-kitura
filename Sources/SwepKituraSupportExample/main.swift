@_exported import Swep
@_exported import Kitura
@_exported import SwepKituraSupport

let router = Router()
defer { Kitura.stop() }

router.get("/") { request, response, next in
  response.send(layout(title: "Home", content: home))
  next()
}

router.get("/usage") { request, response, next in
  response.send(layout(title: "Usage", content: usage))
  next()
}

router.get("/advanced-usage") { request, response, next in
  response.send(layout(title: "Advanced Usage", content: advancedUsage))
  next()
}

router.get("/installation") { request, response, next in
  response.send(layout(title: "Installation", content: installation))
  next()
}

router.get("/myStyle.min.css") { request, response, next in
  response.send(makeStyle().content)
  next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()