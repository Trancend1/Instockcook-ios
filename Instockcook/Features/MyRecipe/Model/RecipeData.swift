import Foundation

struct Recipe: Identifiable {
    let id: UUID = UUID()
    let title: String
    let image: String?
    let description: String
    let ingredients: String
    let tools: String
    let steps: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            title: "Nasi Goreng Kampung",
            image: "https://bristolindonesiansociety.com/wp-content/uploads/2016/03/nasi-goreng-kampung.jpg",
            description: "Nasi goreng sederhana ala rumahan dengan cita rasa autentik dan bahan seadanya.",
            ingredients: "500 gr nasi putih, 4 siung bawang merah, 3 siung bawang putih, 5 buah cabai rawit, 1 butir telur, 2 sdm kecap manis, 1/2 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, spatula, pisau, cobek/ulekan.",
            steps: """
                    1. Haluskan bawang merah, bawang putih, dan cabai rawit dengan cobek.
                    2. Panaskan wajan dengan sedikit minyak, tumis bumbu halus hingga harum.
                    3. Masukkan telur, orak-arik hingga matang.
                    4. Masukkan nasi putih, aduk rata.
                    5. Tambahkan kecap manis, garam, dan lada. Aduk hingga nasi terbalut bumbu dengan sempurna.
                    6. Sajikan selagi hangat.
                    """
        ),
        Recipe(
            title: "Soto Ayam Lamongan",
            image: "https://i.ytimg.com/vi/afD1GvxI_YE/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBZYLMRo9MjYzNB9YGW_dDjLsSmiQ",
            description: "Soto ayam berkuah kuning bening khas Lamongan yang kaya rempah, disajikan dengan koya gurih.",
            ingredients: "500 gr ayam, 2 batang serai, 3 lembar daun jeruk, 1 ruas kunyit, 6 siung bawang merah, 4 siung bawang putih, 3 butir kemiri, 1/2 sdt jintan, 1 sdt ketumbar, 100 gr kol, 50 gr soun, 2 butir telur rebus, 1 batang seledri, 5 sdm koya.",
            tools: "Panci, wajan, saringan, cobek/blender, mangkuk.",
            steps: """
                    1. Rebus ayam hingga matang, ambil kaldu dan suwir dagingnya.
                    2. Haluskan bumbu (bawang merah, bawang putih, kemiri, kunyit, jintan, ketumbar), tumis hingga harum.
                    3. Masukkan bumbu tumis ke dalam kaldu ayam, tambahkan serai dan daun jeruk. Masak hingga mendidih.
                    4. Tata soun, kol iris, dan ayam suwir di mangkuk.
                    5. Siram dengan kuah soto panas dan taburi dengan seledri serta koya.
                    """
        ),
        Recipe(
            title: "Rendang Daging Sapi",
            image: "https://www.frisianflag.com/storage/app/media/uploaded-files/rendang-padang.jpg",
            description: "Rendang daging sapi, hidangan khas Minang yang dimasak dengan santan dan bumbu kaya rempah hingga kering dan empuk.",
            ingredients: "1 kg daging sapi, 1 liter santan, 10 buah cabai merah, 10 siung bawang merah, 5 siung bawang putih, 2 ruas jahe, 2 ruas lengkuas, 2 batang serai, 2 lembar daun kunyit, 3 lembar daun jeruk, 1 sdm garam.",
            tools: "Wajan besar/panci, cobek/blender.",
            steps: """
                    1. Haluskan semua bumbu (kecuali daun kunyit, daun jeruk, serai, lengkuas).
                    2. Masukkan daging sapi, santan, dan bumbu halus ke dalam wajan. Aduk rata.
                    3. Tambahkan serai, daun kunyit, daun jeruk, dan lengkuas. Masak dengan api kecil sambil sesekali diaduk.
                    4. Terus masak hingga santan mengering, bumbu meresap, dan rendang berwarna cokelat kehitaman.
                    """
        ),
        Recipe(
            title: "Gulai Kambing",
            image: "https://palpos.bacakoran.co/upload/da603b83348e0b63540d73696a569d4f.jpg",
            description: "Gulai kambing, sup daging kambing dengan kuah kental santan yang penuh rempah, cocok disantap dengan nasi hangat.",
            ingredients: "500 gr daging kambing, 400 ml santan kental, 8 siung bawang merah, 5 siung bawang putih, 1 ruas kunyit, 1 ruas jahe, 1 sdt ketumbar, 1/2 sdt jintan, 3 butir cengkeh, 1 batang kayu manis, 1 batang serai, 2 lembar daun salam.",
            tools: "Panci, wajan, spatula, cobek/blender.",
            steps: """
                    1. Rebus daging kambing hingga empuk, buang air rebusan pertama untuk mengurangi bau.
                    2. Tumis bumbu halus (bawang merah, bawang putih, kunyit, jahe, ketumbar, jintan) hingga harum.
                    3. Masukkan bumbu tumis ke dalam panci berisi santan. Tambahkan serai, daun salam, cengkeh, dan kayu manis.
                    4. Masukkan daging kambing yang sudah direbus, masak hingga bumbu meresap dan kuah mengental.
                    """
        ),
        Recipe(
            title: "Sayur Lodeh",
            image: "https://cdn0-production-images-kly.akamaized.net/3KkPQ94ceNKgRhmWcQNMsgHD3UI=/0x374:793x821/469x260/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3271140/original/046275500_1603078585-shutterstock_1830141524.jpg",
            description: "Sayur lodeh, hidangan sayuran berkuah santan yang ringan dan segar, berisi berbagai macam sayuran.",
            ingredients: "1/2 buah labu siam, 1 buah terong, 10 batang kacang panjang, 50 gr melinjo, 1 buah jagung manis, 500 ml santan, 5 siung bawang merah, 3 siung bawang putih, 3 buah cabai, 2 lembar daun salam, 1 ruas lengkuas.",
            tools: "Panci, pisau, spatula.",
            steps: """
                    1. Potong-potong semua sayuran.
                    2. Didihkan santan, masukkan bumbu iris (bawang merah, bawang putih, cabai) serta daun salam dan lengkuas.
                    3. Masukkan sayuran yang keras terlebih dahulu (jagung, melinjo), masak hingga setengah matang.
                    4. Masukkan sisa sayuran (labu siam, terong, kacang panjang).
                    5. Masak hingga semua sayuran matang, tambahkan garam dan gula secukupnya.
                    """
        ),
        Recipe(
            title: "Bakso Sapi",
            image: "https://asset-2.tribunnews.com/tribunnews/foto/bank/images/bakso-sapi-kuah-1.jpg",
            description: "Bakso, hidangan sup berisi bakso daging sapi kenyal dengan mie dan sayuran.",
            ingredients: "10 buah bakso sapi, 100 gr mie, 50 gr bihun, 1 ikat sawi hijau, 50 gr tauge, 1 sdm bawang goreng, 1 batang seledri, 500 ml kaldu sapi.",
            tools: "Panci, mangkuk, sumpit.",
            steps: """
                    1. Rebus bakso hingga matang dan mengapung.
                    2. Rebus mie dan bihun sebentar, tiriskan.
                    3. Tata mie, bihun, sawi, dan tauge di dalam mangkuk.
                    4. Siram dengan kaldu sapi panas dan masukkan bakso yang sudah matang.
                    5. Taburi dengan bawang goreng dan seledri cincang.
                    """
        ),
        Recipe(
            title: "Nasi Uduk",
            image: "https://statik.tempo.co/data/2025/01/02/id_1366440/1366440_720.jpg",
            description: "Nasi uduk, nasi gurih yang dimasak dengan santan dan rempah, sering disajikan dengan aneka lauk.",
            ingredients: "500 gr beras, 500 ml santan, 2 lembar daun salam, 1 batang serai, 1 ruas lengkuas, 1 sdt garam.",
            tools: "Rice cooker/panci.",
            steps: """
                    1. Cuci beras hingga bersih.
                    2. Masukkan beras ke dalam rice cooker.
                    3. Tambahkan santan, daun salam, serai, lengkuas, dan garam.
                    4. Aduk rata dan masak nasi seperti biasa.
                    5. Setelah matang, aduk nasi hingga uapnya hilang.
                    """
        ),
        Recipe(
            title: "Ayam Goreng Kalasan",
            image: "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/14045037/Resep-Ayam-Kalasan-Mantap-Disantap-dengan-Bumbunya-.jpg.webp",
            description: "Ayam goreng dengan bumbu manis khas Kalasan, digoreng hingga garing di luar namun lembut di dalam.",
            ingredients: "500 gr ayam, 500 ml air kelapa, 5 siung bawang merah, 3 siung bawang putih, 3 butir kemiri, 1 sdt ketumbar, 50 gr gula merah, 1 sdt garam.",
            tools: "Panci, wajan.",
            steps: """
                    1. Haluskan bawang merah, bawang putih, kemiri, dan ketumbar.
                    2. Ungkep ayam bersama bumbu halus, air kelapa, dan gula merah. Masak hingga air menyusut dan bumbu meresap.
                    3. Panaskan minyak, goreng ayam hingga berwarna cokelat keemasan dan kering.
                    4. Saring sisa bumbu ungkep dan goreng sebentar hingga kering sebagai taburan.
                    """
        ),
        Recipe(
            title: "Ikan Bakar Bumbu Padang",
            image: "https://cnc-magazine.oramiland.com/parenting/original_images/Resep_Bumbu_Ikan_Bakar_Padang_QdcbpIw.jpg",
            description: "Ikan bakar dengan bumbu merah khas Padang, memberikan rasa pedas, gurih, dan sedikit asam.",
            ingredients: "1 ekor ikan gurame/nila, 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1 ruas kunyit, 1 ruas jahe, 1 ruas lengkuas, 1 batang serai, 2 lembar daun jeruk, 1 sdm air asam jawa.",
            tools: "Alat pemanggang/teflon grill, cobek/blender, kuas marinasi.",
            steps: """
                    1. Haluskan bumbu (cabai, bawang merah, bawang putih, kunyit, jahe).
                    2. Tumis bumbu halus hingga harum, tambahkan lengkuas, serai, dan daun jeruk.
                    3. Lumuri ikan dengan bumbu yang sudah ditumis. Diamkan beberapa saat agar meresap.
                    4. Bakar ikan sambil sesekali diolesi sisa bumbu hingga matang sempurna.
                    """
        ),
        Recipe(
            title: "Sate Lilit Bali",
            image: "https://bellroadbeef.com/wp-content/uploads/2025/06/sate-lilit-bali.webp",
            description: "Sate khas Bali yang terbuat dari daging cincang (ayam/ikan) yang dililitkan pada batang serai atau bambu.",
            ingredients: "500 gr daging ayam/ikan cincang, 100 gr kelapa parut, 5 siung bawang merah, 3 siung bawang putih, 5 buah cabai, 1 ruas kunyit, 1 ruas jahe, 1 ruas lengkuas, 1 ruas kencur, 10 batang serai.",
            tools: "Batang serai/tusuk sate, alat pemanggang/teflon grill, cobek/blender.",
            steps: """
                    1. Haluskan semua bumbu.
                    2. Campur daging cincang dengan bumbu halus dan kelapa parut. Aduk hingga rata dan kalis.
                    3. Ambil sedikit adonan, lilitkan pada batang serai.
                    4. Bakar sate hingga matang dan harum.
                    """
        ),
        // --- Makanan Ringan & Jajanan (Snacks & Street Food) ---
        Recipe(
            title: "Martabak Manis (Terang Bulan)",
            image: "https://wiratech.co.id/wp-content/uploads/2019/07/Resep-Terang-Bulan.jpg",
            description: "Martabak manis, kue tebal seperti pancake dengan isian berlimpah seperti cokelat, kacang, dan keju.",
            ingredients: "250 gr tepung terigu, 1 sdt ragi, 50 gr gula, 1 butir telur, 300 ml air, 1/2 sdt soda kue, 2 sdm mentega, topping (cokelat, keju, kacang).",
            tools: "Wajan teflon, whisk, mangkuk.",
            steps: """
                    1. Campur tepung terigu, gula, dan ragi. Tambahkan air sedikit demi sedikit sambil diuleni.
                    2. Masukkan telur, aduk rata. Diamkan adonan selama 30 menit.
                    3. Panaskan teflon. Tuang adonan, putar teflon agar adonan menempel di pinggir.
                    4. Biarkan berlubang-lubang, taburi gula, tutup. Masak hingga matang.
                    5. Angkat, olesi mentega, beri topping sesuai selera, lipat, dan potong.
                    """
        ),
        Recipe(
            title: "Cireng",
            image: "https://o-cdf.oramiland.com/unsafe/cnc-magazine.oramiland.com/parenting/original_images/Resep_Cireng_Bumbu_Rujak_1.jpg",
            description: "Cireng, singkatan dari 'aci digoreng', jajanan khas Sunda yang renyah di luar dan kenyal di dalam.",
            ingredients: "200 gr tepung kanji/tapioka, 3 siung bawang putih, 150 ml air panas, 1 batang daun bawang, 1 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, mangkuk besar, spatula.",
            steps: """
                    1. Haluskan bawang putih, rebus dengan air hingga mendidih.
                    2. Dalam mangkuk, campur tepung tapioka dengan daun bawang, garam, dan lada.
                    3. Tuang air bawang panas ke dalam campuran tepung. Aduk cepat hingga menjadi adonan.
                    4. Ambil adonan, bentuk pipih. Goreng dalam minyak panas hingga matang dan renyah.
                    """
        ),
        Recipe(
            title: "Pempek Palembang",
            image: "https://www.pinterpolitik.com/wp-content/uploads/2023/09/foto-radarmukomuko-dot-disway-dot-id.webp",
            description: "Pempek, makanan khas Palembang yang terbuat dari ikan dan sagu, disajikan dengan kuah cuka yang asam manis pedas.",
            ingredients: "500 gr ikan tenggiri giling, 250 gr sagu, 100 ml air, 1 sdm garam, 1 butir telur (untuk pempek kapal selam). Kuah Cuka: 200 gr gula merah, 250 ml air, 3 sdm cuka, 5 siung bawang putih, 10 buah cabai rawit.",
            tools: "Panci, spatula, mangkuk, pisau, wajan.",
            steps: """
                    1. Campur ikan giling, air, dan garam hingga rata. Tambahkan sagu sedikit demi sedikit, uleni hingga kalis.
                    2. Bentuk adonan sesuai jenis pempek yang diinginkan (lenjer, kapal selam). Untuk kapal selam, isi adonan dengan telur.
                    3. Rebus pempek hingga mengapung. Tiriskan.
                    4. Goreng pempek yang sudah direbus hingga matang.
                    5. Untuk kuah cuka: Didihkan air, gula merah, cuka, dan bumbu halus (bawang putih, cabai). Saring.
                    """
        ),
        Recipe(
            title: "Klepon",
            image: "https://images.tokopedia.net/img/KRMmCm/2022/9/21/4a444fbd-fe4f-46d7-8822-3c4897ce7c44.jpg",
            description: "Klepon, jajanan tradisional berbentuk bola-bola kecil berwarna hijau, berisi gula merah leleh dan dibaluri kelapa parut.",
            ingredients: "200 gr tepung ketan, 50 gr tepung beras, 100 ml air pandan, 100 gr gula merah, 100 gr kelapa parut, 1/4 sdt garam.",
            tools: "Panci, mangkuk, saringan.",
            steps: """
                    1. Campur tepung ketan dan tepung beras. Tambahkan air pandan sedikit demi sedikit, uleni hingga kalis.
                    2. Ambil sedikit adonan, pipihkan, isi dengan potongan gula merah. Bulatkan kembali.
                    3. Rebus klepon dalam air mendidih hingga mengapung.
                    4. Gulingkan klepon yang sudah matang di atas kelapa parut yang sudah dikukus dengan sedikit garam.
                    """
        ),
        Recipe(
            title: "Tahu Isi (Tahu Brontak)",
            image: "https://img-global.cpcdn.com/recipes/c4c20a04ee4a26a7/1200x630cq80/photo.jpg",
            description: "Tahu goreng dengan isian sayuran (wortel, tauge, kol) yang dibalut adonan tepung renyah.",
            ingredients: "5 buah tahu, 1 buah wortel, 50 gr tauge, 50 gr kol, 100 gr tepung terigu, 50 gr tepung beras, 100 ml air, 3 siung bawang putih, 1 sdt garam, 1/2 sdt lada, 1/2 sdt ketumbar.",
            tools: "Wajan, pisau, mangkuk.",
            steps: """
                    1. Belah tahu dan buang isinya.
                    2. Potong tipis wortel dan kol. Campur dengan tauge. Tumis sebentar.
                    3. Campur tepung terigu dan tepung beras dengan air. Tambahkan bumbu halus (bawang putih, garam, lada, ketumbar).
                    4. Isi tahu dengan tumisan sayuran, lalu celupkan ke adonan tepung.
                    5. Goreng tahu dalam minyak panas hingga matang dan adonan renyah.
                    """
        ),
        Recipe(
            title: "Batagor",
            image: "https://www.tokomesin.com/wp-content/uploads/2017/09/4-Resep-Untuk-Cara-Membuat-Batagor-Mudah-2.jpg",
            description: "Batagor, singkatan dari 'baso tahu goreng', jajanan khas Bandung yang disajikan dengan bumbu kacang.",
            ingredients: "5 buah tahu, 150 gr bakso ikan, 10 lembar kulit pangsit, bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1 sdt garam, 100 ml air.",
            tools: "Wajan, panci, blender/cobek.",
            steps: """
                    1. Potong tahu menjadi dua, lalu keruk sedikit isinya.
                    2. Isi tahu dengan adonan bakso ikan. Bentuk pangsit seperti perahu dan isi dengan adonan juga.
                    3. Goreng tahu dan pangsit hingga matang kecokelatan.
                    4. Untuk bumbu kacang: Goreng kacang, lalu haluskan bersama bawang putih dan cabai. Tambahkan gula, garam, dan air. Masak hingga mengental.
                    """
        ),
        Recipe(
            title: "Mie Ayam",
            image: "https://allofresh.id/blog/wp-content/uploads/2023/08/cara-membuat-mie-ayam-4.jpg",
            description: "Mie ayam, mie gandum yang disajikan dengan potongan daging ayam manis berbumbu dan sayuran.",
            ingredients: "200 gr mie gandum, 200 gr daging ayam, 50 gr jamur, 3 sdm kecap manis, 3 siung bawang putih, 1 sdm saus tiram, 1 ikat sawi, 1 batang daun bawang, 5 lembar pangsit goreng.",
            tools: "Panci, wajan, mangkuk, sumpit.",
            steps: """
                    1. Rebus mie gandum dan sawi hingga matang. Tiriskan.
                    2. Tumis bawang putih, masukkan daging ayam dan jamur, masak hingga matang.
                    3. Tambahkan kecap manis, saus tiram, dan sedikit air. Masak hingga bumbu meresap.
                    4. Tata mie dan sawi di mangkuk, siram dengan tumisan ayam.
                    5. Tambahkan daun bawang dan pangsit goreng.
                    """
        ),
        Recipe(
            title: "Ketoprak",
            image: "https://img-global.cpcdn.com/recipes/835a1524e8167639/1200x630cq80/photo.jpg",
            description: "Ketoprak, hidangan vegetarian yang terdiri dari bihun, tauge, tahu, dan lontong, disiram saus kacang pedas.",
            ingredients: "1 buah lontong, 1 buah kentang, 1 butir telur rebus, 100 gr tauge, 100 gr kol, 100 gr kangkung, 1/2 buah timun, 2 buah tahu, 1 buah tempe, bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1/2 sdt garam, 100 ml air.",
            tools: "Piring, cobek/blender, pisau.",
            steps: """
                    1. Rebus semua sayuran hingga matang, tiriskan.
                    2. Goreng tahu dan tempe.
                    3. Tata lontong, kentang, telur, sayuran, tahu, dan tempe di atas piring.
                    4. Siram dengan bumbu kacang yang sudah dihaluskan.
                    5. Tambahkan kerupuk dan bawang goreng sebagai pelengkap.
                    """
        ),
        Recipe(
            title: "Nagasari",
            image: "https://image.idntimes.com/post/20240603/resep-nagasari-cara-membuat-nagasari-apa-itu-nagasari-kue-basah-kue-tradisional-nagasari-9cde86371d7fc78c91ae80a6ffab250e-fa5873a025ef968d8d870ad3bab4c88b.jpg",
            description: "Nagasari, kue tradisional yang terbuat dari tepung beras dan santan, diisi pisang, lalu dibungkus daun pisang dan dikukus.",
            ingredients: "200 gr tepung beras, 500 ml santan, 50 gr gula, 2 lembar daun pandan, 3 buah pisang raja/tanduk, 10 lembar daun pisang.",
            tools: "Dandang/kukusan, mangkuk, sendok, panci.",
            steps: """
                    1. Masak santan, gula, daun pandan hingga mendidih.
                    2. Larutkan tepung beras dengan sedikit santan, lalu masukkan ke dalam panci. Aduk hingga mengental seperti bubur.
                    3. Ambil selembar daun pisang, beri adonan nagasari, letakkan sepotong pisang di tengahnya.
                    4. Tutup dengan adonan lagi, lalu bungkus rapi.
                    5. Kukus hingga matang, sekitar 30 menit.
                    """
        ),
        Recipe(
            title: "Gudeg",
            image: "https://cnc-magazine.oramiland.com/parenting/images/Resep-Gudeg-Jogja-Sederhana.width-800.format-webp.webp",
            description: "Gudeg, hidangan khas Yogyakarta yang terbuat dari nangka muda yang dimasak berjam-jam dengan santan dan gula merah.",
            ingredients: "500 gr nangka muda, 500 ml santan, 100 gr gula merah, 2 lembar daun salam, 1 ruas lengkuas, 1 batang serai, 5 siung bawang merah, 3 siung bawang putih, 3 butir kemiri, 1/2 sdt ketumbar.",
            tools: "Panci besar, cobek/blender.",
            steps: """
                    1. Rebus nangka muda hingga empuk, tiriskan.
                    2. Haluskan bumbu (bawang merah, bawang putih, kemiri, ketumbar).
                    3. Tumis bumbu halus, masukkan lengkuas, serai, dan daun salam.
                    4. Masukkan nangka muda dan santan. Tambahkan gula merah.
                    5. Masak dengan api sangat kecil selama beberapa jam hingga bumbu meresap sempurna dan gudeg berwarna cokelat.
                    """
        ),
        // --- Minuman & Dessert (Beverages & Desserts) ---
        Recipe(
            title: "Es Teler",
            image: "https://asset.kompas.com/crops/qnE_yZ_AhiJ6FmdJDhcrbWZ7Y_4=/0x47:1000x714/1200x800/data/photo/2021/12/30/61cd30fd0532b.jpg",
            description: "Es teler, minuman dingin dan segar berisi potongan alpukat, nangka, dan kelapa muda dengan sirup dan susu kental manis.",
            ingredients: "1 buah alpukat, 50 gr nangka, 100 gr kelapa muda, es serut secukupnya, sirup secukupnya, susu kental manis secukupnya.",
            tools: "Gelas/mangkuk, pisau, sendok.",
            steps: """
                    1. Potong-potong alpukat dan nangka. Keruk daging kelapa muda.
                    2. Masukkan potongan buah dan kelapa muda ke dalam mangkuk.
                    3. Tambahkan es serut hingga penuh.
                    4. Siram dengan sirup dan susu kental manis sesuai selera.
                    5. Aduk dan sajikan segera.
                    """
        ),
        Recipe(
            title: "Kolak Pisang",
            image: "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/1067/2024/06/09/20240609_144121-2202921036.jpg",
            description: "Kolak pisang, hidangan penutup yang populer, terbuat dari pisang yang dimasak dalam kuah santan, gula merah, dan daun pandan.",
            ingredients: "5 buah pisang kepok, 100 gr gula merah, 500 ml santan, 2 lembar daun pandan, 1/4 sdt garam.",
            tools: "Panci, sendok sayur.",
            steps: """
                    1. Potong-potong pisang kepok.
                    2. Rebus santan, gula merah, dan daun pandan hingga gula larut.
                    3. Masukkan potongan pisang.
                    4. Masak dengan api kecil hingga pisang empuk dan bumbu meresap. Tambahkan sedikit garam.
                    """
        ),
        Recipe(
            title: "Kue Lapis",
            image: "https://beritajatim.com/cdn-cgi/image/quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2022/10/lapis.jpg",
            description: "Kue lapis, kue basah dengan tekstur kenyal dan berlapis-lapis, seringkali dengan warna yang berbeda-beda.",
            ingredients: "200 gr tepung beras, 100 gr tepung tapioka, 800 ml santan, 200 gr gula pasir, 1/4 sdt garam, 2 lembar daun pandan, pewarna makanan secukupnya.",
            tools: "Cetakan kue, dandang/kukusan, mangkuk.",
            steps: """
                    1. Campur tepung beras, tepung tapioka, gula, dan garam.
                    2. Masak santan dengan daun pandan hingga mendidih. Biarkan hangat.
                    3. Tuang santan sedikit demi sedikit ke dalam campuran tepung, aduk hingga rata dan tidak bergerindil.
                    4. Bagi adonan menjadi beberapa bagian, beri pewarna makanan yang berbeda.
                    5. Kukus adonan lapis demi lapis, bergantian warna. Kukus setiap lapisan selama 5-7 menit. Terakhir, kukus seluruh kue selama 20 menit.
                    """
        ),
        Recipe(
            title: "Es Cendol",
            image: "https://buckets.sasa.co.id/v1/AUTH_Assets/Assets/p/website/medias/page_medias/es_cendol_nangka.jpg",
            description: "Es cendol, minuman segar dengan butiran-butiran cendol hijau, disajikan dengan kuah santan dan gula merah.",
            ingredients: "100 gr tepung beras, 50 gr tepung tapioka, 200 ml air, 1/2 sdt pasta pandan, 200 ml santan, 100 gr gula merah, es batu secukupnya.",
            tools: "Panci, saringan, mangkuk besar berisi air es.",
            steps: """
                    1. Untuk cendol: Campur tepung beras, tepung tapioka, dan pasta pandan dengan air. Masak hingga mengental.
                    2. Cetak adonan cendol dengan saringan, jatuhkan ke mangkuk berisi air es.
                    3. Untuk kuah santan: Rebus santan dengan sedikit garam hingga mendidih.
                    4. Untuk kuah gula merah: Rebus gula merah hingga larut.
                    5. Sajikan cendol dengan kuah santan, kuah gula merah, dan es batu.
                    """
        ),
        Recipe(
            title: "Dadar Gulung",
            image: "https://file.fin.co.id/uploads/f/e2ff5b9909eb225b51b74560721439cc.jpeg",
            description: "Dadar gulung, kue basah tradisional berbentuk gulungan dengan isian parutan kelapa yang dimasak dengan gula merah.",
            ingredients: "100 gr tepung terigu, 1 butir telur, 250 ml air, 1/2 sdt pasta pandan, 100 gr kelapa parut, 50 gr gula merah, 1/4 sdt garam.",
            tools: "Wajan teflon, mangkuk, sendok sayur.",
            steps: """
                    1. Untuk kulit: Campur tepung terigu, telur, dan air. Tambahkan pasta pandan hingga berwarna hijau. Aduk rata.
                    2. Dadar tipis-tipis adonan di atas teflon.
                    3. Untuk isian: Masak kelapa parut dengan gula merah hingga gula larut dan meresap.
                    4. Ambil selembar dadar, beri isian, lalu gulung hingga rapi.
                    """
        ),
        Recipe(
            title: "Pisang Goreng",
            image: "https://static.promediateknologi.id/crop/11x566:1199x1367/750x500/webp/photo/p1/587/2023/11/18/WhatsApp-Image-2023-11-18-at-054427-1851206235.jpeg",
            description: "Pisang goreng, camilan sederhana yang terbuat dari pisang yang dilapisi adonan renyah dan digoreng.",
            ingredients: "5 buah pisang, 100 gr tepung terigu, 50 gr tepung beras, 2 sdm gula, 1/4 sdt garam, 150 ml air, minyak goreng secukupnya.",
            tools: "Wajan, mangkuk, pisau.",
            steps: """
                    1. Potong-potong pisang.
                    2. Campur tepung terigu, tepung beras, gula, dan garam. Tambahkan air sedikit demi sedikit hingga menjadi adonan kental.
                    3. Celupkan pisang ke dalam adonan.
                    4. Panaskan minyak, goreng pisang hingga berwarna cokelat keemasan dan renyah.
                    """
        ),
        Recipe(
            title: "Siomay",
            image: "https://www.tokomesin.com/wp-content/uploads/2015/02/siomay-bandung-tokomesin.jpg",
            description: "Siomay, hidangan pangsit kukus yang diisi adonan ikan, disajikan dengan bumbu kacang dan pelengkap lainnya.",
            ingredients: "Adonan siomay: 200 gr ikan tenggiri giling, 100 gr sagu, 1 butir telur, 50 ml air es, 3 siung bawang putih. Pelengkap: 2 buah tahu, 1/2 buah kol, 1 buah kentang, 1 butir telur rebus. Bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1 sdt garam, 100 ml air.",
            tools: "Dandang/kukusan, mangkuk, blender/cobek.",
            steps: """
                    1. Campur adonan siomay hingga kalis.
                    2. Isi tahu dan bentuk adonan siomay menjadi bulatan.
                    3. Kukus siomay, tahu, kentang, dan kol hingga matang.
                    4. Sajikan siomay dengan bumbu kacang dan pelengkap.
                    """
        ),
        Recipe(
            title: "Sate Padang",
            image: "https://qr.ptsuparmatbk.com/blog/wp-content/uploads/2024/08/sate-padang.webp",
            description: "Sate Padang, sate daging sapi dengan kuah kental berwarna kekuningan, disajikan dengan ketupat.",
            ingredients: "500 gr daging sapi, 1 buah ketupat, 5 siung bawang merah, 3 siung bawang putih, 10 buah cabai, 1 ruas kunyit, 1 sdt ketumbar, 1/2 sdt jintan, 1 batang serai, 2 lembar daun jeruk, 1 sdm tepung beras.",
            tools: "Alat pemanggang, panci, tusuk sate, blender/cobek.",
            steps: """
                    1. Rebus daging sapi hingga empuk, potong-potong.
                    2. Haluskan bumbu, tumis hingga harum. Masukkan ke dalam air kaldu rebusan daging.
                    3. Masukkan potongan daging, masak hingga bumbu meresap.
                    4. Angkat daging, tusuk sate. Bakar sate sebentar.
                    5. Tambahkan larutan tepung beras ke sisa kuah, masak hingga kental.
                    6. Sajikan sate dengan ketupat dan siraman kuah.
                    """
        ),
        Recipe(
            title: "Es Pisang Ijo",
            image: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/11/Resep-Pisang-Ijo.jpg?fit=1655%2C1573&ssl=1",
            description: "Es pisang ijo, hidangan penutup khas Makassar yang terbuat dari pisang yang dibalut adonan hijau, disajikan dengan bubur sumsum dan sirup.",
            ingredients: "5 buah pisang raja, 100 gr tepung terigu, 50 gr tepung beras, 200 ml santan, 50 gr gula, 1/2 sdt pasta pandan, bubur sumsum: 50 gr tepung beras, 150 ml santan, sirup coco pandan, es batu secukupnya.",
            tools: "Panci, dandang/kukusan, mangkuk.",
            steps: """
                    1. Kukus pisang hingga matang.
                    2. Buat adonan hijau: campur tepung terigu, tepung beras, santan, dan pasta pandan. Masak hingga kental.
                    3. Pipihkan adonan, balut pisang yang sudah dikukus. Kukus kembali hingga matang.
                    4. Buat bubur sumsum: masak tepung beras dengan santan hingga mengental.
                    5. Sajikan pisang ijo dengan bubur sumsum, es batu, dan sirup coco pandan.
                    """
        ),
        Recipe(
            title: "Ayam Penyet",
            image: "https://www.primarasa.co.id/images/images/Resep%20Ayam%20Penyet.jpg",
            description: "Ayam penyet, ayam goreng yang 'diseset' atau ditekan di atas sambal, disajikan dengan lalapan segar.",
            ingredients: "500 gr ayam, 3 siung bawang putih, 1 sdt ketumbar, 1 ruas kunyit, 1 sdt garam. Sambal: 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1 buah tomat, 1/2 sdt terasi, 1/2 sdt garam, 1/2 sdt gula.",
            tools: "Panci, wajan, cobek/ulekan.",
            steps: """
                    1. Ungkep ayam dengan bumbu halus (bawang putih, ketumbar, kunyit, garam) hingga empuk.
                    2. Goreng ayam yang sudah diungkep hingga matang.
                    3. Buat sambal: Goreng cabai, bawang merah, bawang putih, dan tomat. Ulek bersama terasi, garam, dan gula.
                    4. Letakkan ayam goreng di atas sambal, lalu tekan/penyet hingga ayam pipih.
                    """
        ),
        Recipe(
            title: "Nasi Liwet",
            image: "https://asset.kompas.com/crops/EYdFXrWqhbOvEgJ9o7pyH0U3lyo=/0x374:825x924/1200x800/data/photo/2021/02/25/603771be52521.jpg",
            description: "Nasi liwet, nasi gurih yang dimasak dengan santan dan rempah, sering disajikan dengan lauk pauk sederhana.",
            ingredients: "500 gr beras, 500 ml santan, 2 batang serai, 3 lembar daun salam, 5 buah cabai rawit utuh, 5 siung bawang merah, 3 siung bawang putih, 50 gr teri medan.",
            tools: "Panci/rice cooker, wajan.",
            steps: """
                    1. Cuci bersih beras.
                    2. Tumis bawang merah, bawang putih, dan teri hingga harum.
                    3. Masukkan beras ke dalam panci. Tambahkan tumisan bumbu, santan, serai, daun salam, dan cabai rawit utuh.
                    4. Masak hingga matang seperti menanak nasi biasa.
                    """
        ),
        Recipe(
            title: "Gado-Gado",
            image: "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/74/2025/01/27/Gado-Gado-2337756915.jpg",
            description: "Gado-gado, hidangan salad khas Indonesia yang berisi berbagai macam sayuran rebus, telur, dan lontong, disiram bumbu kacang.",
            ingredients: "1 buah lontong, 1 buah kentang, 1 butir telur rebus, 100 gr tauge, 100 gr kol, 100 gr kangkung, 1/2 buah timun, 2 buah tahu, 1 buah tempe, bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1/2 sdt garam, 100 ml air.",
            tools: "Panci, pisau, cobek/blender, piring saji.",
            steps: """
                    1. Rebus semua sayuran hingga matang, tiriskan.
                    2. Goreng tahu dan tempe.
                    3. Tata lontong, kentang, telur, sayuran, tahu, dan tempe di atas piring.
                    4. Siram dengan bumbu kacang yang sudah dihaluskan.
                    5. Tambahkan kerupuk dan bawang goreng sebagai pelengkap.
                    """
        ),
        Recipe(
            title: "Semur Jengkol",
            image: "https://assets.unileversolutions.com/recipes-v2/242765.jpg",
            description: "Semur jengkol, hidangan khas Indonesia dengan jengkol yang dimasak dengan kuah kecap yang kental dan manis.",
            ingredients: "250 gr jengkol, 5 sdm kecap manis, 5 siung bawang merah, 3 siung bawang putih, 2 butir kemiri, 1 sdt ketumbar, 1/2 sdt pala, 1 ruas lengkuas, 2 lembar daun salam.",
            tools: "Panci, cobek/blender, spatula.",
            steps: """
                    1. Rebus jengkol hingga empuk, lalu memarkan.
                    2. Haluskan bawang merah, bawang putih, kemiri, ketumbar, dan pala. Tumis hingga harum.
                    3. Masukkan jengkol, aduk rata.
                    4. Tambahkan air, kecap manis, lengkuas, dan daun salam.
                    5. Masak dengan api kecil hingga kuah mengental dan bumbu meresap sempurna.
                    """
        ),
        Recipe(
            title: "Opor Ayam",
            image: "https://img-global.cpcdn.com/recipes/45a5da2c43795112/680x781f0.5_0.500105_1.0q80/opor-ayam-kentang-foto-resep-utama.jpg",
            description: "Opor ayam, hidangan ayam berkuah santan kental yang dimasak dengan bumbu opor.",
            ingredients: "500 gr ayam, 500 ml santan, 1 batang serai, 2 lembar daun salam, 1 ruas lengkuas, 5 siung bawang merah, 3 siung bawang putih, 1 sdt ketumbar, 3 butir kemiri, 1/2 sdt jintan.",
            tools: "Panci, wajan, blender/cobek.",
            steps: """
                    1. Rebus ayam sebentar, tiriskan.
                    2. Haluskan bumbu (bawang merah, bawang putih, ketumbar, kemiri, jintan).
                    3. Tumis bumbu halus, masukkan serai, daun salam, dan lengkuas hingga harum.
                    4. Masukkan potongan ayam, aduk hingga berubah warna.
                    5. Tuang santan, masak dengan api kecil hingga mendidih dan ayam matang.
                    """
        ),
        Recipe(
            title: "Es Doger",
            image: "https://cdn.timesmedia.co.id/images/2018/10/13/es-doger.jpg",
            description: "Es doger, minuman es serut khas Bandung dengan campuran santan dan sirup, disajikan dengan berbagai isian.",
            ingredients: "Es serut secukupnya, 200 ml santan, 50 gr gula, 1/2 sdt pewarna makanan merah, 50 gr tape singkong, 1/2 buah alpukat, 50 gr nangka, 1 lembar roti tawar, susu kental manis secukupnya.",
            tools: "Blender, gelas/mangkuk, sendok.",
            steps: """
                    1. Campur es serut dengan santan, gula, dan pewarna merah. Blender hingga halus dan tercampur rata.
                    2. Siapkan mangkuk, tata potongan tape singkong, alpukat, nangka, dan roti tawar.
                    3. Tuang es doger yang sudah diblender ke dalam mangkuk.
                    4. Tambahkan susu kental manis di atasnya.
                    """
        ),
        // --- 10 resep baru yang sederhana dan mudah dibuat ---
        Recipe(
            title: "Telur Dadar Sayur",
            image: "https://assets.unileversolutions.com/v1/1786169.jpg",
            description: "Telur dadar sederhana dengan tambahan sayuran yang bisa disesuaikan, cocok untuk sarapan kilat.",
            ingredients: "2-3 butir telur, 1 batang daun bawang, 1/2 buah wortel, 1/2 sdt garam, 1/4 sdt lada, 2 sdm minyak goreng.",
            tools: "Mangkuk, garpu, wajan, spatula.",
            steps: """
                    1. Kocok telur di dalam mangkuk. Tambahkan irisan daun bawang, parutan wortel, garam, dan lada. Aduk rata.
                    2. Panaskan sedikit minyak di wajan. Tuang adonan telur.
                    3. Masak hingga bagian bawah matang, lalu balik. Masak hingga kedua sisi berwarna keemasan.
                    4. Sajikan hangat.
                    """
        ),
        Recipe(
            title: "Tumis Kangkung Terasi",
            image: "https://imgx.sonora.id/crop/0x0:0x0/x/photo/2020/11/25/3809309882.jpg",
            description: "Tumis kangkung adalah lauk cepat saji yang lezat, dengan aroma terasi yang menggugah selera.",
            ingredients: "1 ikat kangkung, 5 siung bawang merah, 3 siung bawang putih, 5 buah cabai rawit, 1/2 sdt terasi, 1/2 sdt garam, 1/4 sdt gula, 50 ml air.",
            tools: "Wajan, spatula, pisau.",
            steps: """
                    1. Petik daun kangkung dan cuci bersih.
                    2. Haluskan bawang merah, bawang putih, cabai, dan terasi.
                    3. Panaskan minyak di wajan, tumis bumbu halus hingga harum.
                    4. Masukkan kangkung, aduk rata. Tambahkan sedikit air, garam, dan gula.
                    5. Masak sebentar hingga kangkung layu tapi masih renyah.
                    """
        ),
        Recipe(
            title: "Mie Instan Kuah Susu",
            image: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2021/02/Resep-Mie-Kuah-Susu.jpg?fit=500%2C667&ssl=1",
            description: "Variasi unik mie instan kuah yang dimasak dengan susu cair, menghasilkan rasa yang creamy dan gurih.",
            ingredients: "1 bungkus mie instan rasa ayam bawang/soto, 250 ml susu cair full cream, 100 ml air, 1 butir telur, keju parut (opsional).",
            tools: "Panci, sendok, mangkuk.",
            steps: """
                    1. Rebus mie instan hingga setengah matang, buang airnya.
                    2. Di panci lain, masak susu cair hingga mendidih.
                    3. Masukkan bumbu mie instan, mie yang sudah direbus, dan telur. Aduk hingga rata dan telur matang.
                    4. Tambahkan keju parut jika suka. Sajikan selagi hangat.
                    """
        ),
        Recipe(
            title: "Perkedel Kentang",
            image: "https://blog.tokowahab.com/wp-content/uploads/2020/04/Resep-Perkedel-Kentang.jpg",
            description: "Perkedel, olahan kentang tumbuk yang digoreng, cocok untuk lauk pendamping atau camilan.",
            ingredients: "3 buah kentang, 3 siung bawang putih, 1 sdt garam, 1/4 sdt lada, 1 butir telur, 1 batang seledri cincang.",
            tools: "Panci, garpu, wajan, mangkuk.",
            steps: """
                    1. Rebus atau kukus kentang hingga empuk, lalu haluskan.
                    2. Haluskan bawang putih, campur dengan kentang yang sudah dihaluskan, garam, lada, dan seledri. Aduk rata.
                    3. Bentuk adonan menjadi bulatan pipih.
                    4. Celupkan perkedel ke dalam kocokan telur, lalu goreng hingga berwarna cokelat keemasan.
                    """
        ),
        Recipe(
            title: "Ayam Kecap Bawang Bombay",
            image: "https://i0.wp.com/ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/5/11/a16ea429-9a70-4538-a503-944ed20578da.jpg?resize=658%2C466&ssl=1",
            description: "Ayam kecap yang mudah dibuat dengan rasa manis dan gurih, dilengkapi irisan bawang bombay yang karamel.",
            ingredients: "250 gram ayam, 1/2 buah bawang bombay, 3 siung bawang putih, 3 sdm kecap manis, 1 sdm saus tiram, 1/2 sdt garam, 1/4 sdt lada, 100 ml air.",
            tools: "Wajan, pisau, spatula.",
            steps: """
                    1. Potong ayam menjadi bagian kecil.
                    2. Tumis bawang putih dan bawang bombay hingga harum. Masukkan potongan ayam, aduk hingga berubah warna.
                    3. Tambahkan kecap manis, saus tiram, garam, dan lada. Aduk rata.
                    4. Tuang sedikit air, masak hingga ayam matang dan bumbu meresap.
                    """
        ),
        Recipe(
            title: "Tahu Goreng Bumbu Kacang",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTagEj0LjGKH5o343ndrMuoVJ4j9v5OHgvJYQ&s",
            description: "Hidangan tahu goreng yang sederhana, disajikan dengan saus kacang yang lezat dan mudah dibuat.",
            ingredients: "5-6 buah tahu putih, bumbu kacang instan/bumbu kacang: 100 gr kacang goreng, 3 siung bawang putih, 5 buah cabai, 1 sdm gula merah, 100 ml air, 1 sdm kecap.",
            tools: "Wajan, pisau, mangkuk, piring.",
            steps: """
                    1. Potong tahu menjadi dadu atau segitiga.
                    2. Goreng tahu hingga matang dan berwarna keemasan.
                    3. Larutkan bumbu kacang instan dengan air panas, atau haluskan kacang goreng dengan bumbu lain. Tambahkan kecap manis.
                    4. Tata tahu goreng di piring dan siram dengan bumbu kacang.
                    """
        ),
        Recipe(
            title: "Sup Makaroni Telur",
            image: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/08/Resep-Sup-makaroni-ayam-bakso.jpg?fit=1920%2C1920&ssl=1",
            description: "Sup makaroni yang ringan dan bergizi, dengan tambahan telur dan sayuran untuk hidangan cepat saji.",
            ingredients: "100 gr makaroni, 1 butir telur, 1 buah wortel, 50 gr kol, 2 siung bawang putih, 1 batang seledri, 1/2 sdt kaldu ayam bubuk, 500 ml air.",
            tools: "Panci, sendok sayur.",
            steps: """
                    1. Rebus makaroni hingga matang. Tiriskan.
                    2. Didihkan air, tumis bawang putih hingga harum. Masukkan ke dalam air.
                    3. Masukkan irisan wortel dan kol, masak hingga sayuran empuk.
                    4. Masukkan makaroni yang sudah direbus. Pecahkan telur di dalam sup, aduk perlahan.
                    5. Tambahkan kaldu ayam bubuk, garam, dan seledri. Masak sebentar.
                    """
        ),
        Recipe(
            title: "Nasi Gila",
            image: "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/2e7d3e4d-b31a-481a-8a48-cb5db2b2ad19_Go-Biz_20250204_213823.jpeg",
            description: "Nasi gila, hidangan nasi dengan lauk tumisan yang 'campur aduk' dan kaya rasa, praktis untuk makan siang.",
            ingredients: "200 gr nasi putih, 1 buah sosis, 3 buah bakso, 1 butir telur, 50 gr sawi, 50 gr kol, 2 sdm kecap manis, 1 sdm saus sambal, 2 siung bawang putih, 1/2 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, spatula.",
            steps: """
                    1. Potong sosis, bakso, dan sayuran.
                    2. Orak-arik telur di wajan, sisihkan.
                    3. Tumis bawang putih hingga harum. Masukkan sosis, bakso, dan sayuran.
                    4. Tambahkan telur orak-arik. Masukkan kecap manis, saus sambal, garam, dan lada. Aduk rata.
                    5. Siramkan tumisan di atas nasi putih.
                    """
        ),
        Recipe(
            title: "Cumi Asin Cabai Hijau",
            image: "https://asset-2.tribunnews.com/banyumas/foto/bank/images/Cumi-Asin-Cabe-Ijo.jpg",
            description: "Tumisan cumi asin dengan cabai hijau yang pedas dan gurih, cocok untuk lauk yang menggugah selera.",
            ingredients: "200 gr cumi asin, 10 buah cabai hijau besar, 5 siung bawang merah, 3 siung bawang putih, 1 buah tomat hijau, 1 sdt gula pasir.",
            tools: "Wajan, pisau, spatula.",
            steps: """
                    1. Rendam cumi asin dengan air panas selama 15 menit untuk mengurangi rasa asinnya. Potong-potong.
                    2. Iris bawang merah, bawang putih, cabai hijau, dan tomat hijau.
                    3. Panaskan minyak, tumis semua bumbu iris hingga layu dan harum.
                    4. Masukkan potongan cumi asin. Tambahkan gula pasir (tidak perlu garam karena cumi sudah asin).
                    5. Aduk sebentar dan masak hingga bumbu meresap.
                    """
        ),
        Recipe(
            title: "Omelet Mi Instan",
            image: "https://img-global.cpcdn.com/recipes/9d94aee5c9255b9f/1200x630cq80/photo.jpg",
            description: "Inovasi unik mie instan yang digabung dengan telur menjadi omelet, camilan atau lauk yang sangat praktis.",
            ingredients: "1 bungkus mie instan, 2 butir telur, 1 batang daun bawang, 50 ml air.",
            tools: "Panci, mangkuk, garpu, wajan, spatula.",
            steps: """
                    1. Rebus mie instan hingga matang. Tiriskan.
                    2. Kocok telur di mangkuk, masukkan bumbu mie instan, mie yang sudah direbus, dan irisan daun bawang. Aduk rata.
                    3. Panaskan sedikit minyak di wajan. Tuang adonan mie.
                    4. Masak hingga bagian bawah matang, lalu balik. Masak hingga kedua sisi berwarna kecokelatan.
                    """
        ),
        Recipe(
            title: "Capcay Kuah",
            image: "https://cdn0-production-images-kly.akamaized.net/a-5BigVisKemj3xdLeAmiM_IPeo=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1244731/original/089765300_1464172041-Resep-Capcay-Kuah-Sedap-Gurih.jpg",
            description: "Hidangan sayuran berkuah yang sehat dan praktis, berisi aneka sayuran dengan kuah kental gurih.",
            ingredients: "1 buah wortel, 1/2 buah kembang kol, 100 gr sawi putih, 5 buah bakso, 3 siung bawang putih, 1 sdm saus tiram, 1 sdt kecap ikan, 1/2 sdt garam, 1/4 sdt lada, 250 ml air, 1 sdm tepung maizena.",
            tools: "Wajan, pisau, spatula.",
            steps: """
                    1. Potong-potong semua sayuran dan bakso.
                    2. Tumis bawang putih hingga harum, masukkan bakso.
                    3. Tambahkan sayuran yang keras terlebih dahulu (wortel, kembang kol), masak sebentar.
                    4. Masukkan sawi putih, tambahkan air. Masak hingga mendidih.
                    5. Tambahkan saus tiram, kecap ikan, garam, dan lada. Aduk rata.
                    6. Kentalkan kuah dengan larutan tepung maizena. Aduk cepat hingga mengental.
                    """
        ),
        Recipe(
            title: "Nugget Goreng Saus Asam Manis",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsj1XPY92XhtjKU70Rk3ZDSUUQTrs3DhJ3dQ&s",
            description: "Nugget instan yang disajikan dengan saus asam manis buatan sendiri, cocok untuk lauk anak-anak.",
            ingredients: "10 buah nugget ayam instan, 2 siung bawang putih, 1/2 buah bawang bombay, 3 sdm saus tomat, 1 sdm saus sambal, 1 sdm gula, 1/2 sdt garam, 100 ml air.",
            tools: "Wajan, spatula.",
            steps: """
                    1. Goreng nugget ayam instan hingga matang dan berwarna keemasan. Tiriskan.
                    2. Tumis bawang putih dan bawang bombay hingga layu.
                    3. Masukkan saus tomat dan saus sambal, tambahkan air. Aduk rata.
                    4. Tambahkan gula dan garam, masak hingga mendidih dan saus sedikit mengental.
                    5. Masukkan nugget yang sudah digoreng, aduk hingga terbalut saus.
                    """
        ),
        Recipe(
            title: "Tempe Mendoan",
            image: "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/08/09050651/Ini-Resep-dan-Cara-Membuat-Tempe-Mendoan-yang-Praktis-dan-Simpel.jpg.webp",
            description: "Tempe mendoan, gorengan tempe yang digoreng setengah matang, khas Banyumas, disajikan dengan cabai rawit.",
            ingredients: "1 papan tempe, 150 gr tepung terigu, 50 gr tepung tapioka, 2 batang daun bawang, 3 siung bawang putih, 1/2 sdt ketumbar, 1/4 sdt kunyit, 1 sdt garam, 200 ml air.",
            tools: "Mangkuk, wajan, spatula.",
            steps: """
                    1. Iris tipis tempe.
                    2. Haluskan bawang putih, ketumbar, dan kunyit.
                    3. Campur tepung terigu dan tepung tapioka. Tambahkan bumbu halus, irisan daun bawang, garam, dan air. Aduk hingga menjadi adonan encer.
                    4. Celupkan irisan tempe ke dalam adonan.
                    5. Goreng dalam minyak panas, jangan terlalu kering. Cukup hingga adonan tepung mengeras dan tempe masih 'lemas'.
                    """
        ),
        Recipe(
            title: "Cah Tauge Tahu",
            image: "https://asset.kompas.com/crops/xFV7clFbLe67hKv9Dmv85G91F9Y=/101x38:899x570/1200x800/data/photo/2022/09/23/632da8e0d3e6f.jpg",
            description: "Tumisan tauge dan tahu yang sangat sederhana, cepat dimasak, dan cocok untuk hidangan sehari-hari.",
            ingredients: "200 gr tauge, 3 buah tahu putih, 3 siung bawang putih, 1 batang daun bawang, 1 sdm saus tiram, 1/2 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, spatula, pisau.",
            steps: """
                    1. Potong tahu menjadi dadu, goreng hingga matang.
                    2. Tumis bawang putih hingga harum.
                    3. Masukkan tauge dan tahu goreng. Aduk cepat.
                    4. Tambahkan saus tiram, garam, dan lada. Aduk rata.
                    5. Masak sebentar hingga tauge layu, jangan terlalu lama.
                    6. Masukkan irisan daun bawang. Aduk sebentar.
                    """
        ),
        Recipe(
            title: "Sambal Terong Balado",
            image: "https://www.boncabe.com/wp-content/uploads/terong-balado-boncabe.jpg",
            description: "Hidangan terong goreng yang dibalut sambal balado, memberikan rasa pedas gurih yang nikmat.",
            ingredients: "2 buah terong ungu, 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1 buah tomat, 1/2 sdt garam, 1/2 sdt gula, minyak goreng.",
            tools: "Wajan, pisau, blender/cobek.",
            steps: """
                    1. Potong-potong terong, goreng hingga matang dan empuk. Tiriskan.
                    2. Haluskan semua bumbu sambal: cabai merah, bawang merah, bawang putih, dan tomat.
                    3. Tumis bumbu halus hingga harum dan matang.
                    4. Masukkan terong goreng ke dalam tumisan sambal. Aduk rata.
                    5. Tambahkan garam dan gula. Masak sebentar hingga bumbu meresap.
                    """
        ),
        // --- 5 resep tambahan yang sangat mudah ---
        Recipe(
            title: "Telur Balado",
            image: "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/12/28062947/Telur-Balado-Padang.jpg",
            description: "Telur rebus yang digoreng lalu dimasak dengan sambal balado pedas manis. Lauk sederhana yang disukai banyak orang.",
            ingredients: "5 butir telur, 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1/2 buah tomat, 1/2 sdt garam, 1/2 sdt gula, minyak goreng secukupnya.",
            tools: "Panci, wajan, cobek/blender.",
            steps: """
                    1. Rebus telur hingga matang, kupas, lalu goreng sebentar hingga berkulit.
                    2. Haluskan bumbu balado (cabai, bawang merah, bawang putih, tomat).
                    3. Tumis bumbu balado hingga harum dan matang.
                    4. Masukkan telur yang sudah digoreng ke dalam tumisan bumbu. Aduk rata.
                    5. Tambahkan garam dan gula. Masak sebentar hingga bumbu meresap.
                    """
        ),
        Recipe(
            title: "Sayur Asem",
            image: "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/78/2023/08/21/sayur-asem-1339691168.jpg",
            description: "Sup sayuran tradisional berkuah bening dengan rasa asam segar dari asam jawa, cocok untuk lauk sehari-hari.",
            ingredients: "100 gr labu siam, 50 gr kacang panjang, 100 gr jagung manis, 2 lembar daun salam, 1 ruas lengkuas, 2 sdm asam jawa, 500 ml air, 1/2 sdt garam, 1 sdt gula.",
            tools: "Panci, pisau.",
            steps: """
                    1. Potong-potong semua sayuran.
                    2. Didihkan air, masukkan jagung manis, daun salam, lengkuas, dan asam jawa.
                    3. Setelah jagung setengah matang, masukkan labu siam dan kacang panjang.
                    4. Tambahkan garam dan gula. Masak hingga semua sayuran matang.
                    5. Sajikan hangat.
                    """
        ),
        Recipe(
            title: "Tahu Tempe Orek Kecap",
            image: "https://www.masakapahariini.com/wp-content/uploads/2023/04/Resep-Orek-Tempe-Kecap-scaled.jpg",
            description: "Masakan olahan tahu dan tempe yang dipotong kecil lalu ditumis dengan kecap manis hingga bumbu meresap.",
            ingredients: "1 papan tempe, 2 buah tahu, 4 siung bawang merah, 3 siung bawang putih, 5 buah cabai merah, 3 sdm kecap manis, 1/2 sdt garam, 1/4 sdt lada, 50 ml air.",
            tools: "Wajan, pisau, spatula.",
            steps: """
                    1. Potong tempe dan tahu kecil-kecil, goreng hingga matang. Tiriskan.
                    2. Iris tipis bawang merah, bawang putih, dan cabai merah.
                    3. Tumis bumbu iris hingga harum.
                    4. Masukkan tahu dan tempe yang sudah digoreng. Aduk rata.
                    5. Tambahkan kecap manis, garam, lada, dan air. Aduk hingga bumbu meresap dan kuah mengental.
                    """
        ),
        Recipe(
            title: "Cah Kangkung Bawang Putih",
            image: "https://www.masakapahariini.com/wp-content/uploads/2023/01/Cah-Kangkung-scaled.jpg",
            description: "Tumisan kangkung yang sangat simpel, hanya menggunakan bawang putih. Rasanya gurih dan cocok untuk lauk sehari-hari.",
            ingredients: "1 ikat kangkung, 4 siung bawang putih, 1 sdm saus tiram, 1/2 sdt garam, 1/4 sdt lada, 2 sdm minyak goreng.",
            tools: "Wajan, pisau, spatula.",
            steps: """
                    1. Petik daun kangkung dan cuci bersih.
                    2. Cincang kasar bawang putih.
                    3. Panaskan minyak, tumis bawang putih hingga harum.
                    4. Masukkan kangkung, saus tiram, garam, dan lada.
                    5. Aduk cepat dan masak sebentar hingga kangkung layu.
                    """
        ),
        Recipe(
            title: "Sambal Matah",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjK80K6c-1_S7c65j9D-f7p3R2i3yv1_h9zQ&s",
            description: "Sambal khas Bali yang dibuat dari bahan-bahan mentah, memberikan rasa pedas, segar, dan aroma wangi dari serai dan daun jeruk.",
            ingredients: "10 siung bawang merah, 8 buah cabai rawit, 2 batang serai, 3 lembar daun jeruk, 1/2 sdt terasi, 1/2 sdt garam, 1/4 sdt gula, 3 sdm minyak kelapa panas.",
            tools: "Pisau, mangkuk.",
            steps: """
                    1. Iris tipis bawang merah, cabai rawit, dan serai.
                    2. Iris tipis daun jeruk, buang bagian tulang daunnya.
                    3. Campur semua bahan iris di dalam mangkuk.
                    4. Tambahkan terasi bakar, garam, dan gula.
                    5. Siram dengan minyak kelapa panas. Aduk rata.
                    6. Sajikan sebagai pendamping lauk.
                    """
        ),
        Recipe(
            title: "Capcay Kuah",
            image: "https://cdn0-production-images-kly.akamaized.net/a-5BigVisKemj3xdLeAmiM_IPeo=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1244731/original/089765300_1464172041-Resep-Capcay-Kuah-Sedap-Gurih.jpg",
            description: "Hidangan sayuran berkuah yang sehat dan praktis, berisi aneka sayuran dengan kuah kental gurih.",
            ingredients: "1 buah wortel, 1/2 kembang kol, 100 gr sawi putih, 5 buah bakso, 3 siung bawang putih, 1 sdm saus tiram, 1 sdt kecap ikan, 1/2 sdt garam, 1/4 sdt lada, 250 ml air, 1 sdm tepung maizena.",
            tools: "Wajan, pisau, spatula.",
            steps: """
                    1. Potong-potong semua sayuran dan bakso.
                    2. Tumis bawang putih hingga harum, masukkan bakso.
                    3. Tambahkan sayuran yang keras terlebih dahulu (wortel, kembang kol), masak sebentar.
                    4. Masukkan sawi putih, tambahkan air. Masak hingga mendidih.
                    5. Tambahkan saus tiram, kecap ikan, garam, dan lada. Aduk rata.
                    6. Kentalkan kuah dengan larutan tepung maizena. Aduk cepat hingga mengental.
                    """
        ),
        Recipe(
            title: "Nugget Goreng Saus Asam Manis",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsj1XPY92XhtjKU70Rk3ZDSUUQTrs3DhJ3dQ&s",
            description: "Nugget instan yang disajikan dengan saus asam manis buatan sendiri, cocok untuk lauk anak-anak.",
            ingredients: "10 buah nugget ayam instan, 2 siung bawang putih, 1/2 buah bawang bombay, 3 sdm saus tomat, 1 sdm saus sambal, 1 sdm gula, 1/2 sdt garam, 100 ml air.",
            tools: "Wajan, spatula.",
            steps: """
                    1. Goreng nugget ayam instan hingga matang dan berwarna keemasan. Tiriskan.
                    2. Tumis bawang putih dan bawang bombay hingga layu.
                    3. Masukkan saus tomat dan saus sambal, tambahkan air. Aduk rata.
                    4. Tambahkan gula dan garam, masak hingga mendidih dan saus sedikit mengental.
                    5. Masukkan nugget yang sudah digoreng, aduk hingga terbalut saus.
                    """
        ),
        Recipe(
            title: "Tempe Mendoan",
            image: "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/08/09050651/Ini-Resep-dan-Cara-Membuat-Tempe-Mendoan-yang-Praktis-dan-Simpel.jpg.webp",
            description: "Tempe mendoan, gorengan tempe yang digoreng setengah matang, khas Banyumas, disajikan dengan cabai rawit.",
            ingredients: "1 papan tempe, 150 gr tepung terigu, 50 gr tepung tapioka, 2 batang daun bawang, 3 siung bawang putih, 1/2 sdt ketumbar, 1/4 sdt kunyit, 1 sdt garam, 200 ml air.",
            tools: "Mangkuk, wajan, spatula.",
            steps: """
                    1. Iris tipis tempe.
                    2. Haluskan bawang putih, ketumbar, dan kunyit.
                    3. Campur tepung terigu dan tepung tapioka. Tambahkan bumbu halus, irisan daun bawang, garam, dan air. Aduk hingga menjadi adonan encer.
                    4. Celupkan irisan tempe ke dalam adonan.
                    5. Goreng dalam minyak panas, jangan terlalu kering. Cukup hingga adonan tepung mengeras dan tempe masih 'lemas'.
                    """
        ),
        Recipe(
            title: "Cah Tauge Tahu",
            image: "https://asset.kompas.com/crops/xFV7clFbLe67hKv9Dmv85G91F9Y=/101x38:899x570/1200x800/data/photo/2022/09/23/632da8e0d3e6f.jpg",
            description: "Tumisan tauge dan tahu yang sangat sederhana, cepat dimasak, dan cocok untuk hidangan sehari-hari.",
            ingredients: "200 gr tauge, 3 buah tahu putih, 3 siung bawang putih, 1 batang daun bawang, 1 sdm saus tiram, 1/2 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, spatula, pisau.",
            steps: """
                    1. Potong tahu menjadi dadu, goreng hingga matang.
                    2. Tumis bawang putih hingga harum.
                    3. Masukkan tauge dan tahu goreng. Aduk cepat.
                    4. Tambahkan saus tiram, garam, dan lada. Aduk rata.
                    5. Masak sebentar hingga tauge layu, jangan terlalu lama.
                    6. Masukkan irisan daun bawang. Aduk sebentar.
                    """
        ),
        Recipe(
            title: "Sambal Terong Balado",
            image: "https://www.boncabe.com/wp-content/uploads/terong-balado-boncabe.jpg",
            description: "Hidangan terong goreng yang dibalut sambal balado, memberikan rasa pedas gurih yang nikmat.",
            ingredients: "2 buah terong ungu, 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1 buah tomat, 1/2 sdt garam, 1/2 sdt gula, minyak goreng.",
            tools: "Wajan, pisau, blender/cobek.",
            steps: """
                    1. Potong-potong terong, goreng hingga matang dan empuk. Tiriskan.
                    2. Haluskan semua bumbu sambal: cabai merah, bawang merah, bawang putih, dan tomat.
                    3. Tumis bumbu halus hingga harum dan matang.
                    4. Masukkan terong goreng ke dalam tumisan sambal. Aduk rata.
                    5. Tambahkan garam dan gula. Masak sebentar hingga bumbu meresap.
                    """
        ),
        // --- Daftar resep yang sudah ada sebelumnya ---
        Recipe(
            title: "Nasi Goreng Kampung",
            image:"https://bristolindonesiansociety.com/wp-content/uploads/2016/03/nasi-goreng-kampung.jpg",
            description: "Nasi goreng sederhana ala rumahan dengan cita rasa autentik dan bahan seadanya.",
            ingredients: "500 gr nasi putih, 4 siung bawang merah, 3 siung bawang putih, 5 buah cabai rawit, 1 butir telur, 2 sdm kecap manis, 1/2 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, spatula, pisau, cobek/ulekan.",
            steps: """
                    1. Haluskan bawang merah, bawang putih, dan cabai rawit dengan cobek.
                    2. Panaskan wajan dengan sedikit minyak, tumis bumbu halus hingga harum.
                    3. Masukkan telur, orak-arik hingga matang.
                    4. Masukkan nasi putih, aduk rata.
                    5. Tambahkan kecap manis, garam, dan lada. Aduk hingga nasi terbalut bumbu dengan sempurna.
                    6. Sajikan selagi hangat.
                    """
        ),
        Recipe(
            title: "Soto Ayam Lamongan",
            image: "https://i.ytimg.com/vi/afD1GvxI_YE/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBZYLMRo9MjYzNB9YGW_dDjLsSmiQ",
            description: "Soto ayam berkuah kuning bening khas Lamongan yang kaya rempah, disajikan dengan koya gurih.",
            ingredients: "500 gr ayam, 2 batang serai, 3 lembar daun jeruk, 1 ruas kunyit, 6 siung bawang merah, 4 siung bawang putih, 3 butir kemiri, 1/2 sdt jintan, 1 sdt ketumbar, 100 gr kol, 50 gr soun, 2 butir telur rebus, 1 batang seledri, 5 sdm koya.",
            tools: "Panci, wajan, saringan, cobek/blender, mangkuk.",
            steps: """
                    1. Rebus ayam hingga matang, ambil kaldu dan suwir dagingnya.
                    2. Haluskan bumbu (bawang merah, bawang putih, kemiri, kunyit, jintan, ketumbar), tumis hingga harum.
                    3. Masukkan bumbu tumis ke dalam kaldu ayam, tambahkan serai dan daun jeruk. Masak hingga mendidih.
                    4. Tata soun, kol iris, dan ayam suwir di mangkuk.
                    5. Siram dengan kuah soto panas dan taburi dengan seledri serta koya.
                    """
        ),
        Recipe(
            title: "Rendang Daging Sapi",
            image: "https://www.frisianflag.com/storage/app/media/uploaded-files/rendang-padang.jpg",
            description: "Rendang daging sapi, hidangan khas Minang yang dimasak dengan santan dan bumbu kaya rempah hingga kering dan empuk.",
            ingredients: "1 kg daging sapi, 1 liter santan, 10 buah cabai merah, 10 siung bawang merah, 5 siung bawang putih, 2 ruas jahe, 2 ruas lengkuas, 2 batang serai, 2 lembar daun kunyit, 3 lembar daun jeruk, 1 sdm garam.",
            tools: "Wajan besar/panci, cobek/blender.",
            steps: """
                    1. Haluskan semua bumbu (kecuali daun kunyit, daun jeruk, serai, lengkuas).
                    2. Masukkan daging sapi, santan, dan bumbu halus ke dalam wajan. Aduk rata.
                    3. Tambahkan serai, daun kunyit, daun jeruk, dan lengkuas. Masak dengan api kecil sambil sesekali diaduk.
                    4. Terus masak hingga santan mengering, bumbu meresap, dan rendang berwarna cokelat kehitaman.
                    """
        ),
        Recipe(
            title: "Gulai Kambing",
            image: "https://palpos.bacakoran.co/upload/da603b83348e0b63540d73696a569d4f.jpg",
            description: "Gulai kambing, sup daging kambing dengan kuah kental santan yang penuh rempah, cocok disantap dengan nasi hangat.",
            ingredients: "500 gr daging kambing, 400 ml santan kental, 8 siung bawang merah, 5 siung bawang putih, 1 ruas kunyit, 1 ruas jahe, 1 sdt ketumbar, 1/2 sdt jintan, 3 butir cengkeh, 1 batang kayu manis, 1 batang serai, 2 lembar daun salam.",
            tools: "Panci, wajan, spatula, cobek/blender.",
            steps: """
                    1. Rebus daging kambing hingga empuk, buang air rebusan pertama untuk mengurangi bau.
                    2. Tumis bumbu halus (bawang merah, bawang putih, kunyit, jahe, ketumbar, jintan) hingga harum.
                    3. Masukkan bumbu tumis ke dalam panci berisi santan. Tambahkan serai, daun salam, cengkeh, dan kayu manis.
                    4. Masukkan daging kambing yang sudah direbus, masak hingga bumbu meresap dan kuah mengental.
                    """
        ),
        Recipe(
            title: "Sayur Lodeh",
            image: "https://cdn0-production-images-kly.akamaized.net/3KkPQ94ceNKgRhmWcQNMsgHD3UI=/0x374:793x821/469x260/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3271140/original/046275500_1603078585-shutterstock_1830141524.jpg",
            description: "Sayur lodeh, hidangan sayuran berkuah santan yang ringan dan segar, berisi berbagai macam sayuran.",
            ingredients: "1/2 buah labu siam, 1 buah terong, 10 batang kacang panjang, 50 gr melinjo, 1 buah jagung manis, 500 ml santan, 5 siung bawang merah, 3 siung bawang putih, 3 buah cabai, 2 lembar daun salam, 1 ruas lengkuas.",
            tools: "Panci, pisau, spatula.",
            steps: """
                    1. Potong-potong semua sayuran.
                    2. Didihkan santan, masukkan bumbu iris (bawang merah, bawang putih, cabai) serta daun salam dan lengkuas.
                    3. Masukkan sayuran yang keras terlebih dahulu (jagung, melinjo), masak hingga setengah matang.
                    4. Masukkan sisa sayuran (labu siam, terong, kacang panjang).
                    5. Masak hingga semua sayuran matang, tambahkan garam dan gula secukupnya.
                    """
        ),
        Recipe(
            title: "Bakso Sapi",
            image: "https://asset-2.tribunnews.com/tribunnews/foto/bank/images/bakso-sapi-kuah-1.jpg",
            description: "Bakso, hidangan sup berisi bakso daging sapi kenyal dengan mie dan sayuran.",
            ingredients: "10 buah bakso sapi, 100 gr mie, 50 gr bihun, 1 ikat sawi hijau, 50 gr tauge, 1 sdm bawang goreng, 1 batang seledri, 500 ml kaldu sapi.",
            tools: "Panci, mangkuk, sumpit.",
            steps: """
                    1. Rebus bakso hingga matang dan mengapung.
                    2. Rebus mie dan bihun sebentar, tiriskan.
                    3. Tata mie, bihun, sawi, dan tauge di dalam mangkuk.
                    4. Siram dengan kaldu sapi panas dan masukkan bakso yang sudah matang.
                    5. Taburi dengan bawang goreng dan seledri cincang.
                    """
        ),
        Recipe(
            title: "Nasi Uduk",
            image: "https://statik.tempo.co/data/2025/01/02/id_1366440/1366440_720.jpg",
            description: "Nasi uduk, nasi gurih yang dimasak dengan santan dan rempah, sering disajikan dengan aneka lauk.",
            ingredients: "500 gr beras, 500 ml santan, 2 lembar daun salam, 1 batang serai, 1 ruas lengkuas, 1 sdt garam.",
            tools: "Rice cooker/panci.",
            steps: """
                    1. Cuci beras hingga bersih.
                    2. Masukkan beras ke dalam rice cooker.
                    3. Tambahkan santan, daun salam, serai, lengkuas, dan garam.
                    4. Aduk rata dan masak nasi seperti biasa.
                    5. Setelah matang, aduk nasi hingga uapnya hilang.
                    """
        ),
        Recipe(
            title: "Ayam Goreng Kalasan",
            image: "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/14045037/Resep-Ayam-Kalasan-Mantap-Disantap-dengan-Bumbunya-.jpg.webp",
            description: "Ayam goreng dengan bumbu manis khas Kalasan, digoreng hingga garing di luar namun lembut di dalam.",
            ingredients: "500 gr ayam, 500 ml air kelapa, 5 siung bawang merah, 3 siung bawang putih, 3 butir kemiri, 1 sdt ketumbar, 50 gr gula merah, 1 sdt garam.",
            tools: "Panci, wajan.",
            steps: """
                    1. Haluskan bawang merah, bawang putih, kemiri, dan ketumbar.
                    2. Ungkep ayam bersama bumbu halus, air kelapa, dan gula merah. Masak hingga air menyusut dan bumbu meresap.
                    3. Panaskan minyak, goreng ayam hingga berwarna cokelat keemasan dan kering.
                    4. Saring sisa bumbu ungkep dan goreng sebentar hingga kering sebagai taburan.
                    """
        ),
        Recipe(
            title: "Ikan Bakar Bumbu Padang",
            image: "https://cnc-magazine.oramiland.com/parenting/original_images/Resep_Bumbu_Ikan_Bakar_Padang_QdcbpIw.jpg",
            description: "Ikan bakar dengan bumbu merah khas Padang, memberikan rasa pedas, gurih, dan sedikit asam.",
            ingredients: "1 ekor ikan gurame/nila, 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1 ruas kunyit, 1 ruas jahe, 1 ruas lengkuas, 1 batang serai, 2 lembar daun jeruk, 1 sdm air asam jawa.",
            tools: "Alat pemanggang/teflon grill, cobek/blender, kuas marinasi.",
            steps: """
                    1. Haluskan bumbu (cabai, bawang merah, bawang putih, kunyit, jahe).
                    2. Tumis bumbu halus hingga harum, tambahkan lengkuas, serai, dan daun jeruk.
                    3. Lumuri ikan dengan bumbu yang sudah ditumis. Diamkan beberapa saat agar meresap.
                    4. Bakar ikan sambil sesekali diolesi sisa bumbu hingga matang sempurna.
                    """
        ),
        Recipe(
            title: "Sate Lilit Bali",
            image: "https://bellroadbeef.com/wp-content/uploads/2025/06/sate-lilit-bali.webp",
            description: "Sate khas Bali yang terbuat dari daging cincang (ayam/ikan) yang dililitkan pada batang serai atau bambu.",
            ingredients: "500 gr daging ayam/ikan cincang, 100 gr kelapa parut, 5 siung bawang merah, 3 siung bawang putih, 5 buah cabai, 1 ruas kunyit, 1 ruas jahe, 1 ruas lengkuas, 1 ruas kencur, 10 batang serai.",
            tools: "Batang serai/tusuk sate, alat pemanggang/teflon grill, cobek/blender.",
            steps: """
                    1. Haluskan semua bumbu.
                    2. Campur daging cincang dengan bumbu halus dan kelapa parut. Aduk hingga rata dan kalis.
                    3. Ambil sedikit adonan, lilitkan pada batang serai.
                    4. Bakar sate hingga matang dan harum.
                    """
        ),
        Recipe(
            title: "Martabak Manis (Terang Bulan)",
            image: "https://wiratech.co.id/wp-content/uploads/2019/07/Resep-Terang-Bulan.jpg",
            description: "Martabak manis, kue tebal seperti pancake dengan isian berlimpah seperti cokelat, kacang, dan keju.",
            ingredients: "250 gr tepung terigu, 1 sdt ragi, 50 gr gula, 1 butir telur, 300 ml air, 1/2 sdt soda kue, 2 sdm mentega, topping (cokelat, keju, kacang).",
            tools: "Wajan teflon, whisk, mangkuk.",
            steps: """
                    1. Campur tepung terigu, gula, dan ragi. Tambahkan air sedikit demi sedikit sambil diuleni.
                    2. Masukkan telur, aduk rata. Diamkan adonan selama 30 menit.
                    3. Panaskan teflon. Tuang adonan, putar teflon agar adonan menempel di pinggir.
                    4. Biarkan berlubang-lubang, taburi gula, tutup. Masak hingga matang.
                    5. Angkat, olesi mentega, beri topping sesuai selera, lipat, dan potong.
                    """
        ),
        Recipe(
            title: "Cireng",
            image: "https://o-cdf.oramiland.com/unsafe/cnc-magazine.oramiland.com/parenting/original_images/Resep_Cireng_Bumbu_Rujak_1.jpg",
            description: "Cireng, singkatan dari 'aci digoreng', jajanan khas Sunda yang renyah di luar dan kenyal di dalam.",
            ingredients: "200 gr tepung kanji/tapioka, 3 siung bawang putih, 150 ml air panas, 1 batang daun bawang, 1 sdt garam, 1/4 sdt lada.",
            tools: "Wajan, mangkuk besar, spatula.",
            steps: """
                    1. Haluskan bawang putih, rebus dengan air hingga mendidih.
                    2. Dalam mangkuk, campur tepung tapioka dengan daun bawang, garam, dan lada.
                    3. Tuang air bawang panas ke dalam campuran tepung. Aduk cepat hingga menjadi adonan.
                    4. Ambil adonan, bentuk pipih. Goreng dalam minyak panas hingga matang dan renyah.
                    """
        ),
        Recipe(
            title: "Pempek Palembang",
            image: "https://www.pinterpolitik.com/wp-content/uploads/2023/09/foto-radarmukomuko-dot-disway-dot-id.webp",
            description: "Pempek, makanan khas Palembang yang terbuat dari ikan dan sagu, disajikan dengan kuah cuka yang asam manis pedas.",
            ingredients: "500 gr ikan tenggiri giling, 250 gr sagu, 100 ml air, 1 sdm garam, 1 butir telur (untuk pempek kapal selam). Kuah Cuka: 200 gr gula merah, 250 ml air, 3 sdm cuka, 5 siung bawang putih, 10 buah cabai rawit.",
            tools: "Panci, spatula, mangkuk, pisau, wajan.",
            steps: """
                    1. Campur ikan giling, air, dan garam hingga rata. Tambahkan sagu sedikit demi sedikit, uleni hingga kalis.
                    2. Bentuk adonan sesuai jenis pempek yang diinginkan (lenjer, kapal selam). Untuk kapal selam, isi adonan dengan telur.
                    3. Rebus pempek hingga mengapung. Tiriskan.
                    4. Goreng pempek yang sudah direbus hingga matang.
                    5. Untuk kuah cuka: Didihkan air, gula merah, cuka, dan bumbu halus (bawang putih, cabai). Saring.
                    """
        ),
        Recipe(
            title: "Klepon",
            image: "https://images.tokopedia.net/img/KRMmCm/2022/9/21/4a444fbd-fe4f-46d7-8822-3c4897ce7c44.jpg",
            description: "Klepon, jajanan tradisional berbentuk bola-bola kecil berwarna hijau, berisi gula merah leleh dan dibaluri kelapa parut.",
            ingredients: "200 gr tepung ketan, 50 gr tepung beras, 100 ml air pandan, 100 gr gula merah, 100 gr kelapa parut, 1/4 sdt garam.",
            tools: "Panci, mangkuk, saringan.",
            steps: """
                    1. Campur tepung ketan dan tepung beras. Tambahkan air pandan sedikit demi sedikit, uleni hingga kalis.
                    2. Ambil sedikit adonan, pipihkan, isi dengan potongan gula merah. Bulatkan kembali.
                    3. Rebus klepon dalam air mendidih hingga mengapung.
                    4. Gulingkan klepon yang sudah matang di atas kelapa parut yang sudah dikukus dengan sedikit garam.
                    """
        ),
        Recipe(
            title: "Tahu Isi (Tahu Brontak)",
            image: "https://img-global.cpcdn.com/recipes/c4c20a04ee4a26a7/1200x630cq80/photo.jpg",
            description: "Tahu goreng dengan isian sayuran (wortel, tauge, kol) yang dibalut adonan tepung renyah.",
            ingredients: "5 buah tahu, 1 buah wortel, 50 gr tauge, 50 gr kol, 100 gr tepung terigu, 50 gr tepung beras, 100 ml air, 3 siung bawang putih, 1 sdt garam, 1/2 sdt lada, 1/2 sdt ketumbar.",
            tools: "Wajan, pisau, mangkuk.",
            steps: """
                    1. Belah tahu dan buang isinya.
                    2. Potong tipis wortel dan kol. Campur dengan tauge. Tumis sebentar.
                    3. Campur tepung terigu dan tepung beras dengan air. Tambahkan bumbu halus (bawang putih, garam, lada, ketumbar).
                    4. Isi tahu dengan tumisan sayuran, lalu celupkan ke adonan tepung.
                    5. Goreng tahu dalam minyak panas hingga matang dan adonan renyah.
                    """
        ),
        Recipe(
            title: "Batagor",
            image: "https://www.tokomesin.com/wp-content/uploads/2017/09/4-Resep-Untuk-Cara-Membuat-Batagor-Mudah-2.jpg",
            description: "Batagor, singkatan dari 'baso tahu goreng', jajanan khas Bandung yang disajikan dengan bumbu kacang.",
            ingredients: "5 buah tahu, 150 gr bakso ikan, 10 lembar kulit pangsit, bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1 sdt garam, 100 ml air.",
            tools: "Wajan, panci, blender/cobek.",
            steps: """
                    1. Potong tahu menjadi dua, lalu keruk sedikit isinya.
                    2. Isi tahu dengan adonan bakso ikan. Bentuk pangsit seperti perahu dan isi dengan adonan juga.
                    3. Goreng tahu dan pangsit hingga matang kecokelatan.
                    4. Untuk bumbu kacang: Goreng kacang, lalu haluskan bersama bawang putih dan cabai. Tambahkan gula, garam, dan air. Masak hingga mengental.
                    """
        ),
        Recipe(
            title: "Mie Ayam",
            image: "https://allofresh.id/blog/wp-content/uploads/2023/08/cara-membuat-mie-ayam-4.jpg",
            description: "Mie ayam, mie gandum yang disajikan dengan potongan daging ayam manis berbumbu dan sayuran.",
            ingredients: "200 gr mie gandum, 200 gr daging ayam, 50 gr jamur, 3 sdm kecap manis, 3 siung bawang putih, 1 sdm saus tiram, 1 ikat sawi, 1 batang daun bawang, 5 lembar pangsit goreng.",
            tools: "Panci, wajan, mangkuk, sumpit.",
            steps: """
                    1. Rebus mie gandum dan sawi hingga matang. Tiriskan.
                    2. Tumis bawang putih, masukkan daging ayam dan jamur, masak hingga matang.
                    3. Tambahkan kecap manis, saus tiram, dan sedikit air. Masak hingga bumbu meresap.
                    4. Tata mie dan sawi di mangkuk, siram dengan tumisan ayam.
                    5. Tambahkan daun bawang dan pangsit goreng.
                    """
        ),
        Recipe(
            title: "Ketoprak",
            image: "https://img-global.cpcdn.com/recipes/835a1524e8167639/1200x630cq80/photo.jpg",
            description: "Ketoprak, hidangan vegetarian yang terdiri dari bihun, tauge, tahu, dan lontong, disiram saus kacang pedas.",
            ingredients: "1 buah lontong, 1 buah kentang, 1 butir telur rebus, 100 gr tauge, 50 gr kol, 50 gr kangkung, 1/2 buah timun, 2 buah tahu, 1 buah tempe, bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1/2 sdt garam, 100 ml air.",
            tools: "Piring, cobek/blender, pisau.",
            steps: """
                    1. Rebus semua sayuran hingga matang, tiriskan.
                    2. Goreng tahu dan tempe.
                    3. Tata lontong, kentang, telur, sayuran, tahu, dan tempe di atas piring.
                    4. Siram dengan bumbu kacang yang sudah dihaluskan.
                    5. Tambahkan kerupuk dan bawang goreng sebagai pelengkap.
                    """
        ),
        Recipe(
            title: "Nagasari",
            image: "https://image.idntimes.com/post/20240603/resep-nagasari-cara-membuat-nagasari-apa-itu-nagasari-kue-basah-kue-tradisional-nagasari-9cde86371d7fc78c91ae80a6ffab250e-fa5873a025ef968d8d870ad3bab4c88b.jpg",
            description: "Nagasari, kue tradisional yang terbuat dari tepung beras dan santan, diisi pisang, lalu dibungkus daun pisang dan dikukus.",
            ingredients: "200 gr tepung beras, 500 ml santan, 50 gr gula, 2 lembar daun pandan, 3 buah pisang raja/tanduk, 10 lembar daun pisang.",
            tools: "Dandang/kukusan, mangkuk, sendok, panci.",
            steps: """
                    1. Masak santan, gula, daun pandan hingga mendidih.
                    2. Larutkan tepung beras dengan sedikit santan, lalu masukkan ke dalam panci. Aduk hingga mengental seperti bubur.
                    3. Ambil selembar daun pisang, beri adonan nagasari, letakkan sepotong pisang di tengahnya.
                    4. Tutup dengan adonan lagi, lalu bungkus rapi.
                    5. Kukus hingga matang, sekitar 30 menit.
                    """
        ),
        Recipe(
            title: "Gudeg",
            image: "https://cnc-magazine.oramiland.com/parenting/images/Resep-Gudeg-Jogja-Sederhana.width-800.format-webp.webp",
            description: "Gudeg, hidangan khas Yogyakarta yang terbuat dari nangka muda yang dimasak berjam-jam dengan santan dan gula merah.",
            ingredients: "500 gr nangka muda, 500 ml santan, 100 gr gula merah, 2 lembar daun salam, 1 ruas lengkuas, 1 batang serai, 5 siung bawang merah, 3 siung bawang putih, 3 butir kemiri, 1/2 sdt ketumbar.",
            tools: "Panci besar, cobek/blender.",
            steps: """
                    1. Rebus nangka muda hingga empuk, tiriskan.
                    2. Haluskan bumbu (bawang merah, bawang putih, kemiri, ketumbar).
                    3. Tumis bumbu halus, masukkan lengkuas, serai, dan daun salam.
                    4. Masukkan nangka muda dan santan. Tambahkan gula merah.
                    5. Masak dengan api sangat kecil selama beberapa jam hingga bumbu meresap sempurna dan gudeg berwarna cokelat.
                    """
        ),
        Recipe(
            title: "Es Teler",
            image: "https://asset.kompas.com/crops/qnE_yZ_AhiJ6FmdJDhcrbWZ7Y_4=/0x47:1000x714/1200x800/data/photo/2021/12/30/61cd30fd0532b.jpg",
            description: "Es teler, minuman dingin dan segar berisi potongan alpukat, nangka, dan kelapa muda dengan sirup dan susu kental manis.",
            ingredients: "1 buah alpukat, 50 gr nangka, 100 gr kelapa muda, es serut secukupnya, sirup secukupnya, susu kental manis secukupnya.",
            tools: "Gelas/mangkuk, pisau, sendok.",
            steps: """
                    1. Potong-potong alpukat dan nangka. Keruk daging kelapa muda.
                    2. Masukkan potongan buah dan kelapa muda ke dalam mangkuk.
                    3. Tambahkan es serut hingga penuh.
                    4. Siram dengan sirup dan susu kental manis sesuai selera.
                    5. Aduk dan sajikan segera.
                    """
        ),
        Recipe(
            title: "Kolak Pisang",
            image: "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/1067/2024/06/09/20240609_144121-2202921036.jpg",
            description: "Kolak pisang, hidangan penutup yang populer, terbuat dari pisang yang dimasak dalam kuah santan, gula merah, dan daun pandan.",
            ingredients: "5 buah pisang kepok, 100 gr gula merah, 500 ml santan, 2 lembar daun pandan, 1/4 sdt garam.",
            tools: "Panci, sendok sayur.",
            steps: """
                    1. Potong-potong pisang kepok.
                    2. Rebus santan, gula merah, dan daun pandan hingga gula larut.
                    3. Masukkan potongan pisang.
                    4. Masak dengan api kecil hingga pisang empuk dan bumbu meresap. Tambahkan sedikit garam.
                    """
        ),
        Recipe(
            title: "Kue Lapis",
            image: "https://beritajatim.com/cdn-cgi/image/quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2022/10/lapis.jpg",
            description: "Kue lapis, kue basah dengan tekstur kenyal dan berlapis-lapis, seringkali dengan warna yang berbeda-beda.",
            ingredients: "200 gr tepung beras, 100 gr tepung tapioka, 800 ml santan, 200 gr gula pasir, 1/4 sdt garam, 2 lembar daun pandan, pewarna makanan secukupnya.",
            tools: "Cetakan kue, dandang/kukusan, mangkuk.",
            steps: """
                    1. Campur tepung beras, tepung tapioka, gula, dan garam.
                    2. Masak santan dengan daun pandan hingga mendidih. Biarkan hangat.
                    3. Tuang santan sedikit demi sedikit ke dalam campuran tepung, aduk hingga rata dan tidak bergerindil.
                    4. Bagi adonan menjadi beberapa bagian, beri pewarna makanan yang berbeda.
                    5. Kukus adonan lapis demi lapis, bergantian warna. Kukus setiap lapisan selama 5-7 menit. Terakhir, kukus seluruh kue selama 20 menit.
                    """
        ),
        Recipe(
            title: "Es Cendol",
            image: "https://buckets.sasa.co.id/v1/AUTH_Assets/Assets/p/website/medias/page_medias/es_cendol_nangka.jpg",
            description: "Es cendol, minuman segar dengan butiran-butiran cendol hijau, disajikan dengan kuah santan dan gula merah.",
            ingredients: "100 gr tepung beras, 50 gr tepung tapioka, 200 ml air, 1/2 sdt pasta pandan, 200 ml santan, 100 gr gula merah, es batu secukupnya.",
            tools: "Panci, saringan, mangkuk besar berisi air es.",
            steps: """
                    1. Untuk cendol: Campur tepung beras, tepung tapioka, dan pasta pandan dengan air. Masak hingga mengental.
                    2. Cetak adonan cendol dengan saringan, jatuhkan ke mangkuk berisi air es.
                    3. Untuk kuah santan: Rebus santan dengan sedikit garam hingga mendidih.
                    4. Untuk kuah gula merah: Rebus gula merah hingga larut.
                    5. Sajikan cendol dengan kuah santan, kuah gula merah, dan es batu.
                    """
        ),
        Recipe(
            title: "Dadar Gulung",
            image: "https://file.fin.co.id/uploads/f/e2ff5b9909eb225b51b74560721439cc.jpeg",
            description: "Dadar gulung, kue basah tradisional berbentuk gulungan dengan isian parutan kelapa yang dimasak dengan gula merah.",
            ingredients: "100 gr tepung terigu, 1 butir telur, 250 ml air, 1/2 sdt pasta pandan, 100 gr kelapa parut, 50 gr gula merah, 1/4 sdt garam.",
            tools: "Wajan teflon, mangkuk, sendok sayur.",
            steps: """
                    1. Untuk kulit: Campur tepung terigu, telur, dan air. Tambahkan pasta pandan hingga berwarna hijau. Aduk rata.
                    2. Dadar tipis-tipis adonan di atas teflon.
                    3. Untuk isian: Masak kelapa parut dengan gula merah hingga gula larut dan meresap.
                    4. Ambil selembar dadar, beri isian, lalu gulung hingga rapi.
                    """
        ),
        Recipe(
            title: "Pisang Goreng",
            image: "https://static.promediateknologi.id/crop/11x566:1199x1367/750x500/webp/photo/p1/587/2023/11/18/WhatsApp-Image-2023-11-18-at-054427-1851206235.jpeg",
            description: "Pisang goreng, camilan sederhana yang terbuat dari pisang yang dilapisi adonan renyah dan digoreng.",
            ingredients: "5 buah pisang, 100 gr tepung terigu, 50 gr tepung beras, 2 sdm gula, 1/4 sdt garam, 150 ml air, minyak goreng secukupnya.",
            tools: "Wajan, mangkuk, pisau.",
            steps: """
                    1. Potong-potong pisang.
                    2. Campur tepung terigu, tepung beras, gula, dan garam. Tambahkan air sedikit demi sedikit hingga menjadi adonan kental.
                    3. Celupkan pisang ke dalam adonan.
                    4. Panaskan minyak, goreng pisang hingga berwarna cokelat keemasan dan renyah.
                    """
        ),
        Recipe(
            title: "Siomay",
            image: "https://www.tokomesin.com/wp-content/uploads/2015/02/siomay-bandung-tokomesin.jpg",
            description: "Siomay, hidangan pangsit kukus yang diisi adonan ikan, disajikan dengan bumbu kacang dan pelengkap lainnya.",
            ingredients: "Adonan siomay: 200 gr ikan tenggiri giling, 100 gr sagu, 1 butir telur, 50 ml air es, 3 siung bawang putih. Pelengkap: 2 buah tahu, 1/2 buah kol, 1 buah kentang, 1 butir telur rebus. Bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1 sdt garam, 100 ml air.",
            tools: "Dandang/kukusan, mangkuk, blender/cobek.",
            steps: """
                    1. Campur adonan siomay hingga kalis.
                    2. Isi tahu dan bentuk adonan siomay menjadi bulatan.
                    3. Kukus siomay, tahu, kentang, dan kol hingga matang.
                    4. Sajikan siomay dengan bumbu kacang dan pelengkap.
                    """
        ),
        Recipe(
            title: "Sate Padang",
            image: "https://qr.ptsuparmatbk.com/blog/wp-content/uploads/2024/08/sate-padang.webp",
            description: "Sate Padang, sate daging sapi dengan kuah kental berwarna kekuningan, disajikan dengan ketupat.",
            ingredients: "500 gr daging sapi, 1 buah ketupat, 5 siung bawang merah, 3 siung bawang putih, 10 buah cabai, 1 ruas kunyit, 1 sdt ketumbar, 1/2 sdt jintan, 1 batang serai, 2 lembar daun jeruk, 1 sdm tepung beras.",
            tools: "Alat pemanggang, panci, tusuk sate, blender/cobek.",
            steps: """
                    1. Rebus daging sapi hingga empuk, potong-potong.
                    2. Haluskan bumbu, tumis hingga harum. Masukkan ke dalam air kaldu rebusan daging.
                    3. Masukkan potongan daging, masak hingga bumbu meresap.
                    4. Angkat daging, tusuk sate. Bakar sate sebentar.
                    5. Tambahkan larutan tepung beras ke sisa kuah, masak hingga kental.
                    6. Sajikan sate dengan ketupat dan siraman kuah.
                    """
        ),
        Recipe(
            title: "Es Pisang Ijo",
            image: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/11/Resep-Pisang-Ijo.jpg?fit=1655%2C1573&ssl=1",
            description: "Es pisang ijo, hidangan penutup khas Makassar yang terbuat dari pisang yang dibalut adonan hijau, disajikan dengan bubur sumsum dan sirup.",
            ingredients: "5 buah pisang raja, 100 gr tepung terigu, 50 gr tepung beras, 200 ml santan, 50 gr gula, 1/2 sdt pasta pandan, bubur sumsum: 50 gr tepung beras, 150 ml santan, sirup coco pandan, es batu secukupnya.",
            tools: "Panci, dandang/kukusan, mangkuk.",
            steps: """
                    1. Kukus pisang hingga matang.
                    2. Buat adonan hijau: campur tepung terigu, tepung beras, santan, dan pasta pandan. Masak hingga kental.
                    3. Pipihkan adonan, balut pisang yang sudah dikukus. Kukus kembali hingga matang.
                    4. Buat bubur sumsum: masak tepung beras dengan santan hingga mengental.
                    5. Sajikan pisang ijo dengan bubur sumsum, es batu, dan sirup coco pandan.
                    """
        ),
        Recipe(
            title: "Ayam Penyet",
            image: "https://www.primarasa.co.id/images/images/Resep%20Ayam%20Penyet.jpg",
            description: "Ayam penyet, ayam goreng yang 'diseset' atau ditekan di atas sambal, disajikan dengan lalapan segar.",
            ingredients: "500 gr ayam, 3 siung bawang putih, 1 sdt ketumbar, 1 ruas kunyit, 1 sdt garam. Sambal: 10 buah cabai merah, 5 siung bawang merah, 3 siung bawang putih, 1 buah tomat, 1/2 sdt terasi, 1/2 sdt garam, 1/2 sdt gula.",
            tools: "Panci, wajan, cobek/ulekan.",
            steps: """
                    1. Ungkep ayam dengan bumbu halus (bawang putih, ketumbar, kunyit, garam) hingga empuk.
                    2. Goreng ayam yang sudah diungkep hingga matang.
                    3. Buat sambal: Goreng cabai, bawang merah, bawang putih, dan tomat. Ulek bersama terasi, garam, dan gula.
                    4. Letakkan ayam goreng di atas sambal, lalu tekan/penyet hingga ayam pipih.
                    """
        ),
        Recipe(
            title: "Nasi Liwet",
            image: "https://asset.kompas.com/crops/EYdFXrWqhbOvEgJ9o7pyH0U3lyo=/0x374:825x924/1200x800/data/photo/2021/02/25/603771be52521.jpg",
            description: "Nasi liwet, nasi gurih yang dimasak dengan santan dan rempah, sering disajikan dengan lauk pauk sederhana.",
            ingredients: "500 gr beras, 500 ml santan, 2 batang serai, 3 lembar daun salam, 5 buah cabai rawit utuh, 5 siung bawang merah, 3 siung bawang putih, 50 gr teri medan.",
            tools: "Panci/rice cooker, wajan.",
            steps: """
                    1. Cuci bersih beras.
                    2. Tumis bawang merah, bawang putih, dan teri hingga harum.
                    3. Masukkan beras ke dalam panci. Tambahkan tumisan bumbu, santan, serai, daun salam, dan cabai rawit utuh.
                    4. Masak hingga matang seperti menanak nasi biasa.
                    """
        ),
        Recipe(
            title: "Gado-Gado",
            image: "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/74/2025/01/27/Gado-Gado-2337756915.jpg",
            description: "Gado-gado, hidangan salad khas Indonesia yang berisi berbagai macam sayuran rebus, telur, dan lontong, disiram bumbu kacang.",
            ingredients: "1 buah lontong, 1 buah kentang, 1 butir telur rebus, 100 gr tauge, 100 gr kol, 100 gr kangkung, 1/2 buah timun, 2 buah tahu, 1 buah tempe, bumbu kacang: 150 gr kacang tanah, 3 siung bawang putih, 5 buah cabai, 1 sdm gula, 1/2 sdt garam, 100 ml air.",
            tools: "Panci, pisau, cobek/blender, piring saji.",
            steps: """
                    1. Rebus semua sayuran hingga matang, tiriskan.
                    2. Goreng tahu dan tempe.
                    3. Tata lontong, kentang, telur, sayuran, tahu, dan tempe di atas piring.
                    4. Siram dengan bumbu kacang yang sudah dihaluskan.
                    5. Tambahkan kerupuk dan bawang goreng sebagai pelengkap.
                    """
        ),
        Recipe(
            title: "Semur Jengkol",
            image: "https://assets.unileversolutions.com/recipes-v2/242765.jpg",
            description: "Semur jengkol, hidangan khas Indonesia dengan jengkol yang dimasak dengan kuah kecap yang kental dan manis.",
            ingredients: "250 gr jengkol, 5 sdm kecap manis, 5 siung bawang merah, 3 siung bawang putih, 2 butir kemiri, 1 sdt ketumbar, 1/2 sdt pala, 1 ruas lengkuas, 2 lembar daun salam.",
            tools: "Panci, cobek/blender, spatula.",
            steps: """
                    1. Rebus jengkol hingga empuk, lalu memarkan.
                    2. Haluskan bawang merah, bawang putih, kemiri, ketumbar, dan pala. Tumis hingga harum.
                    3. Masukkan jengkol, aduk rata.
                    4. Tambahkan air, kecap manis, lengkuas, dan daun salam.
                    5. Masak dengan api kecil hingga kuah mengental dan bumbu meresap sempurna.
                    """
        ),
        Recipe(
            title: "Opor Ayam",
            image: "https://img-global.cpcdn.com/recipes/45a5da2c43795112/680x781f0.5_0.500105_1.0q80/opor-ayam-kentang-foto-resep-utama.jpg",
            description: "Opor ayam, hidangan ayam berkuah santan kental yang dimasak dengan bumbu opor.",
            ingredients: "500 gr ayam, 500 ml santan, 1 batang serai, 2 lembar daun salam, 1 ruas lengkuas, 5 siung bawang merah, 3 siung bawang putih, 1 sdt ketumbar, 3 butir kemiri, 1/2 sdt jintan.",
            tools: "Panci, wajan, blender/cobek.",
            steps: """
                    1. Rebus ayam sebentar, tiriskan.
                    2. Haluskan bumbu (bawang merah, bawang putih, ketumbar, kemiri, jintan).
                    3. Tumis bumbu halus, masukkan serai, daun salam, dan lengkuas hingga harum.
                    4. Masukkan potongan ayam, aduk hingga berubah warna.
                    5. Tuang santan, masak dengan api kecil hingga mendidih dan ayam matang.
                    """
        ),
        Recipe(
            title: "Es Doger",
            image: "https://cdn.timesmedia.co.id/images/2018/10/13/es-doger.jpg",
            description: "Es doger, minuman es serut khas Bandung dengan campuran santan dan sirup, disajikan dengan berbagai isian.",
            ingredients: "Es serut secukupnya, 200 ml santan, 50 gr gula, 1/2 sdt pewarna makanan merah, 50 gr tape singkong, 1/2 buah alpukat, 50 gr nangka, 1 lembar roti tawar, susu kental manis secukupnya.",
            tools: "Blender, gelas/mangkuk, sendok.",
            steps: """
                    1. Campur es serut dengan santan, gula, dan pewarna merah. Blender hingga halus dan tercampur rata.
                    2. Siapkan mangkuk, tata potongan tape singkong, alpukat, nangka, dan roti tawar.
                    3. Tuang es dRDoger yang sudah diblender ke dalam mangkuk.
                    4. Tambahkan susu kental manis di atasnya.
                    """
        )
    ]
}
