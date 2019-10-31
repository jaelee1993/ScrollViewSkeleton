//
//  ViewController.swift
//  ScrollViewImplementation
//
//  Created by Jae Lee on 10/31/19.
//  Copyright © 2019 Jae Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollView:UIScrollView!
    var contentView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Profile"
        view.backgroundColor = UIColor.white
        
        setup()
    }
    
    fileprivate func setup() {
        setupScrollView()
        setupContentView()
    }
    
    fileprivate func setupScrollView() {
        scrollView = UIScrollView()
        scrollView.backgroundColor = .systemPink
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    fileprivate func setupContentView() {
        contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        let heightConstraint = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(250) //very important
        NSLayoutConstraint.activate([
            heightConstraint,
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        ])
        
        
        let foo = UIView()
        foo.backgroundColor = .systemBlue
        foo.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(foo)
        NSLayoutConstraint.activate([
            foo.heightAnchor.constraint(equalToConstant: 5000),
            foo.widthAnchor.constraint(equalToConstant: 500),
            foo.topAnchor.constraint(equalTo: contentView.topAnchor),
            foo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }


}

