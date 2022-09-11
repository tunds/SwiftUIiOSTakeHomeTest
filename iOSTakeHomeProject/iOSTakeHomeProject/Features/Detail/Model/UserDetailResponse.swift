//
//  UserDetailResponse.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 24/06/2022.
//

// MARK: - UserDetailResponse
struct UserDetailResponse: Codable, Equatable {
    let data: User
    let support: Support
}
