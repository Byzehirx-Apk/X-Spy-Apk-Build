.class public Lgnu/math/NamedUnit;
.super Lgnu/math/Unit;
.source "NamedUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field base:Lgnu/math/Unit;

.field chain:Lgnu/math/NamedUnit;

.field name:Ljava/lang/String;

.field scale:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/math/NamedUnit;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Unit;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLgnu/math/Unit;)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/math/NamedUnit;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "factor":D
    move-object v4, p4

    .local v4, "base":Lgnu/math/Unit;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/math/Unit;-><init>()V

    .line 39
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 40
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 41
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lgnu/math/NamedUnit;->scale:D

    .line 42
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/NamedUnit;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/math/DQuantity;)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/math/NamedUnit;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Lgnu/math/DQuantity;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/Unit;-><init>()V

    .line 31
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 32
    move-object v3, v0

    move-object v4, v2

    iget-wide v4, v4, Lgnu/math/DQuantity;->factor:D

    iput-wide v4, v3, Lgnu/math/NamedUnit;->scale:D

    .line 33
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    iput-object v4, v3, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 34
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/NamedUnit;->init()V

    .line 35
    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 61
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v1, v4

    .line 62
    .local v1, "hash":I
    move v4, v1

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    sget-object v5, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v5, v5

    rem-int/2addr v4, v5

    move v2, v4

    .line 63
    .local v2, "index":I
    sget-object v4, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .local v3, "unit":Lgnu/math/NamedUnit;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 65
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 66
    move-object v4, v3

    move-object v0, v4

    .line 68
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 63
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    move-object v3, v4

    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;
    .locals 13

    .prologue
    .line 73
    move-object v1, p0

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p1

    .local v2, "scale":D
    move-object/from16 v4, p3

    .local v4, "base":Lgnu/math/Unit;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 74
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    move v5, v8

    .line 75
    .local v5, "hash":I
    move v8, v5

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    sget-object v9, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v9, v9

    rem-int/2addr v8, v9

    move v6, v8

    .line 76
    .local v6, "index":I
    sget-object v8, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .local v7, "unit":Lgnu/math/NamedUnit;
    :goto_0
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 78
    move-object v8, v7

    iget-object v8, v8, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    move-object v9, v1

    if-ne v8, v9, :cond_0

    move-object v8, v7

    iget-wide v8, v8, Lgnu/math/NamedUnit;->scale:D

    move-wide v10, v2

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    move-object v8, v7

    iget-object v8, v8, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    move-object v9, v4

    if-ne v8, v9, :cond_0

    .line 79
    move-object v8, v7

    move-object v1, v8

    .line 81
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 76
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    move-object v8, v7

    iget-object v8, v8, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    move-object v7, v8

    goto :goto_0

    .line 81
    :cond_1
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_1
.end method

.method public static make(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;
    .locals 13

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "scale":D
    move-object/from16 v3, p3

    .local v3, "base":Lgnu/math/Unit;
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v5

    move-object v4, v5

    .line 87
    .local v4, "old":Lgnu/math/NamedUnit;
    move-object v5, v4

    if-nez v5, :cond_0

    new-instance v5, Lgnu/math/NamedUnit;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-wide v8, v1

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    :goto_0
    move-object v0, v5

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v5, v4

    goto :goto_0
.end method

.method public static make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;
    .locals 13

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Lgnu/math/Quantity;
    move-object v6, v1

    instance-of v6, v6, Lgnu/math/DQuantity;

    if-eqz v6, :cond_0

    .line 94
    move-object v6, v1

    check-cast v6, Lgnu/math/DQuantity;

    iget-wide v6, v6, Lgnu/math/DQuantity;->factor:D

    move-wide v2, v6

    .line 100
    .local v2, "scale":D
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    move-object v4, v6

    .line 101
    .local v4, "base":Lgnu/math/Unit;
    move-object v6, v0

    move-wide v7, v2

    move-object v9, v4

    invoke-static {v6, v7, v8, v9}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v6

    move-object v5, v6

    .line 102
    .local v5, "old":Lgnu/math/NamedUnit;
    move-object v6, v5

    if-nez v6, :cond_2

    new-instance v6, Lgnu/math/NamedUnit;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-wide v9, v2

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    :goto_1
    move-object v0, v6

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .line 95
    .end local v2    # "scale":D
    .end local v4    # "base":Lgnu/math/Unit;
    .end local v5    # "old":Lgnu/math/NamedUnit;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    .line 96
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "defining "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " using complex value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .restart local v2    # "scale":D
    goto :goto_0

    .line 102
    .restart local v4    # "base":Lgnu/math/Unit;
    .restart local v5    # "old":Lgnu/math/NamedUnit;
    :cond_2
    move-object v6, v5

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/math/NamedUnit;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/NamedUnit;
    return-object v0
.end method

.method protected init()V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/math/NamedUnit;
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/NamedUnit;->scale:D

    move-object v6, v0

    iget-object v6, v6, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    iget-wide v6, v6, Lgnu/math/Unit;->factor:D

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lgnu/math/NamedUnit;->factor:D

    .line 48
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    iget-object v4, v4, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    iput-object v4, v3, Lgnu/math/NamedUnit;->dims:Lgnu/math/Dimensions;

    .line 49
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 50
    move-object v3, v0

    iget-object v3, v3, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v1, v3

    .line 51
    .local v1, "hash":I
    move v3, v1

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    sget-object v4, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v4, v4

    rem-int/2addr v3, v4

    move v2, v3

    .line 52
    .local v2, "index":I
    move-object v3, v0

    sget-object v4, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    move v5, v2

    aget-object v4, v4, v5

    iput-object v4, v3, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    .line 53
    sget-object v3, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    move v4, v2

    move-object v5, v0

    aput-object v5, v3, v4

    .line 54
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "this":Lgnu/math/NamedUnit;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 121
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/NamedUnit;->scale:D

    .line 122
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/math/Unit;

    iput-object v4, v3, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 123
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Lgnu/math/NamedUnit;
    move-object v3, v1

    iget-object v3, v3, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/NamedUnit;->scale:D

    move-object v6, v1

    iget-object v6, v6, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    invoke-static {v3, v4, v5, v6}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v3

    move-object v2, v3

    .line 128
    .local v2, "unit":Lgnu/math/NamedUnit;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v2

    move-object v1, v3

    .line 131
    .end local v1    # "this":Lgnu/math/NamedUnit;
    :goto_0
    return-object v1

    .line 130
    .restart local v1    # "this":Lgnu/math/NamedUnit;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/NamedUnit;->init()V

    .line 131
    move-object v3, v1

    move-object v1, v3

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lgnu/math/NamedUnit;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 113
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/NamedUnit;->scale:D

    invoke-interface {v3, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 114
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 115
    return-void
.end method
