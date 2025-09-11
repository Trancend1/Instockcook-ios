//
//  RecipeData.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import Foundation

struct Recipe: Identifiable{
    let id: UUID = UUID()
    let title: String
    let image: String
    let description: String
    let ingredients: String
    let steps: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            title: "Nasi Goreng Spesial",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Resep nasi goreng sederhana dengan telur dan ayam.",
            ingredients: "Nasi, Telur, Ayam, Kecap, Bawang Putih, Bawang Merah, Cabai",
            steps: """
            Tumis bawang putih, bawang merah, dan cabai hingga harum
            Masukkan ayam suwir dan telur orak-arik
            Tambahkan nasi putih
            Aduk rata dengan kecap manis & bumbu
            """
        ),
        Recipe(
            title: "Sate Ayam Madura",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Sate ayam dengan bumbu kacang khas Madura.",
            ingredients: "Daging Ayam, Kecap Manis, Bawang Putih, Kacang Tanah, Cabai, Garam",
            steps: """
            1. Potong ayam kecil-kecil lalu tusuk sate
            2. Bakar hingga setengah matang
            3. Buat bumbu kacang: haluskan kacang, bawang putih, cabai
            4. Campur bumbu dengan kecap & garam
            5. Sajikan sate dengan siraman bumbu kacang
            """
        ),
        Recipe(
            title: "Mie Goreng Jawa",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Mie goreng khas Jawa dengan rasa manis gurih.",
            ingredients: "Mie, Telur, Sawi, Kol, Kecap Manis, Bawang Putih",
            steps: """
            1. Rebus mie hingga setengah matang
            2. Tumis bawang putih lalu masukkan telur
            3. Tambahkan sayuran & mie
            4. Tambahkan kecap manis, garam, dan lada
            5. Aduk hingga rata lalu sajikan hangat
            """
        ),
        Recipe(
            title: "Ayam Bakar Taliwang",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Ayam bakar khas Lombok dengan rasa pedas gurih.",
            ingredients: "Ayam, Cabai Merah, Bawang Putih, Terasi, Jeruk Limau, Garam",
            steps: """
            1. Haluskan bumbu (cabai, bawang, terasi)
            2. Lumuri ayam dengan bumbu dan jeruk limau
            3. Diamkan 30 menit agar meresap
            4. Bakar ayam hingga matang dan harum
            """
        ),
        Recipe(
            title: "Soto Ayam Lamongan",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Soto ayam khas Lamongan dengan koya gurih.",
            ingredients: "Ayam, Serai, Daun Jeruk, Bawang Putih, Kunyit, Kol, Soun, Telur Rebus",
            steps: """
            1. Rebus ayam dengan bumbu halus dan rempah
            2. Suwir daging ayam
            3. Sajikan dengan kol, soun, telur, dan taburan koya
            """
        ),
        Recipe(
            title: "Nasi Goreng Spesial",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Resep nasi goreng sederhana dengan telur dan ayam.",
            ingredients: "Nasi, Telur, Ayam, Kecap, Bawang Putih, Bawang Merah, Cabai",
            steps: """
            1. Tumis bawang putih, bawang merah, dan cabai hingga harum
            2. Masukkan ayam suwir dan telur orak-arik
            3. Tambahkan nasi putih
            4. Aduk rata dengan kecap manis & bumbu
            """
        ),
        Recipe(
            title: "Sate Ayam Madura",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Sate ayam dengan bumbu kacang khas Madura.",
            ingredients: "Daging Ayam, Kecap Manis, Bawang Putih, Kacang Tanah, Cabai, Garam",
            steps: """
            1. Potong ayam kecil-kecil lalu tusuk sate
            2. Bakar hingga setengah matang
            3. Buat bumbu kacang: haluskan kacang, bawang putih, cabai
            4. Campur bumbu dengan kecap & garam
            5. Sajikan sate dengan siraman bumbu kacang
            """
        ),
        Recipe(
            title: "Mie Goreng Jawa",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Mie goreng khas Jawa dengan rasa manis gurih.",
            ingredients: "Mie, Telur, Sawi, Kol, Kecap Manis, Bawang Putih",
            steps: """
            1. Rebus mie hingga setengah matang
            2. Tumis bawang putih lalu masukkan telur
            3. Tambahkan sayuran & mie
            4. Tambahkan kecap manis, garam, dan lada
            5. Aduk hingga rata lalu sajikan hangat
            """
        ),
        Recipe(
            title: "Ayam Bakar Taliwang",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Ayam bakar khas Lombok dengan rasa pedas gurih.",
            ingredients: "Ayam, Cabai Merah, Bawang Putih, Terasi, Jeruk Limau, Garam",
            steps: """
            1. Haluskan bumbu (cabai, bawang, terasi)
            2. Lumuri ayam dengan bumbu dan jeruk limau
            3. Diamkan 30 menit agar meresap
            4. Bakar ayam hingga matang dan harum
            """
        ),
        Recipe(
            title: "Soto Ayam Lamongan",
            image: "https://png.pngtree.com/thumb_back/fh260/background/20210912/pngtree-chinese-cuisine-fried-rice-with-fresh-vegetables-image_863631.jpg",
            description: "Soto ayam khas Lamongan dengan koya gurih.",
            ingredients: "Ayam, Serai, Daun Jeruk, Bawang Putih, Kunyit, Kol, Soun, Telur Rebus",
            steps: """
            1. Rebus ayam dengan bumbu halus dan rempah
            2. Suwir daging ayam
            3. Sajikan dengan kol, soun, telur, dan taburan koya
            """
        )
    ]
}
