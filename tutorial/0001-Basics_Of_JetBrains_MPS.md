# JetBrains MPS 的基础概念

[TOC]

要不我们先创建一个项目说说？

---

哦对了，因为我比较懒，所以可能这里没图，虽然 JetBrains MPS 的很多操作和现象结果之类都必须使用截图。

---

<details>
<summary>我的环境：</summary>

```text
$ cat /etc/os-release 
NAME="Manjaro Linux"
ID=manjaro
ID_LIKE=arch
BUILD_ID=rolling
PRETTY_NAME="Manjaro Linux"
ANSI_COLOR="32;1;24;144;200"
HOME_URL="https://manjaro.org/"
DOCUMENTATION_URL="https://wiki.manjaro.org/"
SUPPORT_URL="https://manjaro.org/"
BUG_REPORT_URL="https://bugs.manjaro.org/"
LOGO=manjarolinux
```
```text
$ uname -a
Linux geno1024-pc 5.10.2-2-MANJARO #1 SMP PREEMPT Tue Dec 22 08:14:42 UTC 2020 x86_64 GNU/Linux
```
```text
$ lsb_release -a
LSB Version:	n/a
Distributor ID:	ManjaroLinux
Description:	Manjaro Linux
Release:	20.2.1
Codename:	Nibia
```
```text
JetBrains MPS 2020.3
Build #MPS-203.5981.1014, built on January 5, 2021
Runtime version: 11.0.9+11-b1145.21 amd64
VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o.
Linux 5.10.2-2-manjaro
GC: ParNew, ConcurrentMarkSweep
Memory: 2014M
Cores: 4
Registry: ide.mac.message.dialogs.as.sheets=false, idea.invalidate.caches.invalidates.vfs=true, ide.balloon.shadow.size=0, ide.new.project.model=false
Non-Bundled Plugins: TextGenGen, jetbrains.mps.baseLanguage.extensions, com.chrisrm.idea.MaterialThemeUI, zielu.gittoolbox, izhangzhihao.rainbow.brackets
Current Desktop: GNOME
```
<span style="color: lightgray">会不会暴露个人信息啊</span>
</details>

---

好的来创建项目吧。

创建项目的界面长这样：

```text
+-----------------------------------------------------------------------------+
|                                New Project                                  |
+-----------------------------------------------------------------------------+
|                  Project name:     ________________________________________ |
| ----- DSL -----  Project location: ___________________________________ ...  |
| Language project                                                            |
| --Development--  Description  --------------------------------------------- |
| Solution project   +------------------------------------------------------+ |
| ---- Other ----    |                                                      | |
| Empty project      +------------------------------------------------------+ |
|                                                                             |
|                  v More Settings                                            |
|                    Language name:                                           |
|                    ________________________________________________________ |
|                    Language file location:                                  |
|                    ___________________________________________________ ...  |
|                    [ ] Create Runtime Solution                              |
|                    [ ] Create Sandbox Solution                              |
|                     Project format: _.mps_(directory_based)____________ v _ |
|                                                                             |
|  ?                                                           OK     Cancel  |
+-----------------------------------------------------------------------------+
```

这里可以开始解释一些东西了。

## 真正的“基础概念”

一个 JetBrains MPS Project 可以包含若干 modules，module 有四种类型：

1. Language module 用于定义若干 aspects，这些 aspects 从不同角度描述了一个语言。
2. Generator module 用于定义一些将代码变换为另外一种语言的转换规则。
3. Solution module 用于记录代码。
4. DevKits module 用于将若干 Language modules 和 Solution modules 打包在一起，以方便依赖作他用。

Solution module 又有三种类型：

1. Sandbox solution 记录用户的程序。
2. Runtime solution 记录可复用代码，经常用于加载外部源码，例如 `.jar` 文件等。
3. Plugin solution 记录用于扩展 IDE 功能的代码，例如菜单、工具栏等。

<!-- 以上意译自 Tip of the Day，下面是亲身体验 -->

Aspects 又分为十几种类型：

1. 