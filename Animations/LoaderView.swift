//
//  LoaderView.swift
//  Animations
//
//  Created by Erick Rodrigo Minero Pineda on 12/11/22.
//

import UIKit
import Lottie

public class LoaderView: UIView {
    
    override init(frame: CGRect) {
        super.init (frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init (coder: aDecoder)
    }
    
    func commonInit() {
        let animationView = LottieAnimationView(name: "fish")
        loadAnim(animationView: animationView)
    }
    
    func loadPuntos(){
        let animationView = LottieAnimationView(name: "puntos-loading")
        loadAnim(animationView: animationView)
    }
    func loadIndicator(){
        let animationView = LottieAnimationView(name: "loading-indicator-1")
        loadAnim(animationView: animationView)
    }
    func loadAnimation(){
        let animationView = LottieAnimationView(name: "loading-animation-2")
        loadAnim(animationView: animationView)
    }
    
    func loadAnim(animationView : LottieAnimationView){
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.center
        animationView.animationSpeed = 1.0
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play ()
        animationView.translatesAutoresizingMaskIntoConstraints=false
        animationView.centerXAnchor.constraint(equalTo:centerXAnchor).isActive=true
        animationView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive=true
        animationView.widthAnchor.constraint(equalToConstant:300).isActive=true
        animationView.heightAnchor.constraint(equalToConstant:300).isActive=true
        
        
    }
}
