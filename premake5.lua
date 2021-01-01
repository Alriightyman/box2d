project "box2d"
        kind "StaticLib"
        language "C++"

        targetdir ("bin/" .. outputDir .. "/%{prj.name}")
        objdir ("obj/" .. outputDir .. "/%{prj.name}")

        files
        {
                "include/**.h",
                "src/**.cpp",
                "src/**.h"
        }

        	includedirs
	        {
                "include",
                "src"
            }

        filter "system:windows"
                systemversion "latest"
                cppdialect "C++17"
                staticruntime "On"

        filter {"system:windows", "configurations:Release"}
                buildoptions "/MT"                
