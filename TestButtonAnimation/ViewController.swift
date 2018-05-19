//
//  ViewController.swift
//  TestButtonAnimation
//
//  Created by Shane Whitehead on 15/5/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var buttons: [UIButton]!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    for button in buttons {
      button.setTitle(nil, for: [])
      button.setImage(Buttons.imageOfGo, for: [])
    }
  }

  @IBAction func touchDown(_ sender: UIButton) {
    print("Touch Down")
    sender.setImage(Buttons.imageOfStop, for: [])
  }

  @IBAction func touchUp(_ sender: UIButton) {
    print("Touch up")
    sender.layer.removeAllAnimations()
    UIView.transition(with: sender, duration: 1.0, options: [.transitionCrossDissolve, .allowUserInteraction], animations: {
      sender.setImage(Buttons.imageOfGo, for: [])
    }) { (completed) in
      print("Animated completed - \(completed)")
    }
  }

}

