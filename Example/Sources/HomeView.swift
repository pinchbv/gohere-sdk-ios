import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topLeading) {
                Image("landscape")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .clipped()
            }
            .frame(height: 300)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Lorem ipsum dolor sit amet")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis massa elit, at posuere lorem euismod quis. Sed in lorem malesuada, luctus turpis id, sodales nunc. Vivamus vitae eros dolor.")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                // Handle book now button action
            }) {
                Text("Book now")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .clipShape(Capsule())
        }
        .padding([.bottom], 40)
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
