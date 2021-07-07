<!-- SPDX-FileCopyrightText: no
     SPDX-License-Identifier: CC0-1.0
-->
# !!! Attention !!!
**This repository will be archive!**
--------- 
# Calamares: Distribution-Independent Installer Framework
---------

[![GitHub release](https://img.shields.io/github/release/calamares/calamares.svg)](https://github.com/calamares/calamares/releases)
[![GitHub Build Status](https://img.shields.io/github/workflow/status/calamares/calamares/ci?label=GH%20build)](https://github.com/calamares/calamares/actions?query=workflow%3Aci)
[![Travis Build Status](https://travis-ci.org/calamares/calamares.svg?branch=calamares)](https://travis-ci.org/calamares/calamares)
[![Coverity Scan Build Status](https://scan.coverity.com/projects/5389/badge.svg)](https://scan.coverity.com/projects/5389)
[![GitHub license](https://img.shields.io/github/license/calamares/calamares.svg)](https://github.com/calamares/calamares/blob/calamares/LICENSE)

[If you find a Bug, please report a Bug](https://github.com/SereneTeam/alterlinux-calamares/issues/new/choose)

***

### Dependencies

Main:
* Compiler with C++14 support: [GCC](https://www.archlinux.org/packages/core/x86_64/gcc/) >= 5 or [Clang](https://www.archlinux.org/packages/extra/x86_64/clang/) >= 3.5.1
* [CMake](https://www.archlinux.org/packages/extra/x86_64/cmake/) >= 3.3
* [Qt](https://www.archlinux.org/packages/extra/x86_64/qt5-base/) >= 5.9
* [yaml-cpp](https://www.archlinux.org/packages/community/x86_64/yaml-cpp/) >= 0.5.1
* [Python](https://www.archlinux.org/packages/extra/x86_64/python/) >= 3.3 (required for some modules)
* [Boost.Python](https://www.archlinux.org/packages/extra/x86_64/boost/) and [Boost-libs](https://www.archlinux.org/packages/extra/x86_64/boost-libs/) >= 1.55.0 (required for some modules)
* [KDE extra-cmake-modules](https://www.archlinux.org/packages/extra/any/extra-cmake-modules/) >= 5.18 (recommended; required for some modules;
  required for some tests)
* [KDE Frameworks KCoreAddons](https://www.archlinux.org/packages/extra/x86_64/kcoreaddons/) (>= 5.58 recommended)
* ~~PythonQt (optional, deprecated)~~ (Not available)

Modules:
* Individual modules may have their own requirements;
  these are listed in CMake output. Particular requirements (not complete):
* *fsresizer* [KPMCore](https://www.archlinux.org/packages/community/x86_64/kpmcore/) >= 3.3 (>= 4.1 recommended)
* *partition* [KPMCore](https://www.archlinux.org/packages/community/x86_64/kpmcore/) >= 3.3 (>= 4.1 recommended)
* *users* [LibPWQuality](https://www.archlinux.org/packages/extra/x86_64/libpwquality/) (optional)

### Building (Vanilla)

Clone Calamares from GitHub. The default branch is called *calamares*.

```
git clone https://github.com/calamares/calamares.git
```

Calamares is a KDE-Frameworks and Qt-based, C++17, CMake-built application.
The dependencies are explained in [CONTRIBUTING.md](CONTRIBUTING.md).

## Contributing to Calamares

Calamares welcomes PRs. New issues are welcome, too.
There are both the Calamares **core** repository (this one),
and an *extensions** repository ([Calamares extensions](https://github.com/calamares/calamares-extensions).

Contributions to code, modules, documentation, the wiki and the website are all welcome.
There is more information in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## Join the Conversation

GitHub Issues are **one** place for discussing Calamares if there are concrete
problems or a new feature to discuss.

Regular Calamares development chit-chat happens on old-school IRC
(no registration required). Responsiveness is best during the day
in Europe, but feel free to idle.

[![Visit our IRC channel](https://kiwiirc.com/buttons/webchat.freenode.net/calamares.png)](https://webchat.freenode.net/?channel=#calamares?nick=guest|)
