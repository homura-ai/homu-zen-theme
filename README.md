# zen-theme

Homura's Zen Browser theme, kept as code so any machine (pbox, omen, the next laptop) can get the same look and stay in sync.

## What's here

| Path | What it is |
|---|---|
| `mods.json` | Sine's mod list: every installed mod, its source, version and whether it's on. |
| `mods/<id>/` | A copy of each installed Sine mod, so a profile can be rebuilt even if an upstream repo disappears. |
| `tweaks/` | **Zen Theme Tweaks**, this repo's own Sine mod: opt-in fixes for clashes between the mods above. Every option is off by default. |
| `prefs/theme-prefs.js` | Theme and mod settings (Neo Zen, Arc, mod options, toolbar layout, Sine settings). Nothing personal: no history, accounts, workspaces or ids. |
| `profile/chrome/` | LEPTON's `userChrome.css` / `userContent.css` and assets. |
| `profile/user.js` | LEPTON's user.js (theme switches plus privacy defaults). |
| `zen-theme` | The tool (Python 3, no dependencies). |
| `docs/root-brief.md` | Shared brief for agents updating the other Zen repos. |

Homura's own mods live in their own repos (homura-ai/tab-state-highlighter, more-essentials, modify-url-bar-icons, sine-mod-search, Zen-Focus-Space). Neo Zen is installed from the homura-ai/Neo-Zen fork, which carries a settings fix that upstream lacks.

## Use

```bash
cd ~/code/zen/zen-theme
./zen-theme status                 # how the profile differs from the repo
./zen-theme capture                # profile -> repo (then commit)
./zen-theme update                 # check every mod against its upstream source
./zen-theme update --write [ids]   # pull newer upstream copies into mods/ (then commit); mods whose
                                   # layout changed are left for Sine: update them in Zen, then capture
./zen-theme apply --mods-only      # repo mods -> profile; with --wait, waits for Zen to close first
./zen-theme apply                  # everything -> profile, including CSS and prefs; Zen must be closed
./zen-theme apply --wait           # same, but waits for Zen to close first
./zen-theme install-tweaks         # install/refresh Zen Theme Tweaks (safe while Zen runs)
```

`apply` backs up what it replaces to `~/hold/zen-theme-backup-<time>/`. `--profile <dir>` picks another profile; the default is the one Zen starts with.

**New machine:** install Zen, install Sine (github.com/CosmoCreeper/Sine), start Zen once and close it, then clone this repo and run `./zen-theme apply`.

**Undo an update:** `git revert <commit>` then `./zen-theme apply --mods-only` (or `apply` with Zen closed).

## Zen Theme Tweaks options

Settings → Sine → Zen Theme Tweaks.

- **Disable startup background wipe** (`zen-theme.startup-wipe.disabled`, off by default). At startup Zen fades from a plain background to the workspace gradient. Neo Zen's Color Fixer forces a 2 s transition on that layer, so it plays as a red diagonal gradient with a purple column sweeping in from the left, and the UI appears about 2 s late. With this option on, Zen's own instant transition is restored only while Zen is still starting up (`zen-before-loaded`). Workspace switches afterwards keep Neo Zen's smooth transition, and the rest of the Color Fixer keeps working. Checked on 2026-11-16 by recording startups of a copy of the profile with the option off and on.
