# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# remove duplicate libraries, generalized from PCLConfig.cmake.in
macro(_remove_duplicate_libraries _unfiltered_libraries _final_filtered_libraries)
  set(_filtered_libraries)
  set(_debug_libraries)
  set(_optimized_libraries)
  set(_other_libraries)
  set(_waiting_for_debug 0)
  set(_waiting_for_optimized 0)
  set(_library_position -1)
  foreach(library ${${_unfiltered_libraries}})
    if("${library}" STREQUAL "debug")
      set(_waiting_for_debug 1)
    elseif("${library}" STREQUAL "optimized")
      set(_waiting_for_optimized 1)
    elseif(_waiting_for_debug)
      list(FIND _debug_libraries "${library}" library_position)
      if(library_position EQUAL -1)
        list(APPEND ${_filtered_libraries} debug ${library})
        list(APPEND _debug_libraries ${library})
      endif()
      set(_waiting_for_debug 0)
    elseif(_waiting_for_optimized)
      list(FIND _optimized_libraries "${library}" library_position)
      if(library_position EQUAL -1)
        list(APPEND ${_filtered_libraries} optimized ${library})
        list(APPEND _optimized_libraries ${library})
      endif()
      set(_waiting_for_optimized 0)
    else("${library}" STREQUAL "debug")
      list(FIND _other_libraries "${library}" library_position)
      if(library_position EQUAL -1)
        list(APPEND ${_filtered_libraries} ${library})
        list(APPEND _other_libraries ${library})
      endif()
    endif("${library}" STREQUAL "debug")
  endforeach(library)
  set(_final_filtered_libraries _filtered_libraries)
endmacro()


if(turtle_kinect_CONFIG_INCLUDED)
  return()
endif()
set(turtle_kinect_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(turtle_kinect_SOURCE_PREFIX /home/bai/catkin_ws/src/turtle_kinect)
  set(turtle_kinect_DEVEL_PREFIX /home/bai/catkin_ws/devel)
  set(turtle_kinect_INSTALL_PREFIX "")
  set(turtle_kinect_PREFIX ${turtle_kinect_DEVEL_PREFIX})
else()
  set(turtle_kinect_SOURCE_PREFIX "")
  set(turtle_kinect_DEVEL_PREFIX "")
  set(turtle_kinect_INSTALL_PREFIX /home/bai/catkin_ws/install)
  set(turtle_kinect_PREFIX ${turtle_kinect_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'turtle_kinect' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(turtle_kinect_FOUND_CATKIN_PROJECT TRUE)

if(NOT "" STREQUAL "")
  set(turtle_kinect_INCLUDE_DIRS "")
  set(_include_dirs "")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir}" STREQUAL "include")
      get_filename_component(include "${turtle_kinect_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'turtle_kinect' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'vupham <vupham@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'turtle_kinect' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/bai/catkin_ws/src/turtle_kinect/${idir}'.  Ask the maintainer 'vupham <vupham@todo.todo>' to fix it.")
    endif()
    _list_append_unique(turtle_kinect_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  if(TARGET ${library})
    list(APPEND turtle_kinect_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND turtle_kinect_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/bai/catkin_ws/devel/lib;/home/bai/catkin_ws/devel/lib;/opt/ros/hydro/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(turtle_kinect_LIBRARY_DIRS ${lib_path})
      list(APPEND turtle_kinect_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'turtle_kinect'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND turtle_kinect_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(turtle_kinect_EXPORTED_TARGETS "turtle_kinect_generate_messages_cpp;turtle_kinect_generate_messages_lisp;turtle_kinect_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${turtle_kinect_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "message_runtime;rospy;tf;std_msgs;geometry_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 turtle_kinect_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${turtle_kinect_dep}_FOUND)
      find_package(${turtle_kinect_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${turtle_kinect_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(turtle_kinect_INCLUDE_DIRS ${${turtle_kinect_dep}_INCLUDE_DIRS})
  list(APPEND turtle_kinect_LIBRARIES ${${turtle_kinect_dep}_LIBRARIES})
  _list_append_unique(turtle_kinect_LIBRARY_DIRS ${${turtle_kinect_dep}_LIBRARY_DIRS})
  list(APPEND turtle_kinect_EXPORTED_TARGETS ${${turtle_kinect_dep}_EXPORTED_TARGETS})
endforeach()

if(turtle_kinect_LIBRARIES)
  _remove_duplicate_libraries(turtle_kinect_LIBRARIES turtle_kinect_LIBRARIES)
endif()

set(pkg_cfg_extras "turtle_kinect-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${turtle_kinect_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
