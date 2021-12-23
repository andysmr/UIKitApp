//
//  ViewController.swift
//  UIKitApp
//
//  Created by Андрей Трушкин on 23.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var slider: UISlider!
    @IBOutlet var mainLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // segmentedControl
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //lable
        mainLable.text = ""
        mainLable.font = mainLable.font.withSize(30)
        mainLable.textAlignment = .center
        mainLable.numberOfLines = 2
        
        //slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
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

