provisioners:
  textReplace:
    merge/Dockerfile:
      from: "FROM kinzal/pr:{{ .mod.previousVersion }}"
      to: "FROM kinzal/pr:{{ .mod.version }}"
    show/Dockerfile:
      from: "FROM kinzal/pr:{{ .mod.previousVersion }}"
      to: "FROM kinzal/pr:{{ .mod.version }}"
    README.md:
      from: "k-kinzal/pr-action@v{{ .mod.previousVersion }}"
      to: "k-kinzal/pr-action@v{{ .mod.version }}"

dependencies:
  mod:
    releasesFrom:
      dockerImageTags:
        source: kinzal/pr
      version: "> 0.0.0"
