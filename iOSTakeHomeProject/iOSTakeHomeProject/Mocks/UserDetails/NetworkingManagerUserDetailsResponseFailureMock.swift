//
//  NetworkingManagerUserDetailsResponseFailureMock.swift
//  iOSTakeHomeProjectTests
//
//  Created by Tunde Adegoroye on 21/08/2022.
//

#if DEBUG
import Foundation

class NetworkingManagerUserDetailsResponseFailureMock: NetworkingManagerImpl {
    
    func request<T>(session: URLSession, _ endpoint: Endpoint, type: T.Type) async throws -> T where T : Decodable {
        throw NetworkingManager.NetworkingError.invalidUrl
    }
    
    func request(session: URLSession, _ endpoint: Endpoint) async throws {}
}
#endif
