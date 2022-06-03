.class public Lgnu/bytecode/PrimType;
.super Lgnu/bytecode/Type;
.source "PrimType.java"


# static fields
.field private static final numberHierarchy:Ljava/lang/String; = "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"


# direct methods
.method protected constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/PrimType;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/PrimType;->size:I

    iput v3, v2, Lgnu/bytecode/PrimType;->size:I

    .line 16
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    iput-object v3, v2, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 8

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
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

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/bytecode/PrimType;->size:I

    .line 8
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 9
    move-object v5, v4

    move-object v6, v0

    invoke-static {v5, v6}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 10
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "type1":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "type2":Lgnu/bytecode/PrimType;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 161
    .local v2, "sig1":C
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 163
    .local v3, "sig2":C
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_0

    .line 164
    const/4 v4, 0x0

    move v0, v4

    .line 204
    .end local v0    # "type1":Lgnu/bytecode/PrimType;
    :goto_0
    return v0

    .line 167
    .restart local v0    # "type1":Lgnu/bytecode/PrimType;
    :cond_0
    move v4, v2

    const/16 v5, 0x56

    if-ne v4, v5, :cond_1

    .line 168
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 169
    :cond_1
    move v4, v3

    const/16 v5, 0x56

    if-ne v4, v5, :cond_2

    .line 170
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 175
    :cond_2
    move v4, v2

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_4

    .line 176
    :cond_3
    const/4 v4, -0x3

    move v0, v4

    goto :goto_0

    .line 178
    :cond_4
    move v4, v2

    const/16 v5, 0x43

    if-ne v4, v5, :cond_6

    .line 179
    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/PrimType;->size:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_5

    const/4 v4, -0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_5
    const/4 v4, -0x3

    goto :goto_1

    .line 180
    :cond_6
    move v4, v3

    const/16 v5, 0x43

    if-ne v4, v5, :cond_8

    .line 181
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/PrimType;->size:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_7
    const/4 v4, -0x3

    goto :goto_2

    .line 183
    :cond_8
    move v4, v2

    const/16 v5, 0x44

    if-ne v4, v5, :cond_9

    .line 184
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 185
    :cond_9
    move v4, v3

    const/16 v5, 0x44

    if-ne v4, v5, :cond_a

    .line 186
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 187
    :cond_a
    move v4, v2

    const/16 v5, 0x46

    if-ne v4, v5, :cond_b

    .line 188
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 189
    :cond_b
    move v4, v3

    const/16 v5, 0x46

    if-ne v4, v5, :cond_c

    .line 190
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 191
    :cond_c
    move v4, v2

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_d

    .line 192
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 193
    :cond_d
    move v4, v3

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_e

    .line 194
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 195
    :cond_e
    move v4, v2

    const/16 v5, 0x49

    if-ne v4, v5, :cond_f

    .line 196
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 197
    :cond_f
    move v4, v3

    const/16 v5, 0x49

    if-ne v4, v5, :cond_10

    .line 198
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 199
    :cond_10
    move v4, v2

    const/16 v5, 0x53

    if-ne v4, v5, :cond_11

    .line 200
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 201
    :cond_11
    move v4, v3

    const/16 v5, 0x53

    if-ne v4, v5, :cond_12

    .line 202
    const/4 v4, -0x1

    move v0, v4

    goto/16 :goto_0

    .line 204
    :cond_12
    const/4 v4, -0x3

    move v0, v4

    goto/16 :goto_0
.end method

.method private static findInHierarchy(Ljava/lang/String;)C
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "cname":Ljava/lang/String;
    const-string/jumbo v2, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    add-int/lit8 v2, v2, -0x2

    move v1, v2

    .line 241
    .local v1, "pos":I
    move v2, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "cname":Ljava/lang/String;
    return v0

    .restart local v0    # "cname":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public boxedType()Lgnu/bytecode/ClassType;
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 71
    .local v1, "sig1":C
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 81
    const/4 v3, 0x0

    move-object v2, v3

    .line 83
    .local v2, "cname":Ljava/lang/String;
    :goto_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/PrimType;
    return-object v0

    .line 73
    .end local v2    # "cname":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/bytecode/PrimType;
    :sswitch_0
    const-string/jumbo v3, "java.lang.Boolean"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v3, "java.lang.Character"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "java.lang.Byte"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "java.lang.Short"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "java.lang.Integer"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v3, "java.lang.Long"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v3, "java.lang.Float"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v2    # "cname":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v3, "java.lang.Double"

    move-object v2, v3

    .restart local v2    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public charValue(Ljava/lang/Object;)C
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/PrimType;
    return v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 21
    move-object v1, p0

    .local v1, "this":Lgnu/bytecode/PrimType;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    .line 22
    move-object v4, v2

    move-object v1, v4

    .line 34
    .end local v1    # "this":Lgnu/bytecode/PrimType;
    :goto_0
    return-object v1

    .line 23
    .restart local v1    # "this":Lgnu/bytecode/PrimType;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    :cond_1
    const/16 v4, 0x20

    :goto_1
    move v3, v4

    .line 26
    .local v3, "sig1":C
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 48
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "don\'t know how to coerce "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/bytecode/PrimType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 23
    .end local v3    # "sig1":C
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    .line 28
    .restart local v3    # "sig1":C
    :sswitch_0
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 29
    :sswitch_1
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 30
    :sswitch_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 31
    :sswitch_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_0

    .line 32
    :sswitch_4
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_0

    .line 33
    :sswitch_5
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_0

    .line 34
    :sswitch_6
    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_0

    .line 26
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v6, v1

    instance-of v6, v6, Lgnu/bytecode/PrimType;

    if-eqz v6, :cond_1

    .line 251
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v7, v1

    if-eq v6, v7, :cond_0

    .line 252
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v6

    invoke-static {v6}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v6

    move v0, v6

    .line 295
    .end local v0    # "this":Lgnu/bytecode/PrimType;
    :goto_0
    return v0

    .line 253
    .restart local v0    # "this":Lgnu/bytecode/PrimType;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Lgnu/bytecode/PrimType;

    invoke-static {v6, v7}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 255
    :cond_1
    move-object v6, v1

    instance-of v6, v6, Lgnu/bytecode/ClassType;

    if-nez v6, :cond_3

    .line 257
    move-object v6, v1

    instance-of v6, v6, Lgnu/bytecode/ArrayType;

    if-eqz v6, :cond_2

    .line 258
    const/4 v6, -0x3

    move v0, v6

    goto :goto_0

    .line 260
    :cond_2
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v6

    invoke-static {v6}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 262
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v2, v6

    .line 263
    .local v2, "sig1":C
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 264
    .local v3, "otherName":Ljava/lang/String;
    move-object v6, v3

    if-nez v6, :cond_4

    .line 265
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 266
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    .line 267
    .local v4, "thisPriority":C
    move v6, v2

    sparse-switch v6, :sswitch_data_0

    .line 285
    :cond_5
    :goto_1
    move v6, v4

    if-eqz v6, :cond_9

    .line 287
    move-object v6, v3

    invoke-static {v6}, Lgnu/bytecode/PrimType;->findInHierarchy(Ljava/lang/String;)C

    move-result v6

    move v5, v6

    .line 288
    .local v5, "otherPriority":C
    move v6, v5

    if-eqz v6, :cond_9

    .line 289
    move v6, v5

    move v7, v4

    if-ne v6, v7, :cond_7

    const/4 v6, 0x0

    :goto_2
    move v0, v6

    goto :goto_0

    .line 270
    .end local v5    # "otherPriority":C
    :sswitch_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 272
    :sswitch_1
    move-object v6, v3

    const-string/jumbo v7, "java.lang.Boolean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 273
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 275
    :cond_6
    :sswitch_2
    move-object v6, v3

    const-string/jumbo v7, "java.lang.Character"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 276
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 278
    :sswitch_3
    const/16 v6, 0x41

    move v4, v6

    goto :goto_1

    .line 279
    :sswitch_4
    const/16 v6, 0x42

    move v4, v6

    goto :goto_1

    .line 280
    :sswitch_5
    const/16 v6, 0x43

    move v4, v6

    goto :goto_1

    .line 281
    :sswitch_6
    const/16 v6, 0x44

    move v4, v6

    goto :goto_1

    .line 282
    :sswitch_7
    const/16 v6, 0x48

    move v4, v6

    goto :goto_1

    .line 283
    :sswitch_8
    const/16 v6, 0x49

    move v4, v6

    goto :goto_1

    .line 289
    .restart local v5    # "otherPriority":C
    :cond_7
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, -0x1

    goto :goto_2

    .line 292
    .end local v5    # "otherPriority":C
    :cond_9
    move-object v6, v3

    const-string/jumbo v7, "java.lang.Object"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    move-object v6, v1

    sget-object v7, Lgnu/bytecode/PrimType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v6, v7, :cond_b

    .line 294
    :cond_a
    const/4 v6, -0x1

    move v0, v6

    goto/16 :goto_0

    .line 295
    :cond_b
    const/4 v6, -0x3

    move v0, v6

    goto/16 :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_5
        0x4a -> :sswitch_6
        0x53 -> :sswitch_4
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x20

    :goto_0
    move v2, v3

    .line 134
    .local v2, "sig1":C
    move v3, v2

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    .line 136
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 137
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->booleanValue_method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 156
    :goto_1
    return-void

    .line 132
    .end local v2    # "sig1":C
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 139
    .restart local v2    # "sig1":C
    :cond_2
    move v3, v2

    const/16 v4, 0x56

    if-ne v3, v4, :cond_3

    .line 140
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_1

    .line 143
    :cond_3
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 144
    move v3, v2

    const/16 v4, 0x49

    if-eq v3, v4, :cond_4

    move v3, v2

    const/16 v4, 0x53

    if-eq v3, v4, :cond_4

    move v3, v2

    const/16 v4, 0x42

    if-ne v3, v4, :cond_5

    .line 145
    :cond_4
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->intValue_method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 146
    :cond_5
    move v3, v2

    const/16 v4, 0x4a

    if-ne v3, v4, :cond_6

    .line 147
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->longValue_method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 148
    :cond_6
    move v3, v2

    const/16 v4, 0x44

    if-ne v3, v4, :cond_7

    .line 149
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->doubleValue_method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 150
    :cond_7
    move v3, v2

    const/16 v4, 0x46

    if-ne v3, v4, :cond_8

    .line 151
    move-object v3, v1

    sget-object v4, Lgnu/bytecode/PrimType;->floatValue_method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 154
    :cond_8
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v2, v6

    .line 89
    .local v2, "sig1":C
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v3, v6

    .line 90
    .local v3, "clas":Lgnu/bytecode/ClassType;
    move v6, v2

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_0

    .line 92
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 93
    move-object v6, v1

    move-object v7, v3

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 94
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 95
    move-object v6, v1

    move-object v7, v3

    const-string/jumbo v8, "FALSE"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 96
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 97
    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Lgnu/bytecode/Type;

    move-object v5, v6

    .line 101
    .local v5, "args":[Lgnu/bytecode/Type;
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    .line 102
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    iget v6, v6, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const/high16 v7, 0x310000    # 4.49994E-39f

    if-lt v6, v7, :cond_1

    .line 103
    move-object v6, v3

    const-string/jumbo v7, "valueOf"

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v4, v6

    .line 111
    .local v4, "method":Lgnu/bytecode/Method;
    :goto_1
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 112
    goto :goto_0

    .line 106
    .end local v4    # "method":Lgnu/bytecode/Method;
    :cond_1
    move-object v6, v3

    const-string/jumbo v7, "<init>"

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v4, v6

    .line 107
    .restart local v4    # "method":Lgnu/bytecode/Method;
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 108
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 109
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_1
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x20

    :goto_0
    move v2, v3

    .line 118
    .local v2, "sig1":C
    move v3, v2

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    .line 119
    sget-object v3, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 128
    :goto_1
    return-void

    .line 116
    .end local v2    # "sig1":C
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 120
    .restart local v2    # "sig1":C
    :cond_2
    move v3, v2

    const/16 v4, 0x56

    if-ne v3, v4, :cond_3

    .line 122
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 123
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_1

    .line 127
    :cond_3
    sget-object v3, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1
.end method

.method public promotedType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/PrimType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 214
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/PrimType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/PrimType;
    :goto_0
    return-object v0

    .line 212
    .restart local v0    # "this":Lgnu/bytecode/PrimType;
    :sswitch_0
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x49 -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method
