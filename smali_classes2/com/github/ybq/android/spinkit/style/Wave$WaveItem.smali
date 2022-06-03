.class Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
.super Lcom/github/ybq/android/spinkit/sprite/RectSprite;
.source "Wave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/style/Wave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ybq/android/spinkit/style/Wave;


# direct methods
.method constructor <init>(Lcom/github/ybq/android/spinkit/style/Wave;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;->this$0:Lcom/github/ybq/android/spinkit/style/Wave;

    move-object v2, v0

    invoke-direct {v2}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;-><init>()V

    .line 49
    move-object v2, v0

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;->setScaleY(F)V

    .line 50
    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 55
    .local v2, "fractions":[F
    new-instance v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;-><init>(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    move-object v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Float;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const v8, 0x3ecccccd    # 0.4f

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

    const v8, 0x3ecccccd    # 0.4f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    const v8, 0x3ecccccd    # 0.4f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->scaleY([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    const-wide/16 v4, 0x4b0

    .line 56
    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    move-object v4, v2

    .line 57
    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->easeInOut([F)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 55
    move-object v1, v3

    .end local v1    # "this":Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
    return-object v1

    .line 54
    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
