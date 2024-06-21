#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Folly::folly" for configuration "Debug"
set_property(TARGET Folly::folly APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Folly::folly PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "ASM;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfolly.a"
  )

list(APPEND _cmake_import_check_targets Folly::folly )
list(APPEND _cmake_import_check_files_for_Folly::folly "${_IMPORT_PREFIX}/lib/libfolly.a" )

# Import target "Folly::folly_test_util" for configuration "Debug"
set_property(TARGET Folly::folly_test_util APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Folly::folly_test_util PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfolly_test_util.a"
  )

list(APPEND _cmake_import_check_targets Folly::folly_test_util )
list(APPEND _cmake_import_check_files_for_Folly::folly_test_util "${_IMPORT_PREFIX}/lib/libfolly_test_util.a" )

# Import target "Folly::follybenchmark" for configuration "Debug"
set_property(TARGET Folly::follybenchmark APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Folly::follybenchmark PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfollybenchmark.a"
  )

list(APPEND _cmake_import_check_targets Folly::follybenchmark )
list(APPEND _cmake_import_check_files_for_Folly::follybenchmark "${_IMPORT_PREFIX}/lib/libfollybenchmark.a" )

# Import target "Folly::folly_exception_tracer_base" for configuration "Debug"
set_property(TARGET Folly::folly_exception_tracer_base APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Folly::folly_exception_tracer_base PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfolly_exception_tracer_base.a"
  )

list(APPEND _cmake_import_check_targets Folly::folly_exception_tracer_base )
list(APPEND _cmake_import_check_files_for_Folly::folly_exception_tracer_base "${_IMPORT_PREFIX}/lib/libfolly_exception_tracer_base.a" )

# Import target "Folly::folly_exception_tracer" for configuration "Debug"
set_property(TARGET Folly::folly_exception_tracer APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Folly::folly_exception_tracer PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfolly_exception_tracer.a"
  )

list(APPEND _cmake_import_check_targets Folly::folly_exception_tracer )
list(APPEND _cmake_import_check_files_for_Folly::folly_exception_tracer "${_IMPORT_PREFIX}/lib/libfolly_exception_tracer.a" )

# Import target "Folly::folly_exception_counter" for configuration "Debug"
set_property(TARGET Folly::folly_exception_counter APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Folly::folly_exception_counter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfolly_exception_counter.a"
  )

list(APPEND _cmake_import_check_targets Folly::folly_exception_counter )
list(APPEND _cmake_import_check_files_for_Folly::folly_exception_counter "${_IMPORT_PREFIX}/lib/libfolly_exception_counter.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
