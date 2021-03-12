project "libtess2"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "4ACDC4CB-E442-4A35-8392-35FD48B3F5D1"

includedirs {
  "Include"
}

files {
  "Include/tesselator.h",
  "Source/bucketalloc.c",
  "Source/dict.c",
  "Source/geom.c",
  "Source/mesh.c",
  "Source/priorityq.c",
  "Source/sweep.c",
  "Source/tess.c",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
end
