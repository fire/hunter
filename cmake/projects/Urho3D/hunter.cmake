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
    "1.5-p0-83f254c"
    URL
    "https://github.com/hunter-packages/Urho3D/archive/83f254c31706dec0f19f2aa8112e5bdd40c8d437.zip"
    SHA1
    29cbd0d376fa13f5a3f8c380370a18741ac019d3
)

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.5-p1-5e7a3b1"
    URL
    "https://github.com/hunter-packages/Urho3D/archive/5e7a3b12655ad9af991f389fed4b6431339dcb1b.zip"
    SHA1
    dae4e9668cc23ee143304212cebf0ec00c451b48
)

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.5-p2"
    URL
    "https://github.com/hunter-packages/Urho3D/archive/e0adaf5c118d9a4660851c30d8490b6914e92f0b.zip"
    SHA1
    e298047650f3c37498a21f705cc5e65ae3d8398e
)

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.5-p3"
    URL
    "https://github.com/urho3d/Urho3D/archive/102a137a4d704d533d63fe06323bbafed4169f40.zip"
    SHA1
    c26f9748009c19a4d983021132f2a8f74fd7ecfd
)

hunter_cmake_args(Urho3D
  CMAKE_ARGS
  URHO3D_SAMPLES=OFF
  CMAKE_DEBUG_POSTFIX="d"
  CMAKE_RELEASE_POSTFIX=""
  CMAKE_RELWITHDEBINFO_POSTFIX=""
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
