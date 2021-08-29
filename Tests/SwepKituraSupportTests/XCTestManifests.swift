@_exported import XCTest
@_exported @testable import SwepKituraSupport

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(SwepKituraSupportTests.allTests),
  ]
}
#endif