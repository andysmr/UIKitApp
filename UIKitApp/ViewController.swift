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
    @IBOutlet var textButton: UITextField!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var secondLable: UILabel!
    @IBOutlet var switchForm: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // segmentedControl
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: lable
        mainLable.text = ""
        mainLable.font = mainLable.font.withSize(30)
        mainLable.textAlignment = .center
        mainLable.numberOfLines = 2
        
        // MARK: slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        mainLable.text = String(slider.value)
        // Do any additional setup after loading the view.
        textButton.keyboardType = .numberPad
        
        mainButton.layer.cornerRadius = 10
        
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
    
    @IBAction func sliderAction() {
        mainLable.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textButton.text, !text.isEmpty else { return }
        mainLable.text = text
    }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        mainLable.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func switcherAction(_ sender: Any) {
        mainLable.isHidden = !switchForm.isOn
        if !switchForm.isOn {
            secondLable.text = "Включить"
        }
        else {
            secondLable.text = "Выключить"
        }
    }
}

