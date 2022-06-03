.class public Lgnu/xquery/util/RelativeStep;
.super Lgnu/mapping/MethodProc;
.source "RelativeStep.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final relativeStep:Lgnu/xquery/util/RelativeStep;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lgnu/xquery/util/RelativeStep;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xquery/util/RelativeStep;-><init>()V

    sput-object v0, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStep;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    .line 25
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.xquery.util.CompileMisc:validateApplyRelativeStep"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/util/RelativeStep;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    :goto_0
    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/ApplyExp;

    if-nez v4, :cond_0

    .line 185
    const/4 v4, 0x0

    move-object v0, v4

    .line 200
    .end local v0    # "exp":Lgnu/expr/Expression;
    .local v1, "aexp":Lgnu/expr/ApplyExp;
    .local v2, "func":Lgnu/expr/Expression;
    :goto_1
    return-object v0

    .line 186
    .end local v1    # "aexp":Lgnu/expr/ApplyExp;
    .end local v2    # "func":Lgnu/expr/Expression;
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_0
    move-object v4, v0

    check-cast v4, Lgnu/expr/ApplyExp;

    move-object v1, v4

    .line 187
    .restart local v1    # "aexp":Lgnu/expr/ApplyExp;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    move-object v2, v4

    .line 188
    .restart local v2    # "func":Lgnu/expr/Expression;
    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_2

    .line 190
    move-object v4, v2

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 191
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Lgnu/kawa/xml/TreeScanner;

    if-eqz v4, :cond_1

    .line 192
    move-object v4, v3

    check-cast v4, Lgnu/kawa/xml/TreeScanner;

    move-object v0, v4

    goto :goto_1

    .line 194
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Lgnu/xquery/util/ValuesFilter;

    if-eqz v4, :cond_2

    .line 196
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v0, v4

    .line 197
    goto :goto_0

    .line 200
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStep;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v13

    move-object v2, v13

    .line 34
    .local v2, "arg":Ljava/lang/Object;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    .line 35
    .local v3, "next":Ljava/lang/Object;
    move-object v13, v3

    check-cast v13, Lgnu/mapping/Procedure;

    move-object v4, v13

    .line 36
    .local v4, "proc":Lgnu/mapping/Procedure;
    move-object v13, v1

    iget-object v13, v13, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v5, v13

    .line 39
    .local v5, "out":Lgnu/lists/Consumer;
    move-object v13, v2

    instance-of v13, v13, Lgnu/kawa/xml/Nodes;

    if-eqz v13, :cond_0

    .line 40
    move-object v13, v2

    check-cast v13, Lgnu/kawa/xml/Nodes;

    move-object v7, v13

    .line 46
    .local v7, "values":Lgnu/kawa/xml/Nodes;
    :goto_0
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/kawa/xml/Nodes;->size()I

    move-result v13

    move v8, v13

    .line 47
    .local v8, "count":I
    const/4 v13, 0x0

    move v9, v13

    .line 48
    .local v9, "it":I
    move v13, v8

    invoke-static {v13}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v13

    move-object v6, v13

    .line 49
    .local v6, "countObj":Lgnu/math/IntNum;
    new-instance v13, Lgnu/xquery/util/RelativeStepFilter;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v5

    invoke-direct {v14, v15}, Lgnu/xquery/util/RelativeStepFilter;-><init>(Lgnu/lists/Consumer;)V

    move-object v10, v13

    .line 50
    .local v10, "filter":Lgnu/xquery/util/RelativeStepFilter;
    const/4 v13, 0x1

    move v11, v13

    .local v11, "pos":I
    :goto_1
    move v13, v11

    move v14, v8

    if-gt v13, v14, :cond_1

    .line 52
    move-object v13, v7

    move v14, v9

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/Nodes;->nextPos(I)I

    move-result v13

    move v9, v13

    .line 53
    move-object v13, v7

    move v14, v9

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/Nodes;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    .line 54
    .local v12, "dot":Ljava/lang/Object;
    move-object v13, v4

    move-object v14, v12

    move v15, v11

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    invoke-virtual/range {v13 .. v17}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 55
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v10

    invoke-static {v13, v14}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 50
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 43
    .end local v6    # "countObj":Lgnu/math/IntNum;
    .end local v7    # "values":Lgnu/kawa/xml/Nodes;
    .end local v8    # "count":I
    .end local v9    # "it":I
    .end local v10    # "filter":Lgnu/xquery/util/RelativeStepFilter;
    .end local v11    # "pos":I
    .end local v12    # "dot":Ljava/lang/Object;
    :cond_0
    new-instance v13, Lgnu/kawa/xml/Nodes;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Lgnu/kawa/xml/Nodes;-><init>()V

    move-object v7, v13

    .line 44
    .restart local v7    # "values":Lgnu/kawa/xml/Nodes;
    move-object v13, v2

    move-object v14, v7

    invoke-static {v13, v14}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 57
    .restart local v6    # "countObj":Lgnu/math/IntNum;
    .restart local v8    # "count":I
    .restart local v9    # "it":I
    .restart local v10    # "filter":Lgnu/xquery/util/RelativeStepFilter;
    .restart local v11    # "pos":I
    :cond_1
    move-object v13, v10

    invoke-virtual {v13}, Lgnu/xquery/util/RelativeStepFilter;->finish()V

    .line 58
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 28

    .prologue
    .line 62
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/util/RelativeStep;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p3

    .local v5, "target":Lgnu/expr/Target;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v6, v21

    .line 63
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v6

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v7, v21

    .line 64
    .local v7, "exp1":Lgnu/expr/Expression;
    move-object/from16 v21, v6

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v8, v21

    .line 65
    .local v8, "exp2":Lgnu/expr/Expression;
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 67
    move-object/from16 v21, v7

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    move-object/from16 v21, v8

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    .line 171
    :goto_0
    return-void

    .line 72
    :cond_0
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v9, v21

    .line 73
    .local v9, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v21, v9

    if-nez v21, :cond_1

    .line 74
    sget-object v21, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v9, v21

    .line 75
    :cond_1
    move-object/from16 v21, v9

    invoke-static/range {v21 .. v21}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v10, v21

    .line 76
    .local v10, "rtypePrime":Lgnu/bytecode/Type;
    sget-object v21, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v21

    move/from16 v11, v21

    .line 79
    .local v11, "nodeCompare":I
    move/from16 v21, v11

    if-ltz v21, :cond_5

    .line 80
    const/16 v21, 0x4e

    move/from16 v12, v21

    .line 85
    .local v12, "expectedKind":C
    :goto_1
    move-object/from16 v21, v8

    invoke-static/range {v21 .. v21}, Lgnu/xquery/util/RelativeStep;->extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;

    move-result-object v21

    move-object/from16 v13, v21

    .line 86
    .local v13, "step":Lgnu/kawa/xml/TreeScanner;
    move-object/from16 v21, v13

    if-eqz v21, :cond_4

    .line 88
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v14, v21

    .line 89
    .local v14, "type1":Lgnu/bytecode/Type;
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/ChildAxis;

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/AttributeAxis;

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/SelfAxis;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 93
    :cond_2
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/NodeSetType;

    move/from16 v21, v0

    if-nez v21, :cond_3

    move/from16 v21, v12

    const/16 v22, 0x4e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 96
    :cond_3
    const/16 v21, 0x53

    move/from16 v12, v21

    .line 109
    .end local v14    # "type1":Lgnu/bytecode/Type;
    :cond_4
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ConsumerTarget;

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 111
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-static/range {v21 .. v23}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 112
    goto/16 :goto_0

    .line 81
    .end local v12    # "expectedKind":C
    .end local v13    # "step":Lgnu/kawa/xml/TreeScanner;
    :cond_5
    move/from16 v21, v11

    const/16 v22, -0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 82
    const/16 v21, 0x41

    move/from16 v12, v21

    .restart local v12    # "expectedKind":C
    goto :goto_1

    .line 84
    .end local v12    # "expectedKind":C
    :cond_6
    const/16 v21, 0x20

    move/from16 v12, v21

    .restart local v12    # "expectedKind":C
    goto :goto_1

    .line 115
    .restart local v13    # "step":Lgnu/kawa/xml/TreeScanner;
    :cond_7
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v21

    move-object/from16 v14, v21

    .line 117
    .local v14, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v21

    move-object/from16 v16, v21

    .line 122
    .local v16, "scope":Lgnu/bytecode/Scope;
    move/from16 v21, v12

    const/16 v22, 0x41

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    move/from16 v21, v12

    const/16 v22, 0x53

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 124
    :cond_8
    move-object/from16 v21, v5

    move-object/from16 v15, v21

    .line 125
    .local v15, "mtarget":Lgnu/expr/Target;
    const/16 v21, 0x0

    move-object/from16 v19, v21

    .line 126
    .local v19, "mclass":Lgnu/bytecode/ClassType;
    const/16 v21, 0x0

    move-object/from16 v17, v21

    .line 127
    .local v17, "mconsumer":Lgnu/bytecode/Variable;
    const/16 v21, 0x0

    move-object/from16 v18, v21

    .line 154
    .local v18, "tconsumer":Lgnu/bytecode/Variable;
    :goto_2
    move-object/from16 v21, v8

    check-cast v21, Lgnu/expr/LambdaExp;

    move-object/from16 v22, v7

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v25, v4

    move-object/from16 v26, v15

    invoke-static/range {v21 .. v26}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 157
    move/from16 v21, v12

    const/16 v22, 0x4e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 159
    move-object/from16 v21, v14

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 160
    move-object/from16 v21, v14

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 161
    move-object/from16 v21, v14

    sget-object v22, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v23, "writeValues"

    const/16 v24, 0x2

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 170
    :cond_9
    :goto_3
    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v21

    .line 171
    goto/16 :goto_0

    .line 133
    .end local v15    # "mtarget":Lgnu/expr/Target;
    .end local v17    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v18    # "tconsumer":Lgnu/bytecode/Variable;
    .end local v19    # "mclass":Lgnu/bytecode/ClassType;
    :cond_a
    move/from16 v21, v12

    const/16 v22, 0x4e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 135
    const-string/jumbo v21, "gnu.kawa.xml.SortedNodes"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v19, v21

    .line 136
    .restart local v19    # "mclass":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v19

    const-string/jumbo v22, "<init>"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v20, v21

    .line 143
    .local v20, "initMethod":Lgnu/bytecode/Method;
    :goto_4
    move-object/from16 v21, v16

    move-object/from16 v22, v14

    move-object/from16 v23, v19

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v17, v21

    .line 144
    .restart local v17    # "mconsumer":Lgnu/bytecode/Variable;
    new-instance v21, Lgnu/expr/ConsumerTarget;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    move-object/from16 v15, v21

    .line 145
    .restart local v15    # "mtarget":Lgnu/expr/Target;
    move-object/from16 v21, v14

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 146
    move-object/from16 v21, v14

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 147
    move-object/from16 v21, v5

    check-cast v21, Lgnu/expr/ConsumerTarget;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v18, v21

    .line 148
    .restart local v18    # "tconsumer":Lgnu/bytecode/Variable;
    move/from16 v21, v12

    const/16 v22, 0x4e

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 149
    move-object/from16 v21, v14

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    :cond_b
    move-object/from16 v21, v14

    move-object/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 151
    move-object/from16 v21, v14

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto/16 :goto_2

    .line 140
    .end local v15    # "mtarget":Lgnu/expr/Target;
    .end local v17    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v18    # "tconsumer":Lgnu/bytecode/Variable;
    .end local v19    # "mclass":Lgnu/bytecode/ClassType;
    .end local v20    # "initMethod":Lgnu/bytecode/Method;
    :cond_c
    const-string/jumbo v21, "gnu.xquery.util.RelativeStepFilter"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v19, v21

    .line 141
    .restart local v19    # "mclass":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v19

    const-string/jumbo v22, "<init>"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v20, v21

    .restart local v20    # "initMethod":Lgnu/bytecode/Method;
    goto :goto_4

    .line 164
    .end local v20    # "initMethod":Lgnu/bytecode/Method;
    .restart local v15    # "mtarget":Lgnu/expr/Target;
    .restart local v17    # "mconsumer":Lgnu/bytecode/Variable;
    .restart local v18    # "tconsumer":Lgnu/bytecode/Variable;
    :cond_d
    move/from16 v21, v12

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 166
    move-object/from16 v21, v14

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 167
    move-object/from16 v21, v14

    move-object/from16 v22, v19

    const-string/jumbo v23, "finish"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto/16 :goto_3
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStep;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/util/RelativeStep;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStep;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/xquery/util/RelativeStep;
    return v0
.end method
