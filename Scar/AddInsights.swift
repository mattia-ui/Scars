//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit


class AddInsights: UIViewController {
    
    @IBOutlet weak var pod: UIButton!
    @IBOutlet weak var well: UIButton!
    @IBOutlet weak var mov: UIButton!
    @IBOutlet weak var art: UIButton!
    @IBOutlet weak var artist: UIButton!
        
    static var j: Int = 0
    
    var temp: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddInsights.j = 0
        for i in 0...Schermata2.insights.count - 1{
             if(Schermata2.insights[i] == "Podcast"){
                AddInsights.j = AddInsights.j + 1
                pod.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Wellbein"){
                AddInsights.j = AddInsights.j + 1
                well.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Movies"){
                AddInsights.j = AddInsights.j + 1
                mov.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Articols"){
                AddInsights.j = AddInsights.j + 1
                art.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Artist"){
                AddInsights.j = AddInsights.j + 1
                artist.isSelected = true
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let name = Notification.Name(rawValue: NotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
    }
   
    @IBAction func podcast(_ sender: UIButton) {
        if sender.isSelected {
            pod.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Podcast"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
        } else {
            pod.isSelected = true
            Schermata2.insights[AddInsights.j] = "Podcast"
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func wellbein(_ sender: UIButton) {
        if sender.isSelected {
            well.isSelected = false
                for i in 0...Schermata2.insights.count - 1{
                    if(Schermata2.insights[i] != "Wellbein"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
        } else {
            well.isSelected = true
            Schermata2.insights[AddInsights.j] = "Wellbein"
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func movies(_ sender: UIButton) {
        if sender.isSelected {
            mov.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Movies"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
        } else {
            mov.isSelected = true
            Schermata2.insights[AddInsights.j] = "Movies"
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func articols(_ sender: UIButton) {
        if sender.isSelected {
            art.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Articols"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
        } else {
            art.isSelected = true
            Schermata2.insights[AddInsights.j] = "Articols"
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func artist(_ sender: UIButton) {
        if sender.isSelected {
            artist.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Artist"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
        } else {
            artist.isSelected = true
            Schermata2.insights[AddInsights.j] = "Artist"
            AddInsights.j = AddInsights.j + 1
        }
    }
}
