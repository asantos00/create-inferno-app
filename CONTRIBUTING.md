# Contributing to Create Inferno App

Loving Create Inferno App and want to get involved? Thanks! There are plenty of ways you can help.

Please take a moment to review this document in order to make the contribution process easy and effective for everyone involved.

Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue or assessing patches and features.

## Core Ideas

As much as possible, we try to avoid adding configuration and flags. The purpose of this tool is to provide the best experience for people getting started with Inferno, and this will always be our first priority. This means that sometimes we [sacrifice additional functionality](https://gettingreal.37signals.com/ch05_Half_Not_Half_Assed.php) (such as server rendering) because it is too hard to solve it in a way that wouldn’t require any configuration.

We prefer **convention, heuristics, or interactivity** over configuration.  
Here’s a few examples of them in action.

### Convention

Instead of letting the user specify the entry filename, we always assume it to be `src/index.js`. Rather than letting the user specify the output bundle name, we generate it, but make sure to include the content hash in it. Whenever possible, we want to leverage convention to make good choices for the user, especially in cases where it’s easy to misconfigure something.

### Heuristics

Normally, `npm start` runs on port `3000`, and this is not explicitly configurable. However some environments like cloud IDEs want the programs to run on a specific port to serve their output. We want to play well with different environments, so Create Inferno App reads `PORT` environment variable and prefers it when it is specified. The trick is that we know cloud IDEs already specify it automatically so there is no need for the user to do anything. Create Inferno App relies on heuristics to do the right thing depending on environment.

Another example of this is how `npm test` normally launches the watcher, but if the `CI` environment variable is set, it will run tests once. We know that popular CI environments set this variable so the user doesn’t need to do anything. It just works.

### Interactivity

We prefer to add interactivity to the command line interface rather than add configuration flags. For example, `npm start` will attempt to run with port `3000` by default but it may be busy. Many other tools just fail in this case and ask that you pass a different port, but Create Inferno App will display a prompt asking if you’d like to run the app on the next available port.

Another example of interactivity is `npm test` watcher interface. Instead of asking people to pass command line flags for switching between test runner modes or search patterns, we print a hint with keys that you can press during the test session to instruct watcher what to do. Jest supports both flags and interactive CLI but Create Inferno App prefers long-running sessions to keep user immersed in the flow over short-running sessions with different flags.

### Breaking the Rules

No rules are perfect. Sometimes we may introduce flags or configuration if we believe the value is high enough to justify the mental cost. For example, we know that apps may be hosted paths different from the root, and we need to support this use case. However we still try to fall back to heuristics when possible. In this example, we ask that you specify `homepage` in `package.json`, and infer the correct path based on it. We also nudge the user to fill out the `homepage` after the build so the user becomes aware that the feature exists.

## Submitting a Pull Request

Good pull requests, such as patches, improvements, and new features, are a fantastic help. They should remain focused in scope and avoid containing unrelated commits.

Please **ask first** if somebody else is already working on this or the core developers think your feature is in-scope for Create Inferno App. Generally always have a related issue with discussions for whatever you are including.

Please also provide a **test plan**, i.e. specify how you verified that your addition works.

## Setting Up a Local Copy

1. Clone the repo with `git clone https://github.com/infernojs/create-inferno-app`

2. Run `npm install` in the root `create-inferno-app` folder.

Once it is done, you can modify any file locally and run `npm start`, `npm test` or `npm run build` just like in a generated project.

If you want to try out the end-to-end flow with the global CLI, you can do this too:

```
npm run create-inferno-app my-app
cd my-app
```

and then run `npm start` or `npm run build`.

## Cutting a Release

1. Tag all merged PRs that go into the release with the relevant milestone.
2. Close the milestone.
3. In most releases, only `inferno-scripts` needs to be released. If you don’t have any changes to the `packages/create-inferno-app` folder, you don’t need to bump its version or publish it (the publish script will publish only changed packages).
4. Note that files in `packages/create-inferno-app` should be modified with extreme caution. Since it’s a global CLI, any version of `create-inferno-app` (global CLI) including very old ones should work with the latest version of `inferno-scripts`. 
5. Make sure to include “Migrating from ...” instructions for the previous release. Often you can copy and paste them.
6. After merging the changelog update, create a GitHub Release with the same text. See previous Releases for inspiration.
7. **Do not run `npm publish`. Instead, run `npm run publish`.**
8. Wait for a long time, and it will get published. Don’t worry that it’s stuck. It will bundle dependencies into a single tarball before publishing for faster installs. In the end the publish script will prompt for versions before publishing the packages.

Make sure to test the released version! If you want to be extra careful, you can publish a prerelease by running `npm run publish -- --tag next` instead of `npm run publish`.

------------

*Many thanks to [h5bp](https://github.com/h5bp/html5-boilerplate/blob/master/CONTRIBUTING.md) for the inspiration with this contributing guide*
