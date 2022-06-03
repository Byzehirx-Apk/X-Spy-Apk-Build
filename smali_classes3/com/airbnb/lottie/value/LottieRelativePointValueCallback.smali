.class public Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieRelativePointValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    .line 14
    move-object v1, v0

    new-instance v2, Landroid/graphics/PointF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 6
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    move-object v1, p1

    .local v1, "staticValue":Landroid/graphics/PointF;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 14
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 21
    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<Landroid/graphics/PointF;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->value:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    return-object v0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<Landroid/graphics/PointF;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    move-object v4, v1

    .line 27
    invoke-virtual {v4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v1

    .line 28
    invoke-virtual {v5}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object v6, v1

    .line 29
    invoke-virtual {v6}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v6

    .line 26
    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    move-object v5, v1

    .line 31
    invoke-virtual {v5}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v6, v1

    .line 32
    invoke-virtual {v6}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object v7, v1

    .line 33
    invoke-virtual {v7}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v7

    .line 30
    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    .line 25
    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object v3

    move-object v2, v3

    .line 37
    .local v2, "offset":Landroid/graphics/PointF;
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 38
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
    return-object v0
.end method
