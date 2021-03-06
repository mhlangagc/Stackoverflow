//
//  Question.swift
//  StackOverflow
//
//  Created by Gugulethu on 2021/02/07.
//

import Foundation

// MARK: - Question
struct Question: Codable {
    var tags: [String]?
    var owner: Owner?
    var isAnswered: Bool?
    var viewCount, answerCount, score, lastActivityDate: Int?
    var creationDate, questionID: Int?
    var link, title, body: String?
    var lastEditDate, acceptedAnswerID: Int?

    enum CodingKeys: String, CodingKey {
        case tags, owner
        case isAnswered         = "is_answered"
        case viewCount          = "view_count"
        case answerCount        = "answer_count"
        case score
        case lastActivityDate   = "last_activity_date"
        case creationDate       = "creation_date"
        case questionID         = "question_id"
        case link, title, body
        case lastEditDate       = "last_edit_date"
        case acceptedAnswerID   = "accepted_answer_id"
    }
}
