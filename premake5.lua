project "implot"
    kind "StaticLib"
    language "C++"
    staticruntime(srunt)
    location "%{wks.location}/Vendor/implot"

    files {
        "%{prj.location}/*.cpp",
        "%{prj.location}/*.h"
    }

    includedirs { "%{prj.location}/", "%{prj.location}/../imgui" }
    targetdir ( "%{wks.location}/lib/" )
    objdir ( "%{wks.location}/obj/%{cfg.buildcfg}" )

    filter { "configurations:Debug" }
        runtime "Debug"
    filter { "configurations:Release" }
        runtime "Release"
