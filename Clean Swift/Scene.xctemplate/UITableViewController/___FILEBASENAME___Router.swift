//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

// MARK: - DELEGATION
protocol ___VARIABLE_sceneName___Delegate: AnyObject {
}

// MARK: - ROUTING LOGIC
@objc protocol ___VARIABLE_sceneName___RoutingLogic {
//    func performSegueToSomewhere(segue: UIStoryboardSegue?)
}

// MARK: - DATAPASSING
protocol ___VARIABLE_sceneName___DataPassing {
    var delegate: ___VARIABLE_sceneName___Delegate? { get set }
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

// MARK: - ROUTER
class ___VARIABLE_sceneName___Router: NSObject, ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
    weak var viewController: ___VARIABLE_sceneName___ViewController?
    weak var delegate: ___VARIABLE_sceneName___Delegate?
    
    var dataStore: ___VARIABLE_sceneName___DataStore?

    // MARK: ROUTING
//    func performSegueToSomewhere(segue: UIStoryboardSegue?) {
//        if let segue = segue {
//            let destinationVC = segue.destination as! SomewhereViewController
//            var destinationDS = destinationVC.router!.dataStore!
//
//            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        }
//    }

    // MARK: NAVIGATION
//    func navigateToSomewhere(source: ___VARIABLE_sceneName___ViewController, destination: SomewhereViewController) {
//        source.show(destination, sender: nil)
//    }

    // MARK: PASSING DATA
//    func passDataToSomewhere(source: ___VARIABLE_sceneName___DataStore, destination: inout SomewhereDataStore) {
//        destination.name = source.name
//    }
}
