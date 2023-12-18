//
//  FlagQuizViewController.swift
//  FlagQuiz
//
//  Created by Nancy Kansal on 09/09/21.
//

import UIKit

class FlagQuizViewController: UIViewController {

    @IBOutlet weak var flagLabel: UILabel!
    
    @IBOutlet weak var answerOption1: UIButton!
    @IBOutlet weak var answerOption2: UIButton!
    @IBOutlet weak var answerOption3: UIButton!
    @IBOutlet weak var answerOption4: UIButton!
    
    var dataModel: DataModel = DataModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.startQuiz()
        showQuestion(index: dataModel.currentQuestionIndex)
        
        
    }
    
    @IBAction func unwindToQuizSegue(unwindSegue: UIStoryboardSegue){
        viewDidLoad()
    }
    
    func showQuestion(index : Int){
        let question = dataModel.questions[index]
        //display the country flag
        flagLabel.text = question.countryFlag
        
        //display the options
        
        answerOption1.setTitle(question.options[0], for: .normal)
        answerOption2.setTitle(question.options[1], for: .normal)
        answerOption3.setTitle(question.options[2], for: .normal)
        answerOption4.setTitle(question.options[3], for: .normal)
    }
    func nextQuestion(){
        dataModel.currentQuestionIndex += 1
        showQuestion(index: dataModel.currentQuestionIndex)
    }
    
    
    @IBAction func answerSelected(_ sender: UIButton) {
        if let answerSelected = sender.title(for : .selected){
        dataModel.answers.append(answerSelected)
        
            if(dataModel.currentQuestionIndex < dataModel.questions.count - 1){
                nextQuestion()}
            else{
                //go to result screen
                performSegue(withIdentifier: "result", sender: nil)
                print(dataModel.answers)
            }
        }
    }
}
