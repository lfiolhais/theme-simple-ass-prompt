<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>

> simple_ass_prompt theme for [Oh My Fish][omf-link].

## Install


```fish
$ omf theme simple_ass_prompt
```

## Features
This is [Mathias Bynens][mths] Bash prompt ported to Fish with a few changed icons and added functionalities. As he put it:


> Shell prompt based on the Solarized Dark theme.
> Screenshot: http://i.imgur.com/EkEtphC.png

> Heavily inspired by @necolas’s prompt: https://github.com/necolas/dotfiles

> iTerm → Profiles → Text → use 13pt Monaco with 1.1 vertical spacing.

The changes made are the following:

- A dirty state of the branch is displayed by `!`
- Untracked files are displayed by `☡`
- The existence of a stash is displayed by `↩`
- A clean branch is displayed by `✓`
- The branch is ahead with `+`
- The branch is behind with `-`
- The branch has diverged from upstream `±`
- Support for Pythons virtual environments

Right side:
- The last command failed is displayed by '✘'

## Screenshot
Git Usage
<p align="center">
<img src="simple_ass_prompt.png">
</p>

VirtualFish Usage
<p align="center">
<img src="simple_ass_prompt_virtual.png">
</p>

# License

[MIT][mit] © [lfiolhais][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/lfiolhais
[contributors]:   https://github.com/lfiolhais/simple_ass_prompt/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[mths]: https://github.com/mathiasbynens/dotfiles
[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
