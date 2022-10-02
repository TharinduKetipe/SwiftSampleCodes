//
//  ResponseModels.swift
//  Codable
//
//  Created by Tharindu Ketipearachchi on 2022-10-02.
//
import Foundation

struct Response: Decodable {
    var page: Int?
    var perPage: Int?
    var total: Int?
    var totalPages: Int?
    var data: [User]?
    
    enum CodingKeys: String, CodingKey {
        case page, total, data
        case perPage = "per_page"
        case totalPages = "total_pages"
    }
}

struct User: Decodable {
    var id: Int?
    var email: String?
    var firstName: String?
    var lastName: String?
    var avatar: String?
    
    enum CodingKeys: String, CodingKey {
        case id, email, avatar
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
