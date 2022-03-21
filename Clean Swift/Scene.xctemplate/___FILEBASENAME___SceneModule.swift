//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import KyuGenericExtensions
import UIKit

public struct ___VARIABLE_sceneName___SceneModule: SceneModuleProtocol {
	public static var moduleName: String = "___PROJECTNAME___.___VARIABLE_sceneName___"
	public var nibName = String(describing: ___VARIABLE_sceneName___ViewController.self)
	public var bundle: Bundle? = Bundle(for: ___VARIABLE_sceneName___ViewController.self)
	
	private let transitionCoordinator: TransitionCoordinatorProtocol
	
	public init(transitionCoordinator: TransitionCoordinatorProtocol) {
		self.transitionCoordinator = transitionCoordinator
	}
	
	public func build(with parameters: [String: Any]?) -> UIViewController? {
		let viewController = ___VARIABLE_sceneName___ViewController(
			nibName: nibName,
			bundle: bundle
		)
		
		let dataStore = ___VARIABLE_sceneName___DataStore()
		let worker = ___VARIABLE_sceneName___Worker()
		let presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
		let interactor = ___VARIABLE_sceneName___Interactor(
			presenter: presenter,
			worker: worker,
			dataStore: dataStore
		)
		let router = ___VARIABLE_sceneName___Router(viewController: viewController)
		
		viewController.interactor = interactor
		viewController.router = router
		return viewController
	}
}
