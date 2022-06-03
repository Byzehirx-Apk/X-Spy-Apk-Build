.class public final Landroidx/core/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# instance fields
.field private final mDisplayCutout:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    move-object v1, p1

    .local v1, "safeInsets":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    move-object v3, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    new-instance v4, Landroid/view/DisplayCutout;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    :goto_0
    invoke-direct {v3, v4}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    move-object v1, p1

    .local v1, "displayCutout":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static wrap(Ljava/lang/Object;)Landroidx/core/view/DisplayCutoutCompat;
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "displayCutout":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "displayCutout":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "displayCutout":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroidx/core/view/DisplayCutoutCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 109
    const/4 v3, 0x1

    move v0, v3

    .line 116
    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :goto_0
    return v0

    .line 111
    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 112
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 114
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/core/view/DisplayCutoutCompat;

    move-object v2, v3

    .line 115
    .local v2, "other":Landroidx/core/view/DisplayCutoutCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 116
    :goto_1
    move v0, v3

    goto :goto_0

    .line 115
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method public getBoundingRects()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 100
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 102
    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getSafeInsetBottom()I
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 65
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    move v0, v1

    .line 67
    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSafeInsetLeft()I
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 74
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    move v0, v1

    .line 76
    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSafeInsetRight()I
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 83
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    move v0, v1

    .line 85
    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSafeInsetTop()I
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 56
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    move v0, v1

    .line 58
    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DisplayCutoutCompat;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DisplayCutoutCompat{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/DisplayCutoutCompat;
    return-object v0
.end method
