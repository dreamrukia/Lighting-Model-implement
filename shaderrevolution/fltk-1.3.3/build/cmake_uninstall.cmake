if(NOT EXISTS "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/install_manifest.txt")
   message(FATAL_ERROR
      "Cannot find install manifest: \"C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/install_manifest.txt\"")
endif(NOT EXISTS "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/install_manifest.txt")

file(READ "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")

foreach(file ${files})
message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
   exec_program("C:/Program Files (x86)/CMake/bin/cmake.exe"
      ARGS "-E remove -f \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
   )
   if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
   endif(NOT "${rm_retval}" STREQUAL 0)
endforeach(file)
