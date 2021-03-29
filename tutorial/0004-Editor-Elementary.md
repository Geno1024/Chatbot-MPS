# <span style="color: rgb(248, 207, 139)">Editor</span> 入门

<span style="color: rgb(248, 207, 139)">Editor</span> 用来定义这个语言长啥样。

[TOC]

---

## <span style="color: rgb(248, 207, 139)">Editor</span> 有啥

如果我们直接在 <span style="color: rgb(248, 207, 139)">editor</span> 上右键试图加一个新东西的话，我们会发现 <span style="color: rgb(248, 207, 139)">Editor</span> 里面有很多东西可以加：
1. Cell Action Map
2. Cell Keymap
3. Cell Menu Component
4. Completion Styling
5. Context Hints
6. Concept Editor
7. Editor Component
8. Parameters Information Query
9. Style Key Pack
10. Stylesheet
11. Substitute Menu
12. Substitute Menu Contribution
13. Transformation menu
14. Transformation Menu Contribution
15. (deprecated) Substitute Menu (Default)
16. (deprecated) Substitute Menu (Named)
17. (deprecated) Transformation Menu (Default)
18. (deprecated) Transformation Menu (Named)

又是一大堆……这并不利于我们使用它们。

不如我们从其他的方式来看看。

## 使用最频繁的 <span style="color: rgb(248, 207, 139)">Editor</span>

我们回去刚刚的 <span style="color: rgb(172, 215, 155)">Structure</span>，其实稍微观察就能看到，在 `concept` 的名字那里有一个灰色的下划线，如果将鼠标悬浮在那里还会给出黄色灯泡提示：
```
Info: Editor for concept $Concept is not defined. Default editor will be used.
```
也就是说我们可以给一个 `Concept` 定义一个 `Editor`。但是在哪里定义呢？

我们按下 <kbd>Alt</kbd> + <kbd>Enter</kbd> 以查看有什么可以做的。很快啊，就能发现其中有一个 `Generate Default Editor (Expression-Like)`。以 `ChatbotProgram` 为例，它会生成这样的一个 Editor：
```mps-editor
<default> editor for concept ChatborProgram
    node cell layout:
        [- chatbot program { name } ( qqid : { qqid } , qqpassword : { qqpassword } , pool : % pool % ) -]
    inspected cell layout:
        <choose cell model>
```
并且注意到左边 Logical View 中 `editor` 这个 Aspect 多了一个 `ChatbotProgram_Editor`。从图标可知，它其实是 `Concept Editor`。

我们把生成的这个默认的 `ChatbotProgram_Editor` 删掉，尝试自己生成一个并且写出自己的样子。

此时注意到，在 `ChatbotProgram` 底部有一个条写着各种 Aspect 的名字，第二个就是 `Editor`。

选择 Editor，界面提示 Click to create new aspect，毫不犹豫地 click 并选择了 `Concept Editor`。然后我们看到了：
```mps-editor
<default> editor for concept ChatbotProgram
    node cell layout:
        <choose cell model>
    inspected cell layout:
        <choose cell model>
```
其中：
- `node cell layout` 是直接看到的这个 Concept 的长相。
- `inspected cell layout` 是要在 Inspector 中才能看到的东西。

Inspector 在 MPS 界面右下角，快捷键可能是 <kbd>Alt</kbd> + <kbd>2</kbd>（可能是我自己设定的，我忘记了）。这个东西后面也会非常常用：它可以用来让一些重要但不应该放在“主界面”上的参数、选项等有藏身之地。

现在我们来学习一下怎么写 <span style="color: rgb(248, 207, 139)">Editor</span>。

由于现在 `node cell layout` 是红的，我们直接在这里 <kbd>CS</kbd> 看一下有啥。  
……好长啊，不列出来了。慢慢说。

## Concept Editor 有什么部件

我们最经常用到的部件有：
1. `[>` (collection, collection (horizontal))，用于把部件水平排列
2. `[/` (collection (vertical))，用于把部件按行排列
3. `--->` (indent)，用于制造一个缩进
4. `"` (text constant)，用于硬编码固定文字
5. `{` (property)，该 Concept 的 property 的占位符
6. `%` (child node cell)，该 Concept 的 children 的占位符
7. `(>` (child node cell list (horizontal))，用于把 children 水平排列
8. `(/` (child node cell list (vertical))，用于把 children 按行排列
9. `if` (alternation)，当满足条件时使用 `true` 的，不满足时使用 `false` 的 （条件在 Inspector 中写）
10. `/empty cell:`，当 `children` 为空时使用的占位
11. `read only model access`，这个东西我认为是展示时最方便且灵活的，根据当前节点的形态做出任意 Java 操作输出 `string`
12. `model access`，将当前节点进行自定义变形后进行输出与输入
13. `swing component` ~~让你 Java GUI 自由~~
14. `image` ~~这合理吗~~

在了解了这些部件的作用之后，我们通过实际写程序来加深一下印象

## 实际编写一个 Concept Editor

首先我们先考虑一下我们要写出什么样子。

我思想比较传统，我的目标结果是这样的：
```
# Editor
Chatbot Program for <name>

QQ: <qq>

Reply Pool:
    If message contains <keyword> then reply <reply>
    If message contains <keyword> then reply <reply>
    
--------
# Inspector
QQ Password: <password>
```

那么我们就能写出对应的 Concept Editor:
```mps-editor
<default> editor for concept ChatbotProgram
    node cell layout:
        [/
          [> Chatbot Program for { name } <]
          empty
          [> QQ: { qqid } <]
          empty
          Reply Pool:
          [> ---> % pool % <]
        /]
    inspected cell layout:
        [> QQ password: { qqpassword } <]
```

通过这个过程，逐步练习一下 MPS 的使用：
- 添加一个格子，使用 <kbd>Enter</kbd>
- 让 `<constant>` 里面输入的 `[>` 变成真的 horizontal collection：使用 <kbd>CS</kbd>

接下来出现了问题，这个 `% pool %` 会怎么排版呢？没事不急，我们先 Rebuild 一下……

打开那个 sandbox 中我们创建的 ChatbotProgram，可以看到它现在已经好了一部分了：
```
Chatbot Program for <no name>                              
QQ: <no qqid>                                              
Reply Pool:                                                
    reply pool { 
        
        replies : 
            << ... >> 
    }
```

我们再接再厉，把 `ReplyPool` 和 `OnReceive` 的 Concept Editor 都写一下：
```mps-editor
<default> editor for concept ReplyPool
    node cell layout:
        (/ % replies %            /)
           /empty cell: <default>
    inspected cell layout:
        <choose cell model>
```
```mps-editor
<default> editor for concept OnReceive
    node cell layout:
        [> If message contains { keyword } then reply { reply } <]
    inspected cell layout:
        <choose cell model>
```

写好之后再 Rebuild Language，可以看到 `sandbox` 中的 ChatbotProgram 已经长成了我们想要的样子：
```
Chatbot Program for <no name>                             
QQ: <no qqid>                                             
Reply Pool:                                               
    If message contains <no keyword> then reply <no reply>
    If message contains <no keyword> then reply <no reply>
```

---

写到这里的时候发现这个东西距离我想要的那个有点距离了，我准备重新写一下。同时因为一些现实中的原因，我准备先暂时只集中精力写好这个 Chatbot。
