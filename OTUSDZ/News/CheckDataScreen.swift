//
//  CheckDataScreen.swift
//  OTUSDZ2
//
//  Created by Вячеслав Вовк on 23.09.2024.
//

import SwiftUI

struct CheckDataScreen: View {
    var data: NewsProtocol
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                HStack {
                    Button {
                        dismiss()
                    }label: {
                        Text("Назад")
                    }
                    Spacer()
                }
                Spacer()
                Group {
                    Text("Источник: \(data.newsSite)")
                    
                    
                    Text("Ссылка на новость: \(data.url)")
                        
                    
                    Text("Дата публикации: \(data.publishedAt.formatted(date: .complete, time: .shortened))")
                    Text("Дата обновления: \(data.updatedAt.formatted(date: .complete, time: .shortened))")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Button {
                    UIApplication.shared.open(URL(string: data.url)!)
                }label: {
                    Text("Открыть новость")
                }.buttonStyle(.borderedProminent)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    CheckDataScreen(data:   Article(id: 0, title: "NASA Develops Process to Create Very Accurate Eclipse Maps", url: "13414", imageUrl: "https://science.nasa.gov/wp-content/uploads/2024/08/flyover-2356.jpg?w=2048", newsSite: "123", summary: "New NASA research reveals a process to generate extremely accurate eclipse maps, which plot the predicted path of the Moon’s shadow as it crosses the face of Earth. Traditionally, eclipse calculations assume that all observers are at sea level on Earth and that the Moon is a smooth sphere that is perfectly symmetrical around its […]", publishedAt: Date.now, updatedAt: Date.now, launches: [], events: []))
}
