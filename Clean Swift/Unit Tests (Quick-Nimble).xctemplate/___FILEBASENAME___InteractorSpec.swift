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

class ___VARIABLE_sceneName___InteractorSpec: QuickSpec {
    override func spec() {
        // MARK: - Subject Under Test (SUT)
        var sut: ___VARIABLE_sceneName___Interactor!
        // MARK: - Test Doubles
        var presentationLogicSpy: ___VARIABLE_sceneName___PresentationLogicSpy!
        var workerSpy: ___VARIABLE_sceneName___WorkerSpy!
        var networkerSpy: ___VARIABLE_sceneName___NetworkerSpy!
        // MARK: - Tests
        beforeEach {
            setupInitialUserState()
            setupInteractor()
            setupPresentationLogic()
            setupWorker()
        }
        afterEach {
            sut = nil
        }
        // MARK: Use Cases
        describe("track analytics") {
            it("should ask presenter to format", closure: {
                // given
                let request = ___VARIABLE_sceneName___Models.TrackAnalytics.Request()
                // when
                sut.trackAnalytics(with: request)
                // then
                expect(presentationLogicSpy.presentTrackAnalyticsCalled).to(beTrue())
            })
        }
        // MARK: - Test Helpers
        func setupInitialUserState() {
            // some initial user state setup
        }
        func setupInteractor() {
            sut = ___VARIABLE_sceneName___Interactor()
        }
        func setupPresentationLogic() {
            presentationLogicSpy = ___VARIABLE_sceneName___PresentationLogicSpy()
            sut.presenter = presentationLogicSpy
        }
        func setupWorker() {
            workerSpy = ___VARIABLE_sceneName___WorkerSpy()
            networkerSpy = ___VARIABLE_sceneName___NetworkerSpy()
            sut.worker = workerSpy
            sut.networker = networkerSpy
        }
    }
}

// MARK: - Test Doubles
extension ___VARIABLE_sceneName___InteractorSpec {
    class ___VARIABLE_sceneName___PresentationLogicSpy: ___VARIABLE_sceneName___PresentationLogic {
        var presentTrackAnalyticsCalled = false
        var trackAnalyticsResponse: ___VARIABLE_sceneName___Models.TrackAnalytics.Response!
        func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response) {
            presentTrackAnalyticsCalled = true
            trackAnalyticsResponse = response
        }
    }
    class ___VARIABLE_sceneName___WorkerSpy: ___VARIABLE_sceneName___Worker {
        
    }
    class ___VARIABLE_sceneName___NetworkerSpy: ___VARIABLE_sceneName___MockNetworker {
        
    }
}
