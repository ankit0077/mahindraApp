//
//  VideoPlayerFile.swift
//  mahindraApp
//
//  Created by ankit shelar on 28/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit
import AVKit

class VideoPlayerFile: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playTestVideoPressed(_ sender: Any) {
        print("button pressed")
        /*if let path = Bundle.main.path(forResource: "sampleVideo", ofType: "mp4") {
            let url = URL(fileURLWithPath: path)
            let video = AVPlayer(url: url)
            let VideoPlayer = AVPlayerViewController()
            VideoPlayer.player = video
            present(VideoPlayer, animated: true, completion: nil)
        }*/
        //let path = Bundle.main.path(forResource: "sampleVideo", ofType: "mp4")
        //let url = URL(fileURLWithPath: path)
        let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let video = AVPlayer(url: url!)
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
        present(videoPlayer, animated: true) {
            video.play()
        }
        
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
