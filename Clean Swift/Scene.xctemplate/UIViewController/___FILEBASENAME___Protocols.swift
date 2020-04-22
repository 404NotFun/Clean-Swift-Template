//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___BusinessLogic {
    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
    
}

protocol ___VARIABLE_sceneName___NetworkerLogic {
    
}

protocol ___VARIABLE_sceneName___PresentationLogic {
    func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response)
}

protocol ___VARIABLE_sceneName___DisplayLogic: class {
    func displayTrackAnalytics(with viewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel)
}

protocol ___VARIABLE_sceneName___RoutingLogic {

}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}