
import Foundation
import Combine
import SwiftUI

class ToolsViewModel: ObservableObject {
    @AppStorage("selectedTools") private var savedToolsData: String = "[]"
    
    @Published var tools: [Tool] = [
        Tool(name: "Panci"),
                Tool(name: "Wajan"),
                Tool(name: "Spatula"),
                Tool(name: "Pisau"),
                Tool(name: "Talenan"),
                Tool(name: "Blender"),
                Tool(name: "Cobek / Ulekan"),
                Tool(name: "Saringan"),
                Tool(name: "Mangkuk"),
                Tool(name: "Wajan Teflon"),
                Tool(name: "Rice Cooker"),
                Tool(name: "Alat Pemanggang"),
                Tool(name: "Kuas Marinasi"),
                Tool(name: "Whisk"),
                Tool(name: "Sendok"),
                Tool(name: "Garpu"),
                Tool(name: "Sumpit"),
                Tool(name: "Dandang / Kukusan"),
                Tool(name: "Gelas Takar"),
    ]
    
    @Published var searchText: String = ""
    
    init() {
        loadSavedTools()
    }
    
    var filteredTools: [Tool] {
        if searchText.isEmpty {
            return tools
        } else {
            return tools.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var selectedTools: [Tool] {
            tools.filter { $0.isSelected }
        }
    
    func toggleSelection(for tool: Tool) {
            if let index = tools.firstIndex(of: tool) {
                tools[index].isSelected.toggle()
                saveTools()
            }
        }
    
    private func saveTools() {
            let selected = tools.filter { $0.isSelected }.map { $0.name }
            if let data = try? JSONEncoder().encode(selected),
               let jsonString = String(data: data, encoding: .utf8) {
                savedToolsData = jsonString
            }
        }
        
        private func loadSavedTools() {
            if let data = savedToolsData.data(using: .utf8),
               let decoded = try? JSONDecoder().decode([String].self, from: data) {
                for i in tools.indices {
                    if decoded.contains(tools[i].name) {
                        tools[i].isSelected = true
                    }
                }
            }
        }
}


