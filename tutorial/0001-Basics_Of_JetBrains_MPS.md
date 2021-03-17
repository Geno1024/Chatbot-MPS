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

1. <span style="color: rgb(172, 215, 155)">Structure</span> 描述语言的结构（其实就是 AST）。
2. <span style="color: rgb(248, 207, 139)">Editor</span> 描述语言的展示方式。
3. <span style="color: rgb(140, 211, 236)">Constraints</span> 描述语言中的一些约束。
4. <span style="color: rgb(184, 194, 200)">Behavior</span> 描述语言结构上的一些操作（把 AST Node 当作 class 时的 class method）。
5. <span style="color: rgb(213, 195, 251)">Typesystem</span> 描述语言的类型系统。
6. <span style="color: rgb(246, 180, 192)">Actions</span>
7. <span style="color: rgb(161, 224, 223)">Feedback</span>
8. <span style="color: rgb(194, 170, 243)">Refactorings</span>
9. <span style="color: rgb(154, 167, 176)">Scripts</span>
10. <span style="color: rgb(243, 188, 97)">Intentions</span>
11. <span style="color: rgb(184, 217, 172)">FindUsages</span>
12. <span style="color: rgb(120, 137, 150)">Plugin</span>
13. <span style="color: rgb(135, 206, 231)">DataFlow</span>
14. <span style="color: rgb(212, 108, 94)">Te</span><span style="color: rgb(87, 181, 94)">st</span>
15. <span style="color: rgb(167, 210, 150)">TextGen</span>
16. <span style="color: rgb(126, 202, 230)">Migra</span><span style="color: rgb(243, 195, 116)">tion</span>
17. <span style="color: rgb(116, 189, 29)">VCS</span>

现在由于时间的原因，我们先不深入展开这些东西。

## 项目结构

填入 Project name 和 Language name 之后，就可以创建一个项目了。不过个人习惯把 Runtime Solution 和 Sandbox Solution 也勾上。毕竟感觉可能后面会用到。  
这里，我填的是 Project name 是 `com.geno1024.chatbot`，Language name 是 `com.geno1024.chatbotlang`。

然后就会创建出这样的项目结构，使用 Logical View 看到的是这样的：

```
> com.geno1024.chatbot
  > com.geno1024.chatbotlang.runtime
    > com.geno1024.chatbotlang
      > runtime
  > com.geno1024.chatbotlang.sandbox
    > com.geno1024.chatbotlang
      > sandbox
  > com.geno1024.chatbotlang
    > structure
    > editor
    > constraints
    > behavior
    > typesystem
    > generator/com.geno1024.chatbotlang/main
      > com.geno1024.chatbotlang.generator
        > templates@generator
          > main
    > runtime
```

从这里开始，我们将用这个项目来**探索**并学习 MPS “程序”的“编写”和使用方式。 
