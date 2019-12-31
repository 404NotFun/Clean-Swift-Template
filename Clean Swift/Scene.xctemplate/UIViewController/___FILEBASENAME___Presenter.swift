//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___PresentationLogic {
    func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response)
}

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresentationLogic {
    weak var viewController: ___VARIABLE_sceneName___DisplayLogic?
    // MARK: Use Case - Track Analytics

    func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response) {
        let viewModel = ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel()
        viewController?.displayTrackAnalytics(with: viewModel)
    }
}
