//
//  Models.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 24/06/2022.
//

import Foundation

// MARK: - User
struct User: Codable, Equatable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable, Equatable {
    let url: String
    let text: String
}
