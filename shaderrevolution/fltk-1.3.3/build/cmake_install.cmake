# Install script for directory: C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/FLTK")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/FL" USE_SOURCE_PERMISSIONS REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/CMake/FLTK-Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/CMake/FLTK-Targets.cmake"
         "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/CMakeFiles/Export/CMake/FLTK-Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/CMake/FLTK-Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/CMake/FLTK-Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/CMakeFiles/Export/CMake/FLTK-Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/CMakeFiles/Export/CMake/FLTK-Targets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/CMakeFiles/Export/CMake/FLTK-Targets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/CMakeFiles/Export/CMake/FLTK-Targets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/CMakeFiles/Export/CMake/FLTK-Targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/etc/FLTKConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/etc/UseFLTK.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/zlib/cmake_install.cmake")
  include("C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/jpeg/cmake_install.cmake")
  include("C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/png/cmake_install.cmake")
  include("C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/fluid/cmake_install.cmake")
  include("C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/src/cmake_install.cmake")
  include("C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "C:/Users/neilb_000/Desktop/Depot/Courses/4490/W16/assignments/A1VS2015/A1/A1/trace/trace_skel/Trace/fltk-1.3.3/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
