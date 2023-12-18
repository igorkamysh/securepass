//
//  ContentView.swift
//  PasswordProject
//
//  Created by Игорь Камышенков on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    
    var body: some View {
        Form {
            Section("Настройки") {
                Toggle("Специальные знаки", isOn: $vm.containsSymbols)
                Toggle("Большие буквы", isOn: $vm.containsUppercase)
                Stepper ("Длина пароля: \(vm.length)", value: $vm.length, in: 4...18)
                Button("Создать пароль", action: vm.createPassword)
                    .centerH()
            }
            Section("История") {
                List(vm.passwords) { password in
                    HStack {
                        Text("\(password.password)")
                            .padding()
                            .textSelection(.enabled)
                        Spacer()
                        Image(systemName: "lock.fill")
                            .foregroundColor(password.strengthColor)
                    }
                }
            }
        }
        .addNavugationView(title: "SecurePass")
    }
}

#Preview {
    ContentView()
}
