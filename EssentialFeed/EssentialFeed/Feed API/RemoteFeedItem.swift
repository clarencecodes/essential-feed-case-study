//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Clarence Chan on 19/6/25.
//  Copyright © 2025 Essential Developer. All rights reserved.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
