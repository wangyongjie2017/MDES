# MDES：让环境搭建更简单

## 介绍

`MDES` 将开发环境的搭建按照顺序归纳为以下五步：

- [准备阶段](#start)
- [脚本安装](#scripts)
- [软件安装](#applications)
- [基本配置](#config)
- [安装校验](#final)

## 准备阶段

准备阶段主要是用 [Prepare](Scripts/prepare.sh) 脚本安装一些基础的软件管理工具和配置设置。

## 脚本安装

脚本安装阶段能够帮助快速安装配置好一些常用的工具和编辑器，比如：Atom编辑器、Git配置、字体下载、各种编程语言安装、命令行工具等，按照安装顺序大致包含如下：

- [基础](Scripts/basic.sh)
- [语言](Scripts/language.sh)
- [开发](Scripts/develop.sh)
- [终端](Scripts/terminal.sh)

在工程的 `Scripts` 文件夹里，包含了一些 `shell` 脚本，是用命令行的方式来安装必要的开发工具，分为如下几种脚本：

- [安装顺序](Scripts/seq.sh)
- [基础](Scripts/basic.sh)
- [编程语言](Scripts/language.sh)
- [开发工具](Scripts/develop.sh)
- [Cask 安装程序](Scripts/cask.sh)
- [辅助工具](Scripts/tools.sh)


## 软件安装

在 [applications.md](Scripts/applications.md) 中列出了一些必装应用，供使用者选择。

## 基本配置

在 [config.md](/Scripts/config.md) 中指出了后续需要配置的步骤。

## 安装校验

最后，打开安装好的各类软件和配置，使用起来吧 0__0 ! 验证下用我的这种方式是不是省时又省力。

## 备注

- Close Terminal   关闭终端生效
- Close Mac        关闭电脑生效
- Need Config      需要单独配置
