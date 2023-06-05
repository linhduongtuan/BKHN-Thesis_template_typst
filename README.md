# BKHN-Thesis_template_typst

The *Typst* template for writting the (under)graduation thesis at Hanoi University of Science and Technology.

## Why should we use *typst*
Compared with Latex, typst has a more concise [grammar](https://typst.app/docs/reference/syntax/), and a more user-friendly [tutorial and documentation](https://typst.app/docs/tutorial/ ). In addition to its syntax for supporting user-defined styles, typst has a syntax that is highly similar to markdown, enabling non-template editors to better focus on document writing itself. Moreover, typst has a fast compilation speed, and with [vscode typst lsp](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) the function of monitoring and modifying automatic compilation, you can preview the compiled files in real time pdf file.

You can speed through typst from [here](https://typst.app/docs/tutorial)

## Usage Typst and this repository
### Install typst
[typst Github homepage](https://github.com/typst/typst) provides a detailed installation tutorial.

#### Online editing 

An online editor (similar to overleaf) is also provided, check out this template:
https://typst.app/project/pLKexPD4J5ADToO-HQEWz2

（ps：Typst may visualize ugly Vietnamese font types such as Arial, New Computer Modern San, and Time New Roman）

#### Use your local machine
``` shell
# macOS or Linux using Homebrew
brew install typst

# Arch Linux
pacman -S typst
```

### How to compile

``` shell
# for linux and macos
$ make

# for Windows
$ .\make.bat
```

### How to edit the contents

Modify the files in the `contents` directory

## License
This template is released under the Apache License. See the [LICENSE](./LICENSE) file for more details.
