//
//  DadosMusica.swift
//  4-Listas
//
//  Created by Turma02-5 on 03/04/24.
//

import SwiftUI

struct DadosMusica: View {
    
    @State var dadosMusica: Musica
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.rosaSharpei, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                AsyncImage(url: URL(string: dadosMusica.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 250)
                
                Text(dadosMusica.nome).font(.title2).bold().foregroundStyle(Color.white)
                Text(dadosMusica.artista).font(.title3).bold().foregroundStyle(Color.white)
                
                HStack{
                    Image(systemName: "shuffle").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Image(systemName: "backward.end.fill").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Image(systemName:"play.fill").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Image(systemName:"forward.end.fill").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Image(systemName:"repeat").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }.padding()
            }.padding()
        }
    }
    
}
#Preview {
    DadosMusica(dadosMusica: Musica(id: 1, nome: "a", artista: "n", capa: "l"))
}
