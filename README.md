# BKHN-Thesis_template_typst

The *Typst* template for writting the (under)graduation thesis at Hanoi University of Science and Technology.

## Why use typst
Compared with Latex, typst has a more concise [grammar](https://typst.app/docs/reference/syntax/), and a more user-friendly [tutorial and documentation](https://typst.app/docs/tutorial/ ). In addition to its syntax for supporting user-defined styles, typst has a syntax that is highly similar to markdown, enabling non-template editors to better focus on document writing itself. Moreover, typst has a fast compilation speed, and with [vscode typst lsp](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) the function of monitoring and modifying automatic compilation, you can preview the compiled files in real time pdf file.

Another way you can edit and compile your files using *Typstudio* [at here](https://github.com/Cubxity/typstudio).

You can speed through typst from [here](https://typst.app/docs/tutorial)

## Usage Typst and this repository
### Install typst
[typst Github homepage](https://github.com/typst/typst) provides a detailed installation tutorial.


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

### An example thesis
Please check file `thesis.pdf`

### How you can compose your documents?

Modify the files in the `contents` directory

## License
This template is released under the Apache License. See the [LICENSE](./LICENSE) file for more details.

### If you want to learn how to create presentation slides, please refer to [my other repository](https://github.com/linhduongtuan/DTU-typst-presentation).
### If you want to learn how to create a scientific poster, please refer to [my other repository](https://github.com/linhduongtuan/VNUHCM-typst-poster).


#### References:
- (1) https://github.com/jujimeizuo/ZJGSU-typst-template
- (2) https://github.com/werifu/HUST-typst-template
- (3) https://github.com/QQKdeGit/bupt-typst
- (4) https://github.com/shuosc/SHU-Bachelor-Thesis-Typst
