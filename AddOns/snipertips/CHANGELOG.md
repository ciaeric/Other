# SniperTips Changes

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v2.0.0] - 2019-07-14
### Added
 - Add ace configuration
 - Add handling of spell and unit tooltips

### Changed
 - Change way item handlers are registered, instead of passing lots of params pass just self and item/spell/unit


## [v1.0.3] - 2019-06-24
### Changed
 - Ace3 dependency moved to optional.

## [v1.0.2] - 2019-06-23
### Changed
 - Update toc to match wow 1.13.2
 - Embed LibStub

## [v1.0.1] - 2019-06-02
### Fixed
 - [Issue 3](https://github.com/ps-wow/SniperTips/issues/3) - Bug: Clicking on an achievement throws an error message [retail/8.1.5]

## [v1.0.0] - 2019-05-28
### Added
 - Add ability for addons to register as item handlers, these methods will receive params from GetItemInfo()