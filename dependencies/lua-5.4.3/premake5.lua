-- premake5.lua
project "LUA"
   kind "StaticLib"
   language "C"
   cdialect "C11"
   targetdir "bin/%{cfg.buildcfg}"

   files { "src/**.h", "src/**.c" }