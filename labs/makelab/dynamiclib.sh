
mkdir -p libs
rm -f libs/libfoobar.a libs/libfoobar.so

LIBRARY_FILES="sub1.c sub2.c"

for cfile in ${LIBRARY_FILES} ; do
  # add a "shared" flag:
  icc -fPIC -c $cfile
  # instead of:
  #ar cr libs/libfoobar.a ${cfile%%.c}.o
done
icc -shared -o libs/libfoobar.so sub1.o sub2.o

# explicit form:
# icc -o foobar main.o libs/libfoobar.a
# separate "-L": library directory / "-l" library name
#icc -o foobar main.o -Llibs -lfoobar
