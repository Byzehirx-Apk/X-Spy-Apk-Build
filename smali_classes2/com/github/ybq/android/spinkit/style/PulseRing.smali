.class public Lcom/github/ybq/android/spinkit/style/PulseRing;
.super Lcom/github/ybq/android/spinkit/sprite/RingSprite;
.source "PulseRing.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/PulseRing;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/RingSprite;-><init>()V

    .line 15
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/ybq/android/spinkit/style/PulseRing;->setScale(F)V

    .line 16
    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    .line 20
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/style/PulseRing;
    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 21
    .local v2, "fractions":[F
    new-instance v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;-><init>(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    move-object v4, v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Float;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 22
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/16 v8, 0xff

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/16 v8, 0xb2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->alpha([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 24
    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    const v4, 0x3e570a3d    # 0.21f

    const v5, 0x3f07ae14    # 0.53f

    const v6, 0x3f0f5c29    # 0.56f

    const v7, 0x3f4ccccd    # 0.8f

    move-object v8, v2

    .line 25
    invoke-static {v4, v5, v6, v7, v8}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->pathInterpolator(FFFF[F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 21
    move-object v1, v3

    .end local v1    # "this":Lcom/github/ybq/android/spinkit/style/PulseRing;
    return-object v1

    .line 20
    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method
