.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositionTask:Lcom/airbnb/lottie/LottieTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final failureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private renderMode:Lcom/airbnb/lottie/RenderMode;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenNotShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 64
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 70
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 76
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 79
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 81
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 82
    move-object v2, v0

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 83
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/LottieAnimationView$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 70
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/LottieAnimationView$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 76
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/LottieDrawable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 79
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 80
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 81
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 82
    move-object v3, v0

    sget-object v4, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 83
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 96
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieAnimationView$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 70
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieAnimationView$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 76
    move-object v4, v0

    new-instance v5, Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 79
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 80
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 81
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 82
    move-object v4, v0

    sget-object v5, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 83
    move-object v4, v0

    new-instance v5, Ljava/util/HashSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 101
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method private cancelLoaderTask()V
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    if-eqz v1, :cond_0

    .line 359
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    .line 360
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    .line 362
    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 3

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 810
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 811
    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 5

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$4;->$SwitchMap$com$airbnb$lottie$RenderMode:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v3}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 866
    :goto_0
    return-void

    .line 850
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 851
    goto :goto_0

    .line 853
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 854
    goto :goto_0

    .line 856
    :pswitch_2
    const/4 v2, 0x1

    move v1, v2

    .line 857
    .local v1, "useHardwareLayer":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 858
    const/4 v2, 0x0

    move v1, v2

    .line 862
    :cond_0
    :goto_1
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 859
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getMaskAndMatteCount()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 860
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 862
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 14
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget-object v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v2, v7

    .line 106
    .local v2, "ta":Landroid/content/res/TypedArray;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 107
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v3, v7

    .line 108
    .local v3, "hasRawRes":Z
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v4, v7

    .line 109
    .local v4, "hasFileName":Z
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v5, v7

    .line 110
    .local v5, "hasUrl":Z
    move v7, v3

    if-eqz v7, :cond_0

    move v7, v4

    if-eqz v7, :cond_0

    .line 111
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    :cond_0
    move v7, v3

    if-eqz v7, :cond_9

    .line 114
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move v6, v7

    .line 115
    .local v6, "rawResId":I
    move v7, v6

    if-eqz v7, :cond_1

    .line 116
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 118
    .line 130
    .end local v3    # "hasRawRes":Z
    .end local v4    # "hasFileName":Z
    .end local v5    # "hasUrl":Z
    .end local v6    # "rawResId":I
    :cond_1
    :goto_0
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 132
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 135
    :cond_2
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 139
    :cond_3
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 144
    :cond_4
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 149
    :cond_5
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 150
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 153
    :cond_6
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 154
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 155
    move-object v7, v0

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 157
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 158
    new-instance v7, Lcom/airbnb/lottie/SimpleColorFilter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v2

    sget v10, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    const/4 v11, 0x0

    .line 159
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    move-object v3, v7

    .line 160
    .local v3, "filter":Lcom/airbnb/lottie/SimpleColorFilter;
    new-instance v7, Lcom/airbnb/lottie/model/KeyPath;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string/jumbo v12, "**"

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    move-object v4, v7

    .line 161
    .local v4, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    new-instance v7, Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    move-object v5, v7

    .line 162
    .local v5, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<Landroid/graphics/ColorFilter;>;"
    move-object v7, v0

    move-object v8, v4

    sget-object v9, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 164
    .end local v3    # "filter":Lcom/airbnb/lottie/SimpleColorFilter;
    .end local v4    # "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    .end local v5    # "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<Landroid/graphics/ColorFilter;>;"
    :cond_7
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 165
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v2

    sget v9, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 168
    :cond_8
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Utils;->getAnimationScale(Landroid/content/Context;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieDrawable;->setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V

    .line 172
    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 173
    return-void

    .line 118
    .local v3, "hasRawRes":Z
    .local v4, "hasFileName":Z
    .local v5, "hasUrl":Z
    :cond_9
    move v7, v4

    if-eqz v7, :cond_b

    .line 119
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 120
    .local v6, "fileName":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_a

    .line 121
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 123
    :cond_a
    goto/16 :goto_0

    .end local v6    # "fileName":Ljava/lang/String;
    :cond_b
    move v7, v5

    if-eqz v7, :cond_1

    .line 124
    move-object v7, v2

    sget v8, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 125
    .local v6, "url":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 126
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v3    # "hasRawRes":Z
    .end local v4    # "hasFileName":Z
    .end local v5    # "hasUrl":Z
    .end local v6    # "url":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieTask",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "compositionTask":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<Lcom/airbnb/lottie/LottieComposition;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 351
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 352
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 353
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 354
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 355
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 554
    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 4
    .param p1    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "lottieOnCompositionLoadedListener":Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 8
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
    .line 715
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 716
    return-void
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
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "callback":Lcom/airbnb/lottie/value/SimpleLottieValueCallback;, "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/airbnb/lottie/LottieAnimationView$3;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 730
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 4

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "autoScale":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->buildDrawingCache(Z)V

    .line 823
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 824
    move-object v2, v0

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 826
    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 759
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    .line 760
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 761
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    .line 284
    return-void
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 796
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v2

    float-to-long v2, v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-wide v1

    .restart local v1    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getFrame()I
    .locals 2

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getFrame()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-object v0
.end method

.method public getMaxFrame()F
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getMinFrame()F
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-object v0
.end method

.method public getProgress()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public hasMasks()Z
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->hasMasks()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public hasMatte()Z
    .locals 2

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->hasMatte()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v2, v3, :cond_0

    .line 194
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public loop(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "loop":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 582
    return-void

    .line 581
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 262
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v1, :cond_0

    .line 263
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 265
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 270
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 272
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 273
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v3, :cond_0

    .line 216
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 217
    .line 237
    :goto_0
    return-void

    .line 220
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-object v2, v3

    .line 221
    .local v2, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 223
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 226
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 227
    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v3, :cond_2

    .line 228
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 230
    :cond_2
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 231
    move-object v3, v2

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v3, :cond_3

    .line 232
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 234
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 235
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 236
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 237
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v3, v0

    invoke-super {v3}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 203
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 204
    .local v2, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 205
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 206
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 207
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v4

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 208
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 209
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 210
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 211
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "changedView":Landroid/view/View;
    move v2, p2

    .local v2, "visibility":I
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-nez v3, :cond_0

    .line 245
    .line 258
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    if-eqz v3, :cond_1

    .line 249
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 250
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 258
    :cond_1
    :goto_1
    goto :goto_0

    .line 253
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 255
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    goto :goto_1
.end method

.method public pauseAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 766
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 767
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 768
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 769
    return-void
.end method

.method public playAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 423
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    goto :goto_0
.end method

.method public removeAllAnimatorListeners()V
    .locals 2

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 574
    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 2

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 878
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->removeAllUpdateListeners()V

    .line 562
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 4
    .param p1    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "lottieOnCompositionLoadedListener":Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return v0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 558
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 4
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
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-object v0
.end method

.method public resumeAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 437
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 2

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationSpeed()V

    .line 536
    return-void
.end method

.method public setAnimation(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "rawRes":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 299
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 300
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 301
    return-void
.end method

.method public setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "reader":Landroid/util/JsonReader;
    move-object v2, p2

    .local v2, "cacheKey":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 335
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "assetName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 305
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 306
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 307
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "jsonString":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "jsonString":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cacheKey":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Landroid/util/JsonReader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/StringReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 347
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 9
    .param p1    # Lcom/airbnb/lottie/LottieComposition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    sget-boolean v5, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v5, :cond_0

    .line 371
    sget-object v5, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set Composition \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 373
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 375
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 376
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    move-result v5

    move v2, v5

    .line 377
    .local v2, "isNewComposition":Z
    move-object v5, v0

    invoke-direct {v5}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 378
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v5, v6, :cond_1

    move v5, v2

    if-nez v5, :cond_1

    .line 381
    .line 395
    :goto_0
    return-void

    .line 386
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    move-object v5, v0

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    .line 391
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    move-object v4, v5

    .line 392
    .local v4, "lottieOnCompositionLoadedListener":Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 393
    goto :goto_1

    .line 395
    .end local v4    # "lottieOnCompositionLoadedListener":Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
    :cond_2
    goto :goto_0
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "assetDelegate":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 686
    return-void
.end method

.method public setFrame(I)V
    .locals 4

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "frame":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 778
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 4

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "assetDelegate":Lcom/airbnb/lottie/ImageAssetDelegate;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 678
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "imageAssetsFolder":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "bm":Landroid/graphics/Bitmap;
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 187
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 182
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method

.method public setImageResource(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 177
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 178
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "endFrame":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 469
    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "endProgress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 483
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 6

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "minFrame":I
    move v2, p2

    .local v2, "maxFrame":I
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 516
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 6
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
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "minProgress":F
    move v2, p2

    .local v2, "maxProgress":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 526
    return-void
.end method

.method public setMinFrame(I)V
    .locals 4

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "startFrame":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 448
    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public setMinProgress(F)V
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "startProgress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 462
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 4

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    .line 801
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "progress":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 789
    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 4

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "renderMode":Lcom/airbnb/lottie/RenderMode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 844
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 845
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 4

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 615
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "mode":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatMode(I)V

    .line 593
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "scale":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 746
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v2, v3, :cond_0

    .line 747
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move v1, p1

    .local v1, "speed":F
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 543
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 4

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "textDelegate":Lcom/airbnb/lottie/TextDelegate;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 693
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/LottieAnimationView;
    return-object v0
.end method
