<!-- SPDX-FileCopyrightText: no
     SPDX-License-Identifier: CC0-1.0
-->
# !!! Attention !!!
**This repository will be archive!**
--------- 
# Calamares: Distribution-Independent Installer Framework
---------

[![Current issue](https://img.shields.io/badge/issue-in_progress-FE9B48)](https://github.com/calamares/calamares/labels/hacking%3A%20in-progress)
[![GitHub release](https://img.shields.io/github/release/calamares/calamares.svg)](https://github.com/calamares/calamares/releases)
[![GitHub Build Status](https://img.shields.io/github/workflow/status/calamares/calamares/ci?label=GH%20build)](https://github.com/calamares/calamares/actions?query=workflow%3Aci)
[![GitHub license](https://img.shields.io/github/license/calamares/calamares.svg)](https://github.com/calamares/calamares/blob/calamares/LICENSE)

[If you find a Bug, please report a Bug](https://github.com/SereneTeam/alterlinux-calamares/issues/new/choose)

| [Report a Bug](https://github.com/calamares/calamares/issues/new) | [Translate](https://www.transifex.com/projects/p/calamares/) | [Contribute](CONTRIBUTING.md) | [Matrix: #calamares:kde.org](https://webchat.kde.org/#/room/%23calamares:kde.org) | [IRC: Libera.Chat #calamares](https://kiwiirc.com/client/irc.libera.chat/#calamares) | [Wiki](https://github.com/calamares/calamares/wiki) |
|:--:|:--:|:--:|:--:|:--:|:--:|

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

Calamares has some [generic user documentation](https://calamares.io/docs/users-guide/)
for end-users, but most of what we have is for distro developers.

## Getting Calamares

Clone Calamares from GitHub. The default branch is called *calamares*.

```
git clone https://github.com/calamares/calamares.git
```

Calamares is a KDE-Frameworks and Qt-based, C++17, CMake-built application.
The dependencies are explained in [CONTRIBUTING.md](CONTRIBUTING.md).

## Contributing to Calamares

Calamares welcomes PRs. New issues are welcome, too.
There are both the Calamares **core** repository (this one),
and an **extensions** repository ([Calamares extensions](https://github.com/calamares/calamares-extensions)).

Contributions to code, modules, documentation, the wiki and the website are all welcome.
There is more information in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## Join the Conversation

GitHub Issues are **one** place for discussing Calamares if there are concrete
problems or a new feature to discuss.

Regular Calamares development chit-chat happens in a [Matrix](https://matrix.org/)
room, `#calamares:kde.org`. The conversation is bridged with IRC
on [Libera.Chat](https://libera.chat/).
Responsiveness is best during the day
in Europe, but feel free to idle. If you use IRC, **DO NOT** ask-and-leave. Keep
that chat window open because it can easily take a few hours for
someone to notice a message.
Matrix is persistent, and we'll see your message eventually.

* [![Join us on Matrix](https://img.shields.io/badge/Matrix-%23calamares:kde.org-blue)](https://webchat.kde.org/#/room/%23calamares:kde.org)
* [![Chat on IRC](https://img.shields.io/badge/IRC-Libera.Chat%20%23calamares-green)](https://kiwiirc.com/client/irc.libera.chat/#calamares)
