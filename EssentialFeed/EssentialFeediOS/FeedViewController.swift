//
//  FeedViewController.swift
//  EssentialFeed
//
//  Created by Clarence Chan on 4/11/25.
//  Copyright © 2025 Essential Developer. All rights reserved.
//

import UIKit
import EssentialFeed

final public class FeedViewController: UITableViewController {
    private var loader: FeedLoader?
    private var viewAppeared: Bool = false
    
    public convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(load), for: .valueChanged)
        load()
    }
    
    public override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        
        if !viewAppeared {
            load()
            viewAppeared = true
        }
    }
        
    @objc private func load() {
        refreshControl?.beginRefreshing()
        
        loader?.load { [weak self] _ in
            self?.refreshControl?.endRefreshing()
        }
    }
}
