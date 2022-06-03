.class public Lgnu/lists/U8Vector;
.super Lgnu/lists/ByteVector;
.source "U8Vector.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/ByteVector;-><init>()V

    .line 13
    move-object v1, v0

    sget-object v2, Lgnu/lists/ByteVector;->empty:[B

    iput-object v2, v1, Lgnu/lists/U8Vector;->data:[B

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/ByteVector;-><init>()V

    .line 27
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [B

    iput-object v3, v2, Lgnu/lists/U8Vector;->data:[B

    .line 28
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/U8Vector;->size:I

    .line 29
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move v1, p1

    .local v1, "size":I
    move v2, p2

    .local v2, "value":B
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/ByteVector;-><init>()V

    .line 18
    move v4, v1

    new-array v4, v4, [B

    move-object v3, v4

    .line 19
    .local v3, "array":[B
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/U8Vector;->data:[B

    .line 20
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/lists/U8Vector;->size:I

    .line 21
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_0

    .line 22
    move-object v4, v3

    move v5, v1

    move v6, v2

    aput-byte v6, v4, v5

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/ByteVector;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v2, Lgnu/lists/U8Vector;->data:[B

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/U8Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/ByteVector;-><init>()V

    .line 33
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/U8Vector;->data:[B

    .line 34
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/U8Vector;->size:I

    .line 35
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/lists/U8Vector;

    invoke-static {v2, v3}, Lgnu/lists/U8Vector;->compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/U8Vector;->size:I

    if-le v2, v3, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 52
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U8Vector;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U8Vector;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return-object v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    const/16 v1, 0x11

    move v0, v1

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    const-string/jumbo v1, "u8"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U8Vector;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return v0
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U8Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U8Vector;->data:[B

    move v5, v1

    aget-byte v4, v4, v5

    move v3, v4

    .line 63
    .local v3, "old":B
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U8Vector;->data:[B

    move v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/lists/Convert;->toByteUnsigned(Ljava/lang/Object;)B

    move-result v6

    aput-byte v6, v4, v5

    .line 64
    move v4, v3

    invoke-static {v4}, Lgnu/lists/Convert;->toObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/U8Vector;
    return-object v0
.end method
