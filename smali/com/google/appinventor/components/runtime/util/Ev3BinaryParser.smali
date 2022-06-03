.class public Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;
    }
.end annotation


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

.field private static Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

.field private static hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:B

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

.field private static qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

.field private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B

.field private static vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

.field private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, -0x80

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    .line 26
    const/16 v0, 0x40

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    .line 28
    const/16 v0, 0x20

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    .line 32
    const/16 v0, 0x1f

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B

    .line 34
    const/16 v0, 0x3f

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:B

    .line 39
    const/4 v0, 0x1

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    .line 40
    const/4 v0, 0x2

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    .line 41
    const/4 v0, 0x3

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B
    .locals 18

    .prologue
    .line 507
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v10, v2

    if-ltz v10, :cond_0

    move v10, v2

    const/16 v11, 0x3ff

    if-gt v10, v11, :cond_0

    move v10, v3

    if-ltz v10, :cond_0

    move v10, v3

    const/16 v11, 0x3f

    if-gt v10, v11, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object v11, v5

    array-length v11, v11

    if-eq v10, v11, :cond_1

    .line 508
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 512
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 514
    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_f

    .line 515
    move-object v10, v4

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    .line 516
    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v9, v10

    .line 518
    move v10, v8

    sparse-switch v10, :sswitch_data_0

    .line 576
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string/jumbo v12, "Illegal format string"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 520
    :sswitch_0
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Byte;

    if-eqz v10, :cond_3

    .line 521
    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    const/16 v11, 0x1f

    if-gt v10, v11, :cond_2

    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    const/16 v11, -0x1f

    if-lt v10, v11, :cond_2

    .line 522
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC0(B)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 514
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 524
    :cond_2
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC1(B)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 526
    :cond_3
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Short;

    if-eqz v10, :cond_4

    .line 527
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC2(S)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 528
    :cond_4
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_5

    .line 529
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC4(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 531
    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 535
    :sswitch_1
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Byte;

    if-eqz v10, :cond_7

    .line 536
    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    const/16 v11, 0x1f

    if-gt v10, v11, :cond_6

    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    const/16 v11, -0x1f

    if-lt v10, v11, :cond_6

    .line 537
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV0(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 539
    :cond_6
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV1(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 541
    :cond_7
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Short;

    if-eqz v10, :cond_8

    .line 542
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV2(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 543
    :cond_8
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_9

    .line 544
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV4(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 546
    :cond_9
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 550
    :sswitch_2
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Byte;

    if-eqz v10, :cond_b

    .line 551
    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    const/16 v11, 0x1f

    if-gt v10, v11, :cond_a

    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    const/16 v11, -0x1f

    if-lt v10, v11, :cond_a

    .line 552
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV0(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 554
    :cond_a
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV1(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 556
    :cond_b
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Short;

    if-eqz v10, :cond_c

    .line 557
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV2(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 558
    :cond_c
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_d

    .line 559
    move-object v10, v6

    move-object v11, v9

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV4(I)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 561
    :cond_d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 565
    :sswitch_3
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/String;

    if-nez v10, :cond_e

    .line 566
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 569
    :cond_e
    move-object v10, v6

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 572
    goto/16 :goto_1

    .line 571
    :catch_0
    move-exception v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 581
    :cond_f
    const/4 v10, 0x4

    move v7, v10

    .line 582
    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_2
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v9, v10

    .line 583
    move v10, v7

    move-object v11, v9

    array-length v11, v11

    add-int/2addr v10, v11

    move v7, v10

    goto :goto_2

    .line 586
    :cond_10
    move v10, v7

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    .line 587
    move-object v8, v11

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 588
    move-object v10, v8

    move v11, v1

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 590
    move-object v10, v8

    const/4 v11, 0x2

    new-array v11, v11, [B

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    move v14, v2

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    move v14, v2

    const/16 v15, 0x8

    ushr-int/lit8 v14, v14, 0x8

    const/4 v15, 0x3

    and-int/lit8 v14, v14, 0x3

    move v15, v3

    const/16 v16, 0x2

    shl-int/lit8 v15, v15, 0x2

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 592
    move-object v10, v8

    move v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 594
    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v9, v10

    :goto_4
    move-object v10, v9

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    move-object v10, v9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v0, v10

    .line 595
    move-object v10, v8

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    goto :goto_4

    .line 588
    :cond_11
    const/16 v11, -0x80

    goto :goto_3

    .line 597
    :cond_12
    move-object v10, v8

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x67 -> :sswitch_2
        0x6c -> :sswitch_1
        0x73 -> :sswitch_3
    .end sparse-switch
.end method

.method public static encodeGV0(I)[B
    .locals 7

    .prologue
    .line 438
    move v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move v4, v0

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B

    and-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeGV1(I)[B
    .locals 7

    .prologue
    .line 442
    move v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeGV2(I)[B
    .locals 7

    .prologue
    .line 447
    move v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeGV4(I)[B
    .locals 7

    .prologue
    .line 453
    move v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    move v4, v0

    const/16 v5, 0x10

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    move v4, v0

    const/16 v5, 0x18

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLC0(B)[B
    .locals 7

    .prologue
    .line 388
    move v0, p0

    move v1, v0

    const/16 v2, -0x1f

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "Encoded value must be in range [0, 127]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move v4, v0

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:B

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLC1(B)[B
    .locals 7

    .prologue
    .line 395
    move v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    int-to-byte v4, v4

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLC2(S)[B
    .locals 7

    .prologue
    .line 400
    move v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    int-to-byte v4, v4

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLC4(I)[B
    .locals 7

    .prologue
    .line 406
    move v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    int-to-byte v4, v4

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    move v4, v0

    const/16 v5, 0x10

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    move v4, v0

    const/16 v5, 0x18

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLV0(I)[B
    .locals 7

    .prologue
    .line 415
    move v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move v4, v0

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B

    and-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLV1(I)[B
    .locals 7

    .prologue
    .line 419
    move v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLV2(I)[B
    .locals 7

    .prologue
    .line 424
    move v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static encodeLV4(I)[B
    .locals 7

    .prologue
    .line 430
    move v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [B

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-byte v4, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v4, v5

    sget-byte v5, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    move v4, v0

    const/16 v5, 0x10

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    move v4, v0

    const/16 v5, 0x18

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v0, v1

    return-object v0
.end method

.method public static varargs encodeSystemCommand(BZ[Ljava/lang/Object;)[B
    .locals 12

    .prologue
    .line 462
    move v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v8, 0x2

    move v3, v8

    .line 465
    move-object v8, v2

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v4, v9

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_4

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    .line 466
    move-object v7, v9

    instance-of v8, v8, Ljava/lang/Byte;

    if-eqz v8, :cond_0

    .line 467
    add-int/lit8 v3, v3, 0x1

    .line 465
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 468
    :cond_0
    move-object v8, v7

    instance-of v8, v8, Ljava/lang/Short;

    if-eqz v8, :cond_1

    .line 469
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 470
    :cond_1
    move-object v8, v7

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 471
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 472
    :cond_2
    move-object v8, v7

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 473
    move v8, v3

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    move v3, v8

    goto :goto_1

    .line 475
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Parameters should be one of the class types: Byte, Short, Integer, String"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 479
    :cond_4
    move v8, v3

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    .line 480
    move-object v4, v9

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 481
    move-object v8, v4

    move v9, v1

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 483
    move-object v8, v4

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 485
    move-object v8, v2

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v5, v9

    array-length v8, v8

    move v6, v8

    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_a

    move-object v8, v5

    move v9, v7

    aget-object v8, v8, v9

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    .line 486
    move-object v0, v9

    instance-of v8, v8, Ljava/lang/Byte;

    if-eqz v8, :cond_6

    .line 487
    move-object v8, v4

    move-object v9, v0

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 485
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 481
    :cond_5
    const/16 v9, -0x7f

    goto :goto_2

    .line 488
    :cond_6
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Short;

    if-eqz v8, :cond_7

    .line 489
    move-object v8, v4

    move-object v9, v0

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_4

    .line 490
    :cond_7
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_8

    .line 491
    move-object v8, v4

    move-object v9, v0

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_4

    .line 492
    :cond_8
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 494
    move-object v8, v4

    move-object v9, v0

    :try_start_0
    check-cast v9, Ljava/lang/String;

    const-string/jumbo v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 497
    .line 498
    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_4

    .line 496
    :catch_0
    move-exception v8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Non-ASCII string encoding is not supported"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 500
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Parameters should be one of the class types: Byte, Short, Integer, String"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 503
    :cond_a
    move-object v8, v4

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static varargs pack(Ljava/lang/String;[Ljava/lang/Object;)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v1

    const-string/jumbo v12, "(?<=\\D)"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    .line 57
    move-object v1, v12

    array-length v11, v11

    new-array v11, v11, [Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;

    move-object v3, v11

    .line 58
    const/4 v11, 0x0

    move v4, v11

    .line 59
    const/4 v11, 0x0

    move v5, v11

    .line 62
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move-object v12, v1

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 63
    move-object v11, v1

    move v12, v6

    aget-object v11, v11, v12

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    .line 64
    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v7, v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v8, v11

    .line 65
    const/4 v11, 0x1

    move v9, v11

    .line 66
    const/4 v11, 0x0

    move v10, v11

    .line 68
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 70
    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v9, v11

    .line 71
    const/4 v11, 0x1

    move v10, v11

    .line 73
    move v11, v9

    if-gtz v11, :cond_0

    .line 74
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Illegal format string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 77
    :cond_0
    move v11, v8

    sparse-switch v11, :sswitch_data_0

    .line 149
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Illegal format string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 79
    :sswitch_0
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 152
    :goto_1
    move-object v11, v3

    move v12, v6

    new-instance v13, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;-><init>(CI)V

    aput-object v13, v11, v12

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :sswitch_1
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 84
    move v11, v4

    move v12, v9

    add-int/2addr v11, v12

    move v4, v11

    .line 85
    goto :goto_1

    .line 88
    :sswitch_2
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    goto :goto_1

    .line 93
    :sswitch_3
    move v11, v5

    move v12, v9

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    move v5, v11

    .line 94
    move v11, v4

    move v12, v9

    add-int/2addr v11, v12

    move v4, v11

    .line 95
    goto :goto_1

    .line 98
    :sswitch_4
    move v11, v5

    move v12, v9

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    move v5, v11

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_1

    .line 103
    :sswitch_5
    move v11, v5

    move v12, v9

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 104
    move v11, v4

    move v12, v9

    add-int/2addr v11, v12

    move v4, v11

    .line 105
    goto :goto_1

    .line 108
    :sswitch_6
    move v11, v5

    move v12, v9

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 109
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_1

    .line 113
    :sswitch_7
    move v11, v5

    move v12, v9

    const/4 v13, 0x3

    shl-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    move v5, v11

    .line 114
    move v11, v4

    move v12, v9

    add-int/2addr v11, v12

    move v4, v11

    .line 115
    goto :goto_1

    .line 118
    :sswitch_8
    move v11, v5

    move v12, v9

    const/4 v13, 0x3

    shl-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    move v5, v11

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto :goto_1

    .line 123
    :sswitch_9
    move v11, v5

    move v12, v9

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 124
    move v11, v4

    move v12, v9

    add-int/2addr v11, v12

    move v4, v11

    .line 125
    goto :goto_1

    .line 128
    :sswitch_a
    move v11, v5

    move v12, v9

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    goto :goto_1

    .line 133
    :sswitch_b
    move v11, v9

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 134
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Illegal format string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 136
    :cond_1
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    goto/16 :goto_1

    .line 141
    :sswitch_c
    move v11, v10

    if-eqz v11, :cond_2

    .line 142
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Illegal format string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 144
    :cond_2
    move v11, v5

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    move v5, v11

    .line 145
    add-int/lit8 v4, v4, 0x1

    .line 146
    goto/16 :goto_1

    .line 155
    :cond_3
    move v11, v4

    move-object v12, v2

    array-length v12, v12

    if-eq v11, v12, :cond_4

    .line 156
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Illegal format string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 159
    :cond_4
    const/4 v11, 0x0

    move v4, v11

    .line 160
    move v11, v5

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    .line 161
    move-object v6, v12

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 163
    move-object v11, v3

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v7, v12

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_2
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_f

    move-object v11, v7

    move v12, v9

    aget-object v11, v11, v12

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    .line 164
    move-object v10, v12

    iget-char v11, v11, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:C

    sparse-switch v11, :sswitch_data_1

    .line 163
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 166
    :sswitch_d
    const/4 v11, 0x0

    move v1, v11

    :goto_4
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_5

    .line 167
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 168
    :cond_5
    goto :goto_3

    .line 171
    :sswitch_e
    const/4 v11, 0x0

    move v1, v11

    :goto_5
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_6

    .line 172
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 175
    :cond_6
    goto :goto_3

    .line 178
    :sswitch_f
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, [B

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 180
    goto :goto_3

    .line 183
    :sswitch_10
    const/4 v11, 0x0

    move v1, v11

    :goto_6
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_7

    .line 184
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Short;

    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 187
    :cond_7
    goto :goto_3

    .line 190
    :sswitch_11
    const/4 v11, 0x0

    move v1, v11

    :goto_7
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_8

    .line 191
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, [S

    move v13, v1

    aget-short v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 193
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 194
    goto :goto_3

    .line 197
    :sswitch_12
    const/4 v11, 0x0

    move v1, v11

    :goto_8
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_9

    .line 198
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 199
    add-int/lit8 v4, v4, 0x1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 201
    :cond_9
    goto/16 :goto_3

    .line 204
    :sswitch_13
    const/4 v11, 0x0

    move v1, v11

    :goto_9
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_a

    .line 205
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, [I

    move v13, v1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 207
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 208
    goto/16 :goto_3

    .line 211
    :sswitch_14
    const/4 v11, 0x0

    move v1, v11

    :goto_a
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_b

    .line 212
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 213
    add-int/lit8 v4, v4, 0x1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 215
    :cond_b
    goto/16 :goto_3

    .line 218
    :sswitch_15
    const/4 v11, 0x0

    move v1, v11

    :goto_b
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_c

    .line 219
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, [J

    move v13, v1

    aget-wide v12, v12, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 221
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 222
    goto/16 :goto_3

    .line 225
    :sswitch_16
    const/4 v11, 0x0

    move v1, v11

    :goto_c
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_d

    .line 226
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 229
    :cond_d
    goto/16 :goto_3

    .line 232
    :sswitch_17
    const/4 v11, 0x0

    move v1, v11

    :goto_d
    move v11, v1

    move-object v12, v10

    iget v12, v12, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v11, v12, :cond_e

    .line 233
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    aget-object v12, v12, v13

    check-cast v12, [F

    move v13, v1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 235
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 236
    goto/16 :goto_3

    .line 240
    :sswitch_18
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    :try_start_0
    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v13, "US-ASCII"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 243
    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 245
    goto/16 :goto_3

    .line 242
    :catch_0
    move-exception v11

    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 249
    :sswitch_19
    move-object v11, v6

    move-object v12, v2

    move v13, v4

    :try_start_1
    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v13, "US-ASCII"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 252
    .line 253
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 251
    :catch_1
    move-exception v11

    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 258
    :cond_f
    move-object v11, v6

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    move-object v1, v11

    return-object v1

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x46 -> :sswitch_a
        0x48 -> :sswitch_4
        0x49 -> :sswitch_6
        0x4c -> :sswitch_8
        0x53 -> :sswitch_c
        0x62 -> :sswitch_1
        0x66 -> :sswitch_9
        0x68 -> :sswitch_3
        0x69 -> :sswitch_5
        0x6c -> :sswitch_7
        0x73 -> :sswitch_b
        0x78 -> :sswitch_0
    .end sparse-switch

    .line 164
    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_f
        0x46 -> :sswitch_17
        0x48 -> :sswitch_11
        0x49 -> :sswitch_13
        0x4c -> :sswitch_15
        0x53 -> :sswitch_19
        0x62 -> :sswitch_e
        0x66 -> :sswitch_16
        0x68 -> :sswitch_10
        0x69 -> :sswitch_12
        0x6c -> :sswitch_14
        0x73 -> :sswitch_18
        0x78 -> :sswitch_d
    .end sparse-switch
.end method

.method public static unpack(Ljava/lang/String;[B)[Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    const-string/jumbo v10, "(?<=\\D)"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 263
    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v9

    .line 264
    move-object v9, v1

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    .line 265
    move-object v1, v10

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 267
    move-object v9, v0

    array-length v9, v9

    move v3, v9

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_f

    move-object v9, v0

    move v10, v4

    aget-object v9, v9, v10

    move-object v5, v9

    .line 268
    const/4 v9, 0x0

    move v6, v9

    .line 269
    const/4 v9, 0x1

    move v7, v9

    .line 270
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v8, v9

    .line 272
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 273
    const/4 v9, 0x1

    move v6, v9

    .line 274
    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v14, v9

    move v9, v14

    move v10, v14

    .line 276
    move v7, v10

    if-gtz v9, :cond_0

    .line 277
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Illegal format string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 280
    :cond_0
    move v9, v8

    sparse-switch v9, :sswitch_data_0

    .line 380
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Illegal format string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 282
    :sswitch_0
    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_2

    .line 283
    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 284
    .line 267
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    :sswitch_1
    const/4 v9, 0x0

    move v5, v9

    :goto_3
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_3

    .line 288
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 289
    :cond_3
    goto :goto_2

    .line 292
    :sswitch_2
    move v9, v7

    new-array v9, v9, [B

    move-object v5, v9

    .line 293
    move-object v9, v1

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v7

    invoke-virtual {v9, v10, v11, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 294
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 295
    goto :goto_2

    .line 298
    :sswitch_3
    const/4 v9, 0x0

    move v5, v9

    :goto_4
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_4

    .line 299
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 300
    :cond_4
    goto :goto_2

    .line 303
    :sswitch_4
    move v9, v7

    new-array v9, v9, [S

    move-object v5, v9

    .line 304
    const/4 v9, 0x0

    move v6, v9

    :goto_5
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_5

    .line 305
    move-object v9, v5

    move v10, v6

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    aput-short v11, v9, v10

    .line 304
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    move v6, v9

    goto :goto_5

    .line 306
    :cond_5
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 307
    goto :goto_2

    .line 310
    :sswitch_5
    const/4 v9, 0x0

    move v6, v9

    :goto_6
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_6

    .line 311
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 310
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 312
    :cond_6
    goto :goto_2

    .line 315
    :sswitch_6
    move v9, v7

    new-array v9, v9, [I

    move-object v6, v9

    .line 316
    const/4 v9, 0x0

    move v5, v9

    :goto_7
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_7

    .line 317
    move-object v9, v6

    move v10, v5

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    aput v11, v9, v10

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 318
    :cond_7
    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 319
    goto/16 :goto_2

    .line 322
    :sswitch_7
    const/4 v9, 0x0

    move v5, v9

    :goto_8
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_8

    .line 323
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 322
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 324
    :cond_8
    goto/16 :goto_2

    .line 327
    :sswitch_8
    move v9, v7

    new-array v9, v9, [J

    move-object v5, v9

    .line 328
    const/4 v9, 0x0

    move v6, v9

    :goto_9
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_9

    .line 329
    move-object v9, v5

    move v10, v6

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 328
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 330
    :cond_9
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 331
    goto/16 :goto_2

    .line 334
    :sswitch_9
    const/4 v9, 0x0

    move v6, v9

    :goto_a
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_a

    .line 335
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 334
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 336
    :cond_a
    goto/16 :goto_2

    .line 339
    :sswitch_a
    move v9, v7

    new-array v9, v9, [F

    move-object v6, v9

    .line 340
    const/4 v9, 0x0

    move v5, v9

    :goto_b
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_b

    .line 341
    move-object v9, v6

    move v10, v5

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    aput v11, v9, v10

    .line 340
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 342
    :cond_b
    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 343
    goto/16 :goto_2

    .line 346
    :sswitch_b
    move v9, v7

    new-array v9, v9, [B

    move-object v5, v9

    .line 347
    move-object v9, v1

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v7

    invoke-virtual {v9, v10, v11, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 349
    move-object v9, v2

    :try_start_0
    new-instance v10, Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    const-string/jumbo v13, "US-ASCII"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 352
    goto/16 :goto_2

    .line 351
    :catch_0
    move-exception v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 356
    :sswitch_c
    move v9, v6

    if-eqz v9, :cond_c

    .line 357
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Illegal format string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 359
    :cond_c
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v9

    .line 362
    :goto_c
    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    move v14, v9

    move v9, v14

    move v10, v14

    .line 363
    move v6, v10

    if-eqz v9, :cond_d

    .line 364
    move-object v9, v5

    move v10, v6

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 367
    goto :goto_c

    .line 369
    :cond_d
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 370
    goto/16 :goto_2

    .line 373
    :sswitch_d
    move v9, v6

    if-eqz v9, :cond_e

    .line 374
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Illegal format string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 376
    :cond_e
    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 377
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Illegal format string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 384
    :cond_f
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    return-object v0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_d
        0x42 -> :sswitch_2
        0x46 -> :sswitch_a
        0x48 -> :sswitch_4
        0x49 -> :sswitch_6
        0x4c -> :sswitch_8
        0x53 -> :sswitch_c
        0x62 -> :sswitch_1
        0x66 -> :sswitch_9
        0x68 -> :sswitch_3
        0x69 -> :sswitch_5
        0x6c -> :sswitch_7
        0x73 -> :sswitch_b
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
