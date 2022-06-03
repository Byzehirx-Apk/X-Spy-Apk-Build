.class public Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 922
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move/from16 v4, p4

    .local v4, "pixelSize":F
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v3

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    move-object/from16 v2, p0

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p1

    .local v3, "res":Landroid/content/res/Resources;
    move-object/from16 v4, p2

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v5, p3

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v6, p4

    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v7, p5

    .local v7, "parent":Landroid/animation/AnimatorSet;
    move/from16 v8, p6

    .local v8, "sequenceOrdering":I
    move/from16 v9, p7

    .local v9, "pixelSize":F
    const/16 v18, 0x0

    move-object/from16 v10, v18

    .line 510
    .local v10, "anim":Landroid/animation/Animator;
    const/16 v18, 0x0

    move-object/from16 v11, v18

    .line 514
    .local v11, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v13, v18

    .line 516
    .local v13, "depth":I
    :goto_0
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    move/from16 v26, v18

    move/from16 v18, v26

    move/from16 v19, v26

    move/from16 v12, v19

    .local v12, "type":I
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    :cond_0
    move/from16 v18, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 519
    move/from16 v18, v12

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 520
    goto :goto_0

    .line 523
    :cond_1
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 524
    .local v14, "name":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 526
    .local v15, "gotValues":Z
    move-object/from16 v18, v14

    const-string/jumbo v19, "objectAnimator"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 527
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move/from16 v22, v9

    move-object/from16 v23, v5

    invoke-static/range {v18 .. v23}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    move-object/from16 v10, v18

    .line 552
    :goto_1
    move-object/from16 v18, v7

    if-eqz v18, :cond_3

    move/from16 v18, v15

    if-nez v18, :cond_3

    .line 553
    move-object/from16 v18, v11

    if-nez v18, :cond_2

    .line 554
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v18

    .line 556
    :cond_2
    move-object/from16 v18, v11

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 558
    :cond_3
    goto/16 :goto_0

    .line 528
    :cond_4
    move-object/from16 v18, v14

    const-string/jumbo v19, "animator"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 529
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    const/16 v22, 0x0

    move/from16 v23, v9

    move-object/from16 v24, v5

    invoke-static/range {v18 .. v24}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v10, v18

    goto :goto_1

    .line 530
    :cond_5
    move-object/from16 v18, v14

    const-string/jumbo v19, "set"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 531
    new-instance v18, Landroid/animation/AnimatorSet;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v10, v18

    .line 532
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    sget-object v21, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    invoke-static/range {v18 .. v21}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    move-object/from16 v16, v18

    .line 535
    .local v16, "a":Landroid/content/res/TypedArray;
    move-object/from16 v18, v16

    move-object/from16 v19, v5

    const-string/jumbo v20, "ordering"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v18

    move/from16 v17, v18

    .line 538
    .local v17, "ordering":I
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v10

    check-cast v23, Landroid/animation/AnimatorSet;

    move/from16 v24, v17

    move/from16 v25, v9

    invoke-static/range {v18 .. v25}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v18

    .line 540
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    goto/16 :goto_1

    .end local v16    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "ordering":I
    :cond_6
    move-object/from16 v18, v14

    const-string/jumbo v19, "propertyValuesHolder"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 542
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v5

    .line 543
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v22

    .line 542
    invoke-static/range {v18 .. v22}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    move-object/from16 v16, v18

    .line 544
    .local v16, "values":[Landroid/animation/PropertyValuesHolder;
    move-object/from16 v18, v16

    if-eqz v18, :cond_7

    move-object/from16 v18, v10

    if-eqz v18, :cond_7

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 545
    move-object/from16 v18, v10

    check-cast v18, Landroid/animation/ValueAnimator;

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 547
    :cond_7
    const/16 v18, 0x1

    move/from16 v15, v18

    .line 548
    goto/16 :goto_1

    .line 549
    .end local v16    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_8
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown animator name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 559
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "gotValues":Z
    :cond_9
    move-object/from16 v18, v7

    if-eqz v18, :cond_b

    move-object/from16 v18, v11

    if-eqz v18, :cond_b

    .line 560
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    move-object/from16 v14, v18

    .line 561
    .local v14, "animsArray":[Landroid/animation/Animator;
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 562
    .local v15, "index":I
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_2
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/animation/Animator;

    move-object/from16 v17, v18

    .line 563
    .local v17, "a":Landroid/animation/Animator;
    move-object/from16 v18, v14

    move/from16 v19, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    .line 564
    goto :goto_2

    .line 565
    .end local v17    # "a":Landroid/animation/Animator;
    :cond_a
    move/from16 v18, v8

    if-nez v18, :cond_c

    .line 566
    move-object/from16 v18, v7

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 571
    .end local v14    # "animsArray":[Landroid/animation/Animator;
    .end local v15    # "index":I
    :cond_b
    :goto_3
    move-object/from16 v18, v10

    move-object/from16 v2, v18

    .end local v2    # "context":Landroid/content/Context;
    return-object v2

    .line 568
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v14    # "animsArray":[Landroid/animation/Animator;
    .restart local v15    # "index":I
    :cond_c
    move-object/from16 v18, v7

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 4

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "sampleKeyframe":Landroid/animation/Keyframe;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, v0

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    move v2, v1

    .line 780
    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v2

    .line 783
    :goto_0
    move-object v0, v2

    .end local v0    # "sampleKeyframe":Landroid/animation/Keyframe;
    return-object v0

    .line 780
    .restart local v0    # "sampleKeyframe":Landroid/animation/Keyframe;
    :cond_0
    move-object v2, v0

    .line 781
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 782
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 783
    invoke-static {v2}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 11

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "keyframes":[Landroid/animation/Keyframe;
    move v1, p1

    .local v1, "gap":F
    move v2, p2

    .local v2, "startIndex":I
    move v3, p3

    .local v3, "endIndex":I
    move v7, v3

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v4, v7

    .line 807
    .local v4, "count":I
    move v7, v1

    move v8, v4

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v5, v7

    .line 808
    .local v5, "increment":F
    move v7, v2

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-gt v7, v8, :cond_0

    .line 809
    move-object v7, v0

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v8

    move v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 808
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "keyframes":[Ljava/lang/Object;
    move-object v1, p1

    .local v1, "header":Ljava/lang/String;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    array-length v5, v5

    if-nez v5, :cond_1

    .line 674
    .line 684
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string/jumbo v5, "AnimatorInflater"

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 677
    move-object v5, v0

    array-length v5, v5

    move v2, v5

    .line 678
    .local v2, "count":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_4

    .line 679
    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    check-cast v5, Landroid/animation/Keyframe;

    move-object v4, v5

    .line 680
    .local v4, "keyframe":Landroid/animation/Keyframe;
    const-string/jumbo v5, "AnimatorInflater"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Keyframe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": fraction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    .line 681
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    const-string/jumbo v7, "null"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    .line 682
    invoke-virtual {v7}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 680
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 681
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_2

    .line 682
    :cond_3
    const-string/jumbo v7, "null"

    goto :goto_3

    .line 684
    .end local v4    # "keyframe":Landroid/animation/Keyframe;
    :cond_4
    goto :goto_0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 27

    .prologue
    .line 207
    move-object/from16 v2, p0

    .local v2, "styledAttributes":Landroid/content/res/TypedArray;
    move/from16 v3, p1

    .local v3, "valueType":I
    move/from16 v4, p2

    .local v4, "valueFromId":I
    move/from16 v5, p3

    .local v5, "valueToId":I
    move-object/from16 v6, p4

    .local v6, "propertyName":Ljava/lang/String;
    move-object/from16 v20, v2

    move/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v20

    move-object/from16 v7, v20

    .line 208
    .local v7, "tvFrom":Landroid/util/TypedValue;
    move-object/from16 v20, v7

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_0
    move/from16 v8, v20

    .line 209
    .local v8, "hasFrom":Z
    move/from16 v20, v8

    if-eqz v20, :cond_5

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    :goto_1
    move/from16 v9, v20

    .line 210
    .local v9, "fromType":I
    move-object/from16 v20, v2

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v20

    move-object/from16 v10, v20

    .line 211
    .local v10, "tvTo":Landroid/util/TypedValue;
    move-object/from16 v20, v10

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    :goto_2
    move/from16 v11, v20

    .line 212
    .local v11, "hasTo":Z
    move/from16 v20, v11

    if-eqz v20, :cond_7

    move-object/from16 v20, v10

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    :goto_3
    move/from16 v12, v20

    .line 214
    .local v12, "toType":I
    move/from16 v20, v3

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 216
    move/from16 v20, v8

    if-eqz v20, :cond_0

    move/from16 v20, v9

    invoke-static/range {v20 .. v20}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    move/from16 v20, v11

    if-eqz v20, :cond_8

    move/from16 v20, v12

    invoke-static/range {v20 .. v20}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 217
    :cond_1
    const/16 v20, 0x3

    move/from16 v3, v20

    .line 223
    :cond_2
    :goto_4
    move/from16 v20, v3

    if-nez v20, :cond_9

    const/16 v20, 0x1

    :goto_5
    move/from16 v13, v20

    .line 225
    .local v13, "getFloats":Z
    const/16 v20, 0x0

    move-object/from16 v14, v20

    .line 227
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    move/from16 v20, v3

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 228
    move-object/from16 v20, v2

    move/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 229
    .local v15, "fromString":Ljava/lang/String;
    move-object/from16 v20, v2

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 231
    .local v16, "toString":Ljava/lang/String;
    move-object/from16 v20, v15

    .line 232
    invoke-static/range {v20 .. v20}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v20

    move-object/from16 v17, v20

    .line 233
    .local v17, "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object/from16 v20, v16

    .line 234
    invoke-static/range {v20 .. v20}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v20

    move-object/from16 v18, v20

    .line 235
    .local v18, "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object/from16 v20, v17

    if-nez v20, :cond_3

    move-object/from16 v20, v18

    if-eqz v20, :cond_b

    .line 236
    :cond_3
    move-object/from16 v20, v17

    if-eqz v20, :cond_d

    .line 237
    new-instance v20, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    move-object/from16 v19, v20

    .line 238
    .local v19, "evaluator":Landroid/animation/TypeEvaluator;
    move-object/from16 v20, v18

    if-eqz v20, :cond_c

    .line 239
    move-object/from16 v20, v17

    move-object/from16 v21, v18

    invoke-static/range {v20 .. v21}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 240
    new-instance v20, Landroid/view/InflateException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " Can\'t morph from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v15

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 208
    .end local v8    # "hasFrom":Z
    .end local v9    # "fromType":I
    .end local v10    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "hasTo":Z
    .end local v12    # "toType":I
    .end local v13    # "getFloats":Z
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "fromString":Ljava/lang/String;
    .end local v16    # "toString":Ljava/lang/String;
    .end local v17    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v18    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 209
    .restart local v8    # "hasFrom":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 211
    .restart local v9    # "fromType":I
    .restart local v10    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 212
    .restart local v11    # "hasTo":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 219
    .restart local v12    # "toType":I
    :cond_8
    const/16 v20, 0x0

    move/from16 v3, v20

    goto/16 :goto_4

    .line 223
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 243
    .restart local v13    # "getFloats":Z
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v15    # "fromString":Ljava/lang/String;
    .restart local v16    # "toString":Ljava/lang/String;
    .restart local v17    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    .restart local v18    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .restart local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_a
    move-object/from16 v20, v6

    move-object/from16 v21, v19

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move-object/from16 v25, v17

    aput-object v25, v23, v24

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x1

    move-object/from16 v25, v18

    aput-object v25, v23, v24

    invoke-static/range {v20 .. v22}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    .line 249
    .line 255
    .line 331
    .end local v15    # "fromString":Ljava/lang/String;
    .end local v16    # "toString":Ljava/lang/String;
    .end local v17    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v18    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_b
    :goto_6
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    .end local v2    # "styledAttributes":Landroid/content/res/TypedArray;
    return-object v2

    .line 246
    .restart local v2    # "styledAttributes":Landroid/content/res/TypedArray;
    .restart local v15    # "fromString":Ljava/lang/String;
    .restart local v16    # "toString":Ljava/lang/String;
    .restart local v17    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    .restart local v18    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .restart local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_c
    move-object/from16 v20, v6

    move-object/from16 v21, v19

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move-object/from16 v25, v17

    aput-object v25, v23, v24

    invoke-static/range {v20 .. v22}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto :goto_6

    .line 249
    .end local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d
    move-object/from16 v20, v18

    if-eqz v20, :cond_b

    .line 250
    new-instance v20, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    move-object/from16 v19, v20

    .line 251
    .restart local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    move-object/from16 v20, v6

    move-object/from16 v21, v19

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move-object/from16 v25, v18

    aput-object v25, v23, v24

    invoke-static/range {v20 .. v22}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto :goto_6

    .line 256
    .end local v15    # "fromString":Ljava/lang/String;
    .end local v16    # "toString":Ljava/lang/String;
    .end local v17    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v18    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v19    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_e
    const/16 v20, 0x0

    move-object/from16 v15, v20

    .line 258
    .local v15, "evaluator":Landroid/animation/TypeEvaluator;
    move/from16 v20, v3

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 260
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v20

    move-object/from16 v15, v20

    .line 262
    :cond_f
    move/from16 v20, v13

    if-eqz v20, :cond_16

    .line 265
    move/from16 v20, v8

    if-eqz v20, :cond_14

    .line 266
    move/from16 v20, v9

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 267
    move-object/from16 v20, v2

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v16, v20

    .line 271
    .local v16, "valueFrom":F
    :goto_7
    move/from16 v20, v11

    if-eqz v20, :cond_13

    .line 272
    move/from16 v20, v12

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 273
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v17, v20

    .line 277
    .local v17, "valueTo":F
    :goto_8
    move-object/from16 v20, v6

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move/from16 v24, v16

    aput v24, v22, v23

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x1

    move/from16 v24, v17

    aput v24, v22, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    .line 290
    .line 326
    .end local v16    # "valueFrom":F
    .end local v17    # "valueTo":F
    :cond_10
    :goto_9
    move-object/from16 v20, v14

    if-eqz v20, :cond_b

    move-object/from16 v20, v15

    if-eqz v20, :cond_b

    .line 327
    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_6

    .line 269
    :cond_11
    move-object/from16 v20, v2

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v16, v20

    .restart local v16    # "valueFrom":F
    goto :goto_7

    .line 275
    :cond_12
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v17, v20

    .restart local v17    # "valueTo":F
    goto :goto_8

    .line 280
    .end local v17    # "valueTo":F
    :cond_13
    move-object/from16 v20, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move/from16 v24, v16

    aput v24, v22, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto :goto_9

    .line 283
    .end local v16    # "valueFrom":F
    :cond_14
    move/from16 v20, v12

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 284
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v17, v20

    .line 288
    .restart local v17    # "valueTo":F
    :goto_a
    move-object/from16 v20, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move/from16 v24, v17

    aput v24, v22, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto :goto_9

    .line 286
    .end local v17    # "valueTo":F
    :cond_15
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v17, v20

    .restart local v17    # "valueTo":F
    goto :goto_a

    .line 293
    .end local v17    # "valueTo":F
    :cond_16
    move/from16 v20, v8

    if-eqz v20, :cond_1c

    .line 294
    move/from16 v20, v9

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 295
    move-object/from16 v20, v2

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v16, v20

    .line 301
    .local v16, "valueFrom":I
    :goto_b
    move/from16 v20, v11

    if-eqz v20, :cond_1b

    .line 302
    move/from16 v20, v12

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 303
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v17, v20

    .line 309
    .local v17, "valueTo":I
    :goto_c
    move-object/from16 v20, v6

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move/from16 v24, v16

    aput v24, v22, v23

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x1

    move/from16 v24, v17

    aput v24, v22, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto/16 :goto_9

    .line 296
    .end local v16    # "valueFrom":I
    .end local v17    # "valueTo":I
    :cond_17
    move/from16 v20, v9

    invoke-static/range {v20 .. v20}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 297
    move-object/from16 v20, v2

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v16, v20

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 299
    .end local v16    # "valueFrom":I
    :cond_18
    move-object/from16 v20, v2

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    move/from16 v16, v20

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 304
    :cond_19
    move/from16 v20, v12

    invoke-static/range {v20 .. v20}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 305
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v17, v20

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 307
    .end local v17    # "valueTo":I
    :cond_1a
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    move/from16 v17, v20

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 311
    .end local v17    # "valueTo":I
    :cond_1b
    move-object/from16 v20, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move/from16 v24, v16

    aput v24, v22, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto/16 :goto_9

    .line 314
    .end local v16    # "valueFrom":I
    :cond_1c
    move/from16 v20, v11

    if-eqz v20, :cond_10

    .line 315
    move/from16 v20, v12

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 316
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v17, v20

    .line 322
    .restart local v17    # "valueTo":I
    :goto_d
    move-object/from16 v20, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move/from16 v24, v17

    aput v24, v22, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v14, v20

    goto/16 :goto_9

    .line 317
    .end local v17    # "valueTo":I
    :cond_1d
    move/from16 v20, v12

    invoke-static/range {v20 .. v20}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 318
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v17, v20

    .restart local v17    # "valueTo":I
    goto :goto_d

    .line 320
    .end local v17    # "valueTo":I
    :cond_1e
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    move/from16 v17, v20

    .restart local v17    # "valueTo":I
    goto :goto_d
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 12

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "valueFromId":I
    move v2, p2

    .local v2, "valueToId":I
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    move-object v3, v10

    .line 656
    .local v3, "tvFrom":Landroid/util/TypedValue;
    move-object v10, v3

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v4, v10

    .line 657
    .local v4, "hasFrom":Z
    move v10, v4

    if-eqz v10, :cond_3

    move-object v10, v3

    iget v10, v10, Landroid/util/TypedValue;->type:I

    :goto_1
    move v5, v10

    .line 658
    .local v5, "fromType":I
    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    move-object v6, v10

    .line 659
    .local v6, "tvTo":Landroid/util/TypedValue;
    move-object v10, v6

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    move v7, v10

    .line 660
    .local v7, "hasTo":Z
    move v10, v7

    if-eqz v10, :cond_5

    move-object v10, v6

    iget v10, v10, Landroid/util/TypedValue;->type:I

    :goto_3
    move v8, v10

    .line 664
    .local v8, "toType":I
    move v10, v4

    if-eqz v10, :cond_0

    move v10, v5

    invoke-static {v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move v10, v7

    if-eqz v10, :cond_6

    move v10, v8

    invoke-static {v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 665
    :cond_1
    const/4 v10, 0x3

    move v9, v10

    .line 669
    .local v9, "valueType":I
    :goto_4
    move v10, v9

    move v0, v10

    .end local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    return v0

    .line 656
    .end local v4    # "hasFrom":Z
    .end local v5    # "fromType":I
    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v7    # "hasTo":Z
    .end local v8    # "toType":I
    .end local v9    # "valueType":I
    .restart local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 657
    .restart local v4    # "hasFrom":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 659
    .restart local v5    # "fromType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 660
    .restart local v7    # "hasTo":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 667
    .restart local v8    # "toType":I
    :cond_6
    const/4 v10, 0x0

    move v9, v10

    .restart local v9    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 12

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {v8, v9, v10, v11}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 639
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v8, v5

    move-object v9, v3

    const-string/jumbo v10, "value"

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v6, v8

    .line 641
    .local v6, "keyframeValue":Landroid/util/TypedValue;
    move-object v8, v6

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 644
    .local v7, "hasValue":Z
    move v8, v7

    if-eqz v8, :cond_1

    move-object v8, v6

    iget v8, v8, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 645
    const/4 v8, 0x3

    move v4, v8

    .line 649
    .local v4, "valueType":I
    :goto_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 650
    move v8, v4

    move v0, v8

    .end local v0    # "res":Landroid/content/res/Resources;
    return v0

    .line 641
    .end local v4    # "valueType":I
    .end local v7    # "hasValue":Z
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 647
    .restart local v7    # "hasValue":Z
    :cond_1
    const/4 v8, 0x0

    move v4, v8

    .restart local v4    # "valueType":I
    goto :goto_1
.end method

.method private static isColorType(I)Z
    .locals 3

    .prologue
    .line 917
    move v0, p0

    .local v0, "type":I
    move v1, v0

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "type":I
    return v0

    .restart local v0    # "type":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 101
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    move-object v2, v3

    .line 105
    .local v2, "objectAnimator":Landroid/animation/Animator;
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 103
    .end local v2    # "objectAnimator":Landroid/animation/Animator;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move v6, v1

    invoke-static {v3, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "objectAnimator":Landroid/animation/Animator;
    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 9
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move v3, p3

    .local v3, "id":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 16
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move/from16 v3, p3

    .local v3, "id":I
    move/from16 v4, p4

    .local v4, "pathErrorScale":F
    const/4 v10, 0x0

    move-object v6, v10

    .line 131
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    move-object v10, v1

    move v11, v3

    :try_start_0
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    move-object v6, v10

    .line 132
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v6

    move v14, v4

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v5, v10

    .line 133
    .local v5, "animator":Landroid/animation/Animator;
    move-object v10, v5

    move-object v7, v10

    .line 147
    move-object v10, v6

    if-eqz v10, :cond_0

    move-object v10, v6

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    move-object v10, v7

    move-object v0, v10

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 134
    .end local v5    # "animator":Landroid/animation/Animator;
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 135
    .local v7, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Can\'t load animation resource ID #0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    .line 137
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 138
    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v10

    .line 139
    move-object v10, v8

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v7    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v6

    if-eqz v10, :cond_1

    move-object v10, v6

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    move-object v10, v9

    throw v10

    .line 140
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 141
    .local v7, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Can\'t load animation resource ID #0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    .line 143
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 144
    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v10

    .line 145
    move-object v10, v8

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 890
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v4, p4

    .local v4, "anim":Landroid/animation/ValueAnimator;
    move/from16 v5, p5

    .local v5, "pathErrorScale":F
    move-object/from16 v6, p6

    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    sget-object v14, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v7, v11

    .line 892
    .local v7, "arrayAnimator":Landroid/content/res/TypedArray;
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    sget-object v14, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v8, v11

    .line 895
    .local v8, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    move-object v11, v4

    if-nez v11, :cond_0

    .line 896
    new-instance v11, Landroid/animation/ValueAnimator;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v4, v11

    .line 899
    :cond_0
    move-object v11, v4

    move-object v12, v7

    move-object v13, v8

    move v14, v5

    move-object v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    move-object v11, v7

    move-object v12, v6

    const-string/jumbo v13, "interpolator"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v11

    move v9, v11

    .line 904
    .local v9, "resID":I
    move v11, v9

    if-lez v11, :cond_1

    .line 905
    move-object v11, v0

    move v12, v9

    invoke-static {v11, v12}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    move-object v10, v11

    .line 906
    .local v10, "interpolator":Landroid/view/animation/Interpolator;
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    .end local v10    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    move-object v11, v7

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 910
    move-object v11, v8

    if-eqz v11, :cond_2

    .line 911
    move-object v11, v8

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 913
    :cond_2
    move-object v11, v4

    move-object v0, v11

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move/from16 v4, p4

    .local v4, "valueType":I
    move-object/from16 v5, p5

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    sget-object v16, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static/range {v13 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    move-object v6, v13

    .line 821
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    move-object v7, v13

    .line 823
    .local v7, "keyframe":Landroid/animation/Keyframe;
    move-object v13, v6

    move-object v14, v5

    const-string/jumbo v15, "fraction"

    const/16 v16, 0x3

    const/high16 v17, -0x40800000    # -1.0f

    invoke-static/range {v13 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    move v8, v13

    .line 826
    .local v8, "fraction":F
    move-object v13, v6

    move-object v14, v5

    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v13

    move-object v9, v13

    .line 828
    .local v9, "keyframeValue":Landroid/util/TypedValue;
    move-object v13, v9

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_0
    move v10, v13

    .line 829
    .local v10, "hasValue":Z
    move v13, v4

    const/4 v14, 0x4

    if-ne v13, v14, :cond_0

    .line 832
    move v13, v10

    if-eqz v13, :cond_3

    move-object v13, v9

    iget v13, v13, Landroid/util/TypedValue;->type:I

    invoke-static {v13}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 833
    const/4 v13, 0x3

    move v4, v13

    .line 839
    :cond_0
    :goto_1
    move v13, v10

    if-eqz v13, :cond_4

    .line 840
    move v13, v4

    packed-switch v13, :pswitch_data_0

    .line 851
    .line 858
    :goto_2
    :pswitch_0
    move-object v13, v6

    move-object v14, v5

    const-string/jumbo v15, "interpolator"

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    move v11, v13

    .line 860
    .local v11, "resID":I
    move v13, v11

    if-lez v13, :cond_1

    .line 861
    move-object v13, v0

    move v14, v11

    invoke-static {v13, v14}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v13

    move-object v12, v13

    .line 862
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    move-object v13, v7

    move-object v14, v12

    invoke-virtual {v13, v14}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    .end local v12    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    move-object v13, v6

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 866
    move-object v13, v7

    move-object v0, v13

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 828
    .end local v10    # "hasValue":Z
    .end local v11    # "resID":I
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 835
    .restart local v10    # "hasValue":Z
    :cond_3
    const/4 v13, 0x0

    move v4, v13

    goto :goto_1

    .line 842
    :pswitch_1
    move-object v13, v6

    move-object v14, v5

    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    move v11, v13

    .line 844
    .local v11, "value":F
    move v13, v8

    move v14, v11

    invoke-static {v13, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    move-object v7, v13

    .line 845
    goto :goto_2

    .line 848
    .end local v11    # "value":F
    :pswitch_2
    move-object v13, v6

    move-object v14, v5

    const-string/jumbo v15, "value"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    move v12, v13

    .line 850
    .local v12, "intValue":I
    move v13, v8

    move v14, v12

    invoke-static {v13, v14}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v13

    move-object v7, v13

    goto :goto_2

    .line 854
    .end local v12    # "intValue":I
    :cond_4
    move v13, v4

    if-nez v13, :cond_5

    move v13, v8

    invoke-static {v13}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v13

    .line 855
    :goto_3
    move-object v7, v13

    goto :goto_2

    .line 854
    :cond_5
    move v13, v8

    .line 855
    invoke-static {v13}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v13

    goto :goto_3

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move/from16 v4, p4

    .local v4, "pathErrorScale":F
    move-object/from16 v5, p5

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Landroid/animation/ObjectAnimator;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object v6, v7

    .line 874
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v6

    move v12, v4

    move-object v13, v5

    invoke-static/range {v7 .. v13}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 876
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    move-object/from16 v2, p0

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p1

    .local v3, "res":Landroid/content/res/Resources;
    move-object/from16 v4, p2

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v5, p3

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v6, p4

    .local v6, "propertyName":Ljava/lang/String;
    move/from16 v7, p5

    .local v7, "valueType":I
    const/16 v22, 0x0

    move-object/from16 v8, v22

    .line 693
    .local v8, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v22, 0x0

    move-object/from16 v9, v22

    .line 696
    .local v9, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :goto_0
    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    move/from16 v10, v23

    .local v10, "type":I
    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move/from16 v22, v10

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 698
    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v11, v22

    .line 699
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v22, v11

    const-string/jumbo v23, "keyframe"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 700
    move/from16 v22, v7

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 701
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-static/range {v22 .. v25}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v22

    move/from16 v7, v22

    .line 704
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    invoke-static/range {v25 .. v25}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v25

    move/from16 v26, v7

    move-object/from16 v27, v5

    invoke-static/range {v22 .. v27}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v22

    move-object/from16 v12, v22

    .line 706
    .local v12, "keyframe":Landroid/animation/Keyframe;
    move-object/from16 v22, v12

    if-eqz v22, :cond_2

    .line 707
    move-object/from16 v22, v9

    if-nez v22, :cond_1

    .line 708
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v22

    .line 710
    :cond_1
    move-object/from16 v22, v9

    move-object/from16 v23, v12

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 712
    :cond_2
    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .line 714
    .end local v12    # "keyframe":Landroid/animation/Keyframe;
    :cond_3
    goto/16 :goto_0

    .line 717
    .end local v11    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v22, v9

    if-eqz v22, :cond_f

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    move/from16 v11, v23

    .local v11, "count":I
    if-lez v22, :cond_f

    .line 723
    move-object/from16 v22, v9

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/animation/Keyframe;

    move-object/from16 v12, v22

    .line 724
    .local v12, "firstKeyframe":Landroid/animation/Keyframe;
    move-object/from16 v22, v9

    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/animation/Keyframe;

    move-object/from16 v13, v22

    .line 725
    .local v13, "lastKeyframe":Landroid/animation/Keyframe;
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Keyframe;->getFraction()F

    move-result v22

    move/from16 v14, v22

    .line 726
    .local v14, "endFraction":F
    move/from16 v22, v14

    const/high16 v23, 0x3f800000    # 1.0f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_5

    .line 727
    move/from16 v22, v14

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_8

    .line 728
    move-object/from16 v22, v13

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 734
    :cond_5
    :goto_1
    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Keyframe;->getFraction()F

    move-result v22

    move/from16 v15, v22

    .line 735
    .local v15, "startFraction":F
    move/from16 v22, v15

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_6

    .line 736
    move/from16 v22, v15

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_9

    .line 737
    move-object/from16 v22, v12

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 743
    :cond_6
    :goto_2
    move/from16 v22, v11

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v22, v0

    move-object/from16 v16, v22

    .line 744
    .local v16, "keyframeArray":[Landroid/animation/Keyframe;
    move-object/from16 v22, v9

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    .line 745
    const/16 v22, 0x0

    move/from16 v17, v22

    .local v17, "i":I
    :goto_3
    move/from16 v22, v17

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 746
    move-object/from16 v22, v16

    move/from16 v23, v17

    aget-object v22, v22, v23

    move-object/from16 v18, v22

    .line 747
    .local v18, "keyframe":Landroid/animation/Keyframe;
    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Keyframe;->getFraction()F

    move-result v22

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_7

    .line 748
    move/from16 v22, v17

    if-nez v22, :cond_a

    .line 749
    move-object/from16 v22, v18

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 745
    :cond_7
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 730
    .end local v15    # "startFraction":F
    .end local v16    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v17    # "i":I
    .end local v18    # "keyframe":Landroid/animation/Keyframe;
    :cond_8
    move-object/from16 v22, v9

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v24, v13

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v24 .. v25}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 731
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 739
    .restart local v15    # "startFraction":F
    :cond_9
    move-object/from16 v22, v9

    const/16 v23, 0x0

    move-object/from16 v24, v12

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 750
    .restart local v16    # "keyframeArray":[Landroid/animation/Keyframe;
    .restart local v17    # "i":I
    .restart local v18    # "keyframe":Landroid/animation/Keyframe;
    :cond_a
    move/from16 v22, v17

    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 751
    move-object/from16 v22, v18

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    .line 755
    :cond_b
    move/from16 v22, v17

    move/from16 v19, v22

    .line 756
    .local v19, "startIndex":I
    move/from16 v22, v17

    move/from16 v20, v22

    .line 757
    .local v20, "endIndex":I
    move/from16 v22, v19

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v21, v22

    .local v21, "j":I
    :goto_5
    move/from16 v22, v21

    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 758
    move-object/from16 v22, v16

    move/from16 v23, v21

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Keyframe;->getFraction()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_d

    .line 759
    .line 763
    :cond_c
    move-object/from16 v22, v16

    move/from16 v23, v20

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Keyframe;->getFraction()F

    move-result v22

    move-object/from16 v23, v16

    move/from16 v24, v19

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    .line 764
    invoke-virtual/range {v23 .. v23}, Landroid/animation/Keyframe;->getFraction()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v21, v22

    .line 765
    .local v21, "gap":F
    move-object/from16 v22, v16

    move/from16 v23, v21

    move/from16 v24, v19

    move/from16 v25, v20

    invoke-static/range {v22 .. v25}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto/16 :goto_4

    .line 761
    .local v21, "j":I
    :cond_d
    move/from16 v22, v21

    move/from16 v20, v22

    .line 757
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 769
    .end local v18    # "keyframe":Landroid/animation/Keyframe;
    .end local v19    # "startIndex":I
    .end local v20    # "endIndex":I
    .end local v21    # "j":I
    :cond_e
    move-object/from16 v22, v6

    move-object/from16 v23, v16

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    move-object/from16 v8, v22

    .line 770
    move/from16 v22, v7

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 771
    move-object/from16 v22, v8

    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 775
    .end local v11    # "count":I
    .end local v12    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v13    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v14    # "endFraction":F
    .end local v15    # "startFraction":F
    .end local v16    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v17    # "i":I
    :cond_f
    move-object/from16 v22, v8

    move-object/from16 v2, v22

    .end local v2    # "context":Landroid/content/Context;
    return-object v2
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    const/4 v12, 0x0

    move-object v5, v12

    .line 579
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    move/from16 v18, v12

    move/from16 v12, v18

    move/from16 v13, v18

    move v6, v13

    .local v6, "type":I
    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    move v12, v6

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    .line 582
    move v12, v6

    const/4 v13, 0x2

    if-eq v12, v13, :cond_0

    .line 583
    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 584
    goto :goto_0

    .line 587
    :cond_0
    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 589
    .local v7, "name":Ljava/lang/String;
    move-object v12, v7

    const-string/jumbo v13, "propertyValuesHolder"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 590
    move-object v12, v1

    move-object v13, v2

    move-object v14, v4

    sget-object v15, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v8, v12

    .line 593
    .local v8, "a":Landroid/content/res/TypedArray;
    move-object v12, v8

    move-object v13, v3

    const-string/jumbo v14, "propertyName"

    const/4 v15, 0x3

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 595
    .local v9, "propertyName":Ljava/lang/String;
    move-object v12, v8

    move-object v13, v3

    const-string/jumbo v14, "valueType"

    const/4 v15, 0x2

    const/16 v16, 0x4

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v10, v12

    .line 599
    .local v10, "valueType":I
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v12 .. v17}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    move-object v11, v12

    .line 601
    .local v11, "pvh":Landroid/animation/PropertyValuesHolder;
    move-object v12, v11

    if-nez v12, :cond_1

    .line 602
    move-object v12, v8

    move v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v9

    invoke-static/range {v12 .. v16}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    move-object v11, v12

    .line 607
    :cond_1
    move-object v12, v11

    if-eqz v12, :cond_3

    .line 608
    move-object v12, v5

    if-nez v12, :cond_2

    .line 609
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v12

    .line 611
    :cond_2
    move-object v12, v5

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 613
    :cond_3
    move-object v12, v8

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v10    # "valueType":I
    .end local v11    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_4
    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 617
    goto/16 :goto_0

    .line 619
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    move-object v7, v12

    .line 620
    .local v7, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    move-object v12, v5

    if-eqz v12, :cond_6

    .line 621
    move-object v12, v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v8, v12

    .line 622
    .local v8, "count":I
    move v12, v8

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    move-object v7, v12

    .line 623
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_1
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_6

    .line 624
    move-object v12, v7

    move v13, v9

    move-object v14, v5

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/PropertyValuesHolder;

    aput-object v14, v12, v13

    .line 623
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 627
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_6
    move-object v12, v7

    move-object v0, v12

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 19

    .prologue
    .line 345
    move-object/from16 v1, p0

    .local v1, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v2, p1

    .local v2, "arrayAnimator":Landroid/content/res/TypedArray;
    move-object/from16 v3, p2

    .local v3, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    move/from16 v4, p3

    .local v4, "pixelSize":F
    move-object/from16 v5, p4

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v12, v2

    move-object v13, v5

    const-string/jumbo v14, "duration"

    const/4 v15, 0x1

    const/16 v16, 0x12c

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    int-to-long v12, v12

    move-wide v6, v12

    .line 347
    .local v6, "duration":J
    move-object v12, v2

    move-object v13, v5

    const-string/jumbo v14, "startOffset"

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    int-to-long v12, v12

    move-wide v8, v12

    .line 349
    .local v8, "startDelay":J
    move-object v12, v2

    move-object v13, v5

    const-string/jumbo v14, "valueType"

    const/4 v15, 0x7

    const/16 v16, 0x4

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v10, v12

    .line 353
    .local v10, "valueType":I
    move-object v12, v5

    const-string/jumbo v13, "valueFrom"

    invoke-static {v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v5

    const-string/jumbo v13, "valueTo"

    .line 354
    invoke-static {v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 355
    move v12, v10

    const/4 v13, 0x4

    if-ne v12, v13, :cond_0

    .line 356
    move-object v12, v2

    const/4 v13, 0x5

    const/4 v14, 0x6

    invoke-static {v12, v13, v14}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v12

    move v10, v12

    .line 360
    :cond_0
    move-object v12, v2

    move v13, v10

    const/4 v14, 0x5

    const/4 v15, 0x6

    const-string/jumbo v16, ""

    invoke-static/range {v12 .. v16}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    move-object v11, v12

    .line 363
    .local v11, "pvh":Landroid/animation/PropertyValuesHolder;
    move-object v12, v11

    if-eqz v12, :cond_1

    .line 364
    move-object v12, v1

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v11

    aput-object v16, v14, v15

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 367
    .end local v11    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object v12, v1

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 368
    move-object v12, v1

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 370
    move-object v12, v1

    move-object v13, v2

    move-object v14, v5

    const-string/jumbo v15, "repeatCount"

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 372
    move-object v12, v1

    move-object v13, v2

    move-object v14, v5

    const-string/jumbo v15, "repeatMode"

    const/16 v16, 0x4

    const/16 v17, 0x1

    invoke-static/range {v13 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 375
    move-object v12, v3

    if-eqz v12, :cond_2

    .line 376
    move-object v12, v1

    move-object v13, v3

    move v14, v10

    move v15, v4

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v16}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 378
    :cond_2
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .locals 16

    .prologue
    .line 390
    move-object/from16 v0, p0

    .local v0, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v1, p1

    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    move/from16 v2, p2

    .local v2, "valueType":I
    move/from16 v3, p3

    .local v3, "pixelSize":F
    move-object/from16 v4, p4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v10, v0

    check-cast v10, Landroid/animation/ObjectAnimator;

    move-object v5, v10

    .line 391
    .local v5, "oa":Landroid/animation/ObjectAnimator;
    move-object v10, v1

    move-object v11, v4

    const-string/jumbo v12, "pathData"

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 402
    .local v6, "pathData":Ljava/lang/String;
    move-object v10, v6

    if-eqz v10, :cond_3

    .line 403
    move-object v10, v1

    move-object v11, v4

    const-string/jumbo v12, "propertyXName"

    const/4 v13, 0x2

    invoke-static {v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 405
    .local v7, "propertyXName":Ljava/lang/String;
    move-object v10, v1

    move-object v11, v4

    const-string/jumbo v12, "propertyYName"

    const/4 v13, 0x3

    invoke-static {v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 409
    .local v8, "propertyYName":Ljava/lang/String;
    move v10, v2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    move v10, v2

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 412
    :cond_0
    const/4 v10, 0x0

    move v2, v10

    .line 414
    :cond_1
    move-object v10, v7

    if-nez v10, :cond_2

    move-object v10, v8

    if-nez v10, :cond_2

    .line 415
    new-instance v10, Landroid/view/InflateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 418
    :cond_2
    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v10

    move-object v9, v10

    .line 419
    .local v9, "path":Landroid/graphics/Path;
    move-object v10, v9

    move-object v11, v5

    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v3

    mul-float/2addr v12, v13

    move-object v13, v7

    move-object v14, v8

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 429
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "path":Landroid/graphics/Path;
    :goto_0
    return-void

    .line 422
    :cond_3
    move-object v10, v1

    move-object v11, v4

    const-string/jumbo v12, "propertyName"

    const/4 v13, 0x0

    .line 423
    invoke-static {v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 425
    .local v7, "propertyName":Ljava/lang/String;
    move-object v10, v5

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 26

    .prologue
    .line 436
    move-object/from16 v2, p0

    .local v2, "path":Landroid/graphics/Path;
    move-object/from16 v3, p1

    .local v3, "oa":Landroid/animation/ObjectAnimator;
    move/from16 v4, p2

    .local v4, "precision":F
    move-object/from16 v5, p3

    .local v5, "propertyXName":Ljava/lang/String;
    move-object/from16 v6, p4

    .local v6, "propertyYName":Ljava/lang/String;
    new-instance v20, Landroid/graphics/PathMeasure;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object/from16 v7, v20

    .line 437
    .local v7, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 440
    .local v8, "totalLength":F
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v20

    .line 441
    .local v9, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 443
    :cond_0
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v20

    move/from16 v10, v20

    .line 444
    .local v10, "pathLength":F
    move/from16 v20, v8

    move/from16 v21, v10

    add-float v20, v20, v21

    move/from16 v8, v20

    .line 445
    move-object/from16 v20, v9

    move/from16 v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 447
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v20

    if-nez v20, :cond_0

    .line 450
    new-instance v20, Landroid/graphics/PathMeasure;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v2

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object/from16 v10, v20

    .line 452
    .local v10, "pathMeasure":Landroid/graphics/PathMeasure;
    const/16 v20, 0x64

    move/from16 v21, v8

    move/from16 v22, v4

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v11, v20

    .line 454
    .local v11, "numPoints":I
    move/from16 v20, v11

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 455
    .local v12, "mX":[F
    move/from16 v20, v11

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 456
    .local v13, "mY":[F
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 458
    .local v14, "position":[F
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 459
    .local v15, "contourIndex":I
    move/from16 v20, v8

    move/from16 v21, v11

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v16, v20

    .line 460
    .local v16, "step":F
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 465
    .local v17, "currentDistance":F
    const/16 v20, 0x0

    move/from16 v18, v20

    .local v18, "i":I
    :goto_0
    move/from16 v20, v18

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 466
    move-object/from16 v20, v10

    move/from16 v21, v17

    move-object/from16 v22, v9

    move/from16 v23, v15

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v22, v14

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v20

    .line 469
    move-object/from16 v20, v12

    move/from16 v21, v18

    move-object/from16 v22, v14

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    .line 470
    move-object/from16 v20, v13

    move/from16 v21, v18

    move-object/from16 v22, v14

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 471
    move/from16 v20, v17

    move/from16 v21, v16

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 472
    move/from16 v20, v15

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move/from16 v20, v17

    move-object/from16 v21, v9

    move/from16 v22, v15

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 473
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1

    .line 474
    add-int/lit8 v15, v15, 0x1

    .line 475
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v20

    .line 465
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 480
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v18, v20

    .line 481
    .local v18, "x":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x0

    move-object/from16 v19, v20

    .line 482
    .local v19, "y":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v20, v5

    if-eqz v20, :cond_3

    .line 483
    move-object/from16 v20, v5

    move-object/from16 v21, v12

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v18, v20

    .line 485
    :cond_3
    move-object/from16 v20, v6

    if-eqz v20, :cond_4

    .line 486
    move-object/from16 v20, v6

    move-object/from16 v21, v13

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    move-object/from16 v19, v20

    .line 488
    :cond_4
    move-object/from16 v20, v18

    if-nez v20, :cond_5

    .line 489
    move-object/from16 v20, v3

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    move-object/from16 v24, v19

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v21}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 495
    :goto_1
    return-void

    .line 490
    :cond_5
    move-object/from16 v20, v19

    if-nez v20, :cond_6

    .line 491
    move-object/from16 v20, v3

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    move-object/from16 v24, v18

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v21}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 493
    :cond_6
    move-object/from16 v20, v3

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    move-object/from16 v24, v18

    aput-object v24, v22, v23

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x1

    move-object/from16 v24, v19

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v21}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1
.end method
