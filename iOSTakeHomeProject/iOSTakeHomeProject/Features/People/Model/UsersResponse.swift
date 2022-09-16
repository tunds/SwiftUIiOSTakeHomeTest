//
//  UsersResponse.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 24/06/2022.
//

// MARK: - UsersResponse
struct UsersResponse: Codable, Equatable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
}
