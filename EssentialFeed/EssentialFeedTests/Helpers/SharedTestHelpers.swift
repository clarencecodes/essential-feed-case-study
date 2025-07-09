//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Clarence Chan on 9/7/25.
//  Copyright © 2025 Essential Developer. All rights reserved.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
