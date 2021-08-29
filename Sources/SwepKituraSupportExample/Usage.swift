let usage = {
  return div {
    h2("Usage")
    p("To use the plugin all you have to do is return a `Document` or `Stylesheet` value from your router callback:")
    pre(#"""
    import Swep
    import Kitura
    import SwepKituraSupport
    
    let router = Router()
    defer { Kitura.stop() }
    
    router.get("/") { request, response, next in
      response.send(
        document {
          head {
            style {
              selector("*") {
                margin(.px(5))
                backgroundColor(.hex(0xd1d1d1))
              }
            }
            link()
              .rel(.stylesheet)
              .href("style.min.css")
          }
          body {
            h1("Hello, type-safe HTML/CSS on Kitura!")
              .color(.green)
          }
        }
      )
      next()
    }
    
    router.get("style.min.css") { request, response, next in
      response.send(
        stylesheet {
          selector("body") {
            padding(.rem(0.5))
            lineHeight(1.35)
            fontFamily("SanFranciscoDisplay-Regular")
          }
          selector("h1") {
            marginTop(.rem(2))
            marginBottom(.px(0))
          }
        }
      )
      next()
    }
    
    Kitura.addHTTPServer(onPort: 8080, with: router)
    Kitura.run()
    """#)
  }
}