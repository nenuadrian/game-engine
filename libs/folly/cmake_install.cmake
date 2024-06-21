# Install script for directory: /home/nenuadrian/game-engine/libs/folly

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/nenuadrian/game-engine/libs/folly/libfolly.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/nenuadrian/game-engine/libs/folly/libfolly_test_util.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicHashArray-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicHashArray.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicHashMap-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicHashMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicIntrusiveLinkedList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicLinkedList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/AtomicUnorderedMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Benchmark.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/BenchmarkUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Bits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/CPortability.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/CancellationToken-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/CancellationToken.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Chrono.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ClockGettimeWrappers.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ConcurrentBitSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ConcurrentLazy.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ConcurrentSkipList-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ConcurrentSkipList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ConstexprMath.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ConstructorCallbackList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Conv.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/CppAttributes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/CpuId.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/DefaultKeepAliveExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Demangle.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/DiscriminatedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/DynamicConverter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Exception.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ExceptionString.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ExceptionWrapper-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ExceptionWrapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Executor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Expected.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FBString.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FBVector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/File.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FileUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Fingerprint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FixedString.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FollyMemcpy.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FollyMemset.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Format-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Format.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FormatArg.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/FormatTraits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Function.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/GLog.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/GroupVarint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Hash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/IPAddress.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/IPAddressException.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/IPAddressV4.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/IPAddressV6.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Indestructible.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/IndexedMemPool.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/IntrusiveList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Lazy.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Likely.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MPMCPipeline.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MPMCQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MacAddress.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MapUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Math.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MaybeManagedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Memory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MicroLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MicroSpinLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/MoveWrapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ObserverContainer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Optional.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Overload.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/PackedSyncPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Padded.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Poly-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Poly.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/PolyException.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Portability.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Preprocessor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ProducerConsumerQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/RWSpinLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Random-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Random.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Range.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Replaceable.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ScopeGuard.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/SharedMutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Singleton-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Singleton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/SingletonThreadLocal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/SocketAddress.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/SpinLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/String-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/String.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Subprocess.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Synchronized.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/SynchronizedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ThreadCachedInt.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ThreadLocal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/TimeoutQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/TokenBucket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Traits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Try-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Try.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/UTF8String.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Unicode.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Unit.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Uri-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Uri.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Utility.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/Varint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/VirtualExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/base64.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/dynamic-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/dynamic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/folly-config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json_patch.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json_pointer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/small_vector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/sorted_vector_types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stop_watch.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/algorithm/simd" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/algorithm/simd/FindFixed.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/algorithm/simd" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/algorithm/simd/Movemask.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Channel-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Channel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Channel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ChannelCallbackHandle.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ChannelProcessor-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ChannelProcessor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ConsumeChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ConsumeChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/FanoutChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/FanoutChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/FanoutSender-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/FanoutSender.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/MaxConcurrentRateLimiter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Merge-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Merge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/MergeChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/MergeChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/MultiplexChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/MultiplexChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/OnClosedException.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Producer-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Producer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ProxyChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/ProxyChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/RateLimiter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Transform-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/Transform.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/AtomicQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/ChannelBridge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/FunctionTraits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/IntrusivePtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/MultiplexerTraits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/PointerVariant.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/channels/detail/Utility.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/chrono" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/chrono/Clock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/chrono" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/chrono/Conv.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/chrono" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/chrono/Hardware.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/cli" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/cli/NestedCommandLineApp.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/cli" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/cli/ProgramOptions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/Compression.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/CompressionContextPool.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/CompressionContextPoolSingletons.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/CompressionCoreLocalContextPool.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/Instructions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/QuotientMultiSet-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/QuotientMultiSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/Select64.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/Utils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/Zlib.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/Zstd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression/elias_fano" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/elias_fano/BitVectorCoding.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression/elias_fano" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/elias_fano/CodingDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/compression/elias_fano" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/compression/elias_fano/EliasFanoCoding.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/AtomicSharedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/CacheLocality.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/ConcurrentHashMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/CoreCachedSharedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/DeadlockDetector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/DynamicBoundedQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/PriorityUnboundedQueueSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/ProcessLocalUniqueId.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/SingletonRelaxedCounter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/ThreadCachedSynchronized.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/UnboundedQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/container/LockFreeRingBuffer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/container/RelaxedConcurrentPriorityQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/container/atomic_grow_array.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/detail/AtomicSharedPtr-detail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/detail/ConcurrentHashMap-detail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/memory/AtomicReadMostlyMainPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/memory/PrimaryPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/memory/ReadMostlySharedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/concurrency/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/concurrency/memory/TLRefCount.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Access.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Array.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/BitIterator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Enumerate.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/EvictingCacheMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/F14Map-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/F14Map.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/F14Set-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/F14Set.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/FBVector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Foreach-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Foreach.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/HeterogeneousAccess-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/HeterogeneousAccess.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/IntrusiveHeap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/IntrusiveList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Iterator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/MapUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Merge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/Reserve.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/SparseByteSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/View.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/WeightedEvictingCacheMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/BitIteratorDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14Defaults.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14IntrinsicsAvailability.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14MapFallback.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14Mask.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14Policy.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14SetFallback.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/F14Table.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/Util.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/detail/tape_detail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/heap_vector_types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/range_traits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/small_vector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/sorted_vector_types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/tape.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/crypto" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/crypto/Blake2xb.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/crypto" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/crypto/LtHash-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/crypto" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/crypto/LtHash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/crypto/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/crypto/detail/LtHashInternal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/AsyncTrace.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/AtomicHashUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/AtomicUnorderedMapUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/DiscriminatedPtrDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/FileUtilDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/FileUtilVectorDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/FingerprintPolynomial.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/Futex-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/Futex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/GroupVarintDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/IPAddress.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/IPAddressSource.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/Iterators.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/MPMCPipelineDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/MemoryIdler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/PerfScoped.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/PolyDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/RangeCommon.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/RangeSse42.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SimdAnyOf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SimdCharPlatform.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SimdForEach.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SimpleSimdStringUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SimpleSimdStringUtilsImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/Singleton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SlowFingerprint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SocketFastOpen.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SplitStringSimd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/SplitStringSimdImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/Sse.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/StaticSingletonManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/ThreadLocalDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/TrapOnAvx512.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/TurnSequencer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/TypeList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/UniqueInstance.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/UnrollUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64Api.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64Common.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64Constants.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64HiddenConstants.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64SWAR.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64Scalar.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64Simd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64_SSE4_2.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/detail/base64_detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/detail/base64_detail/Base64_SSE4_2_Platform.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/Async.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/CPUThreadPoolExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/Codel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/DrivableExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/EDFThreadPoolExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ExecutorWithPriority-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ExecutorWithPriority.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/FiberIOExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/FunctionScheduler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/FutureExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/GlobalExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/GlobalThreadPoolList.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/IOExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/IOObjectCache.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/IOThreadPoolDeadlockDetectorObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/IOThreadPoolExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/InlineExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ManualExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/MeteredExecutor-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/MeteredExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/QueueObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/QueuedImmediateExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ScheduledExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/SequencedExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/SerialExecutor-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/SerialExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/SerializedExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/SoftRealTimeExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/StrandExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ThreadPoolExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ThreadedExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/ThreadedRepeatingFunctionRunner.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/TimedDrivableExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/TimekeeperScheduledExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/VirtualExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/task_queue" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/task_queue/BlockingQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/task_queue" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/task_queue/LifoSemMPMCQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/task_queue" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/task_queue/PriorityLifoSemMPMCQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/task_queue" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/task_queue/PriorityUnboundedBlockingQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/task_queue" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/task_queue/UnboundedBlockingQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/thread_factory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/thread_factory/InitThreadFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/thread_factory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/thread_factory/NamedThreadFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/thread_factory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/thread_factory/PriorityThreadFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/executors/thread_factory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/executors/thread_factory/ThreadFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/AutoTimer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/BitVectorCoding.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/Bits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/Cleanup.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/CodingDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/DynamicParser-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/DynamicParser.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/EliasFanoCoding.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/EventCount.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/ExecutionObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/FlatCombiningPriorityQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/FunctionScheduler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/Instructions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/JSONSchema.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/LockFreeRingBuffer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/NestedCommandLineApp.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/PrimaryPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/ProgramOptions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/QuotientMultiSet-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/QuotientMultiSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/ReadMostlySharedPtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/RelaxedConcurrentPriorityQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/STTimerFDTimeoutManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/Select64.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/SingleWriterFixedHashMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/SingletonRelaxedCounter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/TLRefCount.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/TestUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/ThreadedRepeatingFunctionRunner.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/TimerFD.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/TimerFDTimeoutManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Channel-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Channel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Channel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ChannelCallbackHandle.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ChannelProcessor-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ChannelProcessor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ConsumeChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ConsumeChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/FanoutChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/FanoutChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/FanoutSender-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/FanoutSender.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/MaxConcurrentRateLimiter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Merge-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Merge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/MergeChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/MergeChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/MultiplexChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/MultiplexChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/OnClosedException.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Producer-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Producer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ProxyChannel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/ProxyChannel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/RateLimiter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Transform-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/Transform.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/AtomicQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/ChannelBridge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/FunctionTraits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/IntrusivePtr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/MultiplexerTraits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/PointerVariant.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/channels/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/channels/detail/Utility.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Accumulate-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Accumulate.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/AsyncGenerator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/AsyncPipe.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/AsyncScope.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/AsyncStack.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/AutoCleanup-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/AutoCleanup.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Baton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/BlockingWait.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/BoundedQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Cleanup.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Collect-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Collect.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Concat-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Concat.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Coroutine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/CurrentExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/DetachOnCancel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Filter-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Filter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/FutureUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Generator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/GmockHelpers.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/GtestHelpers.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Invoke.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Merge-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Merge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Mutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Promise.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Result.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Retry.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/RustAdaptors.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/ScopeExit.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/SharedLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/SharedMutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/SharedPromise.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Sleep-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Sleep.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/SmallUnboundedQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Task.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/TimedWait.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Timeout-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Timeout.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Traits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Transform-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/Transform.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/UnboundedQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/ViaIfAsync.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/WithAsyncStack.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/WithCancellation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/Barrier.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/BarrierTask.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/CurrentAsyncFrame.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/Helpers.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/InlineTask.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/Malloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/ManualLifetime.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/coro/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/coro/detail/Traits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/crypto" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/crypto/Blake2xb.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/crypto" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/crypto/LtHash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionAbi.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionCounterLib.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionTracer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionTracerLib.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/SmartExceptionTracer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/SmartExceptionTracerSingleton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/exception_tracer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/StackTrace.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/flat_combining" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/flat_combining/FlatCombining.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/AsyncBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/AsyncIO.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/AsyncIoUringSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/AsyncIoUringSocketFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/Epoll.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/EpollBackend.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/EventBasePoller.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/FsUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/HugePages.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/IoUring.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/IoUringBackend.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/IoUringBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/IoUringEvent.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/IoUringEventBaseLocal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/IoUringProvidedBufferRing.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/Liburing.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/MuxIOThreadPoolExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/io/SimpleAsyncIO.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/CoreCachedObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/HazptrObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/Observable-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/Observable.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/Observer-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/Observer-pre.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/Observer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/ReadMostlyTLObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/SimpleObservable-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/SimpleObservable.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/WithJitter-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/WithJitter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/detail/Core.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/detail/GraphCycleDetector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/observer/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/observer/detail/ObserverManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/settings" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/settings/Immutables.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/settings" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/settings/Settings.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/settings" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/settings/Types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/settings/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/settings/detail/SettingsImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/Dwarf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/DwarfImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/DwarfLineNumberVM.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/DwarfSection.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/DwarfUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/Elf-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/Elf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/ElfCache.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/LineReader.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/SignalHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/StackTrace.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/SymbolizePrinter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/SymbolizedFrame.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/Symbolizer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/experimental/symbolizer/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/experimental/symbolizer/detail/Debug.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ext" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ext/test_ext.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/external/farmhash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/external/farmhash/farmhash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/external/fast-crc32" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/external/fast-crc32/avx512_crc32c_v8s3x4.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/external/fast-crc32" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/external/fast-crc32/sse_crc32c_v8s3x3.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/AddTasks-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/AddTasks.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/AtomicBatchDispatcher-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/AtomicBatchDispatcher.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/BatchDispatcher.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/BatchSemaphore.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Baton-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Baton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/BoostContextCompatibility.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/CallOnce.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/EventBaseLoopController-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/EventBaseLoopController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/ExecutorBasedLoopController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/ExecutorLoopController-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/ExecutorLoopController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Fiber-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Fiber.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/FiberManager-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/FiberManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/FiberManagerInternal-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/FiberManagerInternal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/FiberManagerMap-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/FiberManagerMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/ForEach-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/ForEach.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/GenericBaton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/GuardPageAllocator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/LoopController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Promise-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Promise.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/Semaphore.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/SemaphoreBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/SimpleLoopController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/TimedMutex-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/TimedMutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/WhenN-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/WhenN.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Async.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/AsyncStack.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Baton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Collect-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Collect.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/FiberManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Future.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Promise.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/Task.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/async/WaitUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/detail/AtomicBatchDispatcher.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/fibers" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/fibers/traits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/functional" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/functional/ApplyTuple.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/functional" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/functional/Invoke.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/functional" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/functional/Partial.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/functional" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/functional/protocol.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/functional" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/functional/traits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Barrier.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Cleanup.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Future-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Future-pre.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Future.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/FutureSplitter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/HeapTimekeeper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/ManualTimekeeper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Portability.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Promise-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Promise.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/Retrying.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/SharedPromise-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/SharedPromise.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/ThreadWheelTimekeeper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/WTCallback.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/detail/Core.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/futures/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/futures/detail/Types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Base-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Base.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Combine-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Combine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Core-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Core.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/File-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/File.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/IStream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Parallel-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/Parallel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/ParallelMap-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/ParallelMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/String-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/gen" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/gen/String.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/Checksum.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/FarmHash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/Hash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/MurmurHash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/SpookyHashV1.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/SpookyHashV2.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/hash/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/hash/detail/ChecksumDetail.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/init" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/init/Init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/init" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/init/Phase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/Cursor-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/Cursor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/GlobalShutdownSocketSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/IOBuf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/IOBufIovecBuilder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/IOBufQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/RecordIO-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/RecordIO.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/ShutdownSocketSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/SocketOptionMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/SocketOptionValue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/TypedIOBuf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncPipe.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncSSLSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncServerSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncSignalHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncSocketBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncSocketException.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncSocketTransport.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncTimeout.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncTransport.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncTransportCertificate.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncUDPServerSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AsyncUDPSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AtomicNotificationQueue-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/AtomicNotificationQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/CertificateIdentityVerifier.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/DecoratedAsyncTransportWrapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/DelayedDestruction.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/DelayedDestructionBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/DestructorCheck.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBaseAtomicNotificationQueue-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBaseAtomicNotificationQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBaseBackendBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBaseLocal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBaseManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventBaseThread.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/EventUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/HHWheelTimer-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/HHWheelTimer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/NotificationQueue.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/PasswordInFile.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/Request.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/SSLContext.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/SSLOptions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/ScopedEventBaseThread.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/TerminateCancellationToken.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/TimeoutManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/VirtualEventBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/WriteChainAsyncTransportWrapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/WriteFlags.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/fdsock" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/fdsock/AsyncFdSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/fdsock" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/fdsock/SocketFds.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/observer/AsyncSocketObserverContainer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/observer/AsyncSocketObserverInterface.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/ssl/BasicTransportCertificate.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/ssl/OpenSSLTransportCertificate.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/ssl/OpenSSLUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/ssl/SSLErrors.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/ssl/TLSDefinitions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/coro/ServerSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/coro/Transport.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/coro" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/coro/TransportCallbackBase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/DynamicConverter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/DynamicParser-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/DynamicParser.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/JSONSchema.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/JsonMockUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/JsonTestUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json/bser" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/bser/Bser.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/dynamic-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/dynamic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/json.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/json_patch.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/json" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/json/json_pointer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Access.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Align.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Aligned.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Assume.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Badge.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Bits.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Builtin.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/CArray.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/CString.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Cast.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/CheckedMath.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/CustomizationPoint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Exception.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Extern.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Hint-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Hint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Keep.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/New.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Ordering.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Pretty.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/PropagateConst.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/RValueReferenceWrapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/SafeAssert.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/StaticConst.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/Thunk.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/ToAscii.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/TypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/lang" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/lang/UncaughtExceptions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/AsyncFileWriter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/AsyncLogWriter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/AutoTimer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/BridgeFromGoogleLogging.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/CustomLogFormatter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/FileHandlerFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/FileWriterFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/GlogStyleFormatter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/ImmediateFileWriter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/Init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogCategory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogCategoryConfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogConfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogConfigParser.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogFormatter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogHandlerConfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogHandlerFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogLevel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogMessage.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogName.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogStream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogStreamProcessor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LogWriter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/Logger.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/LoggerDB.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/ObjectToString.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/RateLimiter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/StandardLogHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/StandardLogHandlerFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/StreamHandlerFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/logging" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/logging/xlog.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/Arena-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/Arena.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/JemallocHugePageAllocator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/JemallocNodumpAllocator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/MallctlHelper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/Malloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/MemoryResource.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/ReentrantAllocator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/SanitizeAddress.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/SanitizeLeak.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/ThreadCachedArena.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/UninitializedMemoryHacks.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/detail/MallocImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/not_null-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/memory" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/memory/not_null.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/NetOps.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/NetOpsDispatcher.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/NetworkSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/TcpInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/TcpInfoDispatcher.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/TcpInfoTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/net/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/net/detail/SocketFileDescriptorMap.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/CoreCachedObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/HazptrObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/Observable-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/Observable.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/Observer-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/Observer-pre.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/Observer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/ReadMostlyTLObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/SimpleObservable-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/SimpleObservable.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/WithJitter-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/observer" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/observer/WithJitter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/poly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/poly/Nullable.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/poly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/poly/Regular.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Asm.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Atomic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Builtins.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Constexpr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Dirent.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Event.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Fcntl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Filesystem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/FmtCompile.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/GFlags.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/GMock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/GTest.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/IOVec.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Libgen.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Libunwind.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Malloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Math.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Memory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/OpenSSL.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/PThread.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Sched.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Sockets.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SourceLocation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Stdio.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Stdlib.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/String.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysFile.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysMembarrier.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysMman.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysResource.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysStat.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysSyscall.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysTime.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/SysUio.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Syslog.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Time.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Unistd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/Windows.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/portability" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/portability/openat2.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/AsyncioExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/async_generator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/coro.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/error.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/executor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/futures.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/import.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/python" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/python/iobuf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/settings" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/settings/Immutables.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/settings" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/settings/Settings.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/settings" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/settings/Types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/settings/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/settings/detail/SettingsImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/OpenSSLCertUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/OpenSSLHash.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/OpenSSLKeyUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/OpenSSLPtrTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/OpenSSLTicketHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/OpenSSLVersionFinder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/PasswordCollector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/SSLSession.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/SSLSessionManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/ssl/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/ssl/detail/OpenSSLSession.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/BucketedTimeSeries-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/BucketedTimeSeries.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/DigestBuilder-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/DigestBuilder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/Histogram-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/Histogram.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/MultiLevelTimeSeries-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/MultiLevelTimeSeries.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/QuantileEstimator-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/QuantileEstimator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/QuantileHistogram-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/QuantileHistogram.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/StreamingStats.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/TDigest.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/TimeseriesHistogram-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/TimeseriesHistogram.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/detail/Bucket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/detail/BufferedStat-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/detail/BufferedStat.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/detail/DoubleRadixSort.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/detail/SlidingWindow-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/stats/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/stats/detail/SlidingWindow.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AsymmetricThreadFence.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AtomicNotification-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AtomicNotification.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AtomicRef.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AtomicStruct.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AtomicUtil-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/AtomicUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Baton.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/CallOnce.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/DelayedInit.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/DistributedMutex-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/DistributedMutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/EventCount.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/FlatCombining.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Hazptr-fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Hazptr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrDomain.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrHolder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrObj.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrObjLinked.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrRec.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrThrLocal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/HazptrThreadPoolExecutor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Latch.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/LifoSem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Lock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/MicroSpinLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/NativeSemaphore.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/ParkingLot.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/PicoSpinLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/RWSpinLock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Rcu.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/RelaxedAtomic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/SanitizeThread.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/SaturatingSemaphore.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/SmallLocks.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/ThrottledLifoSem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/Utility.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/WaitOptions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/AtomicUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/Hardware.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/HazptrUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/InlineFunctionRef.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/Sleeper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/Spin.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/ThreadCachedLists.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/ThreadCachedReaders.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/detail" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/detail/ThreadCachedTag.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/example" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/example/HazptrLockFreeLIFO.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/example" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/example/HazptrSWMRSet.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/example" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/example/HazptrWideCAS.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/AtFork.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/EnvUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/HardwareConcurrency.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/MemoryMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/Pid.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/Shell.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/ThreadId.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/system" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/system/ThreadName.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/testing" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/testing/TestUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/tracing" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/tracing/AsyncStack-inl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/tracing" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/tracing/AsyncStack.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/tracing" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/tracing/ScopedTraceSection.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/tracing" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/tracing/StaticTracepoint-ELF.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/tracing" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/tracing/StaticTracepoint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/test/F14TestUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/container/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/container/test/TrackingTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/AsyncSSLSocketTest.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/AsyncSocketTest.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/AsyncSocketTest2.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/BlockingSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/CallbackStateEnum.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/ConnCallback.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/MockAsyncSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/MockAsyncServerSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/MockAsyncSSLSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/MockAsyncTransport.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/MockAsyncUDPSocket.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/MockTimeoutManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/ScopedBoundPort.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/SocketPair.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/TFOUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/TestSSLServer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/TimeUtil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/UndelayedDestruction.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/io/async/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/io/async/test/Util.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/synchronization/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/synchronization/test/Semaphore.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/test/DeterministicSchedule.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly/test" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/test/TestUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly/folly-config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/folly-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/folly/folly-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/folly/folly-targets.cmake"
         "/home/nenuadrian/game-engine/libs/folly/CMakeFiles/Export/7a26ab1ce9f238124dd30b7d55d0ed6f/folly-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/folly/folly-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/folly/folly-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/CMakeFiles/Export/7a26ab1ce9f238124dd30b7d55d0ed6f/folly-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/folly" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/CMakeFiles/Export/7a26ab1ce9f238124dd30b7d55d0ed6f/folly-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nenuadrian/game-engine/libs/folly/libfolly.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/nenuadrian/game-engine/libs/folly/folly/cmake_install.cmake")

endif()

