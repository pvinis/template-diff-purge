# template diff PURGE

This repository exposes an untouched template app generated with `template init RnDiffApp`. Each new template release causes a new project to be created, removing the old one, and getting a diff between them. This way, the diff is always clean, always in sync with the changes of the init template.

A dedicated branch per release makes changes very easy
to watch. For example:

* https://github.com/pvinis/template-diff-purge/compare/release/0.28.0..release/0.29.0

See table below for the complete list.


Please give credits to [pvinis](https://github.com/pvinis), :star: this repository if I helped you, and if you upgraded successfully because of `purge`, [buy me a pizza](https://www.buymeacoffee.com/DGWwHVZ4s) :pizza:

## Find the diff you need
https://pvinis.github.io/template-purge-web/

## Help us
Help us make [this](https://pvinis.github.io/template-diff-purge) full table pretty and more useful.

## Diff table (full table [HERE](https://pvinis.github.io/template-diff-purge/))


## To see the full table containing all releases click [HERE](https://pvinis.github.io/template-diff-purge/)

## Notes

### History of this repo

Once upon a time there was react-native. Lots of people used it and loved it. And there were often updates. As many as one per 2 weeks. People loved the new releases with all the new cool APIs and components and bugfixes. But how did they upgrade?

Many people tried to upgrade and automate the process, and many failed. One succeded.

Nicolas Cuillery ([github](https://github.com/ncuillery), [twitter](https://twitter.com/ncuillery)) made a great script and kept it in the [rn-diff](https://github.com/ncuillery/rn-diff) repo. It basically consisted of a `project` branch, which had a react-native project initialized and upgraded using `react-native-git-upgrade`, which he also created. That worked great until it didn't. Nicolas added a few people including me to help with the repo, and we did update it, adding new upgrade diffs. At some point, the upgrades didn't work anymore, the `react-native-git-upgrade` way got too hard to maintain and make work.

I saw that it was easier to just remove the old project and `react-native init` a new one, and then generate the diff. This way I could see the changes in the template as well, helping my projects follow along with the evolution of the RN project templates. That way, an upgrade was never a big undertaking. I forked [rn-diff](https://github.com/ncuillery/rn-diff) and created [rn-diff-purge](https://github.com/pvinis/rn-diff-purge). The script changed, to remove and recreate the project. This helped me and others by not having to wait for a diff to be generated, they could generate it themselves!

Lastly, the [rn-diff-purge](https://github.com/pvinis/rn-diff-purge) repo got transfered to the react-native-community organization, in the repo with the same name, [rn-diff-purge](https://github.com/react-native-community/rn-diff-purge). Since then I have made the new way to generate and keep track of releases, made a table that allows for releases to always be diff-able no matter the order.

Many thanks to you for using this repo, many thanks to Nicolas for starting this, and many thanks to the React Native Core team and React Native Contributors team for helping make this repo and RN project upgrading awesome.

## FAQ

### How did you do this?
I made a [script](https://github.com/react-native-community/rn-diff-purge/blob/master/new-release.sh). Then I ran a [helper script](https://github.com/react-native-community/rn-diff-purge/blob/master/new-release.sh) to make the rest of the versions.
Now I just ran the `new-release.sh` script manually when I get the email that there is a new release published on npm, and I am making a bot to do that for me.

### How can I contribute?

Unfortunately it's a bit weird. The `master` branch is the keeping-track one. Then there is the `base` branch that is the starting point of every other branch. Every template release gets its own branch. So having PRs that change master is great, but for adding a new release, a new branch has to be created, and that is only possible by the contributors of this repo.

Nevertheless, when a new release of template is released, we'll have to be prompt to provide
the new diff. Having more collaborators on this project will help. If you're interested, please open an issue to discuss.

### Down here!

If you have:
- questions
- suggestions
- ideas to make this even better
- the urge to just to say hello to me :)

feel free to make an issue or contact me. I'm pretty easy to find! `pvinis` on almost everything online.
