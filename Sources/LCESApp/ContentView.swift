import SwiftUI

struct ContentView: View {
    @State private var q = "Filing"
    @State private var hits: [SearchHit] = []

    var body: some View {
        VStack(spacing: 12) {
            HStack {
                TextField("Search", text: $q)
                    .textFieldStyle(.roundedBorder)
                Button("Go") { runSearch() }
            }.padding(.horizontal)

            List(hits, id: \.id) { h in
                VStack(alignment: .leading, spacing: 4) {
                    Text(h.title).font(.headline)
                    Text(h.snippet).font(.subheadline).foregroundStyle(.secondary)
                }
            }
        }
        .navigationTitle("LCES")
        .onAppear(perform: runSearch)
    }

    func runSearch() { hits = SearchService.shared.query(q, limit: 40) }
}