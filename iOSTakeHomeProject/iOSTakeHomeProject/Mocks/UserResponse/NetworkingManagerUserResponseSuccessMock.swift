//
//  NetworkingManagerUserResponseSuccessMock.swift
//  iOSTakeHomeProjectTests
//
//  Created by Tunde Adegoroye on 21/08/2022.
//

#if DEBUG
import Foundation

class NetworkingManagerUserResponseSuccessMock: NetworkingManagerImpl {
    
    func request<T>(session: URLSession, _ endpoint: Endpoint, type: T.Type) async throws -> T where T : Decodable, T : Encodable {
        return try StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self) as! T
    }
    
    func request(session: URLSession, _ endpoint: Endpoint) async throws { }
}
#endif
