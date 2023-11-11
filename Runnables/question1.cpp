#include "../DataStructures/Graph/Graph.h"
#include "../Algorithms/Dijkstra/Dijkstra.h"
#include "../DataStructures/Queries/Queries.h"

int main() {
   const std::string fname = "USA-road-d.FLA.gr";
   const int queries = 200;

   TravelTimeGraph graph;
   Graph::fromDimacs(fname, graph);

   Dijkstra<TravelTimeGraph> sssp(graph);
   std::vector<VertexQuery> vquery = generateRandomVertexQueries(graph.numVertices(), queries);

   Timer timer;

   for(auto cquery : vquery) {
      sssp.run(cquery.source, cquery.target);
   }

   double time = timer.elapsedMilliseconds() / 1000;
   std::cout << "Total runtime in seconds for 200 random Dijkstra: " << time << std::endl;
      
   return 0;
}

// Pratyush Nanda (Precizne)
