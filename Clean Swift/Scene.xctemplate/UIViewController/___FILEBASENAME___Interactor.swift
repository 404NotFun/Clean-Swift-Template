//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___BusinessLogic {
    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
    var exampleVariable: String? { get set }
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
    var worker: ___VARIABLE_sceneName___Worker? = ___VARIABLE_sceneName___Worker()
    var presenter: ___VARIABLE_sceneName___PresentationLogic?
    var exampleVariable: String?

    // MARK: Use Case - Track Analytics

    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request) {
        // call analytics library/wrapper here to track analytics

        let response = ___VARIABLE_sceneName___Models.TrackAnalytics.Response()
        presenter?.presentTrackAnalytics(with: response)
    }
}
