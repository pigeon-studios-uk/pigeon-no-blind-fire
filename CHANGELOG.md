# Changelog

All notable changes to Pigeon No Blind Fire are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-03

First release.

### Highlights

- Players in cover must aim out before they can shoot
- Taking cover, peeking and aiming work as normal
- A short message tells players why
- ox_lib notifications if you have it

### Added

- Attack, second attack and melee attack controls blocked while a player is in cover and not aiming, checked every frame while in cover.
- A message telling the player to aim first, at most once every `Config.MessageCooldown` seconds, through ox_lib if it's running or GTA's notification feed.
- Configurable blocked controls, message and notification style.
- English text in `locales/`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-no-blind-fire/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-no-blind-fire/releases/tag/v1.0.0
