# build_env_amp_gen

1) Install [`pixi`](https://github.com/prefix-dev/pixi)
```
curl -fsSL https://pixi.sh/install.sh | bash
```
NOTE: Will modify your `~/.bash_profile` file to add `pixi` to your path. `~/.bash_profile` is not sourced by default when connecting to a remote machine via VSCode. Add 
```
    "terminal.integrated.defaultProfile.linux": "bash (login)",
    "terminal.integrated.profiles.linux": {
        "bash (login)": {
            "path": "bash",
            "icon": "terminal-bash",
            "args": ["--login"]
          }
    }
```
to [VSCode's `settings.json`](https://stackoverflow.com/a/65909052) to fix this.

2) Build AmpGen with `source build_amp_gen.sh`

3) Run AmpGen with
```
pixi run build_AmpGen/bin/AmpGen <args>
```