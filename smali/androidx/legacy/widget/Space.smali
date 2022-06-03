.class public Landroidx/legacy/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/widget/Space;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/widget/Space;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/widget/Space;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyle":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/legacy/widget/Space;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 44
    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroidx/legacy/widget/Space;->setVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 7

    .prologue
    .line 83
    move v0, p0

    .local v0, "size":I
    move v1, p1

    .local v1, "measureSpec":I
    move v5, v0

    move v2, v5

    .line 84
    .local v2, "result":I
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 85
    .local v3, "specMode":I
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 87
    .local v4, "specSize":I
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 98
    :goto_0
    move v5, v2

    move v0, v5

    .end local v0    # "size":I
    return v0

    .line 89
    .restart local v0    # "size":I
    :sswitch_0
    move v5, v0

    move v2, v5

    .line 90
    goto :goto_0

    .line 92
    :sswitch_1
    move v5, v0

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v5

    .line 93
    goto :goto_0

    .line 95
    :sswitch_2
    move v5, v4

    move v2, v5

    goto :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/widget/Space;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    move-object v4, v0

    .line 108
    invoke-virtual {v4}, Landroidx/legacy/widget/Space;->getSuggestedMinimumWidth()I

    move-result v4

    move v5, v1

    invoke-static {v4, v5}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result v4

    move-object v5, v0

    .line 109
    invoke-virtual {v5}, Landroidx/legacy/widget/Space;->getSuggestedMinimumHeight()I

    move-result v5

    move v6, v2

    invoke-static {v5, v6}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result v5

    .line 107
    invoke-virtual {v3, v4, v5}, Landroidx/legacy/widget/Space;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method
