.class public Lgnu/kawa/xml/MakeText;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeText.java"


# static fields
.field public static final makeText:Lgnu/kawa/xml/MakeText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeText;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/MakeText;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeText;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    instance-of v5, v5, Lgnu/mapping/Values;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Lgnu/mapping/Values;

    invoke-virtual {v5}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    .line 40
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v5

    .line 31
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v5, v1

    invoke-static {v5}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v5

    move-object v3, v5

    .line 34
    .local v3, "out":Lgnu/lists/Consumer;
    move-object v5, v0

    move-object v6, v3

    :try_start_0
    invoke-static {v5, v6}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 39
    .line 40
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v5, v4

    throw v5
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeText;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/MakeText;->text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 45
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeText;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Values;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Values;

    invoke-virtual {v3}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .line 23
    .end local v0    # "this":Lgnu/kawa/xml/MakeText;
    :goto_0
    return-object v0

    .line 21
    .restart local v0    # "this":Lgnu/kawa/xml/MakeText;
    :cond_1
    new-instance v3, Lgnu/xml/NodeTree;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lgnu/xml/NodeTree;-><init>()V

    move-object v2, v3

    .line 22
    .local v2, "node":Lgnu/xml/NodeTree;
    move-object v3, v1

    new-instance v4, Lgnu/xml/XMLFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    invoke-static {v3, v4}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 23
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/xml/KText;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeText;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 52
    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 26

    .prologue
    .line 58
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/xml/MakeText;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p3

    .local v5, "target":Lgnu/expr/ConsumerTarget;
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    move-object/from16 v6, v19

    .line 59
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v7, v19

    .line 60
    .local v7, "args":[Lgnu/expr/Expression;
    move-object/from16 v19, v7

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v8, v19

    .line 61
    .local v8, "texp":Lgnu/expr/Expression;
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v19

    move-object/from16 v9, v19

    .line 62
    .local v9, "cvar":Lgnu/bytecode/Variable;
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 64
    move-object/from16 v19, v8

    check-cast v19, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    .line 65
    .local v10, "tval":Ljava/lang/Object;
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 67
    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/String;

    move-object/from16 v11, v19

    .line 68
    .local v11, "str":Ljava/lang/String;
    move-object/from16 v19, v11

    invoke-static/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 69
    .local v12, "segments":Ljava/lang/String;
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v13, v19

    .line 70
    .local v13, "numSegments":I
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    check-cast v19, Lgnu/bytecode/ClassType;

    move-object/from16 v14, v19

    .line 71
    .local v14, "ctype":Lgnu/bytecode/ClassType;
    move-object/from16 v19, v14

    const-string/jumbo v20, "write"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    sget-object v24, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v24, v22, v23

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v19

    move-object/from16 v15, v19

    .line 73
    .local v15, "writer":Lgnu/bytecode/Method;
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 74
    .local v16, "segStart":I
    const/16 v19, 0x0

    move/from16 v17, v19

    .local v17, "seg":I
    :goto_0
    move/from16 v19, v17

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 76
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    move/from16 v19, v16

    move-object/from16 v20, v12

    move/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    add-int v19, v19, v20

    move/from16 v18, v19

    .line 78
    .local v18, "segEnd":I
    move-object/from16 v19, v6

    move-object/from16 v20, v11

    move/from16 v21, v16

    move/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 79
    move-object/from16 v19, v6

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 80
    move/from16 v19, v18

    move/from16 v16, v19

    .line 74
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 82
    .line 89
    .end local v10    # "tval":Ljava/lang/Object;
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "segments":Ljava/lang/String;
    .end local v13    # "numSegments":I
    .end local v14    # "ctype":Lgnu/bytecode/ClassType;
    .end local v15    # "writer":Lgnu/bytecode/Method;
    .end local v16    # "segStart":I
    .end local v17    # "seg":I
    .end local v18    # "segEnd":I
    :cond_0
    :goto_1
    return-void

    .line 85
    :cond_1
    move-object/from16 v19, v8

    move-object/from16 v20, v4

    sget-object v21, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 86
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 87
    move-object/from16 v19, v6

    const-string/jumbo v20, "gnu.xml.TextUtils"

    invoke-static/range {v20 .. v20}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v20

    const-string/jumbo v21, "textValue"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 89
    goto :goto_1
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeText;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeText;
    return v0
.end method
