.class public Lcom/github/ybq/android/spinkit/style/Circle;
.super Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/Circle$Dot;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Circle;
    move-object v1, v0

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 9

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/style/Circle;
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/github/ybq/android/spinkit/style/Circle$Dot;

    move-object v1, v3

    .line 19
    .local v1, "dots":[Lcom/github/ybq/android/spinkit/style/Circle$Dot;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 20
    move-object v3, v1

    move v4, v2

    new-instance v5, Lcom/github/ybq/android/spinkit/style/Circle$Dot;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;-><init>(Lcom/github/ybq/android/spinkit/style/Circle;)V

    aput-object v5, v3, v4

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 22
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0x64

    move v5, v2

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0x64

    move v5, v2

    mul-int/2addr v4, v5

    const/16 v5, -0x4b0

    add-int/lit16 v4, v4, -0x4b0

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    goto :goto_1

    .line 27
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/style/Circle;
    return-object v0
.end method
