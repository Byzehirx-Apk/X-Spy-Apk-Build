.class public Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
        "<TK;TA;>;"
    }
.end annotation


# instance fields
.field private final frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final valueCallbackValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    move-object v1, p1

    .local v1, "valueCallback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TA;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    move-object v1, p1

    .local v1, "valueCallback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TA;>;"
    move-object v2, p2

    .local v2, "valueCallbackValue":Ljava/lang/Object;, "TA;"
    move-object v3, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/value/LottieFrameInfo;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 21
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 22
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method getEndProgress()F
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    return-object v0
.end method

.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TK;>;F)TA;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    move v2, p2

    .local v2, "keyframeProgress":F
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    return-object v0
.end method

.method public notifyListeners()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v1, :cond_0

    .line 35
    move-object v1, v0

    invoke-super {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 37
    :cond_0
    return-void
.end method
