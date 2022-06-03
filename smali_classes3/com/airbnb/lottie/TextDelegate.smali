.class public Lcom/airbnb/lottie/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final animationView:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheText:Z

.field private final drawable:Lcom/airbnb/lottie/LottieDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    .line 20
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 27
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, p1

    .local v1, "animationView":Lcom/airbnb/lottie/LottieAnimationView;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    .line 20
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 33
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    .line 20
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    return-void
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, p1

    .local v1, "input":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/TextDelegate;
    return-object v0
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    .line 98
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v1, :cond_1

    .line 99
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, p1

    .local v1, "input":Ljava/lang/String;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 91
    .end local v0    # "this":Lcom/airbnb/lottie/TextDelegate;
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "this":Lcom/airbnb/lottie/TextDelegate;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 88
    .local v2, "text":Ljava/lang/String;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    if-eqz v3, :cond_1

    .line 89
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public invalidateAllText()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 80
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/TextDelegate;->invalidate()V

    .line 81
    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, p1

    .local v1, "input":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/TextDelegate;->invalidate()V

    .line 73
    return-void
.end method

.method public setCacheText(Z)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move v1, p1

    .local v1, "cacheText":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 65
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/TextDelegate;
    move-object v1, p1

    .local v1, "input":Ljava/lang/String;
    move-object v2, p2

    .local v2, "output":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    move-object v3, v0

    invoke-direct {v3}, Lcom/airbnb/lottie/TextDelegate;->invalidate()V

    .line 57
    return-void
.end method
