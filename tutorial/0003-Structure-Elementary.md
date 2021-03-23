# <span style="color: rgb(172, 215, 155)">Structure</span> 入门

其实 <span style="color: rgb(172, 215, 155)">Structure</span> 就是抽象语法树的 MPS 表达。抽象语法树构建起了整个程序的结构，大概就是 <span style="color: rgb(172, 215, 155)">Structure</span> 名字的由来。

[TOC]

---

## <span style="color: rgb(172, 215, 155)">Structure</span> 的基础结构

我们要把上一节讲到的“语法结构”用 <span style="color: rgb(172, 215, 155)">Structure</span> 表达出来。

首先我们在 <span style="color: rgb(172, 215, 155)">Structure</span> 上右键， 在 New 里面能发现第一个选项就是 Concept。

一个 Concept，可以当作是面向对象编程中的一个“类” `class`，也可以理解为 AST “抽象语法树”中的节点 Node，具体到 MPS 的概念上，它代表了程序的一段结构。

在 MPS 中，一个 Concept 长这样：

```mps-structure
concept <no name> extends    BaseConcept
                  implements <none>

  instance can be root: false
  alias: <no alias>
  short description: <no short description>
  
  properties:
  << ... >>
  
  children:
  << ... >>
  
  references:
  << ... >>
```

其中的可填项分别有这些含义：
- `concept`: 这个 Concept 的名字。
- `extends` 和 `implements`: 跟 Java 的同名关键字类似。
- `instance can be root`: 用于指定该 Concept 是否可以是根节点。
    - 值只能是 `true` 或者 `false`，
- `alias`: 指定该 Concept 的别名。
    - 在自动补全中会用到。
- `short description`: 指定该 Concept 的短描述。
    - 在自动补全中用于用户友好提示。
- `properties`: 在该 Concept 里面挂上一些属性。相当于 Java 中的 `class` 里的 `field`。
    - 初期只有 `SideTransformSide`, `boolean`, `integer`, `string` 四种 “`field`” 类型可选，而且第一种这个教程可能还用不到。后面会有一些操作能增加这个类型。不过大多数时候可能也是没必要的。
- `children`: 该 Concept 的“子 Concept”。
    - 实际上代表的是，该 Concept 所对应的 AST 上的 Node，在该编程语言中可以有什么子 Node。
- `references`: 用途不小，但是我现在并不知道怎么使用。

我再把上一节提出的“语法结构”重温一下：

```bnf
ChatbotProgram ::= BotLogin BanList ReplyList ReplyPool # Modified

BotLogin ::= QQId QQPassword

BanList ::= BanQQ*
BanQQ ::= QQId

ReplyList ::= Reply*
Reply ::= OnBoot | OnReceive
OnBoot ::= QQGroupId ReplyContent
OnReceive ::= KeywordType Keyword+ ReplyContent

ReplyPool ::= ReplyEntry* # Added
ReplyEntry ::= ReplyEntryName (StaticReply|InputAwareReply) # Added

KeywordType ::= ExactMatchType | ContainingType
ReplyContent ::= ReplyEntryName # Modified

QQId ::= Number
QQGroupId ::= Number

QQPassword ::= String
Keyword ::= String
ReplyEntryName ::= String # Added
StaticReply ::= String
InputAwareReply ::= Function
```

照着这个语法结构，我准备采用自顶向下的方式先把这个结构_灵活_实现一下。

---

## 第一个 Concept

我们从根节点 `ChatbotProgram` 开始。

1. 在 `concept` 处填上根节点名字 `ChatbotProgram`。
2. 修改 `instance can be root` 为 `true`。
    1. 这里可以将光标放在 `false` 的 `f` 左边，然后按下 <kbd>Ctrl</kbd> + <kbd>Space</kbd>。
    2. 慢慢体验并学习 <kbd>CS</kbd> 键的用法。在接下来我们将严重依赖这个快捷键。

```mps-structure
concept ChatbotProgram extends    BaseConcept
                       implements <none>

  instance can be root: true
  alias: <no alias>
  short description: <no short description>
  
  properties:
  << ... >>
  
  children:
  << ... >>
  
  references:
  << ... >>
```

这样，一个什么都没有的最简单的 Concept 就写好了。其实，一个什么都不能做的编程语言也写好了。

## 构建一下这个语言

在左边 `con.geno1024.chatbotlang` 的地方右键 `Rebuild Language` 一下，将重新构建这个语言。

首先 Model Checker 将按照既定规则检查这个语言有什么规则上的错误，然后会使用给定的规则来构建这个语言。<span style="color: darkgray">其实是编译为 Java</span>

构建无错误之后，我们就可以在 `com.geno1024.chatbotlang.sandbox/com.geno1024.chatbotlang/sandbox` 上，右键创建一个 `ChatbotProgram` 了。

然而，如我们所见，现在创建出来的东西只有空荡荡的

```
chatbot program
```

，没有任何可供我们操作的地方。我们接下来将逐步完善这个 `ChatbotProgram`。

## 给语言添砖加瓦

接下来我们要以一种迷之方式来介绍一下如何给这个东西添砖加瓦。在这个过程中你可能会对某些过程和动作的原因表示摸不着头脑。放心，这是正常的，我在写这一个东西的时候也是摸不着头脑的。

1. `ChatbotProgram` 要有个名字。
    > 隐藏知识：有一个 `Concept` 叫做 `INamedConcept` 可以直接拿来用，这样我们就不需要造 `Name` 的轮子。
    
    1. 在 `implements` 处按下 <kbd>CS</kbd> 键，会出来一大堆补全 `Interface` 的提示。我们选择 `INamedConcept`，这样就好了。
    2. 然后重新构建一下这个语言，可以发现在 `sandbox` 中新建出来的 `ChatbotProgram` 变成了可以填写名字的
    
    ```
    chatbot program <no name>
    ```
    3. 而且给 `<no name>` 填空的话左边的 Logical View 里的这个 Node 的名字也会变。真的是很奇妙。
2. `ChatbotProgram` 能记录一个 QQ 账号密码。
    1. 在 `properties` 处按下 <kbd>CS</kbd> 键，会出来四种类型。我们添加两个 `string` 类型的 property，一个叫做 `qqid`，一个叫做 `qqpassword` 好了。
3. `ChatbotProgram` 要有一个 `ReplyPool`，然后有一些 `OnReceive` 的“回调函数”判定当遇到什么东西时返回什么。
    1. 创建新的 `Concept` 叫做 `ReplyPool`，再创建一个叫做 `Reply`。
    2. 在 `Reply` 的 `concept` 前面按下 `a` 然后 <kbd>CS</kbd>，让其变为一个 `abstract` 的 `Concept`。
    3. 然后在 `ReplyPool` 上添加一个类型为 `Reply[0..n]` 的 `children`，比如说叫做 `replies` 之类。
    4. 接着让 `ChatbotProgram` 添加一个类型为 `ReplyPool[1]` 的 `children`。
    5. 然后创建一个 `Concept` 叫做 `OnReceive`，修改其 `extends` 为 `Reply`，并挂上两个 `string` 的 `properties` 分别叫做 `keyword` 和 `reply`。
    
    最终你会得到大概这样的一棵树：
    ```
    > strcture
      > ChatbotProgram
      > OnReceive
      > Reply
      > ReplyPool
    ```
    其中
    ```mps-structure
    concept ChatbotProgram extends    BaseConcept                                                                                                                                                  
                           implements INamedConcept                                                                                                                                             
                                                                                                                                                                                            
        instance can be root: true 
        alias: <no alias>
        short description: <no short description>
        
        properties:
        qqid       : string
        qqpassword : string
        
        children:
        pool : ReplyPool[1]
        
        references:
        << ... >>
    ```
    ```mps-structure
    concept OnReceive extends    Reply                                                                                                                                                  
                      implements <none>                                                                                                                                             
                                                                                                                                                                      
        instance can be root: false 
        alias: <no alias>
        short description: <no short description>
        
        properties:
        keyword : string
        reply   : string
        
        children:
        << ... >>
        
        references:
        << ... >>
    ```
    ```mps-structure
    abstract concept Reply extends    BaseConcept                                                                                                                                                 
                           implements <none>                                                                                                                                             
                                                                                                                                                                      
        instance can be root: false 
        alias: <no alias>
        short description: <no short description>
        
        properties:
        << ... >>
        
        children:
        << ... >>
        
        references:
        << ... >>
    ```
    ```mps-structure
    concept ReplyPool extends    BaseConcept                                                                                                                                                  
                      implements <none>                                                                                                                                             
                                                                                                                                                                      
        instance can be root: false 
        alias: <no alias>
        short description: <no short description>
        
        properties:
        << ... >>
        
        children:
        replies : Reply[0..n]
        
        references:
        << ... >>
    ```
然后构建一下……再在 `sandbox` 中创建一个 `ChatbotProgram`，我们就能得到一个
```
chatbot program <no name> {
    qqid : <no qqid>
    qqpassword : <no qqpassword>
    
    pool :
        reply pool {
        
            replies :
                << ... >>
        }
}
```

看起来似乎有点像模像样了，好耶。
我们还可以在 `replies` 那里 <kbd>CS</kbd> 然后发现它会提示一个 `OnReceive`，直接回车就能出来一个
```
on receive {
    keyword : <no keyword>
    reply : <no reply>
    
}
```
挺好的，好像可以拿来只填空了。
接下来我们要让这个东西看起来好看点。
