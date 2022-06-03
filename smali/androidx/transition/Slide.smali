.class public Landroidx/transition/Slide;
.super Landroidx/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Slide$CalculateSlideVertical;,
        Landroidx/transition/Slide$CalculateSlideHorizontal;,
        Landroidx/transition/Slide$CalculateSlide;,
        Landroidx/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 55
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 92
    new-instance v0, Landroidx/transition/Slide$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$1;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

    .line 99
    new-instance v0, Landroidx/transition/Slide$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$2;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

    .line 114
    new-instance v0, Landroidx/transition/Slide$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$3;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

    .line 121
    new-instance v0, Landroidx/transition/Slide$4;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$4;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

    .line 128
    new-instance v0, Landroidx/transition/Slide$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$5;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

    .line 143
    new-instance v0, Landroidx/transition/Slide$6;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$6;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Visibility;-><init>()V

    .line 57
    move-object v1, v0

    sget-object v2, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v2, v1, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 58
    move-object v1, v0

    const/16 v2, 0x50

    iput v2, v1, Landroidx/transition/Slide;->mSlideEdge:I

    .line 155
    move-object v1, v0

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroidx/transition/Slide;->setSlideEdge(I)V

    .line 156
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move v1, p1

    .local v1, "slideEdge":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/Visibility;-><init>()V

    .line 57
    move-object v2, v0

    sget-object v3, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v3, v2, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 58
    move-object v2, v0

    const/16 v3, 0x50

    iput v3, v2, Landroidx/transition/Slide;->mSlideEdge:I

    .line 162
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/Slide;->setSlideEdge(I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    move-object v5, v0

    sget-object v6, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v6, v5, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 58
    move-object v5, v0

    const/16 v6, 0x50

    iput v6, v5, Landroidx/transition/Slide;->mSlideEdge:I

    .line 167
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->SLIDE:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 168
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "slideEdge"

    const/4 v8, 0x0

    const/16 v9, 0x50

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 170
    .local v4, "edge":I
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/Slide;->setSlideEdge(I)V

    .line 173
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v4

    .line 177
    .local v2, "view":Landroid/view/View;
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 178
    .local v3, "position":[I
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 179
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:slide:screenPosition"

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 180
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 191
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Slide;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 192
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 185
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Slide;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 186
    return-void
.end method

.method public getSlideEdge()I
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object v1, v0

    iget v1, v1, Landroidx/transition/Slide;->mSlideEdge:I

    move v0, v1

    .end local v0    # "this":Landroidx/transition/Slide;
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .prologue
    .line 247
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "view":Landroid/view/View;
    move-object/from16 v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move-object v10, v4

    if-nez v10, :cond_0

    .line 248
    const/4 v10, 0x0

    move-object v0, v10

    .line 256
    .end local v0    # "this":Landroidx/transition/Slide;
    :goto_0
    return-object v0

    .line 250
    .restart local v0    # "this":Landroidx/transition/Slide;
    :cond_0
    move-object v10, v4

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:slide:screenPosition"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    check-cast v10, [I

    move-object v5, v10

    .line 251
    .local v5, "position":[I
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    move v6, v10

    .line 252
    .local v6, "endX":F
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    move v7, v10

    .line 253
    .local v7, "endY":F
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v8, v10

    .line 254
    .local v8, "startX":F
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v9, v10

    .line 255
    .local v9, "startY":F
    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move v14, v8

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v7

    sget-object v18, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 256
    invoke-static/range {v10 .. v18}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .prologue
    .line 263
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "view":Landroid/view/View;
    move-object/from16 v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 264
    const/4 v10, 0x0

    move-object v0, v10

    .line 272
    .end local v0    # "this":Landroidx/transition/Slide;
    :goto_0
    return-object v0

    .line 266
    .restart local v0    # "this":Landroidx/transition/Slide;
    :cond_0
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:slide:screenPosition"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    check-cast v10, [I

    move-object v5, v10

    .line 267
    .local v5, "position":[I
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    move v6, v10

    .line 268
    .local v6, "startX":F
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    move v7, v10

    .line 269
    .local v7, "startY":F
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v8, v10

    .line 270
    .local v8, "endX":F
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v9, v10

    .line 271
    .local v9, "endY":F
    move-object v10, v2

    move-object v11, v3

    move-object v12, v5

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    sget-object v18, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 272
    invoke-static/range {v10 .. v18}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public setSlideEdge(I)V
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide;
    move v1, p1

    .local v1, "slideEdge":I
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Invalid slide direction"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :sswitch_0
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 206
    .line 225
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/transition/Slide;->mSlideEdge:I

    .line 226
    new-instance v3, Landroidx/transition/SidePropagation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/transition/SidePropagation;-><init>()V

    move-object v2, v3

    .line 227
    .local v2, "propagation":Landroidx/transition/SidePropagation;
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/SidePropagation;->setSide(I)V

    .line 228
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/transition/Slide;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 229
    return-void

    .line 208
    .end local v2    # "propagation":Landroidx/transition/SidePropagation;
    :sswitch_1
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 209
    goto :goto_0

    .line 211
    :sswitch_2
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 212
    goto :goto_0

    .line 214
    :sswitch_3
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 215
    goto :goto_0

    .line 217
    :sswitch_4
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 218
    goto :goto_0

    .line 220
    :sswitch_5
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 221
    goto :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method
