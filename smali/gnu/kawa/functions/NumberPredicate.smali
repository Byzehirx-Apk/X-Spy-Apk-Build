.class public Lgnu/kawa/functions/NumberPredicate;
.super Lgnu/mapping/Procedure1;
.source "NumberPredicate.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final EVEN:I = 0x2

.field public static final ODD:I = 0x1


# instance fields
.field language:Lgnu/expr/Language;

.field final op:I


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberPredicate;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "op":I
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 37
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    .line 38
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 39
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.kawa.functions.CompileArith:validateApplyNumberPredicate"

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/NumberPredicate;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberPredicate;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v2, v4

    .line 25
    .local v2, "iarg1":Lgnu/math/IntNum;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/functions/NumberPredicate;->op:I

    packed-switch v4, :pswitch_data_0

    .line 29
    new-instance v4, Ljava/lang/Error;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v4

    .line 27
    :pswitch_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/IntNum;->isOdd()Z

    move-result v4

    move v3, v4

    .line 31
    .local v3, "result":Z
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/functions/NumberPredicate;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/functions/NumberPredicate;
    return-object v0

    .line 28
    .end local v3    # "result":Z
    .restart local v0    # "this":Lgnu/kawa/functions/NumberPredicate;
    :pswitch_1
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/IntNum;->isOdd()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .restart local v3    # "result":Z
    goto :goto_0

    .end local v3    # "result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 13

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberPredicate;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v4, v10

    .line 51
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 53
    :cond_0
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v5, v10

    .line 54
    .local v5, "arg0":Lgnu/expr/Expression;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    invoke-static {v10}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v10

    move v6, v10

    .line 55
    .local v6, "kind":I
    move v10, v6

    const/4 v11, 0x4

    if-gt v10, v11, :cond_3

    .line 57
    sget-object v10, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v7, v10

    .line 58
    .local v7, "wtype":Lgnu/bytecode/PrimType;
    move-object v10, v7

    invoke-static {v10}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v10

    move-object v8, v10

    .line 59
    .local v8, "wtarget":Lgnu/expr/Target;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v9, v10

    .line 60
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 61
    move-object v10, v9

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 62
    :cond_1
    move-object v10, v5

    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 63
    move-object v10, v9

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 64
    move-object v10, v9

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 65
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 66
    move-object v10, v9

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 67
    :cond_2
    move-object v10, v3

    move-object v11, v2

    sget-object v12, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 68
    .line 72
    .end local v5    # "arg0":Lgnu/expr/Expression;
    .end local v6    # "kind":I
    .end local v7    # "wtype":Lgnu/bytecode/PrimType;
    .end local v8    # "wtarget":Lgnu/expr/Target;
    .end local v9    # "code":Lgnu/bytecode/CodeAttr;
    :goto_0
    return-void

    .line 71
    :cond_3
    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    goto :goto_0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberPredicate;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/NumberPredicate;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NumberPredicate;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/NumberPredicate;
    return v0
.end method
