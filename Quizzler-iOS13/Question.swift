import Foundation

struct Questions {
    let question: String
    let answer: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], ra: String) {
        question = q
        answer = a
        rightAnswer = ra
    }
}
