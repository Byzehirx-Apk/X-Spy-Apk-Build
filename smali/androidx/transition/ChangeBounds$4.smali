.class final Landroidx/transition/ChangeBounds$4;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$4;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$4;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeBounds$4;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$4;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeBounds$4;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeBounds$4;
    return-object v0
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 12

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$4;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "bottomRight":Landroid/graphics/PointF;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move v3, v7

    .line 117
    .local v3, "left":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move v4, v7

    .line 118
    .local v4, "top":I
    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    move v5, v7

    .line 119
    .local v5, "right":I
    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    move v6, v7

    .line 120
    .local v6, "bottom":I
    move-object v7, v1

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 121
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$4;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
