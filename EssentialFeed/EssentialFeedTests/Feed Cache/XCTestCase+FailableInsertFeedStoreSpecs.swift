//
//  XCTestCase+FailableInsertFeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Clarence Chan on 24/7/25.
//  Copyright © 2025 Essential Developer. All rights reserved.
//

import XCTest
import EssentialFeed

extension FailableInsertFeedStoreSpecs where Self: XCTestCase {
    func assertThatInsertDeliversErrorOnInsertionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let feed = uniqueImageFeed()
        let timestamp = Date()
        
        let insertionError = insert((feed.local, timestamp), to: sut)
        
        XCTAssertNotNil(insertionError, "Expected cache insertion to fail with an error")
    }
    
    func assertThatInsertHasNoSideEffectsOnInsertionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let feed = uniqueImageFeed()
        let timestamp = Date()
        
        insert((feed.local, timestamp), to: sut)
        
        expect(sut, toRetrieve: .empty)
    }
}
