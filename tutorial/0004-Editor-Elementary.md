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
