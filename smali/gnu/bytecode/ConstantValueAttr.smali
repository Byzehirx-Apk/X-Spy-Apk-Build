.class public Lgnu/bytecode/ConstantValueAttr;
.super Lgnu/bytecode/Attribute;
.source "ConstantValueAttr.java"


# instance fields
.field value:Ljava/lang/Object;

.field value_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantValueAttr;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    const-string/jumbo v3, "ConstantValue"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 54
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantValueAttr;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    const-string/jumbo v3, "ConstantValue"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 48
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 8

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lgnu/bytecode/ConstantValueAttr;
    move-object v2, p1

    .local v2, "cl":Lgnu/bytecode/ClassType;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 60
    move-object v5, v1

    iget v5, v5, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    if-nez v5, :cond_1

    .line 62
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v3, v5

    .line 63
    .local v3, "cpool":Lgnu/bytecode/ConstantPool;
    const/4 v5, 0x0

    move-object v4, v5

    .line 64
    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 65
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v5

    move-object v4, v5

    .line 74
    :cond_0
    :goto_0
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/CpoolEntry;->getIndex()I

    move-result v6

    iput v6, v5, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    .line 76
    .end local v3    # "cpool":Lgnu/bytecode/ConstantPool;
    .end local v4    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_1
    return-void

    .line 66
    .restart local v3    # "cpool":Lgnu/bytecode/ConstantPool;
    .restart local v4    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 67
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 68
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 69
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 70
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_5

    .line 71
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 72
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 73
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v5

    move-object v4, v5

    goto :goto_0
.end method

.method public final getLength()I
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantValueAttr;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ConstantValueAttr;
    return v0
.end method

.method public getValue(Lgnu/bytecode/ConstantPool;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantValueAttr;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 20
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    move-object v0, v6

    .line 42
    .end local v0    # "this":Lgnu/bytecode/ConstantValueAttr;
    :goto_0
    return-object v0

    .line 21
    .restart local v0    # "this":Lgnu/bytecode/ConstantValueAttr;
    :cond_0
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    move-object v2, v6

    .line 22
    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 42
    :goto_1
    :pswitch_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0

    .line 25
    :pswitch_1
    move-object v6, v0

    move-object v7, v2

    check-cast v7, Lgnu/bytecode/CpoolString;

    invoke-virtual {v7}, Lgnu/bytecode/CpoolString;->getString()Lgnu/bytecode/CpoolUtf8;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/CpoolUtf8;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 26
    goto :goto_1

    .line 28
    :pswitch_2
    move-object v6, v0

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    check-cast v9, Lgnu/bytecode/CpoolValue1;

    iget v9, v9, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    iput-object v7, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 29
    goto :goto_1

    .line 31
    :pswitch_3
    move-object v6, v0

    new-instance v7, Ljava/lang/Long;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    check-cast v9, Lgnu/bytecode/CpoolValue2;

    iget-wide v9, v9, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-direct {v8, v9, v10}, Ljava/lang/Long;-><init>(J)V

    iput-object v7, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 32
    goto :goto_1

    .line 34
    :pswitch_4
    move-object v6, v2

    check-cast v6, Lgnu/bytecode/CpoolValue1;

    iget v6, v6, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move v3, v6

    .line 35
    .local v3, "f":F
    move-object v6, v0

    new-instance v7, Ljava/lang/Float;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v3

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v7, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 36
    goto :goto_1

    .line 38
    .end local v3    # "f":F
    :pswitch_5
    move-object v6, v2

    check-cast v6, Lgnu/bytecode/CpoolValue2;

    iget-wide v6, v6, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    move-wide v4, v6

    .line 39
    .local v4, "d":D
    move-object v6, v0

    new-instance v7, Ljava/lang/Double;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-wide v9, v4

    invoke-direct {v8, v9, v10}, Ljava/lang/Double;-><init>(D)V

    iput-object v7, v6, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_1

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantValueAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v3, v1

    const-string/jumbo v4, "Attribute \""

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 88
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ConstantValueAttr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 89
    move-object v3, v1

    const-string/jumbo v4, "\", length:"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ConstantValueAttr;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 91
    move-object v3, v1

    const-string/jumbo v4, ", value: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 92
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    if-nez v3, :cond_1

    .line 94
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantValueAttr;->getValue(Lgnu/bytecode/ConstantPool;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 95
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 96
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printQuotedString(Ljava/lang/String;)V

    .line 99
    .line 106
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 107
    return-void

    .line 98
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 103
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v3

    move-object v2, v3

    .line 104
    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantValueAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    return-void
.end method
