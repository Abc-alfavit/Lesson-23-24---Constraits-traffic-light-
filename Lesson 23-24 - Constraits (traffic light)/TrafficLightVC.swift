//
//  ViewController.swift
//  Lesson 23-24 - Constraits (traffic light)
//
//  Created by Валентин Ремизов on 28.03.2023.
//

import UIKit

//MARK: - NSLayout Anchor

final class TrafficLightVC : UIViewController {

    private let squareBackground : UIView = {
        let current = UIView()
        current.translatesAutoresizingMaskIntoConstraints = false
        current.backgroundColor = .black
        return current
    }()

    private let circleRed : UIView = {
        let current = UIView()
        current.translatesAutoresizingMaskIntoConstraints = false
        current.backgroundColor = .red
        current.layer.cornerRadius = 27
        return current
    }()

    private let circleYellow : UIView = {
        let current = UIView()
        current.translatesAutoresizingMaskIntoConstraints = false
        current.backgroundColor = .yellow
        current.layer.cornerRadius = 27
        return current
    }()

    private let circleGreen : UIView = {
        let current = UIView()
        current.translatesAutoresizingMaskIntoConstraints = false
        current.backgroundColor = .green
        current.layer.cornerRadius = 27
        return current
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        [squareBackground, circleRed, circleYellow, circleGreen].forEach{view.addSubview($0)}
        createSquareBackground()
        createRedCircle()
        createYellowCircle()
        createGreenCircle()
    }

    private func createSquareBackground() {
        squareBackground.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        squareBackground.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        squareBackground.widthAnchor.constraint(equalToConstant: 70).isActive = true
        squareBackground.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }

    private func createRedCircle() {
        circleRed.centerXAnchor.constraint(equalTo: squareBackground.centerXAnchor).isActive = true
        circleRed.topAnchor.constraint(equalTo: squareBackground.topAnchor, constant: 23).isActive = true
        circleRed.widthAnchor.constraint(equalTo: squareBackground.widthAnchor, multiplier: 1/1.3).isActive = true
        circleRed.heightAnchor.constraint(equalTo: circleRed.widthAnchor).isActive = true
    }

    private func createYellowCircle() {
        circleYellow.widthAnchor.constraint(equalTo: squareBackground.widthAnchor, multiplier: 1/1.3).isActive = true
        circleYellow.heightAnchor.constraint(equalTo: squareBackground.widthAnchor, multiplier: 1/1.3).isActive = true
        circleYellow.centerXAnchor.constraint(equalTo: squareBackground.centerXAnchor).isActive = true
        circleYellow.centerYAnchor.constraint(equalTo: squareBackground.centerYAnchor).isActive = true
    }

    private func createGreenCircle() {
        circleGreen.widthAnchor.constraint(equalTo: squareBackground.widthAnchor, multiplier: 1/1.3).isActive = true
        circleGreen.heightAnchor.constraint(equalTo: squareBackground.widthAnchor, multiplier: 1/1.3).isActive = true
        circleGreen.centerXAnchor.constraint(equalTo: squareBackground.centerXAnchor).isActive = true
        circleGreen.bottomAnchor.constraint(equalTo: squareBackground.bottomAnchor, constant: -23).isActive = true
    }

}

