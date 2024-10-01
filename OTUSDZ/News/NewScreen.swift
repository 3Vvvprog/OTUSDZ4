//
//  NewScreen.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 19.09.2024.
//

import SwiftUI
import CachedAsyncImage
import OpenAPI5



struct NewScreen: View {
    @StateObject var viewModel = NewsViewModel()
    @State var showDetail = false
    @State private var newsType: NewsType = .articles
    @State private var selectedData: NewsProtocol?
    @State var showFav: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(NewsType.allCases, id: \.self) { type in
                                Text(type.label)
                                    .fontWeight(.bold)
                                    .foregroundColor(type == newsType ? Color.black : Color.gray)
                                    .padding(.horizontal, 10)
                                    .onTapGesture {
                                        self.newsType = type
                                    }
                            }
                        
                        }
                    }
                    Spacer()
                    
                    Image(systemName: showFav ? "star.fill" :"star")
                        .onTapGesture {
                            showFav.toggle()
                        }
                        .foregroundColor(showFav ? .yellow : .black)
                }
                .padding(.horizontal)
                if showFav {
                    let result = viewModel.loadedArticles.filter { $0.isFav } + viewModel.loadedBlogs.filter { $0.isFav } + viewModel.loadedReports.filter { $0.isFav }
                    List(0..<result.count, id: \.self) { index in
                        newCell(data: result[index], isLast: false)
                    }
                }else {
                    switch self.newsType {
                    case .articles:
                        List(0..<viewModel.loadedArticles.count, id: \.self) { index in
                            
                            if index == viewModel.loadedArticles.count - 1 {
                                newCell(data: viewModel.loadedArticles[index], isLast: true)
                            }else {
                                newCell(data: viewModel.loadedArticles[index], isLast: false)
                            }
                        }
                    case .blogs:
                        List(0..<viewModel.loadedBlogs.count, id: \.self) { index in
                            
                            if index == viewModel.loadedBlogs.count - 1 {
                                newCell(data: viewModel.loadedBlogs[index], isLast: true)
                            }else {
                                newCell(data: viewModel.loadedBlogs[index], isLast: false)
                            }
                        }
                    case .reports:
                        List(0..<viewModel.loadedReports.count, id: \.self) { index in
                            
                            if index == viewModel.loadedReports.count - 1 {
                                newCell(data: viewModel.loadedReports[index], isLast: true)
                            }else {
                                newCell(data: viewModel.loadedReports[index], isLast: false)
                            }
                        }
                    }
                    
                }
                
            }
          
            .navigationDestination(isPresented: $showDetail) {
                if let data = selectedData {
                    NewDetailScreen(data: data).navigationBarBackButtonHidden()
                }
            }
        }
        .onAppear {
            viewModel.initial()
        }
    }
    
    func newCell(data: NewProtocolCell, isLast: Bool) -> some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    
                    Text(data.new.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: data.isFav ? "star.fill" :"star")
                        .onTapGesture {
                            viewModel.changeFav(data, newType: newsType)
                        }
                        .foregroundColor(data.isFav ? .yellow : .black)
                }
            }
            .onAppear {
                if isLast {
                    switch self.newsType {
                    case .articles:
                        viewModel.loadNextPageOfArticles()
                    case .blogs:
                        viewModel.loadNextPageOfBlogs()
                    case .reports:
                        viewModel.loadNextPageOfReports()
                    }
                }
            }
            .onTapGesture {
                selectedData = data.new
                showDetail = true
            }
            
            
            VStack(alignment: .leading) {
                HStack {
                    
                    Text(data.new.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: data.isFav ? "star.fill" :"star")
                        .onTapGesture {
                            viewModel.changeFav(data, newType: newsType)
                        }
                        .foregroundColor(data.isFav ? .yellow : .black)
                }
            }
//            .animation(.easeIn(duration: 0.4), value: data.isFav)
        }
    }
}




#Preview {
    NewScreen()
}


