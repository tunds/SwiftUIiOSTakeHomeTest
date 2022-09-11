//
//  CreateValidatorFailureMock.swift
//  iOSTakeHomeProjectTests
//
//  Created by Tunde Adegoroye on 25/08/2022.
//

#if DEBUG
import Foundation

struct CreateValidatorFailureMock: CreateValidatorImpl {
    
    func validate(_ person: NewPerson) throws {
        throw CreateValidator.CreateValidatorError.invalidFirstName
    }
}
#endif
