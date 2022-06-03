.class public final Landroidx/core/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/MarginLayoutParamsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 128
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v2

    move v1, v2

    .line 133
    .local v1, "result":I
    :goto_0
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 137
    const/4 v2, 0x0

    move v1, v2

    .line 139
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    return v0

    .line 130
    .end local v1    # "result":I
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 62
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    move v0, v1

    .line 64
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v0, v1

    goto :goto_0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 43
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    move v0, v1

    .line 45
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v0, v1

    goto :goto_0
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 113
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v1

    move v0, v1

    .line 115
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v1, p1

    .local v1, "layoutDirection":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 162
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v1, p1

    .local v1, "layoutDirection":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 151
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v1, p1

    .local v1, "marginEnd":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 100
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v1, p1

    .local v1, "marginStart":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 81
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method
