.class public Lgnu/bytecode/MiscAttr;
.super Lgnu/bytecode/Attribute;
.source "MiscAttr.java"


# instance fields
.field data:[B

.field dataLength:I

.field offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":[B
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    array-length v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":[B
    move v3, p3

    .local v3, "offset":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/bytecode/MiscAttr;->data:[B

    .line 21
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/bytecode/MiscAttr;->offset:I

    .line 22
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lgnu/bytecode/MiscAttr;->dataLength:I

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/MiscAttr;->dataLength:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/MiscAttr;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 92
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/MiscAttr;->getLength()I

    move-result v5

    move v2, v5

    .line 93
    .local v2, "len":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 95
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/MiscAttr;->data:[B

    move v6, v3

    aget-byte v5, v5, v6

    move v4, v5

    .line 96
    .local v4, "b":I
    move v5, v3

    const/16 v6, 0x14

    rem-int/lit8 v5, v5, 0x14

    if-nez v5, :cond_0

    .line 97
    move-object v5, v1

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 98
    :cond_0
    move-object v5, v1

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 99
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x4

    shr-int/lit8 v6, v6, 0x4

    const/16 v7, 0xf

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 100
    move-object v5, v1

    move v6, v4

    const/16 v7, 0xf

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    move v5, v3

    const/16 v6, 0x14

    rem-int/lit8 v5, v5, 0x14

    if-eqz v5, :cond_1

    move v5, v3

    move v6, v2

    if-ne v5, v6, :cond_2

    .line 103
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 104
    :cond_2
    goto :goto_0

    .line 105
    .end local v4    # "b":I
    :cond_3
    return-void
.end method

.method protected put1(I)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move v1, p1

    .local v1, "val":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    if-nez v3, :cond_1

    .line 59
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [B

    iput-object v4, v3, Lgnu/bytecode/MiscAttr;->data:[B

    .line 66
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/bytecode/MiscAttr;->dataLength:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/bytecode/MiscAttr;->dataLength:I

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 67
    return-void

    .line 60
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/MiscAttr;->dataLength:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/MiscAttr;->data:[B

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 62
    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/MiscAttr;->data:[B

    array-length v4, v4

    mul-int/2addr v3, v4

    new-array v3, v3, [B

    move-object v2, v3

    .line 63
    .local v2, "tmp":[B
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/MiscAttr;->dataLength:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/MiscAttr;->data:[B

    goto :goto_0
.end method

.method protected put2(I)V
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move v1, p1

    .local v1, "val":I
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/MiscAttr;->put1(I)V

    .line 72
    move-object v2, v0

    move v3, v1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/MiscAttr;->put1(I)V

    .line 73
    return-void
.end method

.method protected put2(II)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "val":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    move v4, v1

    move v5, v2

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 78
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 79
    return-void
.end method

.method protected u1()I
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v1, v0

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/bytecode/MiscAttr;->offset:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {v1, v2}, Lgnu/bytecode/MiscAttr;->u1(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/MiscAttr;
    return v0
.end method

.method protected u1(I)I
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/MiscAttr;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/MiscAttr;
    return v0
.end method

.method protected u2()I
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/MiscAttr;->u2(I)I

    move-result v2

    move v1, v2

    .line 52
    .local v1, "v":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/MiscAttr;->offset:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/bytecode/MiscAttr;->offset:I

    .line 53
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/MiscAttr;
    return v0
.end method

.method protected u2(I)I
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/MiscAttr;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/MiscAttr;
    return v0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/MiscAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/MiscAttr;->data:[B

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/MiscAttr;->offset:I

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/MiscAttr;->dataLength:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 87
    return-void
.end method
