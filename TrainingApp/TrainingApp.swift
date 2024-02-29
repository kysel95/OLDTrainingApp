//
//  TrainingApp.swift
//  TrainingApp
//
//  Created by kysel95 on 28/10/2023.
//
import SwiftUI
import Firebase

@main
struct TrainingApp: App {
    // MARK: - Initialize Firebase
    init() {
        FirebaseApp.configure()
    }
    
    // MARK: - Create an instance of AuthViewModel
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            // MARK: - Display ContentView
            ContentView()
                .environmentObject(viewModel)
        }
    }
}