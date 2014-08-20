# KendoUI-Lint.vim

# Note
Kendo UI Labs projects are experimental and largely built and supported by the community.  As such Telerik does not provide official support for any of the Kendo UI Labs projects via Telerik support agreements.  We do encourage you to open an issue or visit [Stack Overflow](http://www.stackoverflow.com).

A vim plugin to integrate the [Kendo UI Lint](https://github.com/kendo-labs/kendo-lint) 
project with [the vim editor](http://vim.org).

## Install The Linter And Plugin

There are a few things you need to do to get this working:

1. Install NodeJS
2. Install [Kendo UI Lint](https://github.com/kendo-labs/kendo-lint)
3. Install the vim plugin

### 1. Install NodeJS

Head over to [NodeJS.org](http://nodejs.org) and grab the latest 
version. Follow the download and installation instructions for your 
operating system.

### 2. Install Kendo UI Lint

Open a command prompt or terminal window and run

`npm install -g kendo-lint`

This will install the Kendo UI Lint project globally, so that it can
be run from anywhere on your box.

### 3. Install The Vim Plugin

I reocommend using [Pathogen](https://github.com/tpope/vim-pathogen)
to install plugins for vim. This makes it easy to install:

`$ git clone https://github.com/kendo-labs/kendoui-lint.vim ~/.vim/bundle/kendoui-lint.vim/`

## Run The KendoUI-Lint Plugin

To run the Kendo UI Linter from any JavaScript or HTML file, execute
this command in vim:

`:KUILint`

I also recommend mapping the `KUILint` command, as well. For example:

`nnoremap <silent> <localleader>l :execute 'KUILint'<CR>`

## How to Contribute

If you would like to contribute to the source code, 
please read the 
[guidelines for pull requests and contributions](https://github.com/kendo-labs/kendo-lint/blob/master/CONTRIBUTING.md)
for [the KendoUI-Lint project](https://github.com/kendo-labs/kendo-lint). 
Following these guidelines will help make your contributions easier 
to bring in to the next release.

## Getting Help

The best way to get help is either by open [issues](issues) on the project
here at github, or by asking questions on
[StackOverflow](http://stackoverflow.com). Be sure to tag your SO
questions with [kendo-ui](http://stackoverflow.com/questions/tagged/kendo-ui).

As a part of Kendo UI Labs, KendoUI-Lint.vim is intended to be a 
community-run project, and not an official part of any 
Kendo UI SKU (Web, DataViz, Mobile or Complete). As such, this 
project is not a supported part of Kendo UI, and is not covered 
under the support agreements for Kendo UI license holders. Please 
do not create Kendo UI support requests for this project, as these 
will be immediately closed and you'll be directed to post your 
question on a community forum.

## Release Notes

For change logs and release notes, see the [changelog](changelog.md) file.

## License Information

This project has been released under the 
[Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html), 
the text of which is included in the [LICENSE.md](LICENSE.md) file. 
This license applies ONLY to the project-specific source of each 
repository and does not extend to Kendo UI itself, or any other 3rd 
party libraries used in a repository. For licensing information about 
Kendo UI, see the 
[License Agreements page](https://www.kendoui.com/purchase/license-agreement.aspx) 
at [KendoUI.com](http://www.kendoui.com).
