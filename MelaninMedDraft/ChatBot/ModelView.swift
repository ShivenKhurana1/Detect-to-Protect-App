//
//  ModelView.swift
//  MelaninMedDraft
//
//  Created by Aarushi Ammavajjala on 9/26/24.

import SwiftUI
import ChatGPTSwift

@MainActor
class ContentViewModel: ObservableObject {
    
    private let api: ChatGPTAPI
    init() {
        //self.api = ChatGPTAPI(apiKey: apiKey)
        self.api = ChatGPTAPI(apiKey: "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")
    }
    
    @Published var message = ""
    @Published var chatMessages = [ChatMessage]()
    @Published var isWaitingForResponse = false
    
    func sendMessage() async throws {
        let userMessage = ChatMessage(message)
        chatMessages.append(userMessage)
        isWaitingForResponse = true
        
        let assistantMessage = ChatMessage(owner: .assistant, "")
        chatMessages.append(assistantMessage)
        
        let stream = try await api.sendMessageStream(text: message)
        message = ""
        for try await line in stream  {
            if let lastMessage = chatMessages.last {
                let text = lastMessage.text
                let newMessage = ChatMessage(owner: .assistant, text + line)
                chatMessages[chatMessages.count - 1] = newMessage;}
        }
        
        isWaitingForResponse = false
    }
}
