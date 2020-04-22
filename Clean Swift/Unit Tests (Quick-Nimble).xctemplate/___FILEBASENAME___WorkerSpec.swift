//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Quick
import Nimble
@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___WorkerSpec: QuickSpec {
    override func spec() {
        // MARK: - Subject Under Test (SUT)
        var sut: ___VARIABLE_sceneName___Worker!
        // MARK: - Test Doubles
        
        // MARK: - Tests
        beforeEach {
            setupWorker()
        }
        afterEach {
            sut = nil
        }
        // MARK: Use Cases
        // MARK: - Test Helpers
        func setupWorker() {
            sut = ___VARIABLE_sceneName___Worker()
        }
    }
}
// MARK: - Test Doubles
extension ___VARIABLE_sceneName___WorkerSpec {
}
