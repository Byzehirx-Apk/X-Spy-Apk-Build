.class Lcom/github/ybq/android/spinkit/style/Circle$Dot;
.super Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/style/Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dot"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ybq/android/spinkit/style/Circle;


# direct methods
.method constructor <init>(Lcom/github/ybq/android/spinkit/style/Circle;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Circle$Dot;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/github/ybq/android/spinkit/style/Circle$Dot;->this$0:Lcom/github/ybq/android/spinkit/style/Circle;

    move-object v2, v0

    invoke-direct {v2}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;-><init>()V

    .line 33
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;->setScale(F)V

    .line 34
    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/style/Circle$Dot;
    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 39
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

    .line 40
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

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    const-wide/16 v4, 0x4b0

    .line 41
    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    move-object v4, v2

    .line 42
    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->easeInOut([F)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 39
    move-object v1, v3

    .end local v1    # "this":Lcom/github/ybq/android/spinkit/style/Circle$Dot;
    return-object v1

    .line 38
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
