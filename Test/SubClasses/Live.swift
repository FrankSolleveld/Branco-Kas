//
//  Live.swift
//  Test
//
//  Created by Frank Solleveld on 04-04-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

// Importing video kit
import AVKit

class Live: UIViewController {

    @IBAction func buttonToggled(_ sender: Any) {
        
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4") {
            
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion:
                {
                    
                    video.play()
                    
            })
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
