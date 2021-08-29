import Swep
import Kitura

extension RouterResponse {
  public func send(_ node: Document) {
    self.headers.setType("html")
    self.send(node.render())
  }

  public func send(_ node: Stylesheet) {
    self.headers.setType("css")
    self.send(node.render())
  }
}