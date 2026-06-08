set(internal_utils "${GOOGLETEST_SOURCE_DIR}/googletest/cmake/internal_utils.cmake")

file(READ "${internal_utils}" internal_utils_contents)

string(REPLACE
  "-Wno-error=dangling-else"
  "-Wno-error=dangling-else -Wno-error=maybe-uninitialized"
  internal_utils_contents
  "${internal_utils_contents}")

file(WRITE "${internal_utils}" "${internal_utils_contents}")
