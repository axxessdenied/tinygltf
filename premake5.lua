sources = {
   "loader_example.cc",
   }

   -- A project defines one build target
   project "tinygltf"
      kind "ConsoleApp"
      language "C++"
      files { sources }
      flags { "C++11" }

      configuration "Debug"
         defines { "DEBUG" } -- -DDEBUG
         flags { "Symbols" }
         
      configuration "Release"
         -- defines { "NDEBUG" } -- -NDEBUG
         flags { "Symbols", "Optimize" }
