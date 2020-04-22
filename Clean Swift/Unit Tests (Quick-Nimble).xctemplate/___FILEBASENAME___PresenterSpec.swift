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

class ___VARIABLE_sceneName___PresenterSpec: QuickSpec {
    override func spec() {
        // MARK: - Subject Under Test (SUT)
        var sut: ___VARIABLE_sceneName___Presenter!
        // MARK: - Test Doubles
        var displayLogicSpy: ___VARIABLE_sceneName___DisplayLogicSpy!
        // MARK: - Tests
        beforeEach {
            setupInitialUserState()
            setupPresenter()
            setupDisplayLogic()
        }
        afterEach {
            sut = nil
        }
        // MARK: Use Cases
        describe("present track analytics") {
            it("should ask view controller to display", closure: {
                // given
                let response = ___VARIABLE_sceneName___Models.TrackAnalytics.Response()
                // when
                sut.presentTrackAnalytics(with: response)
                // then
                expect(displayLogicSpy.displayTrackAnalyticsCalled).to(beTrue())
            })
        }
        // MARK: - Test Helpers
        func setupInitialUserState() {
            // some initial user state setup
        }
        func setupPresenter() {
            sut = ___VARIABLE_sceneName___Presenter()
        }
        func setupDisplayLogic() {
            displayLogicSpy = ___VARIABLE_sceneName___DisplayLogicSpy()
            sut.viewController = displayLogicSpy
        }
    }
}

// MARK: - Test Doubles
extension ___VARIABLE_sceneName___PresenterSpec {
    class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {
        var displayTrackAnalyticsCalled = false
        var trackAnalyticsViewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel!
        func displayTrackAnalytics(with viewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel) {
            displayTrackAnalyticsCalled = true
            trackAnalyticsViewModel = viewModel
        }
    }
}
