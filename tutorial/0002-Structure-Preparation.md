# <span style="color: rgb(172, 215, 155)">Structure</span> 准备

[TOC]

## Structure 包含了什么

<span style="color: rgb(172, 215, 155)">Structure</span> 下有几种东西

1. Concept
2. Constrained Data Type
3. Enumeration
4. Interface Concept
5. Primitive Datatype
6. (Deprecated) Enum Data Type
7. j.m.lang.resources 里面的 URL Function
8. j.m.lang.resources 里面的 URL Literal
9. j.m.lang.resources 里面的 (deprecated) OldIconBundle

## 我转变思路了

当然我并不准备把所有东西都讲一遍。写到这里我更加倾向于慢慢提及功能。因此下一篇不会叫做“<span style="color: rgb(248, 207, 139)">Editor</span> 准备”了。

甚至这一篇也不想叫做 <span style="color: rgb(172, 215, 155)">Structure</span> 准备了。

我干脆就变成，我边写这个项目，一边把用到的东西都讲述一遍吧。

## 我又转变思路了，先思考一下我们想要啥

首先我们~~先划个水~~思考一下我们要做的“语言”的语法结构，然后**用 Concept 表达出来**。

这里说的“语法结构”我个人认为有两种思考方式：
1. 从每个最小的零件开始，逐步构造出大的片段、大的块，再将块组合成一个完整的程序的“自底向上”的方式;
2. 从完整程序开始分割成各个大块，然后再将每个块不断切碎到最小零件的“自顶向下”的方式。

这里，因为我去年已经做过一个，因此这一步近乎省略。去年的语法结构是：

```bnf
ChatbotProgram ::= BotLogin BanList ReplyList

BotLogin ::= QQId QQPassword

BanList ::= BanQQ*
BanQQ ::= QQId

ReplyList ::= Reply*
Reply ::= OnBoot | OnReceive
OnBoot ::= QQGroupId ReplyContent
OnReceive ::= KeywordType Keyword+ ReplyContent

KeywordType ::= ExactMatchType | ContainingType
ReplyContent ::= StaticReply | InputAwareReply

QQId ::= Number
QQGroupId ::= Number

QQPassword ::= String
Keyword ::= String
StaticReply ::= String
InputAwareReply ::= Function
```

今年的准备加一个中间层，让 `ReplyContent` 有一个 `ReplyPool` 然后可以在池子里面选，这样比如说多个关键词对应同一个回复的话就不用每一个都改了。于是这个语法结构就变成了：

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

当然，实际在写的时候可能突然想到就加上什么功能也是有可能的。比如说我为什么现在跑回来加这句话呢？