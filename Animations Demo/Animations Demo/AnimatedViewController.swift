//
//  ViewController.swift
//  Animations Demo
//
//  Created by Alejandrina Patrón López on 6/8/20.
//  Copyright © 2020 Alejandrina Patrón López. All rights reserved.
//

import UIKit

class AnimatedViewController: UIViewController {
  
  private let animatedView = UIView(frame: CGRect(x: 60, y: 160, width: 200, height: 200))

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    addAnimatedView()
  }

  private func addAnimatedView() {
    animatedView.backgroundColor = .blue
    view.addSubview(animatedView)
    
    let buttonFrame = CGRect(x: 60, y: 35, width: 100, height: 100)
    let button = UIButton(frame: buttonFrame)
    button.setTitleColor(.black, for: .normal)
    button.setTitle("Animar", for: .normal)
    button.addTarget(self, action: #selector(handleAnimate), for: .touchUpInside)
    view.addSubview(button)
  }
  
  @objc private func handleAnimate() {
    let originalFrame = animatedView.frame
    UIView.animate(withDuration: 3.0, animations: {
      let newFrame = CGRect(x: originalFrame.minX, y: originalFrame.minY, width: originalFrame.width * 0.5, height: originalFrame.height * 2)
      self.animatedView.frame = newFrame
      self.animatedView.backgroundColor = .red
      // self.animatedView.frame = originalFrame
      // cambiar color/opacity
      // stack con botones
      // bounce?
    }) { finished in
      //self.animatedView.frame = originalFrame
      print(finished)
    }
  }
}

