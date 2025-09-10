
import Foundation
import Combine

class ToolsViewModel: ObservableObject {
    @Published var tools: [Tool] = [
        Tool(name: "Wajan"),
        Tool(name: "Panci"),
        Tool(name: "Spatula"),
        Tool(name: "Panci Kukus"),
        Tool(name: "Oven"),
        Tool(name: "Talenan"),
        Tool(name: "Pisau Dapur"),
        Tool(name: "Pisau Roti"),
        Tool(name: "Gunting Dapur"),
        Tool(name: "Sendok Sayur"),
        Tool(name: "Sendok Nasi"),
        Tool(name: "Sutil Kayu"),
        Tool(name: "Whisk"),
        Tool(name: "Rolling Pin"),
        Tool(name: "Saringan Tepung"),
        Tool(name: "Saringan Minyak"),
        Tool(name: "Grater (Parutan)"),
        Tool(name: "Kupas Buah"),
        Tool(name: "Mortar dan Ulekan"),
        Tool(name: "Mixer Tangan"),
        Tool(name: "Blender"),
        Tool(name: "Food Processor"),
        Tool(name: "Microwave"),
        Tool(name: "Rice Cooker"),
        Tool(name: "Slow Cooker"),
        Tool(name: "Pressure Cooker"),
        Tool(name: "Loyang Kue"),
        Tool(name: "Cetakan Muffin"),
        Tool(name: "Cetakan Es Batu"),
        Tool(name: "Panci Sup"),
        Tool(name: "Panci Kecil"),
        Tool(name: "Wok"),
        Tool(name: "Grill Pan"),
        Tool(name: "Teko Air"),
        Tool(name: "Saringan Teh"),
        Tool(name: "Cangkir Ukur"),
        Tool(name: "Timbangan Dapur"),
        Tool(name: "Baskom"),
        Tool(name: "Colander (Saringan Makaroni)"),
        Tool(name: "Tong Dapur"),
        Tool(name: "Sarung Tangan Oven"),
        Tool(name: "Alat Pengupas Kentang"),
        Tool(name: "Spreader (Pisau Mentega)"),
        Tool(name: "Sendok Takar"),
        Tool(name: "Gelas Takar"),
        Tool(name: "Termometer Daging"),
        Tool(name: "Pisau Chef"),
        Tool(name: "Pisau Santoku"),
        Tool(name: "Sikat Botol"),
        Tool(name: "Wadah Penyimpanan"),
        Tool(name: "Bread Maker"),
        Tool(name: "Air Fryer"),
        Tool(name: "Deep Fryer"),
        Tool(name: "Kompor Gas"),
        Tool(name: "Kompor Induksi"),
        Tool(name: "Alat Pemanggang Roti"),
        Tool(name: "Panci Saus"),
        Tool(name: "Garpu Besar (Carving Fork)"),
        Tool(name: "Pisau Daging"),
        Tool(name: "Alat Pemisah Kuning Telur"),
        Tool(name: "Panci Kukus Dim Sum"),
        Tool(name: "Sumpit Kayu"),
        Tool(name: "Sendok Sop"),
        Tool(name: "Wadah Bumbu"),
        Tool(name: "Ayakan"),
        Tool(name: "Alat Pembuat Pasta"),
        Tool(name: "Griddle"),
        Tool(name: "Steamer Basket"),
        Tool(name: "Alat Pemotong Pizza"),
        Tool(name: "Skimmer"),
        Tool(name: "Kitchen Torch"),
        Tool(name: "Sarung Plastik Dapur"),
        Tool(name: "Wadah Marinasi"),
        Tool(name: "Alat Peras Jeruk"),
        Tool(name: "Alat Pembuka Kaleng"),
        Tool(name: "Alat Pembuka Botol")
    ]

    @Published var searchText: String = ""
    
    var filteredTools: [Tool] {
        if searchText.isEmpty {
            return tools
        } else {
            return tools.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    func toggleSelection(for tool: Tool) {
        if let index = tools.firstIndex(of: tool) {
            tools[index].isSelected.toggle()
        }
    }
}


