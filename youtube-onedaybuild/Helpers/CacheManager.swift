//
//  CacheManager.swift
//  youtube-onedaybuild
//
//  Created by Lindsey White on 8/9/20.
//  Copyright © 2020 Lindsey White. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        return cache[url]
    }
}
