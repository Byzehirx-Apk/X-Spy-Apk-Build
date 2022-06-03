.class public abstract Lgnu/kawa/functions/ArithOp;
.super Lgnu/mapping/ProcedureN;
.source "ArithOp.java"


# static fields
.field static final ADD:I = 0x1

.field public static final AND:I = 0xd

.field public static final ASHIFT_GENERAL:I = 0x9

.field public static final ASHIFT_LEFT:I = 0xa

.field public static final ASHIFT_RIGHT:I = 0xb

.field public static final DIVIDE_GENERIC:I = 0x4

.field public static final DIVIDE_INEXACT:I = 0x5

.field public static final IOR:I = 0xe

.field public static final LSHIFT_RIGHT:I = 0xc

.field public static final MODULO:I = 0x8

.field static final MUL:I = 0x3

.field public static final NOT:I = 0x10

.field public static final QUOTIENT:I = 0x6

.field public static final QUOTIENT_EXACT:I = 0x7

.field static final SUB:I = 0x2

.field public static final XOR:I = 0xf


# instance fields
.field final op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArithOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "op":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 56
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/kawa/functions/ArithOp;->op:I

    .line 57
    return-void
.end method

.method public static classify(Lgnu/bytecode/Type;)I
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    const/4 v3, 0x0

    move v1, v3

    .line 79
    .local v1, "kind":I
    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_4

    .line 81
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 82
    .local v2, "sig":C
    move v3, v2

    const/16 v4, 0x56

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x43

    if-ne v3, v4, :cond_1

    .line 83
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 98
    .end local v0    # "type":Lgnu/bytecode/Type;
    .end local v2    # "sig":C
    :goto_0
    return v0

    .line 84
    .restart local v0    # "type":Lgnu/bytecode/Type;
    .restart local v2    # "sig":C
    :cond_1
    move v3, v2

    const/16 v4, 0x44

    if-eq v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0x46

    if-ne v3, v4, :cond_3

    .line 85
    :cond_2
    const/4 v3, 0x3

    move v0, v3

    goto :goto_0

    .line 87
    :cond_3
    const/4 v3, 0x4

    move v0, v3

    goto :goto_0

    .line 89
    .end local v2    # "sig":C
    :cond_4
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    const/4 v3, 0x4

    move v0, v3

    goto :goto_0

    .line 91
    :cond_5
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    const/4 v3, 0x3

    move v0, v3

    goto :goto_0

    .line 93
    :cond_6
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 94
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 95
    :cond_7
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 96
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 98
    :cond_8
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public defaultResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArithOp;
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/ArithOp;
    return-object v0
.end method

.method public isSideEffectFree()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ArithOp;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/ArithOp;
    return v0
.end method
