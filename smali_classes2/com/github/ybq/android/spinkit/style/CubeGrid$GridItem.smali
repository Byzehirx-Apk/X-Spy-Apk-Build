.class Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
.super Lcom/github/ybq/android/spinkit/sprite/RectSprite;
.source "CubeGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/style/CubeGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ybq/android/spinkit/style/CubeGrid;


# direct methods
.method private constructor <init>(Lcom/github/ybq/android/spinkit/style/CubeGrid;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;->this$0:Lcom/github/ybq/android/spinkit/style/CubeGrid;

    move-object v2, v0

    invoke-direct {v2}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/ybq/android/spinkit/style/CubeGrid;Lcom/github/ybq/android/spinkit/style/CubeGrid$1;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    move-object v1, p1

    .local v1, "x0":Lcom/github/ybq/android/spinkit/style/CubeGrid;
    move-object v2, p2

    .local v2, "x1":Lcom/github/ybq/android/spinkit/style/CubeGrid$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;-><init>(Lcom/github/ybq/android/spinkit/style/CubeGrid;)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 51
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

    const/high16 v8, 0x3f800000    # 1.0f

    .line 52
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

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

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    const-wide/16 v4, 0x514

    .line 53
    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    move-object v4, v2

    .line 54
    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->easeInOut([F)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 51
    move-object v1, v3

    .end local v1    # "this":Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    return-object v1

    .line 50
    nop

    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method
