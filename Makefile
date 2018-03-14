########## OPT AND PARAMS ###### 
B=./build
S=./src
I=./include
OUTPUT=test
CXXS=$(S)/cpp/*.cpp
F90S=$(S)/f90/*.f90
FC=gfortran
FL=gfortran
CXX=g++
CXXL=g++
CXXFLAGS= -O2
F90FLAGS= -O2
OBJS=$(subst .cpp,.o,$(CXXS))

############## COMPILATION ######
$(B)/%.o:	$(CXXS)/%.cpp
	@echo "  #COMPILE C"
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(B)/%.o:	$(F90S)/%.f90
	@echo "  #COMPILE F90"
	$(FC) $(F90FLAGS) -c $< -o $@

############ LINKING ############
$(OUTPUT):
	@echo $(OBJS)

############# OTHER #############
clean:
	@echo "  #CLEAN"
	@rm -f *.o *.out *~ $(OUTPUT) 2> /dev/null 
	@rm -f ./build/*.* 2> /dev/null 

#see
#https://www.gnu.org/software/make/manual/html_node/Catalogue-of-Rules.html#Catalogue-of-Rules
