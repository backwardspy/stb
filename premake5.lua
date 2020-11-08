target_triple = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "stb"
    kind "None"
    language "C"

    targetdir ("bin/"..target_triple.."/%{prj.name}")
    objdir ("bin/obj/"..target_triple.."/%{prj.name}")

    files {
        "stb_image.h",
    }

    includedirs "."

    filter "configurations:debug"
        defines "DEBUG"
        symbols "On"

    filter "configurations:release"
        defines "NDEBUG"
        optimize "On"
