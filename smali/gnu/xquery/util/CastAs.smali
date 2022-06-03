.class public Lgnu/xquery/util/CastAs;
.super Lgnu/kawa/functions/Convert;
.source "CastAs.java"


# static fields
.field public static final castAs:Lgnu/xquery/util/CastAs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lgnu/xquery/util/CastAs;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xquery/util/CastAs;-><init>()V

    sput-object v0, Lgnu/xquery/util/CastAs;->castAs:Lgnu/xquery/util/CastAs;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/CastAs;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/functions/Convert;-><init>()V

    .line 17
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.xquery.util.CompileMisc:validateApplyCastAs"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/util/CastAs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 23
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/util/CastAs;
    move-object/from16 v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v13, v1

    check-cast v13, Lgnu/bytecode/Type;

    move-object v3, v13

    .line 24
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v13, v3

    instance-of v13, v13, Lgnu/kawa/xml/XDataType;

    if-eqz v13, :cond_0

    .line 25
    move-object v13, v3

    check-cast v13, Lgnu/kawa/xml/XDataType;

    move-object v14, v2

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    .line 66
    .end local v0    # "this":Lgnu/xquery/util/CastAs;
    :goto_0
    return-object v0

    .line 26
    .restart local v0    # "this":Lgnu/xquery/util/CastAs;
    :cond_0
    move-object v13, v3

    instance-of v13, v13, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v13, :cond_6

    .line 28
    move-object v13, v3

    check-cast v13, Lgnu/kawa/reflect/OccurrenceType;

    move-object v4, v13

    .line 29
    .local v4, "occ":Lgnu/kawa/reflect/OccurrenceType;
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v13

    move-object v5, v13

    .line 30
    .local v5, "base":Lgnu/bytecode/Type;
    move-object v13, v5

    instance-of v13, v13, Lgnu/kawa/xml/XDataType;

    if-eqz v13, :cond_6

    .line 32
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v13

    move v6, v13

    .line 33
    .local v6, "min":I
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v13

    move v7, v13

    .line 34
    .local v7, "max":I
    move-object v13, v2

    instance-of v13, v13, Lgnu/mapping/Values;

    if-eqz v13, :cond_5

    .line 36
    move-object v13, v2

    sget-object v14, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v13, v14, :cond_1

    move v13, v6

    if-nez v13, :cond_1

    .line 37
    move-object v13, v2

    move-object v0, v13

    goto :goto_0

    .line 38
    :cond_1
    move-object v13, v2

    check-cast v13, Lgnu/mapping/Values;

    move-object v8, v13

    .line 39
    .local v8, "vals":Lgnu/mapping/Values;
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/mapping/Values;->startPos()I

    move-result v13

    move v9, v13

    .line 40
    .local v9, "pos":I
    const/4 v13, 0x0

    move v10, v13

    .line 41
    .local v10, "n":I
    new-instance v13, Lgnu/mapping/Values;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lgnu/mapping/Values;-><init>()V

    move-object v11, v13

    .line 44
    .local v11, "result":Lgnu/mapping/Values;
    :goto_1
    move-object v13, v8

    move v14, v9

    invoke-virtual {v13, v14}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v13

    move v9, v13

    .line 45
    move v13, v9

    if-nez v13, :cond_3

    .line 47
    move v13, v10

    move v14, v6

    if-lt v13, v14, :cond_4

    move v13, v7

    if-ltz v13, :cond_2

    move v13, v10

    move v14, v7

    if-gt v13, v14, :cond_4

    .line 48
    :cond_2
    move-object v13, v11

    invoke-virtual {v13}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    .line 51
    :cond_3
    move-object v13, v8

    move v14, v9

    invoke-virtual {v13, v14}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    .line 52
    .local v12, "value":Ljava/lang/Object;
    move-object v13, v5

    check-cast v13, Lgnu/kawa/xml/XDataType;

    move-object v14, v12

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    .line 53
    move-object v13, v11

    move-object v14, v12

    invoke-virtual {v13, v14}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v10, v10, 0x1

    .line 55
    goto :goto_1

    .line 56
    .line 62
    .end local v8    # "vals":Lgnu/mapping/Values;
    .end local v9    # "pos":I
    .end local v10    # "n":I
    .end local v11    # "result":Lgnu/mapping/Values;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v13, Ljava/lang/ClassCastException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "cannot cast "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 59
    :cond_5
    move v13, v6

    const/4 v14, 0x1

    if-gt v13, v14, :cond_4

    move v13, v7

    if-eqz v13, :cond_4

    .line 60
    move-object v13, v5

    check-cast v13, Lgnu/kawa/xml/XDataType;

    move-object v14, v2

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0

    .line 66
    .end local v4    # "occ":Lgnu/kawa/reflect/OccurrenceType;
    .end local v5    # "base":Lgnu/bytecode/Type;
    .end local v6    # "min":I
    .end local v7    # "max":I
    :cond_6
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    invoke-super {v13, v14, v15}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/CastAs;
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

    .line 73
    return-void
.end method
