echo "  #CLEAN"
rm *.o *.out *~ 2> /dev/null
rm ./build/*.*
echo "  #COMPILE OBJECTS"
gfortran -c ./src/f90/linalg.f90 -o ./build/linalg.o
g++      -c ./src/cpp/main.cpp   -o ./build/main.o
echo "  #LINK OBJECTS"
g++ -o test ./build/linalg.o ./build/main.o -lgfortran
echo "  #EXEC"
./test
