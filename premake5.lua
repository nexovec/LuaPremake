-- premake5.lua
workspace "Test"
    configurations { "Debug", "Release" }
    platforms {"Win32"}
    staticruntime "off"
    startproject "LuaTestBed"

group "Dependencies"
   include "dependencies/lua-5.4.3"
group ""

project "LuaTestBed"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   targetdir "bin/%{cfg.buildcfg}"

   files { "src/**.hpp", "src/**.cpp" }
   includedirs {"dependencies/lua-5.4.3/src"}
   links { "LUA" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"