//
//  CreateValidator.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 06/08/2022.
//

import Foundation

protocol CreateValidatorImpl {
    func validate(_ person: NewPerson) throws
}

struct CreateValidator: CreateValidatorImpl {
    
    func validate(_ person: NewPerson) throws {
        
        if person.firstName.isEmpty {
            throw CreateValidatorError.invalidFirstName
        }
        
        if person.lastName.isEmpty {
            throw CreateValidatorError.invalidLastName
        }
        
        if person.job.isEmpty {
            throw CreateValidatorError.invalidJob
        }
    }
}

extension CreateValidator {
    enum CreateValidatorError: LocalizedError {
        case invalidFirstName
        case invalidLastName
        case invalidJob
    }
}

extension CreateValidator.CreateValidatorError {
    
    var errorDescription: String? {
        switch self {
        case .invalidFirstName:
            return "First name can't be empty"
        case .invalidLastName:
            return "Last name can't be empty"
        case .invalidJob:
            return "Job can't be empty"
        }
    }
}
