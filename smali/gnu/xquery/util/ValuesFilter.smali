.class public Lgnu/xquery/util/ValuesFilter;
.super Lgnu/mapping/MethodProc;
.source "ValuesFilter.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final exprFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final forwardFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final matchesMethod:Lgnu/bytecode/Method;

.field public static final reverseFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final typeValuesFilter:Lgnu/bytecode/ClassType;


# instance fields
.field kind:C

.field last_or_position_needed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .line 140
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x52

    invoke-direct {v1, v2}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 141
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    .line 142
    const-string/jumbo v0, "gnu.xquery.util.ValuesFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    .line 144
    sget-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "matches"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesFilter;
    move v1, p1

    .local v1, "kind":C
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 38
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lgnu/xquery/util/ValuesFilter;->last_or_position_needed:I

    .line 23
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Lgnu/xquery/util/ValuesFilter;->kind:C

    .line 24
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.xquery.util.CompileMisc:validateApplyValuesFilter"

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/util/ValuesFilter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static get(C)Lgnu/xquery/util/ValuesFilter;
    .locals 3

    .prologue
    .line 30
    move v0, p0

    .local v0, "kind":C
    move v1, v0

    const/16 v2, 0x46

    if-ne v1, v2, :cond_0

    sget-object v1, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    move-object v0, v1

    .line 32
    .end local v0    # "kind":C
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "kind":C
    :cond_0
    move v1, v0

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    sget-object v1, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    move-object v0, v1

    goto :goto_0
.end method

.method public static matches(Ljava/lang/Object;J)Z
    .locals 9

    .prologue
    .line 44
    move-object v1, p0

    .local v1, "result":Ljava/lang/Object;
    move-wide v2, p1

    .local v2, "count":J
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Values;

    if-eqz v4, :cond_0

    .line 45
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Values;

    invoke-virtual {v4}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 46
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_9

    .line 48
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/IntNum;

    if-eqz v4, :cond_2

    .line 49
    move-object v4, v1

    check-cast v4, Lgnu/math/IntNum;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 61
    .end local v1    # "result":Ljava/lang/Object;
    :goto_1
    return v1

    .line 49
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 50
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_3

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_3

    move-object v4, v1

    instance-of v4, v4, Lgnu/math/DFloNum;

    if-eqz v4, :cond_5

    .line 52
    :cond_3
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-wide v6, v2

    long-to-double v6, v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    move v1, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 53
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_6

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_6

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Short;

    if-nez v4, :cond_6

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_8

    .line 55
    :cond_6
    move-wide v4, v2

    move-object v6, v1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move v1, v4

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 57
    :cond_8
    const/16 v4, 0x8

    move-wide v5, v2

    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/NumberCompare;->applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    goto :goto_1

    .line 61
    :cond_9
    move-object v4, v1

    invoke-static {v4}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    goto :goto_1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/util/ValuesFilter;
    move-object/from16 v3, p1

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    .line 67
    .local v4, "arg":Ljava/lang/Object;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/mapping/Procedure;

    move-object/from16 v5, v17

    .line 68
    .local v5, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 70
    .local v6, "out":Lgnu/lists/Consumer;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v17, v0

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 72
    new-instance v17, Lgnu/kawa/xml/SortedNodes;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object/from16 v8, v17

    .line 73
    .local v8, "nodes":Lgnu/kawa/xml/SortedNodes;
    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v18}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    move-object/from16 v17, v8

    move-object/from16 v7, v17

    .line 85
    .end local v8    # "nodes":Lgnu/kawa/xml/SortedNodes;
    .local v7, "values":Lgnu/mapping/Values;
    :goto_0
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Values;->size()I

    move-result v17

    move/from16 v8, v17

    .line 86
    .local v8, "count":I
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 87
    .local v9, "it":I
    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v17

    move-object/from16 v10, v17

    .line 90
    .local v10, "countObj":Lgnu/math/IntNum;
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v17

    move/from16 v11, v17

    .line 91
    .local v11, "pmax":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "i":I
    :goto_1
    move/from16 v17, v12

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 93
    move-object/from16 v17, v7

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v17

    move/from16 v9, v17

    .line 94
    move-object/from16 v17, v7

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    .line 95
    .local v13, "dot":Ljava/lang/Object;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v17, v0

    const/16 v18, 0x52

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move/from16 v17, v8

    move/from16 v18, v12

    sub-int v17, v17, v18

    :goto_2
    move/from16 v14, v17

    .line 96
    .local v14, "pos":I
    move/from16 v17, v14

    invoke-static/range {v17 .. v17}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v17

    move-object/from16 v15, v17

    .line 97
    .local v15, "posObj":Lgnu/math/IntNum;
    move/from16 v17, v11

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    :goto_3
    move-object/from16 v16, v17

    .line 99
    .local v16, "pred_res":Ljava/lang/Object;
    move-object/from16 v17, v16

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 100
    move-object/from16 v17, v6

    move-object/from16 v18, v13

    invoke-interface/range {v17 .. v18}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 91
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 76
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v8    # "count":I
    .end local v9    # "it":I
    .end local v10    # "countObj":Lgnu/math/IntNum;
    .end local v11    # "pmax":I
    .end local v12    # "i":I
    .end local v13    # "dot":Ljava/lang/Object;
    .end local v14    # "pos":I
    .end local v15    # "posObj":Lgnu/math/IntNum;
    .end local v16    # "pred_res":Ljava/lang/Object;
    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 77
    move-object/from16 v17, v4

    check-cast v17, Lgnu/mapping/Values;

    move-object/from16 v7, v17

    .restart local v7    # "values":Lgnu/mapping/Values;
    goto/16 :goto_0

    .line 80
    .end local v7    # "values":Lgnu/mapping/Values;
    :cond_2
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v17

    move-object/from16 v8, v17

    .line 81
    .local v8, "one":Lgnu/math/IntNum;
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v8

    invoke-virtual/range {v17 .. v20}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-wide/16 v18, 0x1

    invoke-static/range {v17 .. v19}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 82
    move-object/from16 v17, v6

    move-object/from16 v18, v4

    invoke-interface/range {v17 .. v18}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 83
    .line 102
    .end local v8    # "one":Lgnu/math/IntNum;
    :cond_3
    :goto_4
    return-void

    .line 95
    .restart local v7    # "values":Lgnu/mapping/Values;
    .local v8, "count":I
    .restart local v9    # "it":I
    .restart local v10    # "countObj":Lgnu/math/IntNum;
    .restart local v11    # "pmax":I
    .restart local v12    # "i":I
    .restart local v13    # "dot":Ljava/lang/Object;
    :cond_4
    move/from16 v17, v12

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 97
    .restart local v14    # "pos":I
    .restart local v15    # "posObj":Lgnu/math/IntNum;
    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v19, v15

    move-object/from16 v20, v10

    invoke-virtual/range {v17 .. v20}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    goto :goto_3

    .line 102
    .end local v13    # "dot":Ljava/lang/Object;
    .end local v14    # "pos":I
    .end local v15    # "posObj":Lgnu/math/IntNum;
    :cond_6
    goto :goto_4
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 14

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesFilter;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    move-object v4, v8

    .line 108
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v8, v4

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v5, v8

    .line 109
    .local v5, "exp1":Lgnu/expr/Expression;
    move-object v8, v4

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v6, v8

    .line 110
    .local v6, "exp2":Lgnu/expr/Expression;
    move-object v8, v3

    instance-of v8, v8, Lgnu/expr/IgnoreTarget;

    if-eqz v8, :cond_0

    .line 112
    move-object v8, v5

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 113
    move-object v8, v6

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 114
    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v8, v6

    instance-of v8, v8, Lgnu/expr/LambdaExp;

    if-nez v8, :cond_1

    .line 118
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    move-object v8, v3

    instance-of v8, v8, Lgnu/expr/ConsumerTarget;

    if-nez v8, :cond_2

    .line 124
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    move-object v8, v6

    check-cast v8, Lgnu/expr/LambdaExp;

    move-object v7, v8

    .line 129
    .local v7, "lexp2":Lgnu/expr/LambdaExp;
    move-object v8, v7

    move-object v9, v5

    const/4 v10, 0x1

    sget-object v11, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    move-object v12, v2

    move-object v13, v3

    invoke-static/range {v8 .. v13}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 130
    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesFilter;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/util/ValuesFilter;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesFilter;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/xquery/util/ValuesFilter;
    return v0
.end method
