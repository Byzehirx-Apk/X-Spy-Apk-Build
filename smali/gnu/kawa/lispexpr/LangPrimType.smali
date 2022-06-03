.class public Lgnu/kawa/lispexpr/LangPrimType;
.super Lgnu/bytecode/PrimType;
.source "LangPrimType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final voidType:Lgnu/kawa/lispexpr/LangPrimType;


# instance fields
.field implementationType:Lgnu/bytecode/PrimType;

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    .line 21
    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    .line 22
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 23
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    .line 24
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    .line 25
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    .line 26
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 28
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/PrimType;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 34
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 35
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/PrimType;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 40
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 41
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "nam":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sig":Ljava/lang/String;
    move v3, p3

    .local v3, "siz":I
    move-object v4, p4

    .local v4, "reflectClass":Ljava/lang/Class;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Lgnu/expr/Language;)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "nam":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sig":Ljava/lang/String;
    move v3, p3

    .local v3, "siz":I
    move-object v4, p4

    .local v4, "reflectClass":Ljava/lang/Class;
    move-object/from16 v5, p5

    .local v5, "language":Lgnu/expr/Language;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 53
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v7

    iput-object v7, v6, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 54
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 55
    return-void
.end method


# virtual methods
.method public charValue(Ljava/lang/Object;)C
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    move v0, v2

    .line 83
    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->charValue()C

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/LangPrimType;->reflectClass:Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    .line 65
    move-object v3, v1

    move-object v0, v3

    .line 76
    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 67
    .local v2, "sig1":C
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 76
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/bytecode/PrimType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 70
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 72
    :sswitch_1
    new-instance v3, Ljava/lang/Character;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v3

    goto :goto_0

    .line 74
    :sswitch_2
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 128
    .local v2, "sig1":C
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 140
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/bytecode/PrimType;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    :goto_0
    return-object v0

    .line 131
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 133
    :sswitch_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/text/Char;

    if-eqz v3, :cond_0

    .line 134
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 135
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 138
    :sswitch_2
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 177
    .local v2, "sig1":C
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_3

    .line 179
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 180
    .local v3, "sig2":C
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_0

    .line 181
    const/4 v4, 0x0

    move v0, v4

    .line 193
    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    .end local v3    # "sig2":C
    :goto_0
    return v0

    .line 182
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    .restart local v3    # "sig2":C
    :cond_0
    move v4, v2

    const/16 v5, 0x56

    if-ne v4, v5, :cond_1

    .line 183
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 184
    :cond_1
    move v4, v3

    const/16 v5, 0x56

    if-eq v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_3

    .line 185
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 187
    .end local v3    # "sig2":C
    :cond_3
    move v4, v2

    const/16 v5, 0x56

    if-eq v4, v5, :cond_4

    move v4, v2

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_5

    .line 188
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 189
    :cond_5
    move v4, v2

    const/16 v5, 0x43

    if-ne v4, v5, :cond_6

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gnu.text.Char"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 190
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 191
    :cond_6
    move-object v4, v1

    instance-of v4, v4, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v4, :cond_7

    .line 192
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    invoke-static {v4}, Lgnu/kawa/lispexpr/LangPrimType;->swappedCompareResult(I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 193
    :cond_7
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v5

    .line 107
    .local v2, "sig1":C
    move v5, v2

    sparse-switch v5, :sswitch_data_0

    .line 121
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 123
    :goto_0
    return-void

    .line 110
    :sswitch_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V

    .line 111
    goto :goto_0

    .line 115
    :sswitch_1
    const-string/jumbo v5, "gnu.text.Char"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v3, v5

    .line 116
    .local v3, "scmCharType":Lgnu/bytecode/ClassType;
    move-object v5, v3

    const-string/jumbo v6, "charValue"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v4, v5

    .line 117
    .local v4, "charValueMethod":Lgnu/bytecode/Method;
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 118
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 119
    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 12

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v2, v7

    .line 146
    .local v2, "sig1":C
    const/4 v7, 0x0

    move-object v3, v7

    .line 147
    .local v3, "argType":Lgnu/bytecode/Type;
    const/4 v7, 0x0

    move-object v4, v7

    .line 148
    .local v4, "cname":Ljava/lang/String;
    move v7, v2

    sparse-switch v7, :sswitch_data_0

    .line 163
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Lgnu/bytecode/PrimType;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    .line 165
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 167
    move-object v7, v4

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v5, v7

    .line 168
    .local v5, "clas":Lgnu/bytecode/ClassType;
    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/bytecode/Type;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v6, v7

    .line 169
    .local v6, "args":[Lgnu/bytecode/Type;
    move-object v7, v1

    move-object v8, v5

    const-string/jumbo v9, "make"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 171
    .end local v5    # "clas":Lgnu/bytecode/ClassType;
    .end local v6    # "args":[Lgnu/bytecode/Type;
    :cond_0
    return-void

    .line 151
    :sswitch_0
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 152
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    const/4 v8, 0x1

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 153
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 154
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 155
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 156
    goto :goto_0

    .line 158
    :sswitch_1
    const-string/jumbo v7, "gnu.text.Char"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v5, v7

    .line 159
    .local v5, "scmCharType":Lgnu/bytecode/ClassType;
    move-object v7, v5

    const-string/jumbo v8, "make"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v6, v7

    .line 160
    .local v6, "makeCharMethod":Lgnu/bytecode/Method;
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 161
    goto :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 89
    .local v2, "sig1":C
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 100
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lgnu/bytecode/PrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 102
    :goto_0
    return-void

    .line 92
    :sswitch_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 93
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 94
    goto :goto_0

    .line 96
    :sswitch_1
    const-string/jumbo v4, "gnu.text.Char"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v3, v4

    .line 97
    .local v3, "scmCharType":Lgnu/bytecode/ClassType;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 98
    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 226
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 205
    .local v4, "sig1":C
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v5, v6

    .line 206
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 207
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 208
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 210
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 211
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 213
    :cond_1
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LangPrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 214
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 215
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LangPrimType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/LangPrimType;
    return-object v0
.end method
