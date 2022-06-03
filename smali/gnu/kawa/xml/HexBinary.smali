.class public Lgnu/kawa/xml/HexBinary;
.super Lgnu/kawa/xml/BinaryObject;
.source "HexBinary.java"


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HexBinary;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/HexBinary;->data:[B

    .line 10
    return-void
.end method

.method static forHexDigit(I)C
    .locals 3

    .prologue
    .line 41
    move v0, p0

    .local v0, "val":I
    move v1, v0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    :goto_0
    move v0, v1

    .end local v0    # "val":I
    return v0

    .restart local v0    # "val":I
    :cond_0
    move v1, v0

    const/16 v2, 0xa

    add-int/lit8 v1, v1, -0xa

    const/16 v2, 0x41

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    goto :goto_0
.end method

.method static parseHexBinary(Ljava/lang/String;)[B
    .locals 12

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 20
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v7

    .line 21
    .local v1, "len":I
    move v7, v1

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 22
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "hexBinary string length not a multiple of 2"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 23
    :cond_0
    move v7, v1

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    move v1, v7

    .line 24
    move v7, v1

    new-array v7, v7, [B

    move-object v2, v7

    .line 25
    .local v2, "result":[B
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v1

    if-ge v7, v8, :cond_4

    .line 27
    move-object v7, v0

    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v4, v7

    .line 28
    .local v4, "d1":I
    move-object v7, v0

    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v5, v7

    .line 29
    .local v5, "d2":I
    const/4 v7, -0x1

    move v6, v7

    .line 30
    .local v6, "bad":I
    move v7, v4

    if-gez v7, :cond_2

    const/4 v7, 0x2

    move v8, v3

    mul-int/2addr v7, v8

    move v6, v7

    .line 32
    :cond_1
    :goto_1
    move v7, v6

    if-ltz v7, :cond_3

    .line 33
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid hexBinary character at position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 31
    :cond_2
    move v7, v5

    if-gez v7, :cond_1

    const/4 v7, 0x2

    move v8, v3

    mul-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    goto :goto_1

    .line 34
    :cond_3
    move-object v7, v2

    move v8, v3

    const/16 v9, 0x10

    move v10, v4

    mul-int/2addr v9, v10

    move v10, v5

    add-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v4    # "d1":I
    .end local v5    # "d2":I
    .end local v6    # "bad":I
    :cond_4
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lgnu/kawa/xml/HexBinary;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Lgnu/kawa/xml/HexBinary;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HexBinary;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/HexBinary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/HexBinary;
    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HexBinary;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/HexBinary;->data:[B

    move-object v2, v6

    .line 47
    .local v2, "bb":[B
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 48
    .local v3, "len":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 50
    move-object v6, v2

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    .line 51
    .local v5, "b":B
    move-object v6, v1

    move v7, v5

    const/4 v8, 0x4

    shr-int/lit8 v7, v7, 0x4

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 52
    move-object v6, v1

    move v7, v5

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v5    # "b":B
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/xml/HexBinary;
    return-object v0
.end method
