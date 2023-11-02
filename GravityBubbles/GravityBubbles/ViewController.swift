//
//  ViewController.swift
//  GravityBubbles
//
//  Created by COMP47390 on 21/01/2020.
//  Copyright © 2020 COMP47390. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gameView: UIView!
    
    private var gravity = UIGravityBehavior()
    private var collider = UICollisionBehavior()
    private var animator: UIDynamicAnimator?
    
    struct Constants {
        static let bubbleSize = CGSize.init(width: 28, height: 28)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.animator = UIDynamicAnimator(referenceView: self.gameView)
        self.animator?.addBehavior(self.gravity)
        //self.collider.translatesReferenceBoundsIntoBoundary = true
        self.collider.addBoundary(withIdentifier: "boundary" as NSCopying, from: CGPoint(x: 0, y: 230), to: CGPoint(x: self.view.frame.width, y: 230))
        self.animator?.addBehavior(self.collider)
    }

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        print("\(sender.location(in: self.gameView))")
        // do something like drop a bubble
        dropBubble()
    }
    
    private func dropBubble() {
        var frame = CGRect()
        frame.origin = CGPoint.zero
        frame.size = Constants.bubbleSize
        let x = gameView.bounds.width * CGFloat.random(in: 0..<1)
        frame.origin.x = x
        let bubbleView = EllipseView(frame: frame)
        gameView.addSubview(bubbleView)
        collider.addItem(bubbleView)
        gravity.addItem(bubbleView)
    }
}

class EllipseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.randomColor
        layer.cornerRadius = frame.size.width / 2.0
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 0.5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) not implemented!")
    }
    
    override var collisionBoundsType: UIDynamicItemCollisionBoundsType {
        return .ellipse
    }
}

private extension UIColor {
    static var randomColor: UIColor {
        let randomHue = CGFloat.random(in: 0..<1)
        return UIColor(hue: randomHue, saturation: 1.0, brightness: 1.0, alpha: 0.5)
    }
}
