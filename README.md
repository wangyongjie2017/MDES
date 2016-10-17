# MDES - Mac Development Environment Setup

每当开发环境出现无法修复的场景时，大部分开发者都会对重做操作系统望而生畏，无非是因为很多开发配置参数和IDE配置需要重新安装和设置，浪费青春和生命，MDES 就是为了解决上述问题而诞生。

有了 `MDES` 以后开发环境的搭建只需要下面四步就可以。

- [Start](#start)
- [Scripts](#scripts)
- [Applications](#applications)
- [Config](#config)
- [Final](#final)

> 请按照上面的列表顺序依次安装、执行、配置。

## Start

1. [GreenVPN](https://www.green-jsq.org)，科学上网利器，不过收费。
2. [Xcode 8](https://developer.apple.com/xcode/)

在 macOS 系统上，安装其他开发工具之前先安装 `Xcode` 是一个良好的习惯，即便你不是一个 iOS/OSX 开发者，因为在安装了 Xcode 之后，像 git 以及一些 c/c++/clang 的编译工具也默认安装了，具体的安装方法有两种：一是通过 AppStore 进行安装，二是通过 [Apple Developer](developer.apple.com)下载 dmg 文件进行安装，除此之外其他安装方式都不能保证安全.

作为一个 iOS 开发者，当安装完 Xcode 之后，我觉得首先你要做的是新建一个工程并且在模拟器上运行一下，以保证开发环境都准确无误的安装好了（好吧，我承认我有强迫症），不过运行下模拟器可以帮助你开启 `macOS` 的开发者模式.

## Scripts

在工程的 `Scripts` 文件夹里，包含了一些 `shell` 脚本，是用命令行的方式来安装必要的开发工具，分为如下几种脚本：

- basic.sh      基础脚本
- language.sh   编程语言脚本
- develop.sh    开发工具
- cask.sh       Homebrew cask 安装程序
- tools.sh      一些辅助脚本

## Applications

在 `applications.md` 中罗列出了一些必装应用，供使用者选择。

### Gitignore

[gitignore.io](https://www.gitignore.io/) 是一个提供 gitignore 的第三方服务，同时提供了 `Command Line` 的形式来添加。

安装脚本:
```
echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
```

添加 `Xcode` 的 `gitignore`：

```
cd your_prject_root_dir
gi objective-c,swift,osx,appcode,xcode,carthage
```

### GitProxy

这里主要是讲解下 `Git` 与 `Shadowsocks` 配合来做代理：

- HTTP(S) 协议

全局代理：

```
git config --global http.proxy socks5://127.0.0.1:1080
git config --global http.proxy socks5://127.0.0.1:1080
```

只对特定 `URL` 设置代理：

```
git config --global http.<要设置代理的URL>.proxy socks5://127.0.0.1:1080
git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
```

- SSH 协议

全局代理：

修改 `/etc/ssh/ssh_config` 配置文件，添加如下脚本：

```
ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
```

只对特定 `URL` 设置代理：

修改 `~/.ssh/config` 配置文件，在需要设置代理的 `config` 项中，添加如下脚本配置：

```
ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
```

- [XamarinStudio](https://www.xamarin.com/download)

XamarinStudio 从 6.1 开始开源了 Xamrin.forms 的源代码，可以说是一个划时代的意义，从这个版本开始意味着微软的技术终于在这么多年之后被开发者搬到了所有平台，这个版本最让我期望的就是 Xamarin Previewer 的功能和 Skin Change，其实在2、3年前我也有这样的想法，可惜我自己没能力实现，不过这么吊的功能怎么安装呢，这里说总结下：

  + 默认情况下载的 XamarinInstaller 还是安装5 的版本，所以要在打开XamarinStudio之后，点击 `update channel `  切换到 `alpha` 下，然后 Xamarin Studio 就会自动帮你下载 6.1 版本，并下载相应平台的依赖库.

  + 下载完后，重新启动就可以在设置里修改 Xamarin Studio 的皮肤

  + 新建工程后，默认还是用的 xamarin.forms 库还是 5 的时候默认的，而且也不会自动升级，这个原因是由于在升级到 Xamarin Studio 6.1 之后, `nuget` 仓库的 `sources` 没有了，这时候你需要去设置里自己设置下，然后重新 `update solution package` 就会下载最新版本的 xamarin.forms，这个时候打开 `xaml` 文件就可以实时预览相应的界面了

  + 编译并运行 Android 工程
  + 编辑 code template
    - `propfull`

      ```
      private $type$ _$name$;
      public $type$ $name$ {
        get { return _$name$; }
        set { _$name$ = value; }
      }
      ```


## ReactNative

[DecoIDE]https://www.decosoftware.com/


## SQL

### DataBase

- [MySQL](https://www.mysql.com)
- [MongoDB](https://www.mongodb.com)

```
brew install mongodb
```

### Client
- [NavicatSQL](https://www.navicat.com)
- [MySQLWorkbench](http://dev.mysql.com/downloads/workbench/)
- [Robomongo](https://robomongo.org/download)

## TODO
- [x] make the MDES document
- [ ] add PHP Environment
- [ ] Directory list
- [ ] use `Homebrew` and `Homebrew-Cask` install the MDES
- [ ] collect from community
- [ ] save IDE config online
