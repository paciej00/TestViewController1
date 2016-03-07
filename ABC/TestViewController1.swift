//
//  TestViewController1.swift
//  ABC
//
//  Created by Maciej Piotrowski on 04/03/16.
//  Copyright © 2016 Swifting.io. All rights reserved.
//

import UIKit

class TestViewController1: UIViewController {

    //https://github.com/devxoul/Then

    //MARK: - properties
    let imageView: UIImageView
    let nameLabel: UILabel
    let ratingLabel: UILabel

    //MARK: - initialization
    init() {
        imageView = UIImageView().then { imageView in
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .ScaleAspectFill
            imageView.clipsToBounds = true
            imageView.accessibilityIdentifier = "image"
            imageView.isAccessibilityElement = true
        }

        nameLabel = UILabel().then { nameLabel in
            nameLabel.translatesAutoresizingMaskIntoConstraints = false
            nameLabel.numberOfLines = 0
            nameLabel.backgroundColor = UIColor.whiteColor()
            nameLabel.textColor = UIColor.darkGrayColor()
            nameLabel.accessibilityIdentifier = "name"
            nameLabel.isAccessibilityElement = true
        }

        ratingLabel = UILabel().then { ratingLabel in
            ratingLabel.translatesAutoresizingMaskIntoConstraints = false
            ratingLabel.numberOfLines = 1
            ratingLabel.backgroundColor = UIColor.whiteColor()
            ratingLabel.textColor = UIColor.darkGrayColor()
            ratingLabel.accessibilityIdentifier = "rating"
            ratingLabel.isAccessibilityElement = true
        }

        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }

    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        view.addSubview(ratingLabel)
        view.addSubview(nameLabel)
    }
}
