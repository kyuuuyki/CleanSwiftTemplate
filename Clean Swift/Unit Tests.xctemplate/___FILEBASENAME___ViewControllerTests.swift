//
//  ___FILENAME___
//  ___PROJECTNAME___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// MARK: - VIEW CONTROLLER
class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
	static var moduleName: String = "___VARIABLE_sceneName___"
	var nibName = String(describing: ___VARIABLE_sceneName___ViewController.self)
	var bundle: Bundle? = Bundle(for: ___VARIABLE_sceneName___ViewController.self)
	
	// MARK: SUBJECT UNDER TEST
	var sut: ___VARIABLE_sceneName___ViewController!
	var window: UIWindow!
	
	// MARK: TEST LIFECYCLE
	override func setUp() {
		super.setUp()
		window = UIWindow()
		setup___VARIABLE_sceneName___ViewController()
	}
	
	override func tearDown() {
		window = nil
		super.tearDown()
	}
	
	// MARK: TEST SETUP
	func setup___VARIABLE_sceneName___ViewController() {
		sut = ___VARIABLE_sceneName___ViewController(nibName: nibName, bundle: bundle)
	}
	
	func loadView() {
		window.addSubview(sut.view)
		RunLoop.current.run(until: Date())
	}
	
	// MARK: TEST DOUBLES
	class ___VARIABLE_sceneName___InteractorSpy: ___VARIABLE_sceneName___InteractorProtocol {
		var doSomethingCalled = false
		
		func doSomething(request: ___VARIABLE_sceneName___Model.Something.Request) {
			doSomethingCalled = true
		}
	}
}

// MARK: - TEST SHOULD DO SOMETHING WHEN VIEW IS LOADED
extension ___VARIABLE_sceneName___ViewControllerTests {
	func testShouldDoSomethingWhenViewIsLoaded() {
		// Given
		let spy = ___VARIABLE_sceneName___InteractorSpy()
		sut.interactor = spy
		
		// When
		loadView()
		
		// Then
		XCTAssertTrue(spy.doSomethingCalled, "viewDidLoad() should ask the interactor to do something")
	}
}

// MARK: - TEST DISPLAY SOMETHING
extension ___VARIABLE_sceneName___ViewControllerTests {
	func testDisplaySomething() {
		// Given
		let viewModel = ___VARIABLE_sceneName___Model.Something.ViewModel()
		
		// When
		loadView()
		sut.displaySomething(viewModel: viewModel)
		
		// Then
		//XCTAssertEqual(sut.nameTextField.text, "", "displaySomething(viewModel:) should update the name text field")
	}
}
