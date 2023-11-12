#include "../DataStructures/GTFS/Data.h"
#include "../DataStructures/Intermediate/Data.h"
#include "../DataStructures/Graph/Graph.h"

int main(int argc, char** argv) {
   if(argc != 3) {
      std::cerr << "Invalid Arguments" << std::endl;
      exit(-1);
   }

   std::string src_id(argv[1]);
   std::string dst_id(argv[2]);
   const std::string fname = "./GTFS/";

   Intermediate::Data inter = Intermediate::Data::FromGTFS(GTFS::Data::FromGTFS(fname), 0, INT_MAX);
   inter.printInfo();

   return 0;
}        
