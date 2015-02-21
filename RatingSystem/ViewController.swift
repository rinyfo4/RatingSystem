//
//  ViewController.swift
//  RatingSystem
//
//  Created by Luka on 2/2/15.
//  Copyright (c) 2015 Iniit LLC. All rights reserved.
//

import UIKit

var sir:[Double]=[]
var david:[Double]=[]
/////////////////////////
var florian:[Double]=[]
var michelle:[Double]=[]
var nate:[Double]=[]
var mariam:[Double]=[]
var matthieu:[Double]=[]
var rielly:[Double]=[]
var aboud:[Double]=[]

class ViewController: UIViewController {
    
    
    var vote:Double = 0
    var counter = 1
    var number = Int()
    var names = [sir: [], david: []]
    var sum: Double = 0
    var average:Double = 0
    
    
    
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var imageOfPerson: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBAction func one(sender: UIButton) {
             vote = 1
            resultLabel.text = "1"
            disableButtons()
            profileVoteAverage()
        
        
        
            }
    @IBAction func two(sender: UIButton) {
     
        vote = 2
        
        resultLabel.text = "2"
        
        disableButtons()
        profileVoteAverage()
  
        
        //now insert at index of the array mother fucker
        
    }
    @IBAction func three(sender: UIButton) {
        vote = 3
        
        resultLabel.text = "3"
        
        disableButtons()
        profileVoteAverage()
    }
    @IBAction func four(sender: UIButton) {
        vote = 4
        
        resultLabel.text = "4"
        
        disableButtons()
        profileVoteAverage()
    }
    @IBAction func five(sender: UIButton) {
        vote = 5
        
        resultLabel.text = "5"
        
        disableButtons()
        profileVoteAverage()
    }
    @IBAction func next(sender: UIButton) {
        counter++
        
        if counter == 10 {
            
            counter = 1
        }
        
        imageOfPerson.image = UIImage(named:"image\(counter).jpg")
        
        resultLabel.text = ""
        
        enableButtons()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib

          imageOfPerson.image = UIImage(named:"image\(counter).jpg")
        

        
    }
   
  /*
    func average(names:[Double]) -> Double {
        
        //total is the sum of all the numbers in the array
        var total = 0.0
        
        for name in names {
            
            total = names.reduce(0,+)
        
            println(total)
        }
        //add in votes total per person
        
        let votesTotal = Double(names.count)
        var average = total/votesTotal
        return average
    }
    
*/
    
    func profileVoteAverage() {
    
    if counter == 1  {
    
        sir.append(vote)
        sum = sir.reduce(0,+)
        average = (sum / Double(sir.count))
        averageLabel.text = "\(average)"

    }
    else if counter == 2 {
    
        david.append(vote)
        sum = david.reduce(0,+)
        average = (sum / Double(david.count))
        averageLabel.text = "\(average)"
    }
        
    else if counter == 3 {
        
        florian.append(vote)
        
        sum = florian.reduce(0,+)
        average = (sum / Double(florian.count))
     averageLabel.text = "\(average)"
    }
    
    else if counter == 4 {
        michelle.append(vote)
        sum = michelle.reduce(0,+)
        average = (sum / Double(michelle.count))
        averageLabel.text = "\(average)"
    }
    
    else if counter == 5 {
        
        nate.append(vote)
        sum = nate.reduce(0,+)
        average = (sum / Double(nate.count))
        averageLabel.text = "\(average)"
    }
    
    else if counter == 6 {
        
        mariam.append(vote)
        sum = mariam.reduce(0,+)
        average = (sum / Double(mariam.count))
        averageLabel.text = "\(average)"
        
    }
    
    else if counter == 7 {
        
        matthieu.append(vote)
        sum = matthieu.reduce(0,+)
        average = (sum / Double(matthieu.count))
        averageLabel.text = "\(average)"    }
        
    else if counter == 8 {
        
        rielly.append(vote)
        sum = rielly.reduce(0,+)
        average = (sum / Double(rielly.count))
        averageLabel.text = "\(average)"
        
    }
    else if counter == 9 {
        
        aboud.append(vote)
        sum = aboud.reduce(0,+)
        average = (sum / Double(aboud.count))
        averageLabel.text = "\(average)"        
        }

    }


func disableButtons() {
        buttonOne.enabled = false
        buttonTwo.enabled = false
        buttonThree.enabled = false
        buttonFour.enabled = false
        buttonFive.enabled = false
    }
    func enableButtons() -> Bool {
        buttonOne.enabled = true
        buttonTwo.enabled = true
        buttonThree.enabled = true
        buttonFour.enabled = true
        buttonFive.enabled = true
        
        return true
    }
}
