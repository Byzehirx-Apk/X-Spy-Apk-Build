.class final Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
.super Lcom/github/ybq/android/spinkit/animation/IntProperty;
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
        "Lcom/github/ybq/android/spinkit/animation/IntProperty",
        "<",
        "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/github/ybq/android/spinkit/animation/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    move-object v1, p1

    .local v1, "object":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getAlpha()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite$11;->get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    return-object v0
.end method

.method public setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;I)V
    .locals 5

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    move-object v1, p1

    .local v1, "object":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move v2, p2

    .local v2, "value":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAlpha(I)V

    .line 446
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/sprite/Sprite$11;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite$11;->setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;I)V

    return-void
.end method
