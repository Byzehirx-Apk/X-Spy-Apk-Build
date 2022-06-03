.class public Lcom/github/ybq/android/spinkit/style/MultiplePulse;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "MultiplePulse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/MultiplePulse;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/MultiplePulse;
    move-object v1, p1

    .local v1, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 22
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0xc8

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 7

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/MultiplePulse;
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    new-instance v4, Lcom/github/ybq/android/spinkit/style/Pulse;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    new-instance v4, Lcom/github/ybq/android/spinkit/style/Pulse;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    new-instance v4, Lcom/github/ybq/android/spinkit/style/Pulse;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/MultiplePulse;
    return-object v0
.end method
