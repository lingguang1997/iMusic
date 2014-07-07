//
//  PlayerViewController.swift
//  iMusic
//
//  Created by Zijiao Liu on 6/28/14.
//  Copyright (c) 2014 Zijiao Liu. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class PlayerViewController: UIViewController {

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    var backgroundMusicPlayer:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view!.backgroundColor = UIColor.redColor()

        // System Sound Services
//        let mp3URL1 = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "Telephone No Service", "caf", nil)
//        var soundID:SystemSoundID = 0
//        AudioServicesCreateSystemSoundID(mp3URL1, &soundID)
//        CFRelease(mp3URL1)
//        AudioServicesPlaySystemSound(soundID)

        // AVAudioPlayer
        let mp3File = NSBundle.mainBundle().pathForResource("in_my_song", ofType: "mp3")
        let mp3URL2 = NSURL(fileURLWithPath: mp3File)
        var error:NSError?
        backgroundMusicPlayer = AVAudioPlayer(contentsOfURL: mp3URL2, error: &error)
        backgroundMusicPlayer!.prepareToPlay()
    }

    override func viewDidAppear(animated: Bool) {
        backgroundMusicPlayer!.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
