//
//  GameView.swift
//  GravityBubbles
//
//  Created by James McArdle on 15/03/2021.
//  Copyright © 2021 James McArdle. All rights reserved.
//

import UIKit

class GameView: UIView {
    
    private lazy var stencilLayer: CAShapeLayer = {
        let shapeLayer = CAShapeLayer()
        shapeLayer.lineWidth = 2
        shapeLayer.fillColor = UIColor.systemBlue.cgColor
        shapeLayer.strokeColor = UIColor.black.cgColor
        return shapeLayer
    }()
    
    private lazy var sampleSubView: UIView = {
        let view = UIView(frame: .zero)
        //view.backgroundColor = UIColor.red
        return view
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.addSublayer(stencilLayer)
        insertSubview(sampleSubView, at: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let slot_00 = CGRect(x: 15, y: 190, width: 45, height: 45)
        let slot_01 = CGRect(x: 65, y: 190, width: 45, height: 45)
        let slot_02 = CGRect(x: 115, y: 190, width: 45, height: 45)
        let slot_03 = CGRect(x: 165, y: 190, width: 45, height: 45)
        let slot_04 = CGRect(x: 215, y: 190, width: 45, height: 45)
        let slot_05 = CGRect(x: 265, y: 190, width: 45, height: 45)
        let slot_06 = CGRect(x: 315, y: 190, width: 45, height: 45)
        
        let slot_10 = CGRect(x: 15, y: 240, width: 45, height: 45)
        let slot_11 = CGRect(x: 65, y: 240, width: 45, height: 45)
        let slot_12 = CGRect(x: 115, y: 240, width: 45, height: 45)
        let slot_13 = CGRect(x: 165, y: 240, width: 45, height: 45)
        let slot_14 = CGRect(x: 215, y: 240, width: 45, height: 45)
        let slot_15 = CGRect(x: 265, y: 240, width: 45, height: 45)
        let slot_16 = CGRect(x: 315, y: 240, width: 45, height: 45)
        
        let slot_20 = CGRect(x: 15, y: 290, width: 45, height: 45)
        let slot_21 = CGRect(x: 65, y: 290, width: 45, height: 45)
        let slot_22 = CGRect(x: 115, y: 290, width: 45, height: 45)
        let slot_23 = CGRect(x: 165, y: 290, width: 45, height: 45)
        let slot_24 = CGRect(x: 215, y: 290, width: 45, height: 45)
        let slot_25 = CGRect(x: 265, y: 290, width: 45, height: 45)
        let slot_26 = CGRect(x: 315, y: 290, width: 45, height: 45)
        
        let slot_30 = CGRect(x: 15, y: 340, width: 45, height: 45)
        let slot_31 = CGRect(x: 65, y: 340, width: 45, height: 45)
        let slot_32 = CGRect(x: 115, y: 340, width: 45, height: 45)
        let slot_33 = CGRect(x: 165, y: 340, width: 45, height: 45)
        let slot_34 = CGRect(x: 215, y: 340, width: 45, height: 45)
        let slot_35 = CGRect(x: 265, y: 340, width: 45, height: 45)
        let slot_36 = CGRect(x: 315, y: 340, width: 45, height: 45)

        let slot_40 = CGRect(x: 15, y: 390, width: 45, height: 45)
        let slot_41 = CGRect(x: 65, y: 390, width: 45, height: 45)
        let slot_42 = CGRect(x: 115, y: 390, width: 45, height: 45)
        let slot_43 = CGRect(x: 165, y: 390, width: 45, height: 45)
        let slot_44 = CGRect(x: 215, y: 390, width: 45, height: 45)
        let slot_45 = CGRect(x: 265, y: 390, width: 45, height: 45)
        let slot_46 = CGRect(x: 315, y: 390, width: 45, height: 45)

        let slot_50 = CGRect(x: 15, y: 440, width: 45, height: 45)
        let slot_51 = CGRect(x: 65, y: 440, width: 45, height: 45)
        let slot_52 = CGRect(x: 115, y: 440, width: 45, height: 45)
        let slot_53 = CGRect(x: 165, y: 440, width: 45, height: 45)
        let slot_54 = CGRect(x: 215, y: 440, width: 45, height: 45)
        let slot_55 = CGRect(x: 265, y: 440, width: 45, height: 45)
        let slot_56 = CGRect(x: 315, y: 440, width: 45, height: 45)
        
        let path = UIBezierPath(roundedRect: CGRect(x: frame.width/2 - 177.5, y: frame.height/2 - 150, width: 355, height: 310.0), cornerRadius: 8)
        path.append(UIBezierPath(ovalIn: slot_00).reversing()) // reversing is important to "cut out" oval path
        path.append(UIBezierPath(ovalIn: slot_01).reversing()) 
        path.append(UIBezierPath(ovalIn: slot_02).reversing())
        path.append(UIBezierPath(ovalIn: slot_03).reversing())
        path.append(UIBezierPath(ovalIn: slot_04).reversing())
        path.append(UIBezierPath(ovalIn: slot_05).reversing())
        path.append(UIBezierPath(ovalIn: slot_06).reversing())
        
        path.append(UIBezierPath(ovalIn: slot_10).reversing())
        path.append(UIBezierPath(ovalIn: slot_11).reversing())
        path.append(UIBezierPath(ovalIn: slot_12).reversing())
        path.append(UIBezierPath(ovalIn: slot_13).reversing())
        path.append(UIBezierPath(ovalIn: slot_14).reversing())
        path.append(UIBezierPath(ovalIn: slot_15).reversing())
        path.append(UIBezierPath(ovalIn: slot_16).reversing())
        
        path.append(UIBezierPath(ovalIn: slot_20).reversing())
        path.append(UIBezierPath(ovalIn: slot_21).reversing())
        path.append(UIBezierPath(ovalIn: slot_22).reversing())
        path.append(UIBezierPath(ovalIn: slot_23).reversing())
        path.append(UIBezierPath(ovalIn: slot_24).reversing())
        path.append(UIBezierPath(ovalIn: slot_25).reversing())
        path.append(UIBezierPath(ovalIn: slot_26).reversing())
        
        path.append(UIBezierPath(ovalIn: slot_30).reversing())
        path.append(UIBezierPath(ovalIn: slot_31).reversing())
        path.append(UIBezierPath(ovalIn: slot_32).reversing())
        path.append(UIBezierPath(ovalIn: slot_33).reversing())
        path.append(UIBezierPath(ovalIn: slot_34).reversing())
        path.append(UIBezierPath(ovalIn: slot_35).reversing())
        path.append(UIBezierPath(ovalIn: slot_36).reversing())

        path.append(UIBezierPath(ovalIn: slot_40).reversing())
        path.append(UIBezierPath(ovalIn: slot_41).reversing())
        path.append(UIBezierPath(ovalIn: slot_42).reversing())
        path.append(UIBezierPath(ovalIn: slot_43).reversing())
        path.append(UIBezierPath(ovalIn: slot_44).reversing())
        path.append(UIBezierPath(ovalIn: slot_45).reversing())
        path.append(UIBezierPath(ovalIn: slot_46).reversing())

        path.append(UIBezierPath(ovalIn: slot_50).reversing())
        path.append(UIBezierPath(ovalIn: slot_51).reversing())
        path.append(UIBezierPath(ovalIn: slot_52).reversing())
        path.append(UIBezierPath(ovalIn: slot_53).reversing())
        path.append(UIBezierPath(ovalIn: slot_54).reversing())
        path.append(UIBezierPath(ovalIn: slot_55).reversing())
        path.append(UIBezierPath(ovalIn: slot_56).reversing())

        stencilLayer.path = path.cgPath
        
        sampleSubView.frame.size = CGSize(width: 20, height: bounds.height)
        sampleSubView.center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
    }
}
