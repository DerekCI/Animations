//
//  ViewController.swift
//  Animations
//
//  Created by Derek Cortez Ibarra on 14/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var fish : LoaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fish = LoaderView()
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @IBAction func changeSegment(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            fish.loadPuntos()
            fish.frame.size = CGSize(width: 400, height: 400)
            fish.center = self.view.center
            view.addSubview(fish)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
               // Code you want to be delayed
                self.fish.removeFromSuperview()
            }
            break
        case 1:
            fish.loadIndicator()
            fish.frame.size = CGSize(width: 400, height: 400)
            fish.center = self.view.center
            view.addSubview(fish)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
               // Code you want to be delayed
                self.fish.removeFromSuperview()
            }
            
            break
        case 2:
            fish.loadAnimation()
            fish.frame.size = CGSize(width: 400, height: 400)
            fish.center = self.view.center
            view.addSubview(fish)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
               // Code you want to be delayed
                self.fish.removeFromSuperview()
            }
            break
            
        default:
            break
        }
    }
    
    
    
    
}
