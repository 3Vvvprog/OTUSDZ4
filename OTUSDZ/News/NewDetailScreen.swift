//
//  NewDetailScreen.swift
//  OTUSDZ2
//
//  Created by Вячеслав Вовк on 21.09.2024.
//

import SwiftUI
import CachedAsyncImage

struct NewDetailScreen: View {
   
    var data: NewsProtocol
    @Environment(\.dismiss) var dismiss
    @State var showDetail: Bool = false
    var body: some View {
            VStack(spacing: 20) {
                HStack {
                    Button {
                        dismiss()
                    }label: {
                        Text("Назад")
                    }
                    Spacer()
                }
                CachedAsyncImage(url: URL(string: data.imageUrl), urlCache: .imageCache) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.black)
                                .frame(width: UIScreen.main.bounds.width - 40, height: 250)
                            
                            ProgressView()
                                .tint(.white)
                        }
                        
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width - 40, height: 250)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    case .failure(let error):
                        VStack {
                            
                        }
                    @unknown default:
                        ProgressView()
                    }
                }
                
                Text(data.title)
                    .font(.system(size: 20, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(data.summary ?? "")
                    .font(.system(size: 18, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Button {
                    showDetail = true
                }label: {
                    Text("Открыть детали")
                }.buttonStyle(.borderedProminent)
                
                Spacer()
            }
            .padding()
            .navigationDestination(isPresented: $showDetail) {
                CheckDataScreen(data: data).navigationBarBackButtonHidden()
            }
        
    }
}

extension URLCache {
    static let imageCache = URLCache(memoryCapacity: 512*1000*1000, diskCapacity: 10*1000*1000*1000)
}

#Preview {
    NewDetailScreen(data:   Article(id: 0, title: "NASA Develops Process to Create Very Accurate Eclipse Maps", url: "13414", imageUrl: "https://science.nasa.gov/wp-content/uploads/2024/08/flyover-2356.jpg?w=2048", newsSite: "123", summary: "New NASA research reveals a process to generate extremely accurate eclipse maps, which plot the predicted path of the Moon’s shadow as it crosses the face of Earth. Traditionally, eclipse calculations assume that all observers are at sea level on Earth and that the Moon is a smooth sphere that is perfectly symmetrical around its […]", publishedAt: Date.now, updatedAt: Date.now, launches: [], events: []))
}
