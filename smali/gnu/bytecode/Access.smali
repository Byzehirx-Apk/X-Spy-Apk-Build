.class public Lgnu/bytecode/Access;
.super Ljava/lang/Object;
.source "Access.java"


# static fields
.field public static final ABSTRACT:S = 0x400s

.field public static final ANNOTATION:S = 0x2000s

.field public static final BRIDGE:S = 0x40s

.field public static final CLASS_CONTEXT:C = 'C'

.field public static final CLASS_MODIFIERS:S = 0x7631s

.field public static final ENUM:S = 0x4000s

.field public static final FIELD_CONTEXT:C = 'F'

.field public static final FIELD_MODIFIERS:S = 0x50dfs

.field public static final FINAL:S = 0x10s

.field public static final INNERCLASS_CONTEXT:C = 'I'

.field public static final INNERCLASS_MODIFIERS:S = 0x761fs

.field public static final INTERFACE:S = 0x200s

.field public static final METHOD_CONTEXT:C = 'M'

.field public static final METHOD_MODIFIERS:S = 0x1dffs

.field public static final NATIVE:S = 0x100s

.field public static final PRIVATE:S = 0x2s

.field public static final PROTECTED:S = 0x4s

.field public static final PUBLIC:S = 0x1s

.field public static final STATIC:S = 0x8s

.field public static final STRICT:S = 0x800s

.field public static final SUPER:S = 0x20s

.field public static final SYNCHRONIZED:S = 0x20s

.field public static final SYNTHETIC:S = 0x1000s

.field public static final TRANSIENT:S = 0x80s

.field public static final VARARGS:S = 0x80s

.field public static final VOLATILE:S = 0x40s


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Access;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    move v0, p0

    .local v0, "flags":I
    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "flags":I
    return-object v0
.end method

.method public static toString(IC)Ljava/lang/String;
    .locals 9

    .prologue
    .line 71
    move v0, p0

    .local v0, "flags":I
    move v1, p1

    .local v1, "kind":C
    move v5, v1

    const/16 v6, 0x43

    if-ne v5, v6, :cond_10

    const/16 v5, 0x7631

    :goto_0
    move v2, v5

    .line 77
    .local v2, "mask":S
    move v5, v0

    move v6, v2

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    int-to-short v5, v5

    move v3, v5

    .line 78
    .local v3, "bad_flags":S
    move v5, v0

    move v6, v2

    and-int/2addr v5, v6

    move v0, v5

    .line 79
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v5

    .line 80
    .local v4, "buf":Ljava/lang/StringBuffer;
    move v5, v0

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    move-object v5, v4

    const-string/jumbo v6, " public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 81
    :cond_0
    move v5, v0

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move-object v5, v4

    const-string/jumbo v6, " private"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 82
    :cond_1
    move v5, v0

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    move-object v5, v4

    const-string/jumbo v6, " protected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 83
    :cond_2
    move v5, v0

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    move-object v5, v4

    const-string/jumbo v6, " static"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 84
    :cond_3
    move v5, v0

    const/16 v6, 0x10

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    move-object v5, v4

    const-string/jumbo v6, " final"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 85
    :cond_4
    move v5, v0

    const/16 v6, 0x20

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 86
    move-object v5, v4

    move v6, v1

    const/16 v7, 0x43

    if-ne v6, v7, :cond_14

    const-string/jumbo v6, " super"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 87
    :cond_5
    move v5, v0

    const/16 v6, 0x40

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 88
    move-object v5, v4

    move v6, v1

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_15

    const-string/jumbo v6, " bridge"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 89
    :cond_6
    move v5, v0

    const/16 v6, 0x80

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 90
    move-object v5, v4

    move v6, v1

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_16

    const-string/jumbo v6, " varargs"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 91
    :cond_7
    move v5, v0

    const/16 v6, 0x100

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    move-object v5, v4

    const-string/jumbo v6, " native"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 92
    :cond_8
    move v5, v0

    const/16 v6, 0x200

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_9

    move-object v5, v4

    const-string/jumbo v6, " interface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 93
    :cond_9
    move v5, v0

    const/16 v6, 0x400

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_a

    move-object v5, v4

    const-string/jumbo v6, " abstract"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 94
    :cond_a
    move v5, v0

    const/16 v6, 0x800

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_b

    move-object v5, v4

    const-string/jumbo v6, " strict"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 95
    :cond_b
    move v5, v0

    const/16 v6, 0x4000

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_c

    move-object v5, v4

    const-string/jumbo v6, " enum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 96
    :cond_c
    move v5, v0

    const/16 v6, 0x1000

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_d

    move-object v5, v4

    const-string/jumbo v6, " synthetic"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 97
    :cond_d
    move v5, v0

    const/16 v6, 0x2000

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_e

    move-object v5, v4

    const-string/jumbo v6, " annotation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 98
    :cond_e
    move v5, v3

    if-eqz v5, :cond_f

    .line 100
    move-object v5, v4

    const-string/jumbo v6, " unknown-flags:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 101
    move-object v5, v4

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 103
    :cond_f
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "flags":I
    return-object v0

    .line 71
    .end local v2    # "mask":S
    .end local v3    # "bad_flags":S
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    .restart local v0    # "flags":I
    :cond_10
    move v5, v1

    const/16 v6, 0x49

    if-ne v5, v6, :cond_11

    const/16 v5, 0x761f

    goto/16 :goto_0

    :cond_11
    move v5, v1

    const/16 v6, 0x46

    if-ne v5, v6, :cond_12

    const/16 v5, 0x50df

    goto/16 :goto_0

    :cond_12
    move v5, v1

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_13

    const/16 v5, 0x1dff

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x7fff

    goto/16 :goto_0

    .line 86
    .restart local v2    # "mask":S
    .restart local v3    # "bad_flags":S
    .restart local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_14
    const-string/jumbo v6, " synchronized"

    goto/16 :goto_1

    .line 88
    :cond_15
    const-string/jumbo v6, " volatile"

    goto/16 :goto_2

    .line 90
    :cond_16
    const-string/jumbo v6, " transient"

    goto/16 :goto_3
.end method
