//
//  ViewController.swift
//  Animations Demo
//
//  Created by Alejandrina Patrón López on 6/8/20.
//  Copyright © 2020 Alejandrina Patrón López. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private var animatedView: UIView?

  override func viewDidLoad() {
    super.viewDidLoad()

    let buttonFrame = CGRect(x: view.frame.midX - 25,
                             y: view.frame.midY - 25,
                             width: 50,
                             height: 50)
    let heartButton = HeartButton(frame: buttonFrame)
    heartButton.addTarget(
      self, action: #selector(handleHeartButtonTap(_:)), for: .touchUpInside)
    view.addSubview(heartButton)
  }

  @objc private func handleHeartButtonTap(_ sender: UIButton) {
    guard let button = sender as? HeartButton else { return }
    button.flipLikedState()
  }
}

