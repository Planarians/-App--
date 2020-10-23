import UIKit

class ViewController: UIViewController {
    
    
    let questions = [
        Question(text: "马云是中国首富", correctAnswer: true),
             Question(text: "刘强东最早是在中关村卖光盘的", correctAnswer: true),
             Question(text: "苹果公司是目前世界上最牛的科技公司", correctAnswer: true),
             Question(text: "只要坚持下去就能学好代码吗", correctAnswer: true),
             Question(text: "王思聪是80后", correctAnswer: true),
             Question(text: "在国内可以正常访问google.com吗", correctAnswer: false),
             Question(text: "敲完1万行代码之后可以成为编程高手吗", correctAnswer: true),
             Question(text: "撒贝宁说过清华还行吗", correctAnswer: false),
             Question(text: "一直听复昕学堂lebus的课可以变成大牛吗", correctAnswer: true),
             Question(text: "网上说苹果不好用安卓好用的人大多数都是水军吗", correctAnswer: true),
             Question(text: "豆瓣网是一个和你分享刚编的故事的网站吗", correctAnswer: false),
             Question(text: "优酷比B站牛", correctAnswer: false),
             Question(text: "我帅吗？", correctAnswer: true)
    ]
    var questionNum = 0

    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[0].questionText
        
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1{
            if questions[questionNum].answer == true{
                print("回答正确")
            }
            else{
                print("回答错误")
            }
        }
        else{
            if questions[questionNum].answer == true{
                print("回答错误")
            }
            else{
                print("回答正确")
            }
        }
         
        questionNum+=1
        nextQuestion()
        
    }
    
    
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNum <= 12{
            questionLabel.text = questions[questionNum].questionText
        }
        else{
            print("到底了")
            questionNum = 0
            
            let alert = UIAlertController(title: "www三三好厉害", message: "你已经答完所有题啦", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "再来一遍", style: .default, handler: { _ in
                self.questionLabel.text = self.questions[0].questionText
            }))
            
            self.present(alert, animated: true, completion: nil)
             
        }
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
       
    }
    

    
}
