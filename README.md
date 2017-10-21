# Elm Curriculum

<em>This work is licensed under the <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</em>

Portions of this repository have been imported and/or adapted from [Richard Feldman's Elm Workshop](https://github.com/rtfeldman/elm-workshop).

## Getting Started

### Installation

1. Install [Node.js](http://nodejs.org) 6.9.2 or higher

2. Add a plugin for your IDE: [Atom](https://atom.io/packages/language-elm)

3. Not required, but **highly** recommended: [install elm-format](https://github.com/avh4/elm-format#installation-) and integrate it into your editor so that it runs on save.

4. Run the following command to install everything else:

```bash
npm install -g elm elm-test elm-css elm-live@2.6.1
```

**Note to macOS users:** If step 4 gives you an `EACCESS` error, try [this fix](https://docs.npmjs.com/getting-started/fixing-npm-permissions):

```bash
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
```

Then re-run step 4.

### Clone this repository

Use Sourcetree or GitHub desktop to clone this repository, or run this in your terminal:

```bash
git clone https://github.com/mbuscemi/elm-curriculum
cd elm-workshop
```

**Note:** Tab characters are syntax errors in Elm code, so make sure Atom is set to use spaces for this class!

### Verify Setup

Run this to install packages:

```bash
elm-package install --yes
```

Once that succeeds, run this to verify everything:

```bash
elm-live Main.elm --open --pushstate --output=elm.js
```

A browser should open, and you should see this in it:

![](https://cloud.githubusercontent.com/assets/1094080/14227327/db89d3a0-f8af-11e5-8c37-c3e8afaa9d03.png)

If things aren't working, the instructor will be happy to help!
