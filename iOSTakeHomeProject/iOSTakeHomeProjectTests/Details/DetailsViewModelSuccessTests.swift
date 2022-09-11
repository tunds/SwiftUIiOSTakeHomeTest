//
//  DetailsViewModelSuccessTests.swift
//  iOSTakeHomeProjectTests
//
//  Created by Tunde Adegoroye on 21/08/2022.
//

import XCTest
@testable import iOSTakeHomeProject

class DetailsViewModelSuccessTests: XCTestCase {

    private var networkingMock: NetworkingManagerImpl!
    private var vm: DetailViewModel!
    
    override func setUp() {
        networkingMock = NetworkingManagerUserDetailsResponseSuccessMock()
        vm = DetailViewModel(networkingManager: networkingMock)
    }
    
    override func tearDown() {
        networkingMock = nil
        vm = nil
    }
    
    func test_with_successful_response_users_details_is_set() async throws {
     
        XCTAssertFalse(vm.isLoading, "The view model should not be loading")
        
        defer {
            XCTAssertFalse(vm.isLoading, "The view model should not be loading")
        }
        
        await vm.fetchDetails(for: 1)
        
        XCTAssertNotNil(vm.userInfo, "The user info in the view model should not be nil")
        
        let userDetailsData = try StaticJSONMapper.decode(file: "SingleUserData", type: UserDetailResponse.self)
        
        XCTAssertEqual(vm.userInfo, userDetailsData, "The response from our networking mock should match")
    }
}
