# Create Inferno App

Note: this is a port of the awesome [Create React App](https://github.com/facebookincubator/create-inferno-app) for [Inferno](https://github.com/trueadm/inferno).

Create Inferno apps with no build configuration.

* [Getting Started](#getting-started) – How to create a new app.
* [User Guide](https://github.com/infernojs/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md) – How to develop apps bootstrapped with Create Inferno App.

## tl;dr

```sh
npm install -g create-inferno-app

create-inferno-app my-app
cd my-app/
npm start

```

Then open [http://localhost:3000/](http://localhost:3000/) to see your app.<br>
When you’re ready to deploy to production, create a minified bundle with `npm run build`.

<img src='https://camo.githubusercontent.com/506a5a0a33aebed2bf0d24d3999af7f582b31808/687474703a2f2f692e696d6775722e636f6d2f616d794e66434e2e706e67' width='600' alt='npm start'>

## Getting Started

### Installation

Install it once globally:

```sh
npm install -g create-inferno-app
```

**You’ll need to have Node >= 4 on your machine**.

**We strongly recommend to use Node >= 6 and npm >= 3 for faster installation speed and better disk usage.** You can use [nvm](https://github.com/creationix/nvm#usage) to easily switch Node versions between different projects.

**This tool doesn’t assume a Node backend**. The Node installation is only required for the build tools that rely on it locally, such as Webpack and Babel.

### Creating an App

To create a new app, run:

```sh
create-inferno-app my-app
cd my-app
```

It will create a directory called `my-app` inside the current folder.<br>
Inside that directory, it will generate the initial project structure and install the transitive dependencies:

```
my-app/
  README.md
  node_modules/
  package.json
  .gitignore
  public/
    favicon.ico
    index.html
  src/
    App.css
    App.js
    App.test.js
    index.css
    index.js
    logo.svg
```

No configuration or complicated folder structures, just the files you need to build your app.<br>
Once the installation is done, you can run some commands inside the project folder:

### `npm start`

Runs the app in development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>
You will see the build errors and lint warnings in the console.

<img src='https://camo.githubusercontent.com/41678b3254cf583d3186c365528553c7ada53c6e/687474703a2f2f692e696d6775722e636f6d2f466e4c566677362e706e67' width='600' alt='Build errors'>

### `npm test`

Runs the test watcher in an interactive mode.  
By default, runs tests related to files changes since the last commit.

[Read more about testing.](https://github.com/infernojs/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#running-tests)

### `npm run build`

Builds the app for production to the `build` folder.<br>
It correctly bundles Inferno in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br>
Your app is ready to be deployed!

## User Guide

The [User Guide](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md) includes information on different topics, such as:

- [Updating to New Releases](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#updating-to-new-releases)
- [Folder Structure](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#folder-structure)
- [Available Scripts](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#available-scripts)
- [Displaying Lint Output in the Editor](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#displaying-lint-output-in-the-editor)
- [Installing a Dependency](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#installing-a-dependency)
- [Importing a Component](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#importing-a-component)
- [Adding a Stylesheet](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#adding-a-stylesheet)
- [Post-Processing CSS](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#post-processing-css)
- [Adding Images and Fonts](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#adding-images-and-fonts)
- [Using the `public` Folder](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#using-the-public-folder)
- [Adding Bootstrap](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#adding-bootstrap)
- [Adding Flow](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#adding-flow)
- [Adding Custom Environment Variables](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#adding-custom-environment-variables)
- [Can I Use Decorators?](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#can-i-use-decorators)
- [Integrating with a Node Backend](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#integrating-with-a-node-backend)
- [Proxying API Requests in Development](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#proxying-api-requests-in-development)
- [Using HTTPS in Development](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#using-https-in-development)
- [Generating Dynamic `<meta>` Tags on the Server](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#generating-dynamic-meta-tags-on-the-server)
- [Running Tests](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#running-tests)
- [Deployment](https://github.com/facebookincubator/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#deployment)

A copy of the user guide will be created as `README.md` in your project folder.

## How to Update to New Versions?

Please refer to the [User Guide](https://github.com/infernojs/create-inferno-app/blob/master/packages/inferno-scripts/template/README.md#updating-to-new-releases) for this and other information.

## Philosophy

* **One Dependency:** There is just one build dependency. It uses Webpack, Babel, ESLint, and other amazing projects, but provides a cohesive curated experience on top of them.

* **Zero Configuration:** There are no configuration files or command line options. Configuring both development and production builds is handled for you so you can focus on writing code.

* **No Lock-In:** You can “eject” to a custom setup at any time. Run a single command, and all the configuration and build dependencies will be moved directly into your project, so you can pick up right where you left off.

## Why Use This?

**If you’re getting started** with Inferno, use `create-inferno-app` to automate the build of your app. There is no configuration file, and `inferno-scripts` is the only extra build dependency in your `package.json`. Your environment will have everything you need to build a modern Inferno app:

* Inferno, JSX, and ES6 support.
* Language extras beyond ES6 like the object spread operator.
* A dev server that lints for common errors.
* Import CSS and image files directly from JavaScript.
* Autoprefixed CSS, so you don’t need `-webkit` or other prefixes.
* A `build` script to bundle JS, CSS, and images for production, with sourcemaps.

**The feature set is intentionally limited**. It doesn’t support advanced features such as server rendering or CSS modules. The tool is also **non-configurable** because it is hard to provide a cohesive experience and easy updates across a set of tools when the user can tweak anything.

**You don’t have to use this.** Historically it has been easy to gradually adopt Inferno. However many people create new single-page Inferno apps from scratch every day. We’ve heard loud and clear that this process can be error-prone and tedious, especially if this is your first JavaScript build stack. This project is an attempt to figure out a good way to start developing Inferno apps.

### Converting to a Custom Setup

**If you’re a power user** and you aren’t happy with the default configuration, you can “eject” from the tool and use it as a boilerplate generator.

Running `npm run eject` copies all the configuration files and the transitive dependencies (Webpack, Babel, ESLint, etc) right into your project so you have full control over them. Commands like `npm start` and `npm run build` will still work, but they will point to the copied scripts so you can tweak them. At this point, you’re on your own.

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Limitations

Some features are currently **not supported**:

* Server rendering.
* Some experimental syntax extensions (e.g. decorators).
* CSS Modules.
* LESS or Sass.
* Hot reloading of components.

Some of them might get added in the future if they are stable, are useful to majority of Inferno apps, don’t conflict with existing tools, and don’t introduce additional configuration.

## What’s Inside?

The tools used by Create Inferno App are subject to change.
Currently it is a thin layer on top of many amazing community projects, such as:

* [webpack](https://webpack.github.io/) with [webpack-dev-server](https://github.com/webpack/webpack-dev-server), [html-webpack-plugin](https://github.com/ampedandwired/html-webpack-plugin) and [style-loader](https://github.com/webpack/style-loader)
* [Babel](http://babeljs.io/) with ES6 and extensions used by Facebook (JSX, [object spread](https://github.com/sebmarkbage/ecmascript-rest-spread/commits/master), [class properties](https://github.com/jeffmo/es-class-public-fields))
* [Autoprefixer](https://github.com/postcss/autoprefixer)
* [ESLint](http://eslint.org/)
* [Jest](http://facebook.github.io/jest)
* and others.

All of them are transitive dependencies of the provided npm package.

## Contributing

We'd love to have your helping hand on `create-inferno-app`! See [CONTRIBUTING.md](CONTRIBUTING.md) for more information on what we're looking for and how to get started.

## Acknowledgements

We are grateful to the authors of existing related projects for their ideas and collaboration:

* [@eanplatter](https://github.com/eanplatter)
* [@insin](https://github.com/insin)
* [@mxstbr](https://github.com/mxstbr)
