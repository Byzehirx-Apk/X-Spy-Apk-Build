.class public abstract Lgnu/kawa/xml/NodeConstructor;
.super Lgnu/mapping/MethodProc;
.source "NodeConstructor.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final popNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final popNodeContextMethod:Lgnu/bytecode/Method;

.field static final pushNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final pushNodeContextMethod:Lgnu/bytecode/Method;

.field static final typeKNode:Lgnu/bytecode/ClassType;

.field static final typeNodeConstructor:Lgnu/bytecode/ClassType;

.field static final typeXMLFilter:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v0, "gnu.xml.XMLFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    .line 166
    const-string/jumbo v0, "gnu.kawa.xml.KNode"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeKNode:Lgnu/bytecode/ClassType;

    .line 168
    const-string/jumbo v0, "gnu.kawa.xml.NodeConstructor"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    .line 170
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "pushNodeContext"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    .line 172
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "popNodeContext"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    .line 174
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "pushNodeConsumer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    .line 176
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "popNodeConsumer"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeConstructor;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 10

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "arg":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/ConsumerTarget;
    move-object v6, v0

    instance-of v6, v6, Lgnu/expr/ApplyExp;

    if-eqz v6, :cond_0

    .line 67
    move-object v6, v0

    check-cast v6, Lgnu/expr/ApplyExp;

    move-object v3, v6

    .line 68
    .local v3, "app":Lgnu/expr/ApplyExp;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 69
    .local v4, "func":Lgnu/expr/Expression;
    move-object v6, v4

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_0

    .line 71
    move-object v6, v4

    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 72
    .local v5, "proc":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Lgnu/kawa/xml/NodeConstructor;

    if-eqz v6, :cond_0

    .line 74
    move-object v6, v5

    check-cast v6, Lgnu/kawa/xml/NodeConstructor;

    move-object v7, v3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 75
    .line 80
    .end local v3    # "app":Lgnu/expr/ApplyExp;
    .end local v4    # "func":Lgnu/expr/Expression;
    .end local v5    # "proc":Ljava/lang/Object;
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 80
    goto :goto_0
.end method

.method public static compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    sget-object v5, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string/jumbo v6, "makeNode"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v3, v5

    .line 89
    .local v3, "makeMethod":Lgnu/bytecode/Method;
    sget-object v5, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string/jumbo v6, "finishNode"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v4, v5

    .line 90
    .local v4, "makeKNodeMethod":Lgnu/bytecode/Method;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    .line 92
    return-void
.end method

.method public static finishNode(Lgnu/xml/XMLFilter;)Lgnu/kawa/xml/KNode;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "filter":Lgnu/xml/XMLFilter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "filter":Lgnu/xml/XMLFilter;
    return-object v0
.end method

.method public static makeNode()Lgnu/xml/XMLFilter;
    .locals 5

    .prologue
    .line 96
    new-instance v0, Lgnu/xml/XMLFilter;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    new-instance v2, Lgnu/xml/NodeTree;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v1, v2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public static popNodeConsumer(Lgnu/lists/Consumer;Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "saved":Lgnu/lists/Consumer;
    move-object v1, p1

    .local v1, "current":Lgnu/lists/Consumer;
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 28
    move-object v2, v0

    move-object v3, v1

    instance-of v3, v3, Lgnu/xml/XMLFilter;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lgnu/xml/XMLFilter;

    iget-object v3, v3, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void

    .line 28
    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method public static popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "saved":Lgnu/lists/Consumer;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 53
    .local v2, "current":Lgnu/lists/Consumer;
    move-object v3, v0

    move-object v4, v2

    if-eq v3, v4, :cond_1

    .line 55
    move-object v3, v2

    instance-of v3, v3, Lgnu/xml/XMLFilter;

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v2

    check-cast v3, Lgnu/xml/XMLFilter;

    iget-object v3, v3, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v2, v3

    .line 57
    .end local v2    # "current":Lgnu/lists/Consumer;
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 58
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    :cond_1
    return-void
.end method

.method public static pushNodeConsumer(Lgnu/lists/Consumer;)Lgnu/xml/XMLFilter;
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "out":Lgnu/lists/Consumer;
    move-object v1, v0

    instance-of v1, v1, Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_0

    .line 20
    move-object v1, v0

    check-cast v1, Lgnu/xml/XMLFilter;

    move-object v0, v1

    .line 22
    .end local v0    # "out":Lgnu/lists/Consumer;
    :goto_0
    return-object v0

    .restart local v0    # "out":Lgnu/lists/Consumer;
    :cond_0
    new-instance v1, Lgnu/xml/XMLFilter;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Lgnu/xml/NodeTree;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v2, v3}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;
    .locals 8

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v1, v3

    .line 36
    .local v1, "out":Lgnu/lists/Consumer;
    move-object v3, v1

    instance-of v3, v3, Lgnu/xml/XMLFilter;

    if-eqz v3, :cond_0

    .line 37
    move-object v3, v1

    check-cast v3, Lgnu/xml/XMLFilter;

    move-object v0, v3

    .line 46
    .end local v0    # "ctx":Lgnu/mapping/CallContext;
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "ctx":Lgnu/mapping/CallContext;
    :cond_0
    new-instance v3, Lgnu/xml/XMLFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Lgnu/xml/NodeTree;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v4, v5}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    move-object v2, v3

    .line 45
    .local v2, "filter":Lgnu/xml/XMLFilter;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 46
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18

    .prologue
    .line 106
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeConstructor;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v13, v3

    instance-of v13, v13, Lgnu/expr/IgnoreTarget;

    if-eqz v13, :cond_0

    .line 107
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    invoke-static {v13, v14, v15}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 157
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v13, v3

    instance-of v13, v13, Lgnu/expr/ConsumerTarget;

    if-nez v13, :cond_1

    .line 109
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    invoke-static {v13, v14, v15}, Lgnu/kawa/xml/NodeConstructor;->compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 112
    :cond_1
    move-object v13, v3

    check-cast v13, Lgnu/expr/ConsumerTarget;

    move-object v4, v13

    .line 113
    .local v4, "ctarget":Lgnu/expr/ConsumerTarget;
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v13

    move-object v5, v13

    .line 114
    .local v5, "cvar":Lgnu/bytecode/Variable;
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v13

    move-object v6, v13

    .line 115
    .local v6, "ctype":Lgnu/bytecode/Type;
    move-object v13, v6

    sget-object v14, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 116
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    goto :goto_0

    .line 119
    :cond_2
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v13

    move-object v7, v13

    .line 120
    .local v7, "args":[Lgnu/expr/Expression;
    move-object v13, v7

    array-length v13, v13

    move v8, v13

    .line 121
    .local v8, "nargs":I
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    move-object v9, v13

    .line 122
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v13

    move-object v10, v13

    .line 123
    .local v10, "scope":Lgnu/bytecode/Scope;
    move-object v13, v10

    move-object v14, v9

    sget-object v15, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v13

    move-object v11, v13

    .line 125
    .local v11, "xvar":Lgnu/bytecode/Variable;
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 127
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 128
    move-object v13, v9

    sget-object v14, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 135
    :goto_1
    move-object v13, v9

    move-object v14, v11

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 136
    move-object v13, v9

    const/4 v14, 0x1

    sget-object v15, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 137
    new-instance v13, Lgnu/expr/ConsumerTarget;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v11

    invoke-direct {v14, v15}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    move-object v12, v13

    .line 138
    .local v12, "xtarget":Lgnu/expr/ConsumerTarget;
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v12

    invoke-virtual/range {v13 .. v16}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 139
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 140
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 141
    move-object v13, v9

    move-object v14, v5

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 142
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 144
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 145
    move-object v13, v9

    sget-object v14, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 152
    :goto_2
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 153
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 154
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v13

    goto/16 :goto_0

    .line 132
    .end local v12    # "xtarget":Lgnu/expr/ConsumerTarget;
    :cond_3
    move-object v13, v9

    move-object v14, v5

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 133
    move-object v13, v9

    sget-object v14, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 149
    .restart local v12    # "xtarget":Lgnu/expr/ConsumerTarget;
    :cond_4
    move-object v13, v9

    move-object v14, v11

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    move-object v13, v9

    sget-object v14, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2
.end method

.method public abstract compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeConstructor;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/NodeConstructor;
    return-object v0
.end method
