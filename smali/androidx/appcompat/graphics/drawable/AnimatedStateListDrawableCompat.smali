.class public Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String; = ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String; = ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

.field private static final TRANSITION_MISSING_FROM_TO_ID:Ljava/lang/String; = ": <transition> tag requires \'fromId\' & \'toId\' attributes"


# instance fields
.field private mMutated:Z

.field private mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

.field private mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    .line 110
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 10
    .param p1    # Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    .local v1, "state":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v2, p2

    .local v2, "res":Landroid/content/res/Resources;
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V

    .line 103
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 105
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 116
    new-instance v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    move-object v3, v4

    .line 117
    .local v3, "newState":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 118
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    move-result v4

    .line 119
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    .line 120
    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 139
    .local v3, "res":Landroid/content/res/Resources;
    move-object v7, v3

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object v4, v7

    .line 140
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v7, v4

    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    move-object v5, v7

    .line 142
    .local v5, "attrs":Landroid/util/AttributeSet;
    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v12, v7

    move v7, v12

    move v8, v12

    move v6, v8

    .local v6, "type":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    move v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    move v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 147
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "No start tag found"

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 151
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v7, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v8, "parser error"

    move-object v9, v3

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 154
    .line 155
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v7, 0x0

    move-object v0, v7

    .end local v0    # "context":Landroid/content/Context;
    :goto_2
    return-object v0

    .line 149
    .restart local v0    # "context":Landroid/content/Context;
    .local v3, "res":Landroid/content/res/Resources;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    :cond_1
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v2

    :try_start_1
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v0, v7

    goto :goto_2

    .line 152
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 153
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v8, "parser error"

    move-object v9, v3

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_1
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v4, p4

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    move-object v7, v2

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 171
    .local v5, "name":Ljava/lang/String;
    move-object v7, v5

    const-string/jumbo v8, "animated-selector"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 172
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    .line 173
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": invalid animated-selector tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    :cond_0
    new-instance v7, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>()V

    move-object v6, v7

    .line 176
    .local v6, "asl":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 177
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v5, p5

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 484
    .local v7, "innerDepth":I
    :cond_0
    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v6, v10

    .local v6, "type":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    move-object v9, v3

    .line 485
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v8, v10

    .local v8, "depth":I
    move v10, v7

    if-ge v9, v10, :cond_1

    move v9, v6

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    .line 487
    :cond_1
    move v9, v6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 488
    goto :goto_0

    .line 490
    :cond_2
    move v9, v8

    move v10, v7

    if-le v9, v10, :cond_3

    .line 491
    goto :goto_0

    .line 493
    :cond_3
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 494
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    move-result v9

    goto :goto_0

    .line 495
    :cond_4
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "transition"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 496
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    move-result v9

    goto :goto_0

    .line 499
    .end local v8    # "depth":I
    :cond_5
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    move-result v1

    .line 472
    return-void
.end method

.method private parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v5, p5

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    move-object v12, v2

    move-object v13, v5

    move-object v14, v4

    sget-object v15, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v6, v12

    .line 565
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v12, v6

    sget v13, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move v7, v12

    .line 567
    .local v7, "keyframeId":I
    const/4 v12, 0x0

    move-object v8, v12

    .line 568
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    move-object v12, v6

    sget v13, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v14, -0x1

    .line 569
    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move v9, v12

    .line 570
    .local v9, "drawableId":I
    move v12, v9

    if-lez v12, :cond_0

    .line 571
    move-object v12, v1

    move v13, v9

    invoke-static {v12, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v8, v12

    .line 573
    :cond_0
    move-object v12, v6

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    move-object v12, v0

    move-object v13, v4

    invoke-virtual {v12, v13}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v12

    move-object v10, v12

    .line 577
    .local v10, "states":[I
    move-object v12, v8

    if-nez v12, :cond_3

    .line 579
    :goto_0
    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move/from16 v16, v12

    move/from16 v12, v16

    move/from16 v13, v16

    move v11, v13

    .local v11, "type":I
    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    move v12, v11

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    .line 583
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    .line 584
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 587
    :cond_2
    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "vector"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 588
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-static {v12, v13, v14, v15}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v12

    move-object v8, v12

    .line 595
    .end local v11    # "type":I
    :cond_3
    :goto_1
    move-object v12, v8

    if-nez v12, :cond_6

    .line 596
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    .line 597
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 589
    .restart local v11    # "type":I
    :cond_4
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_5

    .line 590
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v8, v12

    goto :goto_1

    .line 592
    :cond_5
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    invoke-static {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v8, v12

    goto :goto_1

    .line 599
    .end local v11    # "type":I
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v13, v10

    move-object v14, v8

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v12

    move v0, v12

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method private parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v5, p5

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    move-object v13, v2

    move-object v14, v5

    move-object v15, v4

    sget-object v16, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static/range {v13 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    move-object v6, v13

    .line 511
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v13, v6

    sget v14, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move v7, v13

    .line 513
    .local v7, "fromId":I
    move-object v13, v6

    sget v14, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move v8, v13

    .line 515
    .local v8, "toId":I
    const/4 v13, 0x0

    move-object v9, v13

    .line 516
    .local v9, "dr":Landroid/graphics/drawable/Drawable;
    move-object v13, v6

    sget v14, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move v10, v13

    .line 518
    .local v10, "drawableId":I
    move v13, v10

    if-lez v13, :cond_0

    .line 519
    move-object v13, v1

    move v14, v10

    invoke-static {v13, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v9, v13

    .line 521
    :cond_0
    move-object v13, v6

    sget v14, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move v11, v13

    .line 523
    .local v11, "reversible":Z
    move-object v13, v6

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 526
    move-object v13, v9

    if-nez v13, :cond_3

    .line 528
    :goto_0
    move-object v13, v3

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v12, v14

    .local v12, "type":I
    const/4 v14, 0x4

    if-ne v13, v14, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    move v13, v12

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    .line 532
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .line 533
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 536
    :cond_2
    move-object v13, v3

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "animated-vector"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 537
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v13 .. v17}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v13

    move-object v9, v13

    .line 545
    .end local v12    # "type":I
    :cond_3
    :goto_1
    move-object v13, v9

    if-nez v13, :cond_6

    .line 546
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .line 547
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 539
    .restart local v12    # "type":I
    :cond_4
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_5

    .line 540
    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-static/range {v13 .. v16}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v9, v13

    goto :goto_1

    .line 542
    :cond_5
    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-static {v13, v14, v15}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v9, v13

    goto :goto_1

    .line 549
    .end local v12    # "type":I
    :cond_6
    move v13, v7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    move v13, v8

    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    .line 550
    :cond_7
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .line 551
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 553
    :cond_8
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move v14, v7

    move v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v11

    invoke-virtual/range {v13 .. v17}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v13

    move v0, v13

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method private selectTransition(I)Z
    .locals 18

    .prologue
    .line 292
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move/from16 v1, p1

    .local v1, "toIndex":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    move-object v3, v12

    .line 293
    .local v3, "currentTransition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    move-object v12, v3

    if-eqz v12, :cond_3

    .line 294
    move v12, v1

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    if-ne v12, v13, :cond_0

    .line 296
    const/4 v12, 0x1

    move v0, v12

    .line 349
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :goto_0
    return v0

    .line 297
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :cond_0
    move v12, v1

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    if-ne v12, v13, :cond_1

    move-object v12, v3

    invoke-virtual {v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->canReverse()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 299
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->reverse()V

    .line 300
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    iput v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 301
    move-object v12, v0

    move v13, v1

    iput v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 302
    const/4 v12, 0x1

    move v0, v12

    goto :goto_0

    .line 305
    :cond_1
    move-object v12, v0

    iget v12, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    move v2, v12

    .line 307
    .local v2, "fromIndex":I
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    .line 312
    :goto_1
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 313
    move-object v12, v0

    const/4 v13, -0x1

    iput v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 314
    move-object v12, v0

    const/4 v13, -0x1

    iput v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 315
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v4, v12

    .line 316
    .local v4, "state":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v12, v4

    move v13, v2

    invoke-virtual {v12, v13}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v12

    move v5, v12

    .line 317
    .local v5, "fromId":I
    move-object v12, v4

    move v13, v1

    invoke-virtual {v12, v13}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v12

    move v6, v12

    .line 318
    .local v6, "toId":I
    move v12, v6

    if-eqz v12, :cond_2

    move v12, v5

    if-nez v12, :cond_4

    .line 320
    :cond_2
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 309
    .end local v2    # "fromIndex":I
    .end local v4    # "state":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    .end local v5    # "fromId":I
    .end local v6    # "toId":I
    :cond_3
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    move-result v12

    move v2, v12

    .restart local v2    # "fromIndex":I
    goto :goto_1

    .line 322
    .restart local v4    # "state":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    .restart local v5    # "fromId":I
    .restart local v6    # "toId":I
    :cond_4
    move-object v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfTransition(II)I

    move-result v12

    move v7, v12

    .line 323
    .local v7, "transitionIndex":I
    move v12, v7

    if-gez v12, :cond_5

    .line 325
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 327
    :cond_5
    move-object v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    move-result v12

    move v8, v12

    .line 329
    .local v8, "hasReversibleFlag":Z
    move-object v12, v0

    move v13, v7

    invoke-virtual {v12, v13}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    move-result v12

    .line 331
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v10, v12

    .line 332
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    move-object v12, v10

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v12, :cond_6

    .line 333
    move-object v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v12

    move v11, v12

    .line 334
    .local v11, "reversed":Z
    new-instance v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    check-cast v14, Landroid/graphics/drawable/AnimationDrawable;

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v13 .. v16}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    move-object v9, v12

    .line 345
    .end local v11    # "reversed":Z
    .local v9, "transition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :goto_2
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    .line 346
    move-object v12, v0

    move-object v13, v9

    iput-object v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 347
    move-object v12, v0

    move v13, v2

    iput v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 348
    move-object v12, v0

    move v13, v1

    iput v13, v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 349
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0

    .line 336
    .end local v9    # "transition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :cond_6
    move-object v12, v10

    instance-of v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v12, :cond_7

    .line 338
    new-instance v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    check-cast v14, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v13, v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    move-object v9, v12

    .restart local v9    # "transition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    goto :goto_2

    .line 339
    .end local v9    # "transition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :cond_7
    move-object v12, v10

    instance-of v12, v12, Landroid/graphics/drawable/Animatable;

    if-eqz v12, :cond_8

    .line 340
    new-instance v12, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    check-cast v14, Landroid/graphics/drawable/Animatable;

    invoke-direct {v13, v14}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    move-object v9, v12

    .restart local v9    # "transition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    goto :goto_2

    .line 343
    .end local v9    # "transition":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :cond_8
    const/4 v12, 0x0

    move v0, v12

    goto/16 :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 8

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v2, v3

    .line 450
    .local v2, "state":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 451
    move-object v3, v2

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    .line 454
    :cond_0
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mVariablePadding:Z

    .line 455
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 454
    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setVariablePadding(Z)V

    .line 457
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mConstantSize:Z

    .line 458
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 457
    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setConstantSize(Z)V

    .line 460
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    move-object v6, v2

    iget v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mEnterFadeDuration:I

    .line 461
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 460
    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setEnterFadeDuration(I)V

    .line 463
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    move-object v6, v2

    iget v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mExitFadeDuration:I

    .line 464
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 463
    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setExitFadeDuration(I)V

    .line 466
    move-object v3, v0

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mDither:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setDither(Z)V

    .line 468
    return-void
.end method


# virtual methods
.method public bridge synthetic addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 9
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move v3, p3

    .local v3, "id":I
    move-object v4, v2

    if-nez v4, :cond_0

    .line 234
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Drawable must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v4

    .line 237
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    move-result v4

    .line 238
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 11
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    .local v1, "fromId":I
    move v2, p2

    .local v2, "toId":I
    move-object v3, p3

    .local v3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    move v4, p4

    .local v4, "reversible":Z
    move-object v5, v3

    if-nez v5, :cond_0

    .line 251
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Transition drawable must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v5

    .line 254
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->canApplyTheme()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method clearMutated()V
    .locals 3

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->clearMutated()V

    .line 619
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    .line 620
    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    .locals 7

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    new-instance v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return-object v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getAlpha()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getOpacity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 4
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move-object/from16 v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v5, p5

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    move-object v7, v2

    move-object v8, v5

    move-object v9, v4

    sget-object v10, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {v7, v8, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    .line 202
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v7, v0

    move-object v8, v6

    sget v9, Landroidx/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setVisible(ZZ)Z

    move-result v7

    .line 204
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 205
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->updateDensity(Landroid/content/res/Resources;)V

    .line 206
    move-object v7, v6

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 208
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->init()V

    .line 209
    return-void
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->isAutoMirrored()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 3

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 264
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v1, :cond_0

    .line 265
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    .line 266
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 267
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    move-result v1

    .line 268
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 269
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 271
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 605
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mutate()V

    .line 606
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    .line 608
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return-object v0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onLayoutDirectionChanged(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v5

    move v2, v5

    .line 278
    .local v2, "targetIndex":I
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    move-result v6

    if-eq v5, v6, :cond_2

    move-object v5, v0

    move v6, v2

    .line 279
    invoke-direct {v5, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectTransition(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 283
    .local v3, "changed":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 284
    .local v4, "current":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 285
    move v5, v3

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    or-int/2addr v5, v6

    move v3, v5

    .line 287
    :cond_1
    move v5, v3

    move v0, v5

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0

    .line 279
    .end local v3    # "changed":Z
    .end local v4    # "current":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 4
    .param p1    # Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    .local v1, "state":Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 718
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    if-eqz v2, :cond_0

    .line 719
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    .line 721
    :cond_0
    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setEnterFadeDuration(I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    return-void
.end method

.method public bridge synthetic setExitFadeDuration(I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 7

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v4

    move v3, v4

    .line 214
    .local v3, "changed":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v4, :cond_1

    move v4, v3

    if-nez v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_1

    .line 215
    :cond_0
    move v4, v1

    if-eqz v4, :cond_2

    .line 216
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    .line 222
    :cond_1
    :goto_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    return v0

    .line 219
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
