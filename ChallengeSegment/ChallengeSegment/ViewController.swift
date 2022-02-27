//
//  ViewController.swift
//  ChallengeSegment
//
//  Created by dmdm on 27/02/2022.
//

import UIKit


class ViewController: UIViewController {
    
    var segmentControl = UISegmentedControl()
    var segmentResult = UISegmentedControl()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        con()
    }
    
    func con() {
        
        segmentControl = UISegmentedControl(items: ["1", "2", "3"])
        segmentControl.selectedSegmentIndex = 1
        segmentControl.backgroundColor = UIColor.gray
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentControl)
        segmentControl.addTarget(self, action: #selector(change), for:  .valueChanged)
        NSLayoutConstraint.activate([
            segmentControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            segmentControl.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 100),
            segmentControl.widthAnchor.constraint(equalToConstant: 220),
            segmentControl.widthAnchor.constraint(equalToConstant: 220),
            segmentControl.heightAnchor.constraint(equalToConstant: 30)

        ])
        
        segmentResult = UISegmentedControl(items: ["22", "44", "66"])
        segmentResult.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentResult)
        NSLayoutConstraint.activate([
        segmentResult.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
        segmentResult.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 100),
        segmentResult.widthAnchor.constraint(equalToConstant: 220),
        segmentResult.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc func change() {
        
        if segmentControl.selectedSegmentIndex == 0 {
            let seg = ["JavaScript" ,"Python", "Java"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
            
        }else if segmentControl.selectedSegmentIndex == 1 {
            let seg = ["Ford", "Tyota", "BYD", "GJ"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
            
        }else if segmentControl.selectedSegmentIndex == 2 {
            let seg = ["45","59"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
            
        }
        
    }
    
}

