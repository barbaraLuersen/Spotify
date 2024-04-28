//
//  ContentView.swift
//  4-Listas
//
//  Created by Turma02-5 on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.rosaSharpei, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                ScrollView{
                    VStack {
                        AsyncImage(url: URL(string: "https://i.pinimg.com/564x/e4/ab/c8/e4abc868c76adec38a16376c08eab60c.jpg")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 250, height: 250)
                        
                        Text("Divas Pop 2000").font(.largeTitle).bold().foregroundStyle(Color.white)
                    }
                    VStack (alignment: .leading){
                        ForEach(musicas) { index in
                            NavigationLink(destination: DadosMusica(dadosMusica: index)){
                                HStack{
                                    AsyncImage(url: URL(string: index.capa)) { image in
                                        image
                                            .resizable()
                                            .frame(width: 60, height: 60)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    VStack(alignment: .leading){
                                        Text(index.nome).font(.title2).foregroundStyle(Color.white)
                                        Text(index.artista).font(.headline).foregroundStyle(Color.white)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis").foregroundStyle(Color.white)
                                }.padding()
                            }
                        }
                    }
                    
                    HStack {
                        Text("Descubra mais:").font(.title2)
                            .bold()
                            .foregroundStyle(Color.white)
                            .padding(EdgeInsets(top: 20, leading: 6, bottom: -16, trailing: 0))
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        HStack{
                            VStack {
                                AsyncImage(url: URL(string: "https://i.pinimg.com/564x/2b/8a/a7/2b8aa769ce5928f863929dc53e7d8756.jpg")) {
                                    image in image .image?.resizable()
                                        .frame(width: 150, height: 150)
                                    Text("O Rei, baby")
                                        .foregroundStyle(Color.white)
                                        .bold()
                                }
                            }
                            VStack {
                                AsyncImage(url: URL(string: "https://i.pinimg.com/564x/e4/b6/d9/e4b6d9bf9fcb9311722a02094cba65b4.jpg")) {
                                    image in image .image?.resizable()
                                        .frame(width: 150, height: 150)
                                    Text("MPB das antigas")
                                        .foregroundStyle(Color.white)
                                        .bold()
                                }
                            }
                            VStack {
                                AsyncImage(url: URL(string: "https://i.pinimg.com/564x/80/a5/d0/80a5d0c788f0529bf4fb20246a03e3fe.jpg")) {
                                    image in image .image?.resizable()
                                        .frame(width: 150, height: 150)
                                    Text("High")
                                        .foregroundStyle(Color.white)
                                        .bold()
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .accentColor(.white)
    }
}



#Preview {
    ContentView()
}
