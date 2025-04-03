//
//  Photo.swift
//  NetworkingDemo
//
//  Created by Bennett Lee on 3/31/25.
//

import Foundation

struct Url : Codable {
    let raw: String
    let full: String
    let regular: String
}

struct Photo : Codable {
    let id: String
    let created_at: String
    let color: String
    let width: Int
    let urls: Url
}
