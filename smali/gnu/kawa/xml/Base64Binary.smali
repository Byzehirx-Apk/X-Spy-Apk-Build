.class public Lgnu/kawa/xml/Base64Binary;
.super Lgnu/kawa/xml/BinaryObject;
.source "Base64Binary.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 21
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/xml/Base64Binary;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v11, v0

    invoke-direct {v11}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 22
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v2, v11

    .line 23
    .local v2, "len":I
    const/4 v11, 0x0

    move v3, v11

    .line 24
    .local v3, "blen":I
    const/4 v11, 0x0

    move v4, v11

    .local v4, "i":I
    :goto_0
    move v11, v4

    move v12, v2

    if-ge v11, v12, :cond_1

    .line 26
    move-object v11, v1

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v5, v11

    .line 27
    .local v5, "ch":C
    move v11, v5

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_0

    move v11, v5

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_0

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 24
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local v5    # "ch":C
    :cond_1
    const/4 v11, 0x3

    move v12, v3

    mul-int/2addr v11, v12

    const/4 v12, 0x4

    div-int/lit8 v11, v11, 0x4

    move v3, v11

    .line 31
    move v11, v3

    new-array v11, v11, [B

    move-object v4, v11

    .line 33
    .local v4, "bytes":[B
    const/4 v11, 0x0

    move v5, v11

    .line 34
    .local v5, "value":I
    const/4 v11, 0x0

    move v6, v11

    .line 35
    .local v6, "buffered":I
    const/4 v11, 0x0

    move v7, v11

    .line 36
    .local v7, "padding":I
    const/4 v11, 0x0

    move v3, v11

    .line 37
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_1
    move v11, v8

    move v12, v2

    if-ge v11, v12, :cond_c

    .line 39
    move-object v11, v1

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v9, v11

    .line 41
    .local v9, "ch":C
    move v11, v9

    const/16 v12, 0x41

    if-lt v11, v12, :cond_3

    move v11, v9

    const/16 v12, 0x5a

    if-gt v11, v12, :cond_3

    .line 42
    move v11, v9

    const/16 v12, 0x41

    add-int/lit8 v11, v11, -0x41

    move v10, v11

    .line 60
    .local v10, "v":I
    :goto_2
    move v11, v10

    if-ltz v11, :cond_2

    move v11, v7

    if-lez v11, :cond_b

    .line 61
    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "illegal character in base64Binary string at position "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 43
    .end local v10    # "v":I
    :cond_3
    move v11, v9

    const/16 v12, 0x61

    if-lt v11, v12, :cond_4

    move v11, v9

    const/16 v12, 0x7a

    if-gt v11, v12, :cond_4

    .line 44
    move v11, v9

    const/16 v12, 0x61

    add-int/lit8 v11, v11, -0x61

    const/16 v12, 0x1a

    add-int/lit8 v11, v11, 0x1a

    move v10, v11

    .restart local v10    # "v":I
    goto :goto_2

    .line 45
    .end local v10    # "v":I
    :cond_4
    move v11, v9

    const/16 v12, 0x30

    if-lt v11, v12, :cond_5

    move v11, v9

    const/16 v12, 0x39

    if-gt v11, v12, :cond_5

    .line 46
    move v11, v9

    const/16 v12, 0x30

    add-int/lit8 v11, v11, -0x30

    const/16 v12, 0x34

    add-int/lit8 v11, v11, 0x34

    move v10, v11

    .restart local v10    # "v":I
    goto :goto_2

    .line 47
    .end local v10    # "v":I
    :cond_5
    move v11, v9

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_6

    .line 48
    const/16 v11, 0x3e

    move v10, v11

    .restart local v10    # "v":I
    goto :goto_2

    .line 49
    .end local v10    # "v":I
    :cond_6
    move v11, v9

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_7

    .line 50
    const/16 v11, 0x3f

    move v10, v11

    .restart local v10    # "v":I
    goto :goto_2

    .line 51
    .end local v10    # "v":I
    :cond_7
    move v11, v9

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 52
    .line 37
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 53
    :cond_9
    move v11, v9

    const/16 v12, 0x3d

    if-ne v11, v12, :cond_a

    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    goto :goto_3

    .line 59
    :cond_a
    const/4 v11, -0x1

    move v10, v11

    .restart local v10    # "v":I
    goto :goto_2

    .line 62
    :cond_b
    move v11, v5

    const/4 v12, 0x6

    shl-int/lit8 v11, v11, 0x6

    move v12, v10

    add-int/2addr v11, v12

    move v5, v11

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    move v11, v6

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    .line 66
    move-object v11, v4

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x10

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 67
    move-object v11, v4

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0x8

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 68
    move-object v11, v4

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 69
    const/4 v11, 0x0

    move v6, v11

    goto :goto_3

    .line 87
    .end local v9    # "ch":C
    .end local v10    # "v":I
    :cond_c
    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    if-lez v11, :cond_e

    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    move v11, v5

    const/4 v12, 0x1

    move v13, v7

    shl-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    and-int/2addr v11, v12

    if-nez v11, :cond_d

    move v11, v3

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    move v12, v7

    sub-int/2addr v11, v12

    move-object v12, v4

    array-length v12, v12

    if-eq v11, v12, :cond_f

    .line 92
    :cond_d
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 87
    :cond_e
    move v11, v3

    move-object v12, v4

    array-length v12, v12

    if-ne v11, v12, :cond_d

    .line 93
    :cond_f
    move v11, v7

    packed-switch v11, :pswitch_data_0

    .line 104
    :goto_4
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 105
    return-void

    .line 96
    :pswitch_0
    move-object v11, v4

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/16 v14, 0xa

    shl-int/lit8 v13, v13, 0xa

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 97
    move-object v11, v4

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/4 v14, 0x2

    shr-int/lit8 v13, v13, 0x2

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 98
    goto :goto_4

    .line 100
    :pswitch_1
    move-object v11, v4

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    move v13, v5

    const/4 v14, 0x4

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    goto :goto_4

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Base64Binary;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lgnu/kawa/xml/Base64Binary;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/Base64Binary;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Base64Binary;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/Base64Binary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/Base64Binary;
    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Base64Binary;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xml/Base64Binary;->data:[B

    move-object v2, v7

    .line 110
    .local v2, "bb":[B
    move-object v7, v2

    array-length v7, v7

    move v3, v7

    .line 111
    .local v3, "len":I
    const/4 v7, 0x0

    move v4, v7

    .line 112
    .local v4, "value":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 114
    move-object v7, v2

    move v8, v5

    aget-byte v7, v7, v8

    move v6, v7

    .line 115
    .local v6, "b":B
    move v7, v4

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    move v8, v6

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    move v4, v7

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    move v7, v5

    const/4 v8, 0x3

    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_0

    .line 119
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/16 v10, 0x12

    shr-int/lit8 v9, v9, 0x12

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 120
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/16 v10, 0xc

    shr-int/lit8 v9, v9, 0xc

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 121
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/4 v10, 0x6

    shr-int/lit8 v9, v9, 0x6

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 122
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 124
    :cond_0
    goto :goto_0

    .line 125
    .end local v6    # "b":B
    :cond_1
    move v7, v3

    const/4 v8, 0x3

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    .line 139
    :goto_1
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/xml/Base64Binary;
    return-object v0

    .line 128
    .restart local v0    # "this":Lgnu/kawa/xml/Base64Binary;
    :pswitch_0
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/4 v10, 0x2

    shr-int/lit8 v9, v9, 0x2

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 129
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/4 v10, 0x4

    shl-int/lit8 v9, v9, 0x4

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 130
    move-object v7, v1

    const-string/jumbo v8, "=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 131
    goto :goto_1

    .line 133
    :pswitch_1
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/16 v10, 0xa

    shr-int/lit8 v9, v9, 0xa

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 134
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/4 v10, 0x4

    shr-int/lit8 v9, v9, 0x4

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 135
    move-object v7, v1

    const-string/jumbo v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    move v9, v4

    const/4 v10, 0x2

    shl-int/lit8 v9, v9, 0x2

    const/16 v10, 0x3f

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 136
    move-object v7, v1

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
