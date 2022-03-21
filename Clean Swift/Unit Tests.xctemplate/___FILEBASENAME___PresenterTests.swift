//
//  ___FILENAME___
//  ___PROJECTNAME___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// MARK: - PRESENTER
class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
	// MARK: SUBJECT UNDER TEST
	var sut: ___VARIABLE_sceneName___Presenter!
	
	// MARK: TEST LIFECYCLE
	override func setUp() {
		super.setUp()
		setup___VARIABLE_sceneName___Presenter()
	}
	
	override func tearDown() {
		super.tearDown()
	}
	
	// MARK: TEST SETUP
	func setup___VARIABLE_sceneName___Presenter() {
		sut = ___VARIABLE_sceneName___Presenter()
	}
	
	// MARK: TEST DOUBLES
	class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___ViewControllerProtocol {
		var displaySomethingCalled = false
		
		func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel) {
			displaySomethingCalled = true
		}
	}
}

// MARK: - PRESENT SOMETHING
extension ___VARIABLE_sceneName___PresenterTests {
	func testPresentSomething() {
		// Given
		let spy = ___VARIABLE_sceneName___ViewControllerSpy()
		sut.viewController = spy
		let response = ___VARIABLE_sceneName___Model.Something.Response()
		
		// When
		sut.presentSomething(response: response)
		
		// Then
		XCTAssertTrue(spy.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
	}
}
