echo "<<-COMPILING->>";
case $1 in
   a)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=address -fno-omit-frame-pointer question1.cpp;;
   m)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=memory -fPIE -pie -fno-omit-frame-pointer -fno-optimize-sibling-calls -g question1.cpp;;
   t)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=thread -fPIE -pie -g question1.cpp;;
   l)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=leak question1.cpp;;
   u)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=undefined question1.cpp;;
   *)
      clang++ -O3 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ question1.cpp;;
esac
echo "<<-EXECUTING->>";
./a.out;
