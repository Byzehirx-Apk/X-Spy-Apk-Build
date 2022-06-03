.class public Lcom/google/appinventor/components/runtime/Ev3Motors;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Z

.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

.field private W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

.field private jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Z

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

.field private lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

.field private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 57
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "Ev3Motors"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 42
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    .line 43
    move-object v3, v1

    const-wide v4, 0x401147ae147ae148L    # 4.32

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    .line 44
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    .line 45
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    .line 46
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    .line 47
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Z

    .line 50
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:I

    .line 51
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Z

    .line 58
    move-object v3, v1

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    .line 59
    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/Ev3Motors$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    .line 80
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 82
    move-object v3, v1

    const-string/jumbo v4, "ABC"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->MotorPorts(Ljava/lang/String;)V

    .line 83
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->StopBeforeDisconnect(Z)V

    .line 84
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->EnableSpeedRegulation(Z)V

    .line 85
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->ReverseDirection(Z)V

    .line 86
    move-object v3, v1

    const-wide v4, 0x401147ae147ae148L    # 4.32

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->WheelDiameter(D)V

    .line 87
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChangedEventEnabled(Z)V

    .line 88
    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I
    .locals 3

    .prologue
    .line 435
    move v0, p0

    move v1, v0

    const/16 v2, -0x64

    if-ge v1, v2, :cond_0

    const/16 v1, -0x64

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const/16 v1, 0x64

    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:I

    move v0, v1

    return v0
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;II)V
    .locals 14

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    const/16 v5, 0xf

    if-le v4, v5, :cond_1

    .line 626
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 628
    :cond_1
    move v4, v3

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v4

    move v3, v4

    .line 630
    const/16 v4, -0x5b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "ccc"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 635
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v2

    int-to-byte v12, v12

    .line 636
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move v12, v3

    int-to-byte v12, v12

    .line 637
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    .line 630
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v4

    move-object v2, v4

    .line 638
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v4

    .line 639
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V
    .locals 16

    .prologue
    .line 507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    const/16 v7, 0xf

    if-gt v6, v7, :cond_0

    move v6, v4

    if-gez v6, :cond_1

    .line 508
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 510
    :cond_1
    move v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v6

    move v3, v6

    .line 512
    const/16 v6, -0x52

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ccccccc"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 517
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v2

    int-to-byte v14, v14

    .line 518
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v3

    int-to-byte v14, v14

    .line 519
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 520
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v4

    .line 521
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    const/4 v14, 0x0

    .line 522
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    move v14, v5

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    int-to-byte v14, v14

    .line 523
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 512
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v2, v6

    .line 524
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v6

    .line 525
    return-void

    .line 522
    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:I

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)I
    .locals 13

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 660
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 663
    :cond_1
    move v3, v2

    move v12, v3

    move v3, v12

    move v4, v12

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    .line 666
    packed-switch v3, :pswitch_data_0

    .line 684
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 668
    :pswitch_1
    const/4 v3, 0x0

    move v2, v3

    .line 687
    :goto_0
    const/16 v3, -0x4d

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string/jumbo v7, "ccg"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 692
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v2

    int-to-byte v11, v11

    .line 693
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 694
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    .line 687
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    move-object v2, v3

    .line 695
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v3

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    .line 697
    move-object v1, v4

    if-eqz v3, :cond_2

    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    move-object v3, v1

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 698
    const-string/jumbo v3, "xi"

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v3

    .line 699
    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    .line 701
    :goto_1
    return v0

    .line 672
    :pswitch_2
    const/4 v3, 0x1

    move v2, v3

    .line 673
    goto :goto_0

    .line 676
    :pswitch_3
    const/4 v3, 0x2

    move v2, v3

    .line 677
    goto :goto_0

    .line 680
    :pswitch_4
    const/4 v3, 0x3

    move v2, v3

    .line 681
    goto :goto_0

    .line 701
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;II)V
    .locals 14

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    const/16 v5, 0xf

    if-gt v4, v5, :cond_0

    move v4, v3

    const/4 v5, -0x1

    if-lt v4, v5, :cond_0

    move v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 611
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 613
    :cond_1
    const/16 v4, -0x59

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "ccc"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 618
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v2

    int-to-byte v12, v12

    .line 619
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move v12, v3

    int-to-byte v12, v12

    .line 620
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    .line 613
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v4

    move-object v2, v4

    .line 621
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v4

    .line 622
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    .locals 17

    .prologue
    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v2

    if-ltz v7, :cond_0

    move v7, v2

    const/16 v8, 0xf

    if-gt v7, v8, :cond_0

    move v7, v4

    const/16 v8, -0xc8

    if-lt v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0xc8

    if-le v7, v8, :cond_1

    .line 529
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 531
    :cond_1
    move v7, v3

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v7

    move v3, v7

    .line 533
    const/16 v7, -0x50

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "cccccc"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 538
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move v15, v2

    int-to-byte v15, v15

    .line 539
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move v15, v3

    int-to-byte v15, v15

    .line 540
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    move v15, v4

    int-to-short v15, v15

    .line 541
    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x4

    move v15, v5

    .line 542
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x5

    move v15, v6

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    :goto_0
    int-to-byte v15, v15

    .line 543
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    .line 533
    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v7

    move-object v2, v7

    .line 544
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v7

    .line 545
    return-void

    .line 542
    :cond_2
    const/4 v15, 0x0

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIZ)V
    .locals 16

    .prologue
    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    const/16 v7, 0xf

    if-gt v6, v7, :cond_0

    move v6, v4

    if-gez v6, :cond_1

    .line 487
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 489
    :cond_1
    move v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v6

    move v3, v6

    .line 491
    const/16 v6, -0x54

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ccccccc"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 496
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v2

    int-to-byte v14, v14

    .line 497
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v3

    int-to-byte v14, v14

    .line 498
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 499
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v4

    .line 500
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    const/4 v14, 0x0

    .line 501
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    move v14, v5

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    int-to-byte v14, v14

    .line 502
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 491
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v2, v6

    .line 503
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v6

    .line 504
    return-void

    .line 501
    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IZ)V
    .locals 14

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    const/16 v5, 0xf

    if-le v4, v5, :cond_1

    .line 472
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 474
    :cond_1
    const/16 v4, -0x5d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "ccc"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 479
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v2

    int-to-byte v12, v12

    .line 480
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move v12, v3

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    .line 481
    :goto_0
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    .line 474
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v4

    move-object v2, v4

    .line 482
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v4

    .line 483
    return-void

    .line 480
    :cond_2
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z
    .locals 6

    .prologue
    .line 439
    move v0, p0

    move v1, v0

    if-eqz v1, :cond_0

    move v1, v0

    move v5, v1

    move v1, v5

    move v2, v5

    move v3, v0

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    xor-int/2addr v2, v3

    const/4 v3, -0x1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Z

    move v0, v1

    return v0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;IIIZ)V
    .locals 16

    .prologue
    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    const/16 v7, 0xf

    if-gt v6, v7, :cond_0

    move v6, v4

    if-gez v6, :cond_1

    .line 570
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 572
    :cond_1
    move v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v6

    move v3, v6

    .line 574
    const/16 v6, -0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ccccccc"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 579
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v2

    int-to-byte v14, v14

    .line 580
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v3

    int-to-byte v14, v14

    .line 581
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 582
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v4

    .line 583
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    const/4 v14, 0x0

    .line 584
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    move v14, v5

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    int-to-byte v14, v14

    .line 585
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 574
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v2, v6

    .line 586
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v6

    .line 587
    return-void

    .line 584
    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method


# virtual methods
.method public EnableSpeedRegulation(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    .line 168
    return-void
.end method

.method public EnableSpeedRegulation()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The robot adjusts the power to maintain the speed if speed regulation is enabled."
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    move v0, v1

    return v0
.end method

.method public GetTachoCount()I
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current tacho count."
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    const-string/jumbo v2, "GetTachoCount"

    move-object v1, v2

    .line 419
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 422
    :goto_0
    return v0

    .line 421
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 422
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public MotorPorts()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters."
        userVisible = false
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->bitFieldToMotorPortLetters(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public MotorPorts(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ABC"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "MotorPorts"

    move-object v2, v3

    .line 109
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortLettersToBitField(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v2

    const/16 v6, 0xc20

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 113
    goto :goto_0
.end method

.method public ResetTachoCount()V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the current tacho count to zero."
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    const-string/jumbo v5, "ResetTachoCount"

    move-object v1, v5

    .line 406
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    :try_start_0
    iget v7, v7, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v4, v7

    move-object v3, v6

    move-object v2, v5

    .line 2706
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    const/16 v6, 0xf

    if-le v5, v6, :cond_1

    .line 2707
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :catch_0
    move-exception v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0xc1f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 410
    :goto_0
    return-void

    .line 2709
    :cond_1
    const/16 v5, -0x4e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    const-string/jumbo v9, "cc"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2714
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v4

    int-to-byte v13, v13

    .line 2715
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    .line 2709
    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    move-object v4, v5

    .line 2716
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 409
    goto :goto_0
.end method

.method public ReverseDirection(Z)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move v1, p1

    const-string/jumbo v3, "ReverseDirection"

    move-object v2, v3

    .line 144
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v6, v1

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    :goto_0
    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;II)V

    .line 145
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    :goto_1
    return-void

    .line 144
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v2

    const/16 v6, 0xc1f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 149
    goto :goto_1
.end method

.method public ReverseDirection()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "It specifies if the direction of the motors is reversed."
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    move v0, v1

    return v0
.end method

.method public RotateInDistance(IDZ)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a distance."
    .end annotation

    .prologue
    .line 274
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    const-string/jumbo v6, "RotateInDistance"

    move-object v5, v6

    .line 275
    move-wide v6, v2

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    div-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-int v6, v6

    move v2, v6

    .line 278
    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    if-eqz v6, :cond_0

    .line 279
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v10, v2

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v10, v2

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 283
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v5

    const/16 v9, 0xc1f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v5

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 285
    goto :goto_0
.end method

.method public RotateInDuration(IIZ)V
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a period of time."
    .end annotation

    .prologue
    .line 258
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string/jumbo v9, "RotateInDuration"

    move-object v5, v9

    .line 260
    move-object v9, v1

    :try_start_0
    iget-boolean v9, v9, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    if-eqz v9, :cond_0

    .line 261
    move-object v9, v1

    move-object v10, v5

    move-object v11, v1

    iget v11, v11, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/google/appinventor/components/runtime/Ev3Motors;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;IIIZ)V

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    move-object v9, v1

    move-object v10, v5

    move-object v11, v1

    iget v11, v11, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v12, v2

    move v13, v3

    move v14, v4

    move v8, v14

    move v7, v13

    move v6, v12

    move v4, v11

    move-object v3, v10

    move-object v2, v9

    .line 2548
    move v9, v4

    if-ltz v9, :cond_1

    move v9, v4

    const/16 v10, 0xf

    if-gt v9, v10, :cond_1

    move v9, v7

    if-gez v9, :cond_2

    .line 2549
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    move-exception v9

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v10, v1

    move-object v11, v5

    const/16 v12, 0xc1f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v5

    aput-object v16, v14, v15

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 267
    goto :goto_0

    .line 2551
    :cond_2
    move v9, v6

    :try_start_1
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v9

    move v6, v9

    .line 2553
    const/16 v9, -0x53

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "ccccccc"

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2558
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    move/from16 v17, v4

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 2559
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x2

    move/from16 v17, v6

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 2560
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x3

    const/16 v17, 0x0

    .line 2561
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x4

    move/from16 v17, v7

    .line 2562
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x5

    const/16 v17, 0x0

    .line 2563
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x6

    move/from16 v17, v8

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 2564
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    .line 2553
    invoke-static/range {v9 .. v14}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v9

    move-object v4, v9

    .line 2565
    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 266
    goto/16 :goto_0

    .line 2563
    :cond_3
    const/16 v17, 0x0

    goto :goto_1
.end method

.method public RotateInTachoCounts(IIZ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a number of tacho counts."
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v5, "RotateInTachoCounts"

    move-object v4, v5

    .line 244
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    if-eqz v5, :cond_0

    .line 245
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 249
    :catch_0
    move-exception v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v4

    const/16 v8, 0xc1f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 251
    goto :goto_0
.end method

.method public RotateIndefinitely(I)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors."
    .end annotation

    .prologue
    .line 224
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v6, "RotateIndefinitely"

    move-object v2, v6

    .line 226
    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Z

    if-eqz v6, :cond_3

    .line 227
    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v5, v9

    move v4, v8

    move-object v3, v7

    move-object v1, v6

    .line 1642
    move v6, v4

    if-ltz v6, :cond_0

    move v6, v4

    const/16 v7, 0xf

    if-le v6, v7, :cond_1

    .line 1643
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v2

    const/16 v9, 0xc1f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 235
    :goto_0
    return-void

    .line 1645
    :cond_1
    move v6, v5

    :try_start_1
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v6

    move v5, v6

    .line 1647
    const/16 v6, -0x5c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ccc"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1652
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v4

    int-to-byte v14, v14

    .line 1653
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v5

    int-to-byte v14, v14

    .line 1654
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1647
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v4, v6

    .line 1655
    move-object v6, v1

    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v6

    .line 227
    .line 231
    :goto_1
    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v4, v8

    move-object v3, v7

    move-object v1, v6

    .line 2457
    move v6, v4

    if-ltz v6, :cond_2

    move v6, v4

    const/16 v7, 0xf

    if-le v6, v7, :cond_4

    .line 2458
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 229
    :cond_3
    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;II)V

    goto :goto_1

    .line 2460
    :cond_4
    const/16 v6, -0x5a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "cc"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2465
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v4

    int-to-byte v14, v14

    .line 2466
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 2460
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v5, v6

    .line 2467
    move-object v6, v1

    move-object v7, v3

    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 234
    goto/16 :goto_0
.end method

.method public RotateSyncInDistance(IIIZ)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed for a distance in cm."
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string/jumbo v6, "RotateSyncInDuration"

    move-object v5, v6

    .line 314
    move v6, v2

    int-to-double v6, v6

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    div-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-int v6, v6

    move v2, v6

    .line 318
    move-object v6, v0

    :try_start_0
    iget v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    if-eqz v6, :cond_1

    .line 319
    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v10, v2

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v10, v3

    move v11, v2

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_1
    goto :goto_0

    .line 326
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v5

    const/16 v9, 0xc1f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v5

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 328
    goto :goto_0
.end method

.method public RotateSyncInDuration(IIIZ)V
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a period of time."
    .end annotation

    .prologue
    .line 335
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string/jumbo v10, "RotateSyncInDuration"

    move-object v6, v10

    .line 339
    move-object v10, v1

    :try_start_0
    iget v10, v10, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    if-eqz v10, :cond_3

    .line 340
    move-object v10, v1

    iget v10, v10, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 341
    move-object v10, v1

    move-object v11, v6

    move-object v12, v1

    iget v12, v12, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v13, v2

    move v14, v3

    move v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/google/appinventor/components/runtime/Ev3Motors;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;IIIZ)V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v10, v1

    move-object v11, v6

    move-object v12, v1

    iget v12, v12, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v13, v2

    move v14, v4

    move v15, v3

    move/from16 v16, v5

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v5, v13

    move v4, v12

    move-object v3, v11

    move-object v2, v10

    .line 2590
    move v10, v4

    if-ltz v10, :cond_1

    move v10, v4

    const/16 v11, 0xf

    if-gt v10, v11, :cond_1

    move v10, v8

    if-gez v10, :cond_2

    .line 2591
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :catch_0
    move-exception v10

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v11, v1

    move-object v12, v6

    const/16 v13, 0xc1f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v6

    aput-object v17, v15, v16

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 349
    goto :goto_0

    .line 2593
    :cond_2
    move v10, v5

    :try_start_1
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)I

    move-result v10

    move v5, v10

    .line 2595
    const/16 v10, -0x4f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string/jumbo v14, "cccccc"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 2600
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    move/from16 v18, v4

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 2601
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x2

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 2602
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x3

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    .line 2603
    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x4

    move/from16 v18, v8

    .line 2604
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x5

    move/from16 v18, v9

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 2605
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    .line 2595
    invoke-static/range {v10 .. v15}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v10

    move-object v4, v10

    .line 2606
    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 348
    :cond_3
    goto/16 :goto_0

    .line 2604
    :cond_4
    const/16 v18, 0x0

    goto :goto_1
.end method

.method public RotateSyncInTachoCounts(IIIZ)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a number of tacho counts."
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string/jumbo v6, "RotateSyncInTachoCounts"

    move-object v5, v6

    .line 360
    move-object v6, v0

    :try_start_0
    iget v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    if-eqz v6, :cond_1

    .line 361
    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v10, v2

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;IIIZ)V

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_0
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v9, v1

    move v10, v3

    move v11, v2

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_1
    goto :goto_0

    .line 368
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v5

    const/16 v9, 0xc1f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v5

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 370
    goto :goto_0
.end method

.method public RotateSyncIndefinitely(II)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors at the same speed."
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-string/jumbo v4, "RotateSyncIndefinitely"

    move-object v3, v4

    .line 296
    move-object v4, v0

    :try_start_0
    iget v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    if-eqz v4, :cond_1

    .line 297
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    move-object v4, v0

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;II)V

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v7, v1

    move v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_1
    goto :goto_0

    .line 304
    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v3

    const/16 v7, 0xc1f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 306
    goto :goto_0
.end method

.method public Stop(Z)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the motors of the robot."
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    move v1, p1

    const-string/jumbo v3, "Stop"

    move-object v2, v3

    .line 379
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .line 383
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v2

    const/16 v6, 0xc1f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 383
    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    .line 198
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the motor before disconnecting."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    move v0, v1

    return v0
.end method

.method public TachoCountChanged(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the tacho count has changed."
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "TachoCountChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 432
    return-void
.end method

.method public TachoCountChangedEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Z

    .line 217
    return-void
.end method

.method public TachoCountChangedEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the TachoCountChanged event should fire when the angle is changed."
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Z

    move v0, v1

    return v0
.end method

.method public ToggleDirection()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the direction of motors."
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    const-string/jumbo v2, "ToggleDirection"

    move-object v1, v2

    .line 392
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;II)V

    .line 393
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .line 397
    :goto_1
    return-void

    .line 393
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 397
    goto :goto_1
.end method

.method public WheelDiameter()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels attached on the motors in centimeters."
        userVisible = false
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    move-wide v0, v1

    return-wide v0
.end method

.method public WheelDiameter(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Ev3Motors;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    .line 123
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 11

    .prologue
    .line 721
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "beforeDisconnect"

    move-object v1, v2

    .line 722
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    if-eqz v2, :cond_0

    .line 724
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lcom/google/appinventor/components/runtime/Ev3Motors;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .line 729
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 729
    :cond_0
    goto :goto_0
.end method
