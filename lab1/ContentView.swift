import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                // MARK: - Header / Profile Section
                VStack(spacing: 12) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110, height: 110)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Circle().fill(Color.purple.opacity(0.3)))
                    
                    Text("Zkaria Diab")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    HStack(spacing: 6) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.yellow)
                        Text("Jönköping")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.85))
                    }
                }
                .padding(.vertical, 40)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient(
                        colors: [Color(red: 0.28, green: 0.07, blue: 0.55), Color(red: 0.15, green: 0.05, blue: 0.35)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                
                // MARK: - Experience Section
                VStack(alignment: .leading, spacing: 16) {
                    Text("Erfarenhet")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.28, green: 0.07, blue: 0.55))
                        .padding(.top, 24)
                    
                    Divider()
                    
                    ExperienceRow(
                        icon: "briefcase.fill",
                        name: "Företag AB",
                        years: "2022 – Nu"
                    )
                    
                    Divider()
                    
                    ExperienceRow(
                        icon: "graduationcap.fill",
                        name: "Jönköping University",
                        years: "2021 – 2024"
                    )
                    
                    Divider()
                    
                    ExperienceRow(
                        icon: "building.2.fill",
                        name: "Tekniska Gymnasiet",
                        years: "2018 – 2021"
                    )
                    
                    Divider()
                    
                    ExperienceRow(
                        icon: "laptopcomputer",
                        name: "Startup Q&A",
                        years: "2020 – 2021"
                    )
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.systemBackground))
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

// MARK: - Reusable Row Component
struct ExperienceRow: View {
    let icon: String
    let name: String
    let years: String
    
    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundColor(Color(red: 0.28, green: 0.07, blue: 0.55))
                .frame(width: 32)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(years)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    ContentView()
}
