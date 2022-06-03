.class public Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    move-object v4, v9

    .line 109
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v6, v9

    .line 111
    .local v6, "depth":I
    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v14, v9

    move v9, v14

    move v10, v14

    move v5, v10

    .local v5, "type":I
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v10, v6

    if-le v9, v10, :cond_c

    :cond_0
    move v9, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    .line 114
    move v9, v5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    move-object v9, v3

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    move-object v7, v9

    .line 120
    .local v7, "attrs":Landroid/util/AttributeSet;
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 122
    .local v8, "name":Ljava/lang/String;
    move-object v9, v8

    const-string/jumbo v10, "linearInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 123
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v4, v9

    .line 145
    :goto_1
    goto :goto_0

    .line 124
    :cond_2
    move-object v9, v8

    const-string/jumbo v10, "accelerateInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 125
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_1

    .line 126
    :cond_3
    move-object v9, v8

    const-string/jumbo v10, "decelerateInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 127
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_1

    .line 128
    :cond_4
    move-object v9, v8

    const-string/jumbo v10, "accelerateDecelerateInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 129
    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v4, v9

    goto :goto_1

    .line 130
    :cond_5
    move-object v9, v8

    const-string/jumbo v10, "cycleInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 131
    new-instance v9, Landroid/view/animation/CycleInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_1

    .line 132
    :cond_6
    move-object v9, v8

    const-string/jumbo v10, "anticipateInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 133
    new-instance v9, Landroid/view/animation/AnticipateInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_1

    .line 134
    :cond_7
    move-object v9, v8

    const-string/jumbo v10, "overshootInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 135
    new-instance v9, Landroid/view/animation/OvershootInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_1

    .line 136
    :cond_8
    move-object v9, v8

    const-string/jumbo v10, "anticipateOvershootInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 137
    new-instance v9, Landroid/view/animation/AnticipateOvershootInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_1

    .line 138
    :cond_9
    move-object v9, v8

    const-string/jumbo v10, "bounceInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 139
    new-instance v9, Landroid/view/animation/BounceInterpolator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object v4, v9

    goto/16 :goto_1

    .line 140
    :cond_a
    move-object v9, v8

    const-string/jumbo v10, "pathInterpolator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 141
    new-instance v9, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v9

    goto/16 :goto_1

    .line 143
    :cond_b
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown interpolator name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 146
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "name":Ljava/lang/String;
    :cond_c
    move-object v9, v4

    move-object v0, v9

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 68
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v0, v6

    .line 95
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    .line 74
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    move v6, v1

    const v7, 0x10c000f

    if-ne v6, v7, :cond_2

    .line 75
    :try_start_0
    new-instance v6, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 95
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 76
    :cond_2
    move v6, v1

    const v7, 0x10c000d

    if-ne v6, v7, :cond_4

    .line 77
    :try_start_1
    new-instance v6, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    .line 95
    move-object v6, v2

    if-eqz v6, :cond_3

    move-object v6, v2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 78
    :cond_4
    move v6, v1

    const v7, 0x10c000e

    if-ne v6, v7, :cond_6

    .line 79
    :try_start_2
    new-instance v6, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v6

    .line 95
    move-object v6, v2

    if-eqz v6, :cond_5

    move-object v6, v2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 81
    :cond_6
    move-object v6, v0

    :try_start_3
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v2, v6

    .line 82
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    move-object v9, v2

    invoke-static {v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    move-object v3, v6

    .line 95
    move-object v6, v2

    if-eqz v6, :cond_7

    move-object v6, v2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 84
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 85
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t load animation resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 87
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 88
    move-object v6, v4

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .end local v3    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    if-eqz v6, :cond_8

    move-object v6, v2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    move-object v6, v5

    throw v6

    .line 89
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 90
    .local v3, "ex":Ljava/io/IOException;
    :try_start_5
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t load animation resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 92
    .restart local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 93
    move-object v6, v4

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
