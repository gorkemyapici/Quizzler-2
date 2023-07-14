import Foundation

struct QuizBrain {
    
    let quiz = [
        Questions(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], ra: "Skin"),
        Questions(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], ra: "100"),
        Questions(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], ra: "Greenwich Mean Time"),
        Questions(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], ra: "Chapeau"),
        Questions(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], ra: "Watch"),
        Questions(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], ra: "Adiós"),
        Questions(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], ra: "Orange"),
        Questions(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], ra: "Rum"),
        Questions(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], ra: "Gorilla"),
        Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], ra: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answer
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        }
        else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}

