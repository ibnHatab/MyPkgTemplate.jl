# MyPkgTemplate

Julia pkg workflow documented with CI

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://ibnHatab.github.io/MyPkgTemplate.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://ibnHatab.github.io/MyPkgTemplate.jl/dev/)
[![Build Status](https://github.com/ibnHatab/MyPkgTemplate.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ibnHatab/MyPkgTemplate.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/ibnHatab/MyPkgTemplate.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/ibnHatab/MyPkgTemplate.jl)

1. Generate pkg stub in current directory; git initialized

```
using PkgTemplates
t = Template(;
             user="ibnHatab",
             dir=".",
             julia=v"1.3.0",
             plugins = [
                 License(; name="MIT"),
                 Git(; ssh=true),
                 GitHubActions(), Documenter{GitHubActions}(),
                 Codecov()
             ])

generate("MyPkgTemplate.jl", t)

```

2. Create github repository with same name
   > git@github.com:ibnHatab/MyPkgTemplate.jl.git

2. Fix origin
```
git remote set-url origin git@github.com:ibnHatab/MyPkgTemplate.jl.git
git pull origin main --allow-unrelated-histories
```
