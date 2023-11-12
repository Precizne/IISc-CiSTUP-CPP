echo "<<-COMPILING->>";
case $1 in
   a)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=address -fno-omit-frame-pointer question2.cpp;;
   m)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=memory -fPIE -pie -fno-omit-frame-pointer -fno-optimize-sibling-calls -g question2.cpp;;
   t)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=thread -fPIE -pie -g question2.cpp;;
   l)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=leak question2.cpp;;
   u)
      clang++ -O1 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ -fsanitize=undefined question2.cpp;;
   *)
      clang++ -O3 -fuse-ld=lld -std=c++20 -stdlib=libstdc++ question2.cpp;;
esac
echo "<<-EXECUTING->>";
./a.out;
