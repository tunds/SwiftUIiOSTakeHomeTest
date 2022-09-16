//
//  UITestingHelper.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 03/09/2022.
//

#if DEBUG

import Foundation

struct UITestingHelper {
    
    static var isUITesting: Bool {
        ProcessInfo.processInfo.arguments.contains("-ui-testing")
    }
    
    static var isPeopleNetworkingSuccessful: Bool {
        ProcessInfo.processInfo.environment["-people-networking-success"] == "1"
    }
    
    static var isDetailsNetworkingSuccessful: Bool {
        ProcessInfo.processInfo.environment["-details-networking-success"] == "1"
    }
    
    static var isCreateNetworkingSuccessful: Bool {
        ProcessInfo.processInfo.environment["-create-networking-success"] == "1"
    }
}

#endif
