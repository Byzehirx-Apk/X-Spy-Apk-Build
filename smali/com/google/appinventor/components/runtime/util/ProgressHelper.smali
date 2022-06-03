.class public Lcom/google/appinventor/components/runtime/util/ProgressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationStyles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-string/jumbo v0, "ChasingDots,Circle,CubeGrid,DoubleBounce,FadingCircle,FoldingCube,Pulse,RotatingCircle,RotatingPlane,ThreeBounce,WanderingCubes,Wave"

    const-string/jumbo v1, "\\s*,\\s*"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\s"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const/4 v7, -0x1

    move v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 66
    const/4 v7, 0x0

    move-object v1, v7

    .line 70
    :goto_1
    move-object v7, v1

    if-eqz v7, :cond_1

    .line 71
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v3

    move v12, v10

    move v10, v12

    move v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(IIII)V

    .line 72
    move-object v7, v1

    invoke-virtual {v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 73
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 77
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\s"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const/4 v7, -0x1

    move v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_2
    :goto_2
    move v7, v6

    packed-switch v7, :pswitch_data_1

    .line 88
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_3
    return-void

    .line 19
    :sswitch_0
    move-object v7, v5

    const-string/jumbo v8, "chasingdots"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v6, v7

    goto :goto_0

    :sswitch_1
    move-object v7, v5

    const-string/jumbo v8, "circle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v6, v7

    goto :goto_0

    :sswitch_2
    move-object v7, v5

    const-string/jumbo v8, "cubegrid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    move v6, v7

    goto :goto_0

    :sswitch_3
    move-object v7, v5

    const-string/jumbo v8, "doublebounce"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    move v6, v7

    goto :goto_0

    :sswitch_4
    move-object v7, v5

    const-string/jumbo v8, "fadingcircle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    move v6, v7

    goto/16 :goto_0

    :sswitch_5
    move-object v7, v5

    const-string/jumbo v8, "foldingcube"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    move v6, v7

    goto/16 :goto_0

    :sswitch_6
    move-object v7, v5

    const-string/jumbo v8, "pulse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    move v6, v7

    goto/16 :goto_0

    :sswitch_7
    move-object v7, v5

    const-string/jumbo v8, "rotatingcircle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    move v6, v7

    goto/16 :goto_0

    :sswitch_8
    move-object v7, v5

    const-string/jumbo v8, "rotatingplane"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    move v6, v7

    goto/16 :goto_0

    :sswitch_9
    move-object v7, v5

    const-string/jumbo v8, "threebounce"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    move v6, v7

    goto/16 :goto_0

    :sswitch_a
    move-object v7, v5

    const-string/jumbo v8, "wanderingcubes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    move v6, v7

    goto/16 :goto_0

    :sswitch_b
    move-object v7, v5

    const-string/jumbo v8, "wave"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xb

    move v6, v7

    goto/16 :goto_0

    .line 21
    :pswitch_0
    new-instance v7, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    move-object v1, v7

    .line 22
    goto/16 :goto_1

    .line 24
    :pswitch_1
    new-instance v7, Lcom/github/ybq/android/spinkit/style/Circle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    move-object v1, v7

    .line 25
    goto/16 :goto_1

    .line 28
    :pswitch_2
    new-instance v7, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    move-object v1, v7

    .line 29
    goto/16 :goto_1

    .line 32
    :pswitch_3
    new-instance v7, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    move-object v1, v7

    .line 33
    goto/16 :goto_1

    .line 36
    :pswitch_4
    new-instance v7, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    move-object v1, v7

    .line 37
    goto/16 :goto_1

    .line 40
    :pswitch_5
    new-instance v7, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    move-object v1, v7

    .line 41
    goto/16 :goto_1

    .line 44
    :pswitch_6
    new-instance v7, Lcom/github/ybq/android/spinkit/style/Pulse;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    move-object v1, v7

    .line 45
    goto/16 :goto_1

    .line 48
    :pswitch_7
    new-instance v7, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    move-object v1, v7

    .line 49
    goto/16 :goto_1

    .line 52
    :pswitch_8
    new-instance v7, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    move-object v1, v7

    .line 53
    goto/16 :goto_1

    .line 56
    :pswitch_9
    new-instance v7, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    move-object v1, v7

    .line 57
    goto/16 :goto_1

    .line 60
    :pswitch_a
    new-instance v7, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    move-object v1, v7

    .line 61
    goto/16 :goto_1

    .line 63
    :pswitch_b
    new-instance v7, Lcom/github/ybq/android/spinkit/style/Wave;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    move-object v1, v7

    .line 64
    goto/16 :goto_1

    .line 77
    :sswitch_c
    move-object v7, v5

    const-string/jumbo v8, "top"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    move v6, v7

    goto/16 :goto_2

    :sswitch_d
    move-object v7, v5

    const-string/jumbo v8, "right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    move v6, v7

    goto/16 :goto_2

    :sswitch_e
    move-object v7, v5

    const-string/jumbo v8, "bottom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    move v6, v7

    goto/16 :goto_2

    .line 79
    :pswitch_c
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    goto/16 :goto_3

    .line 82
    :pswitch_d
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    goto/16 :goto_3

    .line 85
    :pswitch_e
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 86
    goto/16 :goto_3

    .line 19
    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_1
        -0x30c05dfc -> :sswitch_8
        -0x2c36c40a -> :sswitch_5
        0x3792f9 -> :sswitch_b
        0x262ea28 -> :sswitch_7
        0x6482cfb -> :sswitch_2
        0x6611b99 -> :sswitch_6
        0x1e5a47f5 -> :sswitch_0
        0x442a6da6 -> :sswitch_9
        0x4891e9e9 -> :sswitch_a
        0x52813249 -> :sswitch_4
        0x57b39199 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    .line 77
    :sswitch_data_1
    .sparse-switch
        -0x527265d5 -> :sswitch_e
        0x1c155 -> :sswitch_c
        0x677c21c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
