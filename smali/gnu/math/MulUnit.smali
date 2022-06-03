.class Lgnu/math/MulUnit;
.super Lgnu/math/Unit;
.source "MulUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field next:Lgnu/math/MulUnit;

.field power1:I

.field power2:I

.field unit1:Lgnu/math/Unit;

.field unit2:Lgnu/math/Unit;


# direct methods
.method constructor <init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V
    .locals 13

    .prologue
    .line 20
    move-object v1, p0

    .local v1, "this":Lgnu/math/MulUnit;
    move-object v2, p1

    .local v2, "unit1":Lgnu/math/Unit;
    move v3, p2

    .local v3, "power1":I
    move-object/from16 v4, p3

    .local v4, "unit2":Lgnu/math/Unit;
    move/from16 v5, p4

    .local v5, "power2":I
    move-object v7, v1

    invoke-direct {v7}, Lgnu/math/Unit;-><init>()V

    .line 21
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    .line 22
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    .line 23
    move-object v7, v1

    move v8, v3

    iput v8, v7, Lgnu/math/MulUnit;->power1:I

    .line 24
    move-object v7, v1

    move v8, v5

    iput v8, v7, Lgnu/math/MulUnit;->power2:I

    .line 25
    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    move v9, v3

    move-object v10, v4

    iget-object v10, v10, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    move v11, v5

    invoke-static {v8, v9, v10, v11}, Lgnu/math/Dimensions;->product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;

    move-result-object v8

    iput-object v8, v7, Lgnu/math/MulUnit;->dims:Lgnu/math/Dimensions;

    .line 27
    move v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 28
    move-object v7, v1

    move-object v8, v2

    iget-wide v8, v8, Lgnu/math/Unit;->factor:D

    iput-wide v8, v7, Lgnu/math/MulUnit;->factor:D

    .line 31
    :goto_0
    move v7, v5

    if-gez v7, :cond_2

    .line 33
    move v7, v5

    neg-int v7, v7

    move v6, v7

    .local v6, "i":I
    :goto_1
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    if-ltz v7, :cond_1

    .line 34
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lgnu/math/MulUnit;->factor:D

    move-object v10, v4

    iget-wide v10, v10, Lgnu/math/Unit;->factor:D

    div-double/2addr v8, v10

    iput-wide v8, v7, Lgnu/math/MulUnit;->factor:D

    goto :goto_1

    .line 30
    .end local v6    # "i":I
    :cond_0
    move-object v7, v1

    move-object v8, v2

    iget-wide v8, v8, Lgnu/math/Unit;->factor:D

    move v10, v3

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lgnu/math/MulUnit;->factor:D

    goto :goto_0

    .line 34
    .line 42
    .restart local v6    # "i":I
    :cond_1
    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    iput-object v8, v7, Lgnu/math/MulUnit;->next:Lgnu/math/MulUnit;

    .line 43
    move-object v7, v2

    move-object v8, v1

    iput-object v8, v7, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    .line 44
    return-void

    .line 38
    .end local v6    # "i":I
    :cond_2
    move v7, v5

    move v6, v7

    .restart local v6    # "i":I
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    if-ltz v7, :cond_1

    .line 39
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lgnu/math/MulUnit;->factor:D

    move-object v10, v4

    iget-wide v10, v10, Lgnu/math/Unit;->factor:D

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lgnu/math/MulUnit;->factor:D

    goto :goto_2
.end method

.method constructor <init>(Lgnu/math/Unit;Lgnu/math/Unit;I)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/math/MulUnit;
    move-object v1, p1

    .local v1, "unit1":Lgnu/math/Unit;
    move-object v2, p2

    .local v2, "unit2":Lgnu/math/Unit;
    move v3, p3

    .local v3, "power2":I
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/math/MulUnit;-><init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V

    .line 49
    return-void
.end method

.method static lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "unit1":Lgnu/math/Unit;
    move v1, p1

    .local v1, "power1":I
    move-object v2, p2

    .local v2, "unit2":Lgnu/math/Unit;
    move v3, p3

    .local v3, "power2":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    move-object v4, v5

    .local v4, "u":Lgnu/math/MulUnit;
    :goto_0
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 85
    move-object v5, v4

    iget-object v5, v5, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v6, v0

    if-ne v5, v6, :cond_0

    move-object v5, v4

    iget-object v5, v5, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v6, v2

    if-ne v5, v6, :cond_0

    move-object v5, v4

    iget v5, v5, Lgnu/math/MulUnit;->power1:I

    move v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v4

    iget v5, v5, Lgnu/math/MulUnit;->power2:I

    move v6, v3

    if-ne v5, v6, :cond_0

    .line 87
    move-object v5, v4

    move-object v0, v5

    .line 89
    .end local v0    # "unit1":Lgnu/math/Unit;
    :goto_1
    return-object v0

    .line 83
    .restart local v0    # "unit1":Lgnu/math/Unit;
    :cond_0
    move-object v5, v4

    iget-object v5, v5, Lgnu/math/MulUnit;->next:Lgnu/math/MulUnit;

    move-object v4, v5

    goto :goto_0

    .line 89
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static make(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;
    .locals 12

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "unit1":Lgnu/math/Unit;
    move v1, p1

    .local v1, "power1":I
    move-object v2, p2

    .local v2, "unit2":Lgnu/math/Unit;
    move v3, p3

    .local v3, "power2":I
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move v8, v3

    invoke-static {v5, v6, v7, v8}, Lgnu/math/MulUnit;->lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v5

    move-object v4, v5

    .line 95
    .local v4, "u":Lgnu/math/MulUnit;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 96
    move-object v5, v4

    move-object v0, v5

    .line 97
    .end local v0    # "unit1":Lgnu/math/Unit;
    :goto_0
    return-object v0

    .restart local v0    # "unit1":Lgnu/math/Unit;
    :cond_0
    new-instance v5, Lgnu/math/MulUnit;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/math/MulUnit;-><init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/math/MulUnit;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/Unit;

    iput-object v3, v2, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    .line 116
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lgnu/math/MulUnit;->power1:I

    .line 117
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/Unit;

    iput-object v3, v2, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    .line 118
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lgnu/math/MulUnit;->power2:I

    .line 119
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/math/MulUnit;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v3, v0

    iget v3, v3, Lgnu/math/MulUnit;->power1:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v5, v0

    iget v5, v5, Lgnu/math/MulUnit;->power2:I

    invoke-static {v2, v3, v4, v5}, Lgnu/math/MulUnit;->lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v2

    move-object v1, v2

    .line 124
    .local v1, "u":Lgnu/math/MulUnit;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v1

    move-object v0, v2

    .line 126
    .end local v0    # "this":Lgnu/math/MulUnit;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/MulUnit;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public sqrt()Lgnu/math/Unit;
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/math/MulUnit;
    move-object v1, v0

    iget v1, v1, Lgnu/math/MulUnit;->power1:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/math/MulUnit;->power2:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 76
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v2, v0

    iget v2, v2, Lgnu/math/MulUnit;->power1:I

    const/4 v3, 0x1

    shr-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v4, v0

    iget v4, v4, Lgnu/math/MulUnit;->power2:I

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lgnu/math/MulUnit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v1

    move-object v0, v1

    .line 77
    .end local v0    # "this":Lgnu/math/MulUnit;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/MulUnit;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lgnu/math/Unit;->sqrt()Lgnu/math/Unit;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/math/MulUnit;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 54
    .local v1, "str":Ljava/lang/StringBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 55
    move-object v2, v0

    iget v2, v2, Lgnu/math/MulUnit;->power1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 57
    move-object v2, v1

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 58
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/math/MulUnit;->power1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 60
    :cond_0
    move-object v2, v0

    iget v2, v2, Lgnu/math/MulUnit;->power2:I

    if-eqz v2, :cond_1

    .line 62
    move-object v2, v1

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 63
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 64
    move-object v2, v0

    iget v2, v2, Lgnu/math/MulUnit;->power2:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 66
    move-object v2, v1

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 67
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/math/MulUnit;->power2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 70
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/MulUnit;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/math/MulUnit;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 107
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/math/MulUnit;->power1:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 108
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 109
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/math/MulUnit;->power2:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 110
    return-void
.end method
