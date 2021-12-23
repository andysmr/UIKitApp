//
//  ViewController.swift
//  UIKitApp
//
//  Created by Андрей Трушкин on 23.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        mainLable.text = ""
        mainLable.font = mainLable.font.withSize(30)
        mainLable.textAlignment = .center
        mainLable.numberOfLines = 2
        // Do any additional setup after loading the view.
    }


    @IBAction func segmentedControllAction(_ sender: Any) {
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLable.text = "Выбран сегмент с индексом 0"
            mainLable.textColor = .red
        case 1:
            mainLable.text = "Выбран сегмент с индексом 1"
            mainLable.textColor = .yellow
        case 2:
            mainLable.text = "Выбран сегмент с индексом 2"
            mainLable.textColor = .green
        default:
            break
        }
    }
}

