

import UIKit

class ViewController: UIViewController {
    
    var quizBrain = QuizBrain()
    
    
    
    var qNum = 0
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var flaseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!
        
        var answerRecieved = quizBrain.checkAnswer(userAnswer)
    
        
        if answerRecieved {
            sender.backgroundColor = UIColor.green
            scoreLabel.textColor = UIColor.green
            
        }
        else {
            sender.backgroundColor = UIColor.red
            scoreLabel.textColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2,
                                     target: self,
                                     selector: #selector(updateQuestion),
                                     userInfo: nil,
                                     repeats: false)

        
    }
    
    @objc func updateQuestion(){
        label.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        
        
        
        trueButton.backgroundColor = UIColor.clear
        flaseButton.backgroundColor = UIColor.clear
        scoreLabel.textColor = UIColor.white
        
        
    }
    

}

