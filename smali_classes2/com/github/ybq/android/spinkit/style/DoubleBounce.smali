.class public Lcom/github/ybq/android/spinkit/style/DoubleBounce;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "DoubleBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/DoubleBounce;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/DoubleBounce;
    move-object v1, p1

    .local v1, "sprites":[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 27
    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, -0x3e8

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/DoubleBounce;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x0

    new-instance v4, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/DoubleBounce;)V

    aput-object v4, v2, v3

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x1

    new-instance v4, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/DoubleBounce;)V

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/DoubleBounce;
    return-object v0
.end method
