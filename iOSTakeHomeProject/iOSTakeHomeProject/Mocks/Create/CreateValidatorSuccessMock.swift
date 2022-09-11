//
//  CreateValidatorSuccessMock.swift
//  iOSTakeHomeProjectTests
//
//  Created by Tunde Adegoroye on 25/08/2022.
//

#if DEBUG
import Foundation

struct CreateValidatorSuccessMock: CreateValidatorImpl {
    
    func validate(_ person: NewPerson) throws {}
}
#endif
