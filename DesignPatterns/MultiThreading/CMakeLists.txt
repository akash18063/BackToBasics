cmake_minimum_required(VERSION 2.8)
project(MultiThreading)

#add_library(library library.cpp)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
add_executable(producerconsumer producer_consumer.cpp)
add_executable(promisefuture promise_future.cpp)
add_executable(semaphores semaphores.cpp)
target_link_libraries (producerconsumer PRIVATE Threads::Threads)
target_link_libraries (promisefuture PRIVATE Threads::Threads)
target_link_libraries (semaphores PRIVATE Threads::Threads)



#target_link_libraries(client library)
#target_include_directories(client PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

#option(BP_BUILD_TESTS "Build tests" ON)
# if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME AND BP_BUILD_TESTS)
#     enable_testing()
#     add_subdirectory(test)
# endif()