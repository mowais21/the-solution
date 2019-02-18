CXX = g++                                                                       
CXXFLAGS = -std=c++14 -Wall -MMD -Werror=vla -g                                             
EXEC = ctor                                                            
OBJECTS = main.o faizal.o owais.o nyle.o common.o                                        
DEPENDS = ${OBJECTS:.o=.d}                                                      
                                                                                
${EXEC}: ${OBJECTS}                                                             
	${CXX} ${CXXFLAGS} ${OBJECTS} -o ${EXEC}                                    
                                                                                
-include ${DEPENDS}                                                             
                                                                                
.PHONY: clean                                                                   
                                                                                
clean:                                                                          
	rm ${OBJECTS} ${EXEC} ${DEPENDS}   
	