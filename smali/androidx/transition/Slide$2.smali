.class final Landroidx/transition/Slide$2;
.super Landroidx/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$2;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Landroidx/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$2;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 105
    .local v3, "isRtl":Z
    move v5, v3

    if-eqz v5, :cond_1

    .line 106
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move v4, v5

    .line 110
    .local v4, "x":F
    :goto_1
    move v5, v4

    move v0, v5

    .end local v0    # "this":Landroidx/transition/Slide$2;
    return v0

    .line 102
    .end local v3    # "isRtl":Z
    .end local v4    # "x":F
    .restart local v0    # "this":Landroidx/transition/Slide$2;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 108
    .restart local v3    # "isRtl":Z
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v4, v5

    .restart local v4    # "x":F
    goto :goto_1
.end method
