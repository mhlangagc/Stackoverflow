//
//  StackCoordinator.swift
//  StackOverflow
//
//  Created by Gugulethu on 2021/02/07.
//

import Foundation
import UIKit

final class StackCoordinator: StackCoordinatorProtocol {
    
    public static let shared = StackCoordinator()
    
    func showSearchResults(from viewController: UIViewController?) {
        
    }
    
    func showSearchViewController(from navigationController: UINavigationController?) {
        let searchViewController = SearchViewController()
        navigationController?.pushViewController(searchViewController, animated: true)
    }


}
