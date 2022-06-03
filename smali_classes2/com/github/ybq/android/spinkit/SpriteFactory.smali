.class public Lcom/github/ybq/android/spinkit/SpriteFactory;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/SpriteFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/github/ybq/android/spinkit/Style;)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "style":Lcom/github/ybq/android/spinkit/Style;
    const/4 v2, 0x0

    move-object v1, v2

    .line 27
    .local v1, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    sget-object v2, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 76
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "style":Lcom/github/ybq/android/spinkit/Style;
    return-object v0

    .line 29
    .restart local v0    # "style":Lcom/github/ybq/android/spinkit/Style;
    :pswitch_0
    new-instance v2, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    move-object v1, v2

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    new-instance v2, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    move-object v1, v2

    .line 33
    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v2, Lcom/github/ybq/android/spinkit/style/Wave;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    move-object v1, v2

    .line 36
    goto :goto_0

    .line 38
    :pswitch_3
    new-instance v2, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    move-object v1, v2

    .line 39
    goto :goto_0

    .line 41
    :pswitch_4
    new-instance v2, Lcom/github/ybq/android/spinkit/style/Pulse;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    move-object v1, v2

    .line 42
    goto :goto_0

    .line 44
    :pswitch_5
    new-instance v2, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    move-object v1, v2

    .line 45
    goto :goto_0

    .line 47
    :pswitch_6
    new-instance v2, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    move-object v1, v2

    .line 48
    goto :goto_0

    .line 50
    :pswitch_7
    new-instance v2, Lcom/github/ybq/android/spinkit/style/Circle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    move-object v1, v2

    .line 51
    goto :goto_0

    .line 53
    :pswitch_8
    new-instance v2, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    move-object v1, v2

    .line 54
    goto :goto_0

    .line 56
    :pswitch_9
    new-instance v2, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    move-object v1, v2

    .line 57
    goto :goto_0

    .line 59
    :pswitch_a
    new-instance v2, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    move-object v1, v2

    .line 60
    goto :goto_0

    .line 62
    :pswitch_b
    new-instance v2, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    move-object v1, v2

    .line 63
    goto :goto_0

    .line 65
    :pswitch_c
    new-instance v2, Lcom/github/ybq/android/spinkit/style/MultiplePulse;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/MultiplePulse;-><init>()V

    move-object v1, v2

    .line 66
    goto/16 :goto_0

    .line 68
    :pswitch_d
    new-instance v2, Lcom/github/ybq/android/spinkit/style/PulseRing;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/PulseRing;-><init>()V

    move-object v1, v2

    .line 69
    goto/16 :goto_0

    .line 71
    :pswitch_e
    new-instance v2, Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;-><init>()V

    move-object v1, v2

    .line 72
    goto/16 :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
