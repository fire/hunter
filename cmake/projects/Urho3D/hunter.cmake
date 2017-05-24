# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

# List of versions here...

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.7-p0-07dfd7b"
    URL
    "https://github.com/urho3d/Urho3D/archive/07dfd7b7202bfe989e5155202f5917b919934f34.zip"
    SHA1
    4126ff41847e818af6cd2d82c574f0d64025e694
)

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.6-p0-e2bad7d"
    URL
    "https://github.com/urho3d/Urho3D/archive/1.6.zip"
    SHA1
    4198aeecdc81d6802fc53a15fee7e1ce6ef1c5a6
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

if(WIN32)
  hunter_configuration_types(Urho3D CONFIGURATION_TYPES Release Debug RelWithDebInfo)
else()
  hunter_configuration_types(Urho3D CONFIGURATION_TYPES Release Debug)
endif()

hunter_cacheable(Urho3D)

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME Urho3D)
