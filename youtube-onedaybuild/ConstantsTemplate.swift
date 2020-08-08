//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Lindsey White on 8/2/20.
//  Copyright © 2020 Lindsey White. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
}
