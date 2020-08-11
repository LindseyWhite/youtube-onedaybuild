//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Lindsey White on 7/19/20.
//  Copyright © 2020 Lindsey White. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    
    @IBOutlet weak var TableView: UITableView!
    var model = Model()
    var videos = [Video]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set itself as the datasource and the delegate
        TableView.dataSource = self
        TableView.delegate = self
        
        // set itself as the delegate of the model
        model.delegate = self
        
        model.getVideos()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard TableView.indexPathForSelectedRow != nil else {
            return
        }
        
        let selectedVideo = videos[TableView.indexPathForSelectedRow!.row]
        
        let detailVC = segue.destination as! DetailViewController
        
        detailVC.video = selectedVideo
    }
    
    func videosFetched(_ videos: [Video]) {
        self.videos = videos
        TableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        let video = self.videos[indexPath.row]
        cell.setCell(video)
        cell.textLabel?.text = title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

