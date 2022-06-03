.class final Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
.super Lcom/github/ybq/android/spinkit/animation/FloatProperty;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/sprite/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ybq/android/spinkit/animation/FloatProperty",
        "<",
        "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/github/ybq/android/spinkit/animation/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    move-object v1, p1

    .local v1, "object":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getScale()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite$10;->get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    return-object v0
.end method

.method public setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;F)V
    .locals 5

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    move-object v1, p1

    .local v1, "object":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v2, p2

    .local v2, "value":F
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setScale(F)V

    .line 434
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 6

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$10;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite$10;->setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;F)V

    return-void
.end method
