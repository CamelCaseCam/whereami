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
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"