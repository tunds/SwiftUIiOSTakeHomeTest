//
//  PeopleViewModelFailureTests.swift
//  iOSTakeHomeProjectTests
//
//  Created by Tunde Adegoroye on 21/08/2022.
//

import XCTest
@testable import iOSTakeHomeProject

class PeopleViewModelFailureTests: XCTestCase {

    private var networkingMock: NetworkingManagerImpl!
    private var vm: PeopleViewModel!
    
    override func setUp() {
        
        networkingMock = NetworkingManagerUserResponseFailureMock()
        vm = PeopleViewModel(networkingManager: networkingMock)
    }
    
    override func tearDown() {
        networkingMock = nil
        vm = nil
    }

    func test_with_unsuccessful_response_error_is_handled() async {

        XCTAssertFalse(vm.isLoading, "The view model shouldn't be loading any data")
        
        defer {
            XCTAssertFalse(vm.isLoading, "The view model shouldn't be loading any data")
            XCTAssertEqual(vm.viewState, .finished, "The view model view state should be finished")
        }
        
        await vm.fetchUsers()
        
        XCTAssertTrue(vm.hasError, "The view model should have an error")
        XCTAssertNotNil(vm.error, "The view model error should be set")
    }
}
