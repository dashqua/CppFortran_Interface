echo "  #CLEAN"
rm *.out *~ 2> /dev/null
echo "  #COMPIL"
g++ hello.c -o hello.out
echo "  #EXEC"
./hello.out
