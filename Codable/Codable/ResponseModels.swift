//
//  ResponseModels.swift
//  Codable
//
//  Created by Tharindu Ketipearachchi on 2022-10-02.
//

import Foundation

struct Response: Decodable {
    
    var page: Int?
    var per_page: Int?
    var total: Int?
    var total_pages: Int?
    var data: [User]?
    
    
}

struct User: Decodable {
    
    var id: Int?
    var email: String?
    var first_name: String?
    var last_name: String?
    var avatar: String?
}
