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

## ReactNative
[DecoIDE]https://www.decosoftware.com/
