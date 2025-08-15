//
//  ContentView.swift
//  Aula01
//
//  Created by Turma02 on 02/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var texto = ""
    @State private var alerta = false
    var body: some View {
        /*
         
         //Primeiro Desafio
         
         VStack {
    
            HStack{
                Text("").background(
                    Color.red
                        .frame(width: 100, height: 100)
                )
                Spacer()
                Text("").background(
                    Color.blue
                        .frame(width: 100, height: 100)
                )
                
            }
            .padding(70)
            Spacer()
            HStack {
                Text("").background(                        Color.green
                        .frame(width: 100, height: 100)
                        )
                Spacer()
                Text("").background(
                    Color.yellow
                        .frame(width: 100, height: 100)
                    
                )
               
                
            }
            .padding(70)
        }

        HStack{
            Image("hackatruck")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()
           // Spacer()
            VStack{
                Text("Hackatruck")
                    .foregroundColor(.red)
                Text("77 Universidades")
                    .foregroundColor(.blue)
                Text("5 regiões do Brasil")
                    .foregroundColor(.yellow)
                
                    
            }
                .padding()

        }
         */
        
        
        //Segundo Desafio
        ZStack {
            
            Image("HackatruckFundo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.2)
            
            Image("hackatrucksemFundo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height:200)
                .fixedSize()
                
            
            VStack {
                
                    Text ("Bem vindo, \(texto)")
                        .font(.system(size: 50))
                
                    TextField("Digite algo aqui", text: $texto)
                    .padding()
                    .foregroundColor(.black)
                    .fixedSize()
                    
                Spacer()
                
                
                Button("Entrar") {
                            alerta = true
                        }
                        .alert(isPresented: $alerta) {
                            Alert(
                                title: Text("ALERTA !"),
                                message: Text("Você irá iniciar o desafio da aula agora "),
                                dismissButton: .default(Text("Vamos lá!"))
                            )
                }
               
            }
        }
        
   
    }
}

#Preview {
    ContentView()
}
