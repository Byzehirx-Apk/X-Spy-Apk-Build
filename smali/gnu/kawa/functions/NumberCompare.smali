.class public Lgnu/kawa/functions/NumberCompare;
.super Lgnu/mapping/ProcedureN;
.source "NumberCompare.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field public static final TRUE_IF_EQU:I = 0x8

.field public static final TRUE_IF_GRT:I = 0x10

.field public static final TRUE_IF_LSS:I = 0x4

.field public static final TRUE_IF_NAN:I = 0x2

.field public static final TRUE_IF_NEQ:I = 0x1


# instance fields
.field flags:I

.field language:Lgnu/expr/Language;


# direct methods
.method public static $Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/16 v2, 0x8

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0
.end method

.method public static $Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static $Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/16 v2, 0x10

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0
.end method

.method public static $Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/16 v2, 0x18

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0
.end method

.method public static $Gr$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x18

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static $Gr$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static $Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/4 v2, 0x4

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0
.end method

.method public static $Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/16 v2, 0xc

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0
.end method

.method public static $Ls$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static $Ls$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberCompare;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 121
    move v0, p0

    .local v0, "flags":I
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v5

    add-int/2addr v4, v5

    shl-int/2addr v3, v4

    move v4, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "flags":I
    return v0

    .restart local v0    # "flags":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static applyN(I[Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 221
    move v0, p0

    .local v0, "flags":I
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 223
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 224
    .local v3, "arg1":Ljava/lang/Object;
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 225
    .local v4, "arg2":Ljava/lang/Object;
    move v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    const/4 v5, 0x0

    move v0, v5

    .line 228
    .end local v0    # "flags":I
    .end local v3    # "arg1":Ljava/lang/Object;
    .end local v4    # "arg2":Ljava/lang/Object;
    :goto_1
    return v0

    .line 221
    .restart local v0    # "flags":I
    .restart local v3    # "arg1":Ljava/lang/Object;
    .restart local v4    # "arg2":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "arg1":Ljava/lang/Object;
    .end local v4    # "arg2":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method

.method public static applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 131
    move v0, p0

    .local v0, "flags":I
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v3

    move v4, v0

    invoke-static {v3, v4}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v3

    move v0, v3

    .end local v0    # "flags":I
    return v0
.end method

.method public static checkCompareCode(II)Z
    .locals 5

    .prologue
    .line 126
    move v0, p0

    .local v0, "code":I
    move v1, p1

    .local v1, "flags":I
    const/4 v2, 0x1

    const/4 v3, 0x3

    move v4, v0

    add-int/2addr v3, v4

    shl-int/2addr v2, v3

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "code":I
    return v0

    .restart local v0    # "code":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static classify(Lgnu/expr/Expression;)I
    .locals 8

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v1, v5

    .line 349
    .local v1, "type":Lgnu/bytecode/Type;
    move-object v5, v1

    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v5

    move v2, v5

    .line 351
    .local v2, "kind":I
    move v5, v2

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    move-object v5, v0

    instance-of v5, v5, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "value":Ljava/lang/Object;
    instance-of v5, v5, Lgnu/math/IntNum;

    if-eqz v5, :cond_1

    .line 354
    move-object v5, v3

    check-cast v5, Lgnu/math/IntNum;

    invoke-virtual {v5}, Lgnu/math/IntNum;->intLength()I

    move-result v5

    move v4, v5

    .line 355
    .local v4, "ilength":I
    move v5, v4

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 356
    const/4 v5, 0x1

    move v0, v5

    .line 360
    .end local v0    # "exp":Lgnu/expr/Expression;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "ilength":I
    :goto_0
    return v0

    .line 357
    .restart local v0    # "exp":Lgnu/expr/Expression;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "ilength":I
    :cond_0
    move v5, v4

    const/16 v6, 0x40

    if-ge v5, v6, :cond_1

    .line 358
    const/4 v5, 0x2

    move v0, v5

    goto :goto_0

    .line 360
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "ilength":I
    :cond_1
    move v5, v2

    move v0, v5

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I
    .locals 28

    .prologue
    .line 152
    move-object/from16 v3, p0

    .local v3, "arg1":Ljava/lang/Object;
    move/from16 v4, p1

    .local v4, "code1":I
    move-object/from16 v5, p2

    .local v5, "arg2":Ljava/lang/Object;
    move/from16 v6, p3

    .local v6, "code2":I
    move/from16 v7, p4

    .local v7, "exact":Z
    move/from16 v24, v4

    if-ltz v24, :cond_0

    move/from16 v24, v6

    if-gez v24, :cond_1

    .line 153
    :cond_0
    const/16 v24, -0x3

    move/from16 v3, v24

    .line 214
    .end local v3    # "arg1":Ljava/lang/Object;
    :goto_0
    return v3

    .line 154
    .restart local v3    # "arg1":Ljava/lang/Object;
    :cond_1
    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    move/from16 v24, v6

    :goto_1
    move/from16 v8, v24

    .line 156
    .local v8, "code":I
    move/from16 v24, v8

    packed-switch v24, :pswitch_data_0

    .line 210
    :cond_2
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    move-object/from16 v20, v24

    .line 211
    .local v20, "num1":Lgnu/math/Numeric;
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    move-object/from16 v21, v24

    .line 212
    .local v21, "num2":Lgnu/math/Numeric;
    move-object/from16 v24, v20

    move-object/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v24

    move/from16 v9, v24

    .line 214
    .end local v20    # "num1":Lgnu/math/Numeric;
    .end local v21    # "num2":Lgnu/math/Numeric;
    .local v9, "comp":I
    :goto_2
    move/from16 v24, v9

    move/from16 v3, v24

    goto :goto_0

    .line 154
    .end local v8    # "code":I
    .end local v9    # "comp":I
    :cond_3
    move/from16 v24, v4

    goto :goto_1

    .line 159
    .restart local v8    # "code":I
    :pswitch_0
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v24

    move/from16 v10, v24

    .line 160
    .local v10, "i1":I
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v24

    move/from16 v11, v24

    .line 161
    .local v11, "i2":I
    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    const/16 v24, -0x1

    :goto_3
    move/from16 v9, v24

    .line 162
    .restart local v9    # "comp":I
    goto :goto_2

    .line 161
    .end local v9    # "comp":I
    :cond_4
    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    const/16 v24, 0x1

    goto :goto_3

    :cond_5
    const/16 v24, 0x0

    goto :goto_3

    .line 164
    .end local v10    # "i1":I
    .end local v11    # "i2":I
    :pswitch_1
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 165
    .local v12, "l1":J
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 166
    .local v14, "l2":J
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    cmp-long v24, v24, v26

    if-gez v24, :cond_6

    const/16 v24, -0x1

    :goto_4
    move/from16 v9, v24

    .line 167
    .restart local v9    # "comp":I
    goto :goto_2

    .line 166
    .end local v9    # "comp":I
    :cond_6
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    cmp-long v24, v24, v26

    if-lez v24, :cond_7

    const/16 v24, 0x1

    goto :goto_4

    :cond_7
    const/16 v24, 0x0

    goto :goto_4

    .line 169
    .end local v12    # "l1":J
    .end local v14    # "l2":J
    :pswitch_2
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v16, v24

    .line 170
    .local v16, "bi1":Ljava/math/BigInteger;
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v17, v24

    .line 171
    .local v17, "bi2":Ljava/math/BigInteger;
    move-object/from16 v24, v16

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    move/from16 v9, v24

    .line 172
    .restart local v9    # "comp":I
    goto :goto_2

    .line 174
    .end local v9    # "comp":I
    .end local v16    # "bi1":Ljava/math/BigInteger;
    .end local v17    # "bi2":Ljava/math/BigInteger;
    :pswitch_3
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-static/range {v25 .. v25}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v24

    move/from16 v9, v24

    .line 176
    .restart local v9    # "comp":I
    goto/16 :goto_2

    .line 178
    .end local v9    # "comp":I
    :pswitch_4
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v24

    move-object/from16 v18, v24

    .line 179
    .local v18, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v24

    move-object/from16 v19, v24

    .line 180
    .local v19, "bd2":Ljava/math/BigDecimal;
    move-object/from16 v24, v18

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v24

    move/from16 v9, v24

    .line 181
    .restart local v9    # "comp":I
    goto/16 :goto_2

    .line 183
    .end local v9    # "comp":I
    .end local v18    # "bd1":Ljava/math/BigDecimal;
    .end local v19    # "bd2":Ljava/math/BigDecimal;
    :pswitch_5
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-static/range {v25 .. v25}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v24

    move/from16 v9, v24

    .line 185
    .restart local v9    # "comp":I
    goto/16 :goto_2

    .line 187
    .end local v9    # "comp":I
    :pswitch_6
    move/from16 v24, v7

    if-eqz v24, :cond_8

    move/from16 v24, v4

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    move/from16 v24, v6

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    .line 191
    :cond_8
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v24

    move/from16 v20, v24

    .line 192
    .local v20, "f1":F
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v24

    move/from16 v21, v24

    .line 193
    .local v21, "f2":F
    move/from16 v24, v20

    move/from16 v25, v21

    cmpl-float v24, v24, v25

    if-lez v24, :cond_9

    const/16 v24, 0x1

    :goto_5
    move/from16 v9, v24

    .line 194
    .restart local v9    # "comp":I
    goto/16 :goto_2

    .line 193
    .end local v9    # "comp":I
    :cond_9
    move/from16 v24, v20

    move/from16 v25, v21

    cmpg-float v24, v24, v25

    if-gez v24, :cond_a

    const/16 v24, -0x1

    goto :goto_5

    :cond_a
    move/from16 v24, v20

    move/from16 v25, v21

    cmpl-float v24, v24, v25

    if-nez v24, :cond_b

    const/16 v24, 0x0

    goto :goto_5

    :cond_b
    const/16 v24, -0x2

    goto :goto_5

    .line 199
    .end local v20    # "f1":F
    .end local v21    # "f2":F
    :cond_c
    :pswitch_7
    move/from16 v24, v7

    if-eqz v24, :cond_d

    move/from16 v24, v4

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    move/from16 v24, v6

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 203
    :cond_d
    move-object/from16 v24, v3

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 204
    .local v20, "d1":D
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 205
    .local v22, "d2":D
    move-wide/from16 v24, v20

    move-wide/from16 v26, v22

    cmpl-double v24, v24, v26

    if-lez v24, :cond_e

    const/16 v24, 0x1

    :goto_6
    move/from16 v9, v24

    .line 206
    .restart local v9    # "comp":I
    goto/16 :goto_2

    .line 205
    .end local v9    # "comp":I
    :cond_e
    move-wide/from16 v24, v20

    move-wide/from16 v26, v22

    cmpg-double v24, v24, v26

    if-gez v24, :cond_f

    const/16 v24, -0x1

    goto :goto_6

    :cond_f
    move-wide/from16 v24, v20

    move-wide/from16 v26, v22

    cmpl-double v24, v24, v26

    if-nez v24, :cond_10

    const/16 v24, 0x0

    goto :goto_6

    :cond_10
    const/16 v24, -0x2

    goto :goto_6

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 10

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move v2, p2

    .local v2, "exact":Z
    move-object v5, v0

    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 144
    .local v3, "code1":I
    move-object v5, v1

    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    move v4, v5

    .line 145
    .local v4, "code2":I
    move-object v5, v0

    move v6, v3

    move-object v7, v1

    move v8, v4

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v5

    move v0, v5

    .end local v0    # "arg1":Ljava/lang/Object;
    return v0
.end method

.method public static make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "language":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "flags":I
    new-instance v4, Lgnu/kawa/functions/NumberCompare;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/kawa/functions/NumberCompare;-><init>()V

    move-object v3, v4

    .line 101
    .local v3, "proc":Lgnu/kawa/functions/NumberCompare;
    move-object v4, v3

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    .line 102
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/functions/NumberCompare;->setName(Ljava/lang/String;)V

    .line 103
    move-object v4, v3

    move v5, v2

    iput v5, v4, Lgnu/kawa/functions/NumberCompare;->flags:I

    .line 104
    move-object v4, v3

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.kawa.functions.CompileArith:validateApplyNumberCompare"

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/NumberCompare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "language":Lgnu/expr/Language;
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberCompare;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/functions/NumberCompare;->flags:I

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/NumberCompare;
    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberCompare;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/functions/NumberCompare;->flags:I

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/NumberCompare;
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 25

    .prologue
    .line 240
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/functions/NumberCompare;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p3

    .local v5, "target":Lgnu/expr/Target;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v6, v19

    .line 241
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 243
    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v7, v19

    .line 244
    .local v7, "arg0":Lgnu/expr/Expression;
    move-object/from16 v19, v6

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v8, v19

    .line 245
    .local v8, "arg1":Lgnu/expr/Expression;
    move-object/from16 v19, v7

    invoke-static/range {v19 .. v19}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v19

    move/from16 v9, v19

    .line 246
    .local v9, "kind0":I
    move-object/from16 v19, v8

    invoke-static/range {v19 .. v19}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v19

    move/from16 v10, v19

    .line 247
    .local v10, "kind1":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    move-object/from16 v11, v19

    .line 248
    .local v11, "code":Lgnu/bytecode/CodeAttr;
    move/from16 v19, v9

    if-lez v19, :cond_f

    move/from16 v19, v10

    if-lez v19, :cond_f

    move/from16 v19, v9

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    move/from16 v19, v9

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v10

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 253
    :cond_0
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 255
    move-object/from16 v19, v3

    sget-object v20, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    sget-object v21, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-static/range {v19 .. v23}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 257
    .line 344
    .end local v7    # "arg0":Lgnu/expr/Expression;
    .end local v8    # "arg1":Lgnu/expr/Expression;
    .end local v9    # "kind0":I
    .end local v10    # "kind1":I
    .end local v11    # "code":Lgnu/bytecode/CodeAttr;
    :goto_0
    return-void

    .line 259
    .restart local v7    # "arg0":Lgnu/expr/Expression;
    .restart local v8    # "arg1":Lgnu/expr/Expression;
    .restart local v9    # "kind0":I
    .restart local v10    # "kind1":I
    .restart local v11    # "code":Lgnu/bytecode/CodeAttr;
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    move/from16 v19, v0

    move/from16 v12, v19

    .line 260
    .local v12, "mask":I
    move/from16 v19, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 261
    const/16 v19, 0x14

    move/from16 v12, v19

    .line 262
    :cond_2
    move/from16 v19, v9

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    move/from16 v19, v10

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    move/from16 v19, v9

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    move/from16 v19, v10

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 265
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 266
    .local v13, "ctypes":[Lgnu/bytecode/Type;
    move-object/from16 v19, v13

    const/16 v20, 0x0

    sget-object v21, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v21, v19, v20

    .line 267
    move/from16 v19, v10

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 269
    move-object/from16 v19, v13

    const/16 v20, 0x1

    sget-object v21, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v21, v19, v20

    .line 287
    :cond_4
    :goto_1
    sget-object v19, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string/jumbo v20, "compare"

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Lgnu/kawa/lispexpr/LangObjType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v19

    move-object/from16 v14, v19

    .line 289
    .local v14, "cmeth":Lgnu/bytecode/Method;
    new-instance v19, Lgnu/expr/PrimProcedure;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v14

    invoke-direct/range {v20 .. v21}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    move-object/from16 v15, v19

    .line 290
    .local v15, "compare":Lgnu/expr/PrimProcedure;
    new-instance v19, Lgnu/expr/ApplyExp;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v15

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v7, v19

    .line 291
    new-instance v19, Lgnu/expr/QuoteExp;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v8, v19

    .line 292
    const/16 v19, 0x1

    move/from16 v24, v19

    move/from16 v19, v24

    move/from16 v20, v24

    move/from16 v10, v20

    move/from16 v9, v19

    .line 295
    .end local v13    # "ctypes":[Lgnu/bytecode/Type;
    .end local v14    # "cmeth":Lgnu/bytecode/Method;
    .end local v15    # "compare":Lgnu/expr/PrimProcedure;
    :cond_5
    move/from16 v19, v9

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    move/from16 v19, v10

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    .line 296
    sget-object v19, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v13, v19

    .line 301
    .local v13, "commonType":Lgnu/bytecode/Type;
    :goto_2
    new-instance v19, Lgnu/expr/StackTarget;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    move-object/from16 v14, v19

    .line 302
    .local v14, "subTarget":Lgnu/expr/StackTarget;
    move-object/from16 v19, v5

    check-cast v19, Lgnu/expr/ConditionalTarget;

    move-object/from16 v15, v19

    .line 305
    .local v15, "ctarget":Lgnu/expr/ConditionalTarget;
    move-object/from16 v19, v7

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 307
    move-object/from16 v19, v8

    move-object/from16 v17, v19

    .local v17, "tmp":Lgnu/expr/Expression;
    move-object/from16 v19, v7

    move-object/from16 v8, v19

    move-object/from16 v19, v17

    move-object/from16 v7, v19

    .line 308
    move/from16 v19, v12

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    move/from16 v19, v12

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 309
    move/from16 v19, v12

    const/16 v20, 0x14

    xor-int/lit8 v19, v19, 0x14

    move/from16 v12, v19

    .line 311
    .end local v17    # "tmp":Lgnu/expr/Expression;
    :cond_6
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object/from16 v19, v0

    :goto_3
    move-object/from16 v17, v19

    .line 312
    .local v17, "label1":Lgnu/bytecode/Label;
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 313
    move/from16 v19, v12

    const/16 v20, 0x1c

    xor-int/lit8 v19, v19, 0x1c

    move/from16 v12, v19

    .line 314
    :cond_7
    move/from16 v19, v12

    sparse-switch v19, :sswitch_data_0

    .line 323
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 325
    .local v16, "opcode":I
    :goto_4
    move-object/from16 v19, v7

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 327
    move/from16 v19, v9

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    move/from16 v19, v10

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, v8

    check-cast v19, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v18, v20

    .local v18, "value":Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, v18

    check-cast v19, Lgnu/math/IntNum;

    invoke-virtual/range {v19 .. v19}, Lgnu/math/IntNum;->isZero()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 332
    move-object/from16 v19, v11

    move-object/from16 v20, v17

    move/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    .line 339
    .end local v18    # "value":Ljava/lang/Object;
    :goto_5
    move-object/from16 v19, v15

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 340
    goto/16 :goto_0

    .line 271
    .end local v14    # "subTarget":Lgnu/expr/StackTarget;
    .end local v15    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v16    # "opcode":I
    .end local v17    # "label1":Lgnu/bytecode/Label;
    .local v13, "ctypes":[Lgnu/bytecode/Type;
    :cond_8
    move/from16 v19, v9

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_a

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 278
    :cond_9
    move-object/from16 v19, v13

    const/16 v20, 0x1

    sget-object v21, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v21, v19, v20

    .line 279
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 280
    move-object/from16 v19, v6

    const/16 v20, 0x0

    move-object/from16 v21, v8

    aput-object v21, v19, v20

    .line 281
    move-object/from16 v19, v6

    const/16 v20, 0x1

    move-object/from16 v21, v7

    aput-object v21, v19, v20

    .line 282
    move/from16 v19, v12

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move/from16 v19, v12

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 283
    move/from16 v19, v12

    const/16 v20, 0x14

    xor-int/lit8 v19, v19, 0x14

    move/from16 v12, v19

    goto/16 :goto_1

    .line 286
    :cond_a
    move-object/from16 v19, v13

    const/16 v20, 0x1

    sget-object v21, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v21, v19, v20

    goto/16 :goto_1

    .line 297
    .end local v13    # "ctypes":[Lgnu/bytecode/Type;
    :cond_b
    move/from16 v19, v9

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_c

    move/from16 v19, v10

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_c

    .line 298
    sget-object v19, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    move-object/from16 v13, v19

    .local v13, "commonType":Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 300
    .end local v13    # "commonType":Lgnu/bytecode/Type;
    :cond_c
    sget-object v19, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    move-object/from16 v13, v19

    .restart local v13    # "commonType":Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 311
    .restart local v14    # "subTarget":Lgnu/expr/StackTarget;
    .restart local v15    # "ctarget":Lgnu/expr/ConditionalTarget;
    :cond_d
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 316
    .restart local v17    # "label1":Lgnu/bytecode/Label;
    :sswitch_0
    const/16 v19, 0x9d

    move/from16 v16, v19

    .restart local v16    # "opcode":I
    goto/16 :goto_4

    .line 317
    .end local v16    # "opcode":I
    :sswitch_1
    const/16 v19, 0x99

    move/from16 v16, v19

    .restart local v16    # "opcode":I
    goto/16 :goto_4

    .line 318
    .end local v16    # "opcode":I
    :sswitch_2
    const/16 v19, 0x9b

    move/from16 v16, v19

    .restart local v16    # "opcode":I
    goto/16 :goto_4

    .line 319
    .end local v16    # "opcode":I
    :sswitch_3
    const/16 v19, 0x9a

    move/from16 v16, v19

    .restart local v16    # "opcode":I
    goto/16 :goto_4

    .line 320
    .end local v16    # "opcode":I
    :sswitch_4
    const/16 v19, 0x9c

    move/from16 v16, v19

    .restart local v16    # "opcode":I
    goto/16 :goto_4

    .line 321
    .end local v16    # "opcode":I
    :sswitch_5
    const/16 v19, 0x9e

    move/from16 v16, v19

    .restart local v16    # "opcode":I
    goto/16 :goto_4

    .line 336
    :cond_e
    move-object/from16 v19, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 337
    move-object/from16 v19, v11

    move-object/from16 v20, v17

    move/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    goto/16 :goto_5

    .line 343
    .end local v7    # "arg0":Lgnu/expr/Expression;
    .end local v8    # "arg1":Lgnu/expr/Expression;
    .end local v9    # "kind0":I
    .end local v10    # "kind1":I
    .end local v11    # "code":Lgnu/bytecode/CodeAttr;
    .end local v12    # "mask":I
    .end local v13    # "commonType":Lgnu/bytecode/Type;
    .end local v14    # "subTarget":Lgnu/expr/StackTarget;
    .end local v15    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v16    # "opcode":I
    .end local v17    # "label1":Lgnu/bytecode/Label;
    :cond_f
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 344
    goto/16 :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0xc -> :sswitch_5
        0x10 -> :sswitch_0
        0x14 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberCompare;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/NumberCompare;
    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberCompare;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/NumberCompare;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberCompare;
    const/16 v1, -0xffe

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/NumberCompare;
    return v0
.end method
