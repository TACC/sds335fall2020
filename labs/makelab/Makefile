myprogram : main.o sub1.o sub2.o
	${CC} -o myprogram main.o sub1.o sub2.o
# this is a macro
CC = icc
COPTIONS = -c
# template rule for o-on-c dependency:
%.o : %.c
	${CC} ${COPTIONS} $^

# main.o : main.c 
# 	${CC} ${COPTIONS} main.c
# sub1.o : sub1.c 
# 	${CC} ${COPTIONS} sub1.c
# sub2.o : sub2.c 
# 	${CC} ${COPTIONS} sub2.c

main.o sub1.o sub2.o : foobar.h

clean :
	rm -f *.o myprogram


