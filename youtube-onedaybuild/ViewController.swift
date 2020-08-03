//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Lindsey White on 7/19/20.
//  Copyright © 2020 Lindsey White. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

