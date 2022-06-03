.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android:changeTransform:matrix"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android:changeTransform:transforms"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "android:changeTransform:parentMatrix"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, [F

    const-string/jumbo v3, "nonTranslations"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 84
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string/jumbo v3, "translations"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 102
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 104
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 105
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 104
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 105
    move-object v4, v0

    new-instance v5, Landroid/graphics/Matrix;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v4, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 112
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 113
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "reparentWithOverlay"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 115
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "reparent"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 117
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 12

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v7

    .line 195
    .local v2, "view":Landroid/view/View;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 196
    .line 219
    :goto_0
    return-void

    .line 198
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:parent"

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 199
    new-instance v7, Landroidx/transition/ChangeTransform$Transforms;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-direct {v8, v9}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    move-object v3, v7

    .line 200
    .local v3, "transforms":Landroidx/transition/ChangeTransform$Transforms;
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:transforms"

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 201
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v4, v7

    .line 202
    .local v4, "matrix":Landroid/graphics/Matrix;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 203
    :cond_1
    const/4 v7, 0x0

    move-object v4, v7

    .line 207
    :goto_1
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:matrix"

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 208
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v7, :cond_2

    .line 209
    new-instance v7, Landroid/graphics/Matrix;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v7

    .line 210
    .local v5, "parentMatrix":Landroid/graphics/Matrix;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v6, v7

    .line 211
    .local v6, "parent":Landroid/view/ViewGroup;
    move-object v7, v6

    move-object v8, v5

    invoke-static {v7, v8}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 212
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v7

    .line 213
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:parentMatrix"

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 214
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:intermediateMatrix"

    move-object v9, v2

    sget v10, Landroidx/transition/R$id;->transition_transform:I

    .line 215
    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 214
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 216
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:intermediateParentMatrix"

    move-object v9, v2

    sget v10, Landroidx/transition/R$id;->parent_matrix:I

    .line 217
    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 216
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 219
    .end local v5    # "parentMatrix":Landroid/graphics/Matrix;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_2
    goto/16 :goto_0

    .line 205
    :cond_3
    new-instance v7, Landroid/graphics/Matrix;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v4, v7

    goto :goto_1
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 15

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v3, p3

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v4, v10

    .line 387
    .local v4, "view":Landroid/view/View;
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:parentMatrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    move-object v5, v10

    .line 388
    .local v5, "endMatrix":Landroid/graphics/Matrix;
    new-instance v10, Landroid/graphics/Matrix;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v6, v10

    .line 389
    .local v6, "localEndMatrix":Landroid/graphics/Matrix;
    move-object v10, v1

    move-object v11, v6

    invoke-static {v10, v11}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 391
    move-object v10, v4

    move-object v11, v1

    move-object v12, v6

    invoke-static {v10, v11, v12}, Landroidx/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;

    move-result-object v10

    move-object v7, v10

    .line 392
    .local v7, "ghostView":Landroidx/transition/GhostViewImpl;
    move-object v10, v7

    if-nez v10, :cond_0

    .line 393
    .line 415
    :goto_0
    return-void

    .line 396
    :cond_0
    move-object v10, v7

    move-object v11, v2

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v12, "android:changeTransform:parent"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v12, v2

    iget-object v12, v12, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v10, v11, v12}, Landroidx/transition/GhostViewImpl;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 399
    move-object v10, v0

    move-object v8, v10

    .line 400
    .local v8, "outerTransition":Landroidx/transition/Transition;
    :goto_1
    move-object v10, v8

    iget-object v10, v10, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v10, :cond_1

    .line 401
    move-object v10, v8

    iget-object v10, v10, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    move-object v8, v10

    goto :goto_1

    .line 404
    :cond_1
    new-instance v10, Landroidx/transition/ChangeTransform$GhostListener;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostViewImpl;)V

    move-object v9, v10

    .line 405
    .local v9, "listener":Landroidx/transition/ChangeTransform$GhostListener;
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v10

    .line 409
    sget-boolean v10, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v10, :cond_3

    .line 410
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v3

    iget-object v11, v11, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v10, v11, :cond_2

    .line 411
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 413
    :cond_2
    move-object v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 415
    :cond_3
    goto :goto_0
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 27

    .prologue
    .line 283
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/transition/ChangeTransform;
    move-object/from16 v2, p1

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v3, p2

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    move/from16 v4, p3

    .local v4, "handleParentChange":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string/jumbo v19, "android:changeTransform:matrix"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Matrix;

    move-object/from16 v5, v18

    .line 284
    .local v5, "startMatrix":Landroid/graphics/Matrix;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string/jumbo v19, "android:changeTransform:matrix"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Matrix;

    move-object/from16 v6, v18

    .line 286
    .local v6, "endMatrix":Landroid/graphics/Matrix;
    move-object/from16 v18, v5

    if-nez v18, :cond_0

    .line 287
    sget-object v18, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object/from16 v5, v18

    .line 290
    :cond_0
    move-object/from16 v18, v6

    if-nez v18, :cond_1

    .line 291
    sget-object v18, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object/from16 v6, v18

    .line 294
    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 295
    const/16 v18, 0x0

    move-object/from16 v1, v18

    .line 367
    .end local v1    # "this":Landroidx/transition/ChangeTransform;
    :goto_0
    return-object v1

    .line 298
    .restart local v1    # "this":Landroidx/transition/ChangeTransform;
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string/jumbo v19, "android:changeTransform:transforms"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/transition/ChangeTransform$Transforms;

    move-object/from16 v7, v18

    .line 301
    .local v7, "transforms":Landroidx/transition/ChangeTransform$Transforms;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v8, v18

    .line 302
    .local v8, "view":Landroid/view/View;
    move-object/from16 v18, v8

    invoke-static/range {v18 .. v18}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 304
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 305
    .local v9, "startMatrixValues":[F
    move-object/from16 v18, v5

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->getValues([F)V

    .line 306
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 307
    .local v10, "endMatrixValues":[F
    move-object/from16 v18, v6

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->getValues([F)V

    .line 308
    new-instance v18, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    move-object/from16 v11, v18

    .line 311
    .local v11, "pathAnimatorMatrix":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v18, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v19, Landroidx/transition/FloatArrayEvaluator;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const/16 v22, 0x0

    move-object/from16 v23, v9

    aput-object v23, v21, v22

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const/16 v22, 0x1

    move-object/from16 v23, v10

    aput-object v23, v21, v22

    invoke-static/range {v18 .. v20}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    move-object/from16 v12, v18

    .line 314
    .local v12, "valuesProperty":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/transition/ChangeTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v18

    move-object/from16 v19, v9

    const/16 v20, 0x2

    aget v19, v19, v20

    move-object/from16 v20, v9

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v10

    const/16 v22, 0x2

    aget v21, v21, v22

    move-object/from16 v22, v10

    const/16 v23, 0x5

    aget v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v18

    move-object/from16 v13, v18

    .line 317
    .local v13, "path":Landroid/graphics/Path;
    sget-object v18, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v19}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    move-object/from16 v14, v18

    .line 319
    .local v14, "translationProperty":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v18, v11

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    move-object/from16 v22, v12

    aput-object v22, v20, v21

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x1

    move-object/from16 v22, v14

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    move-object/from16 v15, v18

    .line 322
    .local v15, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v18, v6

    move-object/from16 v16, v18

    .line 324
    .local v16, "finalEndMatrix":Landroid/graphics/Matrix;
    new-instance v18, Landroidx/transition/ChangeTransform$3;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v1

    move/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v23, v8

    move-object/from16 v24, v7

    move-object/from16 v25, v11

    invoke-direct/range {v19 .. v25}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    move-object/from16 v17, v18

    .line 365
    .local v17, "listener":Landroid/animation/AnimatorListenerAdapter;
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    invoke-static/range {v18 .. v19}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 367
    move-object/from16 v18, v15

    move-object/from16 v1, v18

    goto/16 :goto_0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 8

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "startParent":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "endParent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    move v3, v5

    .line 372
    .local v3, "parentsMatch":Z
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 373
    :cond_0
    move-object v5, v1

    move-object v6, v2

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 380
    :cond_1
    :goto_1
    move v5, v3

    move v0, v5

    .end local v0    # "this":Landroidx/transition/ChangeTransform;
    return v0

    .line 373
    .restart local v0    # "this":Landroidx/transition/ChangeTransform;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 375
    :cond_3
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v5

    move-object v4, v5

    .line 376
    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 377
    move-object v5, v2

    move-object v6, v4

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_2
    move v3, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 439
    return-void
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 11

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "startValues":Landroidx/transition/TransitionValues;
    move-object v2, p2

    .local v2, "endValues":Landroidx/transition/TransitionValues;
    move-object v7, v2

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:parentMatrix"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    move-object v3, v7

    .line 419
    .local v3, "endParentMatrix":Landroid/graphics/Matrix;
    move-object v7, v2

    iget-object v7, v7, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v8, Landroidx/transition/R$id;->parent_matrix:I

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 421
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    move-object v4, v7

    .line 422
    .local v4, "toLocal":Landroid/graphics/Matrix;
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 423
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 425
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:matrix"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    move-object v5, v7

    .line 426
    .local v5, "startLocal":Landroid/graphics/Matrix;
    move-object v7, v5

    if-nez v7, :cond_0

    .line 427
    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v7

    .line 428
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:matrix"

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 431
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeTransform:parentMatrix"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    move-object v6, v7

    .line 432
    .local v6, "startParentMatrix":Landroid/graphics/Matrix;
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 433
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 434
    return-void
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 11

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move v1, p1

    .local v1, "translationX":F
    move v2, p2

    .local v2, "translationY":F
    move v3, p3

    .local v3, "translationZ":F
    move v4, p4

    .local v4, "scaleX":F
    move/from16 v5, p5

    .local v5, "scaleY":F
    move/from16 v6, p6

    .local v6, "rotationX":F
    move/from16 v7, p7

    .local v7, "rotationY":F
    move/from16 v8, p8

    .local v8, "rotationZ":F
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 446
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 447
    move-object v9, v0

    move v10, v3

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 448
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 449
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 450
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationX(F)V

    .line 451
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationY(F)V

    .line 452
    move-object v9, v0

    move v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotation(F)V

    .line 453
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
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 236
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 224
    sget-boolean v2, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v2, :cond_0

    .line 228
    move-object v2, v1

    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 231
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v3, p3

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:parent"

    .line 242
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:parent"

    .line 243
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 244
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 278
    .end local v0    # "this":Landroidx/transition/ChangeTransform;
    :goto_0
    return-object v0

    .line 247
    .restart local v0    # "this":Landroidx/transition/ChangeTransform;
    :cond_1
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:parent"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object v4, v10

    .line 248
    .local v4, "startParent":Landroid/view/ViewGroup;
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:parent"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object v5, v10

    .line 249
    .local v5, "endParent":Landroid/view/ViewGroup;
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v10, :cond_6

    move-object v10, v0

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    move v6, v10

    .line 251
    .local v6, "handleParentChange":Z
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:intermediateMatrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    move-object v7, v10

    .line 252
    .local v7, "startMatrix":Landroid/graphics/Matrix;
    move-object v10, v7

    if-eqz v10, :cond_2

    .line 253
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:matrix"

    move-object v12, v7

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 256
    :cond_2
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:intermediateParentMatrix"

    .line 257
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    move-object v8, v10

    .line 258
    .local v8, "startParentMatrix":Landroid/graphics/Matrix;
    move-object v10, v8

    if-eqz v10, :cond_3

    .line 259
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:changeTransform:parentMatrix"

    move-object v12, v8

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 263
    :cond_3
    move v10, v6

    if-eqz v10, :cond_4

    .line 264
    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 268
    :cond_4
    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move v13, v6

    invoke-direct {v10, v11, v12, v13}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object v9, v10

    .line 271
    .local v9, "transformAnimator":Landroid/animation/ObjectAnimator;
    move v10, v6

    if-eqz v10, :cond_7

    move-object v10, v9

    if-eqz v10, :cond_7

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v10, :cond_7

    .line 272
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 278
    :cond_5
    :goto_2
    move-object v10, v9

    move-object v0, v10

    goto/16 :goto_0

    .line 249
    .end local v6    # "handleParentChange":Z
    .end local v7    # "startMatrix":Landroid/graphics/Matrix;
    .end local v8    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v9    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 273
    .restart local v6    # "handleParentChange":Z
    .restart local v7    # "startMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "startParentMatrix":Landroid/graphics/Matrix;
    .restart local v9    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    sget-boolean v10, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v10, :cond_5

    .line 275
    move-object v10, v4

    move-object v11, v2

    iget-object v11, v11, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_2
.end method

.method public getReparent()Z
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/ChangeTransform;->mReparent:Z

    move v0, v1

    .end local v0    # "this":Landroidx/transition/ChangeTransform;
    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    move v0, v1

    .end local v0    # "this":Landroidx/transition/ChangeTransform;
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    sget-object v1, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/ChangeTransform;
    return-object v0
.end method

.method public setReparent(Z)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move v1, p1

    .local v1, "reparent":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 186
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform;
    move v1, p1

    .local v1, "reparentWithOverlay":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 161
    return-void
.end method
