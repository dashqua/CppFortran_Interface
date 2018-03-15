########## OPT AND PARAMS ###### 
B=./build
S=./src
I=./include
OUTPUT=test
CXXS=$(S)/cpp/
F90S=$(S)/f90/
FC=gfortran
FL=gfortran
CXX=g++
CXXL=g++
CXXFLAGS= -O2 
F90FLAGS= -O2
LINKFLAGS= -lgfortran
OBJS=main.o linalg.o

all: $(OUTPUT)

############## COMPILATION ######
$(B)/%.o: $(CXXS)/%.cpp
	@echo "  #COMPIL_C"
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

$(B)/%.o: $(F90S)/%.f90
	@echo "  #COMPIL_F"
	@$(FC)  -c $(F90FLAGS) -o $@ $<

############ LINKING ############
$(OUTPUT): $(addprefix $(B)/,$(OBJS))
	@echo "  #LINK"
	$(CXXL) -o $@ $^ $(LINKFLAGS)

############# OTHER #############
clean:
	@echo "  #CLEAN"
	@rm -f *.o *.out *~ $(OUTPUT) 2> /dev/null 
	@rm -f ./build/*.* 2> /dev/null 
	@rm -f ./src/**/*.o
#see
#https://www.gnu.org/software/make/manual/html_node/Catalogue-of-Rules.html#Catalogue-of-Rules
