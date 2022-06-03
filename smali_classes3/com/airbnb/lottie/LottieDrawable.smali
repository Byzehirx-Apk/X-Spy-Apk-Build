.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;,
        Lcom/airbnb/lottie/LottieDrawable$RepeatMode;,
        Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isDirty:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private scale:F

.field private systemAnimationsEnabled:Z

.field textDelegate:Lcom/airbnb/lottie/TextDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    .line 65
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 66
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 67
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 69
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    .line 70
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 86
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 93
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 117
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v0, v1

    .end local v0    # "x0":Lcom/airbnb/lottie/LottieDrawable;
    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/utils/LottieValueAnimator;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v0, v1

    .end local v0    # "x0":Lcom/airbnb/lottie/LottieDrawable;
    return-object v0
.end method

.method private buildCompositionLayer()V
    .locals 9

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 250
    invoke-static {v5}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 251
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 997
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    move-object v1, v2

    .line 998
    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 999
    const/4 v2, 0x0

    move-object v0, v2

    .line 1005
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .line 1002
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1003
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1005
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;
    .locals 7

    .prologue
    .line 983
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 985
    const/4 v1, 0x0

    move-object v0, v1

    .line 992
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .line 988
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez v1, :cond_1

    .line 989
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/manager/FontAssetManager;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 992
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    move-object v0, v1

    goto :goto_0
.end method

.method private getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;
    .locals 9

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 958
    const/4 v1, 0x0

    move-object v0, v1

    .line 970
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .line 961
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 965
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-nez v1, :cond_2

    .line 966
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 967
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 970
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v0, v1

    goto :goto_0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v2, v4

    .line 1045
    .local v2, "maxScaleX":F
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v3, v4

    .line 1046
    .local v3, "maxScaleY":F
    move v4, v2

    move v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method private updateBounds()V
    .locals 8

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 819
    .line 824
    :goto_0
    return-void

    .line 821
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v2

    move v1, v2

    .line 822
    .local v1, "scale":F
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 823
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    move v7, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 822
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setBounds(IIII)V

    .line 824
    goto :goto_0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 622
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object/from16 v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/Object;, "TT;"
    move-object/from16 v3, p3

    .local v3, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v7, :cond_0

    .line 879
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v8, Lcom/airbnb/lottie/LottieDrawable$15;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/LottieDrawable$15;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 885
    .line 909
    :goto_0
    return-void

    .line 888
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 889
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 890
    const/4 v7, 0x1

    move v4, v7

    .line 900
    .local v4, "invalidate":Z
    :goto_1
    move v7, v4

    if-eqz v7, :cond_1

    .line 901
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 902
    move-object v7, v2

    sget-object v8, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne v7, v8, :cond_1

    .line 906
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 909
    :cond_1
    goto :goto_0

    .line 892
    .end local v4    # "invalidate":Z
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 894
    .local v5, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 896
    move-object v7, v5

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/KeyPath;

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 894
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 898
    :cond_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    move v4, v7

    .restart local v4    # "invalidate":Z
    goto :goto_1

    .end local v4    # "invalidate":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "callback":Lcom/airbnb/lottie/value/SimpleLottieValueCallback;, "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<TT;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/LottieDrawable$16;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/LottieDrawable$16;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 924
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 828
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 829
    return-void
.end method

.method public clearComposition()V
    .locals 3

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 257
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 258
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 259
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 260
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->clearComposition()V

    .line 261
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 262
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object/from16 v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 300
    const-string/jumbo v10, "Drawable#draw"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 301
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v10, :cond_0

    .line 302
    .line 344
    :goto_0
    return-void

    .line 305
    :cond_0
    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    move v2, v10

    .line 306
    .local v2, "scale":F
    const/high16 v10, 0x3f800000    # 1.0f

    move v3, v10

    .line 307
    .local v3, "extraScale":F
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/airbnb/lottie/LottieDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v10

    move v4, v10

    .line 308
    .local v4, "maxScale":F
    move v10, v2

    move v11, v4

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 309
    move v10, v4

    move v2, v10

    .line 310
    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    move v11, v2

    div-float/2addr v10, v11

    move v3, v10

    .line 313
    :cond_1
    const/4 v10, -0x1

    move v5, v10

    .line 314
    .local v5, "saveCount":I
    move v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 324
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move v5, v10

    .line 325
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v6, v10

    .line 326
    .local v6, "halfWidth":F
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v7, v10

    .line 327
    .local v7, "halfHeight":F
    move v10, v6

    move v11, v2

    mul-float/2addr v10, v11

    move v8, v10

    .line 328
    .local v8, "scaledHalfWidth":F
    move v10, v7

    move v11, v2

    mul-float/2addr v10, v11

    move v9, v10

    .line 330
    .local v9, "scaledHalfHeight":F
    move-object v10, v1

    move-object v11, v0

    .line 331
    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v11

    move v12, v6

    mul-float/2addr v11, v12

    move v12, v8

    sub-float/2addr v11, v12

    move-object v12, v0

    .line 332
    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v12

    move v13, v7

    mul-float/2addr v12, v13

    move v13, v9

    sub-float/2addr v12, v13

    .line 330
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    move-object v10, v1

    move v11, v3

    move v12, v3

    move v13, v8

    move v14, v9

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 336
    .end local v6    # "halfWidth":F
    .end local v7    # "halfHeight":F
    .end local v8    # "scaledHalfWidth":F
    .end local v9    # "scaledHalfHeight":F
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 337
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    move v11, v2

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v10

    .line 338
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    move-object v13, v0

    iget v13, v13, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 339
    const-string/jumbo v10, "Drawable#draw"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 341
    move v10, v5

    if-lez v10, :cond_3

    .line 342
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 344
    :cond_3
    goto/16 :goto_0
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 154
    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 158
    const-string/jumbo v2, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 159
    goto :goto_0

    .line 161
    :cond_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    .line 162
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_2

    .line 163
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 165
    :cond_2
    goto :goto_0
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public endAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 392
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 393
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 2

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return-object v0
.end method

.method public getFrame()I
    .locals 2

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v3

    move-object v2, v3

    .line 949
    .local v2, "bm":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 950
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 952
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getMaxFrame()F
    .locals 2

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getMinFrame()F
    .locals 2

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v1, :cond_0

    .line 243
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v1

    move-object v0, v1

    .line 245
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public getTextDelegate()Lcom/airbnb/lottie/TextDelegate;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 975
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/String;
    move-object v2, p2

    .local v2, "style":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    move-result-object v4

    move-object v3, v4

    .line 976
    .local v3, "assetManager":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 977
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v0, v4

    .line 979
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public hasMasks()Z
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMatte()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1014
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object v2, v3

    .line 1015
    .local v2, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1016
    .line 1019
    :goto_0
    return-void

    .line 1018
    :cond_0
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    if-eqz v2, :cond_0

    .line 267
    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 270
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    move-object v1, v2

    .line 271
    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 272
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_1
    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public isLooping()Z
    .locals 3

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0
.end method

.method public loop(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "loop":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    .line 689
    return-void

    .line 688
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public pauseAnimation()V
    .locals 2

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 833
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->pauseAnimation()V

    .line 834
    return-void
.end method

.method public playAnimation()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    .line 372
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable$2;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 378
    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 382
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->playAnimation()V

    .line 384
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v1, :cond_3

    .line 385
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v2

    :goto_1
    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 387
    :cond_3
    goto :goto_0

    .line 385
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v2

    goto :goto_1
.end method

.method public removeAllAnimatorListeners()V
    .locals 2

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllListeners()V

    .line 642
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllUpdateListeners()V

    .line 630
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 626
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v3, :cond_0

    .line 861
    const-string/jumbo v3, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 862
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 866
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .line 864
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 865
    .local v2, "keyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/model/KeyPath;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 866
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public resumeAnimation()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    .line 402
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieDrawable$3;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 408
    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->resumeAnimation()V

    .line 411
    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 2

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 604
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 13
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1023
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p1

    .local v2, "who":Landroid/graphics/drawable/Drawable;
    move-object v3, p2

    .local v3, "what":Ljava/lang/Runnable;
    move-wide/from16 v4, p3

    .local v4, "when":J
    move-object v7, v1

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    move-object v6, v7

    .line 1024
    .local v6, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v7, v6

    if-nez v7, :cond_0

    .line 1025
    .line 1028
    :goto_0
    return-void

    .line 1027
    :cond_0
    move-object v7, v6

    move-object v8, v1

    move-object v9, v3

    move-wide v10, v4

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1028
    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 279
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 280
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    const-string/jumbo v2, "Use addColorFilter instead."

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 206
    const/4 v4, 0x0

    move v0, v4

    .line 230
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return v0

    .line 209
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 210
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 211
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 212
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 213
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 214
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedFraction()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 215
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 216
    move-object v4, v0

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 220
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 221
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;>;"
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    move-object v3, v4

    .line 223
    .local v3, "t":Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run(Lcom/airbnb/lottie/LottieComposition;)V

    .line 224
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 225
    goto :goto_1

    .line 226
    .end local v3    # "t":Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 228
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 230
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 4

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "assetDelegate":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 791
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-eqz v2, :cond_0

    .line 792
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 794
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 8

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "frame":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 651
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$13;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$13;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 657
    .line 661
    :goto_0
    return-void

    .line 660
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 661
    goto :goto_0
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 4

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "assetDelegate":Lcom/airbnb/lottie/ImageAssetDelegate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 780
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v2, :cond_0

    .line 781
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 783
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "imageAssetsFolder":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 8

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "maxFrame":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 457
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$6;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 463
    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3f7d70a4    # 0.99f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxFrame(F)V

    .line 466
    goto :goto_0
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 518
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable$9;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 524
    .line 531
    :goto_0
    return-void

    .line 526
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v3

    move-object v2, v3

    .line 527
    .local v2, "marker":Lcom/airbnb/lottie/model/Marker;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 528
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find marker with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    move-object v5, v2

    iget v5, v5, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 531
    goto :goto_0
.end method

.method public setMaxProgress(F)V
    .locals 8
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "maxProgress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 480
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$7;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 486
    .line 489
    :goto_0
    return-void

    .line 488
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 489
    goto :goto_0
.end method

.method public setMinAndMaxFrame(II)V
    .locals 10

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "minFrame":I
    move v2, p2

    .local v2, "maxFrame":I
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 562
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$11;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/LottieDrawable$11;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 568
    .line 572
    :goto_0
    return-void

    .line 571
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v4, v1

    int-to-float v4, v4

    move v5, v2

    int-to-float v5, v5

    const v6, 0x3f7d70a4    # 0.99f

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 572
    goto :goto_0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v4, :cond_0

    .line 540
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v5, Lcom/airbnb/lottie/LottieDrawable$10;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/LottieDrawable$10;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 546
    .line 554
    :goto_0
    return-void

    .line 548
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v4

    move-object v2, v4

    .line 549
    .local v2, "marker":Lcom/airbnb/lottie/model/Marker;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 550
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find marker with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 552
    :cond_1
    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int v4, v4

    move v3, v4

    .line 553
    .local v3, "startFrame":I
    move-object v4, v0

    move v5, v3

    move v6, v3

    move-object v7, v2

    iget v7, v7, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 554
    goto :goto_0
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 10
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "minProgress":F
    move v2, p2

    .local v2, "maxProgress":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 582
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$12;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/lottie/LottieDrawable$12;-><init>(Lcom/airbnb/lottie/LottieDrawable;FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 588
    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v5

    move v6, v1

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 592
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v6

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    .line 591
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 593
    goto :goto_0
.end method

.method public setMinFrame(I)V
    .locals 8

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "minFrame":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 418
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$4;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 424
    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinFrame(I)V

    .line 427
    goto :goto_0
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_0

    .line 497
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable$8;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 503
    .line 510
    :goto_0
    return-void

    .line 505
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v3

    move-object v2, v3

    .line 506
    .local v2, "marker":Lcom/airbnb/lottie/model/Marker;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 507
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find marker with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 510
    goto :goto_0
.end method

.method public setMinProgress(F)V
    .locals 8

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "minProgress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 441
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$5;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 447
    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 450
    goto :goto_0
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_0

    .line 236
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 8
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "progress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 672
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$14;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/LottieDrawable$14;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 678
    .line 681
    :goto_0
    return-void

    .line 680
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 681
    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 4

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    .line 722
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "mode":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatMode(I)V

    .line 700
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "scale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 763
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 764
    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move v1, p1

    .local v1, "speed":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 611
    return-void
.end method

.method setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "areEnabled":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 745
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 4

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "textDelegate":Lcom/airbnb/lottie/TextDelegate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 798
    return-void
.end method

.method public start()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 352
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->endAnimation()V

    .line 358
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v3, v4

    .line 1033
    .local v3, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1034
    .line 1037
    :goto_0
    return-void

    .line 1036
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1037
    goto :goto_0
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v5

    move-object v3, v5

    .line 936
    .local v3, "bm":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 937
    const-string/jumbo v5, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 939
    const/4 v5, 0x0

    move-object v0, v5

    .line 943
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :goto_0
    return-object v0

    .line 941
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 942
    .local v4, "ret":Landroid/graphics/Bitmap;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 943
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public useTextGlyphs()Z
    .locals 2

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
