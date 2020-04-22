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

class ___VARIABLE_sceneName___ViewControllerSpec: QuickSpec {
    override func spec() {
        // MARK: - Subject Under Test (SUT)
        var sut: ___VARIABLE_sceneName___ViewController!
        var window: UIWindow!
        // MARK: - Test Doubles
        var businessLogicSpy: ___VARIABLE_sceneName___BusinessLogicSpy!
        var routerSpy: ___VARIABLE_sceneName___RouterSpy!
        // MARK: - Tests
        beforeEach {
            window = UIWindow()
            setupInitialUserState()
            setupViewController()
            setupBusinessLogic()
            setupRouter()
        }
        afterEach {
            window = nil
        }
        // MARK: View Lifecycle
        describe("view did load") {
            it("should ...", closure: {
                // when
                loadView()
                // then
            })
        }
        describe("view will appear") {
            it("should track analytics", closure: {
                // given
                loadView()
                // when
                sut.viewWillAppear(true)
                // then
                expect(businessLogicSpy.trackAnalyticsCalled).to(beTrue())
            })
        }
        
        // MARK: IBActions/Delegates
        
        // MARK: Display Logic

        // MARK: - Test Helpers
        func setupInitialUserState() {
            // some initial user state setup
        }
        func setupViewController() {
            sut =  ___VARIABLE_sceneName___ViewController()
        }
        func setupBusinessLogic() {
            businessLogicSpy = ___VARIABLE_sceneName___BusinessLogicSpy()
            sut.interactor = businessLogicSpy
        }
        func setupRouter() {
            routerSpy = ___VARIABLE_sceneName___RouterSpy()
            sut.router = routerSpy
        }
        func loadView() {
            window.addSubview(sut.view)
            RunLoop.current.run(until: Date())
        }
    }
}

// MARK: - Test Doubles
extension ___VARIABLE_sceneName___ViewControllerSpec {
    class ___VARIABLE_sceneName___BusinessLogicSpy: ___VARIABLE_sceneName___BusinessLogic {
        var trackAnalyticsCalled = false
        var trackAnalyticsRequest: ___VARIABLE_sceneName___Models.TrackAnalytics.Request!
        func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request) {
            trackAnalyticsCalled = true
            trackAnalyticsRequest = request
        }
    }
    class ___VARIABLE_sceneName___RouterSpy: ___VARIABLE_sceneName___Router {
        
    }
}
