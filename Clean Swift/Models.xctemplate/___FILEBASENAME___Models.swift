//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum ___VARIABLE_sceneName___Models {

    // MARK: - Use Cases

    enum FetchFromDataStore {
        
    }

    enum TrackAnalytics {
        
    }

    enum Perform___VARIABLE_sceneName___ {
        
    }

    // MARK: - View Models

    enum ___VARIABLE_sceneName___ErrorType {
        case emptyExampleVariable, apiError
    }

    struct Error<T> {
        var type: T
        var message: String?

        init(type: T) {
            self.type = type
        }
    }
}

extension ___VARIABLE_sceneName___Models.FetchFromDataStore {
    struct Request {
    }

    struct Response {
        var exampleVariable: String?
    }

    struct ViewModel {
        var exampleVariable: String?
    }
}

extension ___VARIABLE_sceneName___Models.TrackAnalytics {
    struct Request {
    }

    struct Response {
    }

    struct ViewModel {
    }
}

extension ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___ {
    struct Request {
        var exampleVariable: String?
    }

    struct Response {
        var error: ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___ErrorType>?
    }

    struct ViewModel {
        var error: ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___ErrorType>?
    }
}