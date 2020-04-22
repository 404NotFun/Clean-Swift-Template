//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
    var worker: ___VARIABLE_sceneName___Worker? = ___VARIABLE_sceneName___Worker()
    var networker: ___VARIABLE_sceneName___NetworkerLogic?
    var presenter: ___VARIABLE_sceneName___PresentationLogic?

    init() {
        #if DEV
        networker = ___VARIABLE_sceneName___MockNetworker()
        #else
        networker = ___VARIABLE_sceneName___Networker()
        #endif
    }
    // MARK: Use Case - Track Analytics

    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request) {
        // call analytics library/wrapper here to track analytics
        
        let response = ___VARIABLE_sceneName___Models.TrackAnalytics.Response()
        presenter?.presentTrackAnalytics(with: response)
    }
}
