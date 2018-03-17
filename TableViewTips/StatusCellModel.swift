//
//  Status.swift
//  TableViewTips
//
//  Created by Macbook Pro on 16/03/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class StatusFeed : FeedItem {

    var commentIcon: UIImage
    var favoriteButtonTitle: String
    var usernameText: String
    let statusText: String
    
    
    init(_ status: Status) {
        statusText = status.text
        usernameText = status.username
        
        if status.comments.isEmpty {
            commentIcon = UIImage(named: "no-comments-icon")!
        } else {
            commentIcon = UIImage(named: "comments-icon")!
        }
        
        favoriteButtonTitle = status.isFavorite ? "Unfavorite" : "Favorite"
    }
}

class PhotoFeed: FeedItem {
    var commentIcon: UIImage

    var favoriteButtonTitle: String

    var usernameText: String

    let photo : String


     init(_ status: Status) {
        photo = status.photo
        usernameText = status.username
        
        if status.comments.isEmpty {
            commentIcon = UIImage(named: "no-comments-icon")!
        } else {
            commentIcon = UIImage(named: "comments-icon")!
        }
        
        favoriteButtonTitle = status.isFavorite ? "Unfavorite" : "Favorite"
    }
}

protocol FeedItem {
    var commentIcon: UIImage  { get set }
    var favoriteButtonTitle: String  { get set }
    var usernameText: String  { get set }
}


enum FeedItemType {
  case status(StatusFeed)
  case photo(PhotoFeed)
}
