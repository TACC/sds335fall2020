# execute this script with:
# . staticlib.sh
# "dot space"

rm -f *.o 

mkdir -p libs
rm -f libs/libfoobar.a

LIBRARY_FILES="sub1.c sub2.c"

for cfile in ${LIBRARY_FILES} ; do
  icc -c $cfile
  #echo "$cfile ${cfile%%.c}"
  # the next line is incomplete: needs to add the object file
  ar cr libs/libfoobar.a ${cfile%%.c}.o
done

# explicit form:
# icc -o foobar main.o libs/libfoobar.a
# separate "-L": library directory / "-l" library name
icc -o foobar main.o -Llibs -lfoobar

# C-k : scoop up a line (twice for the line end)
# C-y : paste back.
