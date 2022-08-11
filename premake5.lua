project "WhereAmI"
    kind "StaticLib"
    language "C"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. OutputDir .. "/%{prj.name}")

	files
	{
        "src/whereami.c",
        "src/whereami.h"
    }
    includedirs
    {
        "src"
    }

	filter "system:windows"
        systemversion "latest"
        staticruntime "Off"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
    
    filter "configurations:Release"
        runtime "Release"
        optimize "on"