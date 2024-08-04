//
//  Home.swift
//  Affirmations
//
//  Created by Владислав Соколов on 01.08.2024.
//

import SwiftUI

struct Home: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                let frame = geometry.frame(in: .global)
                
                withAnimation {
                    Image(viewModel.selectedBackground)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: frame.width, height: frame.height, alignment: .center)
                        .cornerRadius(0)
                }
            }
            .ignoresSafeArea()
            
            VStack {
                Text(viewModel.selectedCategory.title)
                    .font(.largeTitle)
                    .bold()
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                VStack {
                    GeometryReader { geometry in
                        let frame = geometry.frame(in: .global)
                        
                        TabView(selection: $viewModel.selectedCategory) {
                            ForEach(viewModel.selectedCategory.affirmation, id: \.self) { item in
                                Image(viewModel.getRandomImage())
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(
                                        width: frame.width - 10,
                                        height: frame.height,
                                        alignment: .center
                                    )
                                    .cornerRadius(4)
                                    .tag(item)
                                    .overlay {
                                        Text(viewModel.randomAffirmation())
                                            .customFont(type: .bold, size: 20)
                                            .padding()
                                            .multilineTextAlignment(.center)
                                            .foregroundStyle(.white)
                                            .lineLimit(5)
                                            .shadow(radius: 40)
                                    }
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    .padding(.top, 20)
                    .padding(.bottom, 50)
                    
                }
                .padding(.top)
                .padding(.horizontal, 10)
                .padding(.bottom, 5)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .cornerRadius(10)
                )
                .padding(.horizontal, 20)
                .padding(.bottom,70)
                
            }
            .onAppear {
                viewModel.loadSelectedCategory()
            }
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
