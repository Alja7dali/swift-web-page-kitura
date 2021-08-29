import Swep
import Kitura

extension RouterResponse {
  public func send(_ node: Document) {
    self.headers.setType("html", charset: "utf-8")
    self.send(node.render())
  }

  public func send(_ node: Stylesheet) {
    self.headers.setType("css", charset: "utf-8")
    self.send(node.render())
  }
}