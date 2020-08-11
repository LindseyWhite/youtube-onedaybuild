//
//  DetailViewController.swift
//  youtube-onedaybuild
//
//  Created by Lindsey White on 8/10/20.
//  Copyright © 2020 Lindsey White. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textView: UITextView!
    
    var video:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        guard video != nil else {
            return
        }
        
        let embedUrl = Constants.YOUTUBE_EMBED_URL + video!.videoId
        
        let url = URL(string: embedUrl)
        let request = URLRequest(url: url!)
        webView.load(request)
        
        titleLabel.text = video!.title
        

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM dd, yyyy"
        dateLabel.text = dateFormatter.string(from: video!.published)
        
        textView.text = video!.description
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
