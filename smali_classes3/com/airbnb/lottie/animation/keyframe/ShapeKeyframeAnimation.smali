.class public Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 13
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 17
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/Path;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
    move-object v1, p1

    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;"
    move v2, p2

    .local v2, "keyframeProgress":F
    move-object v5, v1

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object v3, v5

    .line 21
    .local v3, "startShapeData":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v5, v1

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object v4, v5

    .line 23
    .local v4, "endShapeData":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    move-object v6, v3

    move-object v7, v4

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lcom/airbnb/lottie/model/content/ShapeData;->interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V

    .line 24
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 25
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    move-object v0, v5

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/Path;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
    return-object v0
.end method
