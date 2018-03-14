echo "  #CLEAN"
rm *.o *.out *~ 2> /dev/null
echo "  #COMPILE OBJECTS"
gfortran -c linalg.f90
g++      -c main.cpp
echo "  #LINK OBJECTS"
g++ -o test linalg.o main.o -lgfortran
echo "  #EXEC"
./test
