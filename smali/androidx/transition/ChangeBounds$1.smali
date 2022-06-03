.class final Landroidx/transition/ChangeBounds$1;
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
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$1;
    move-object v1, p1

    .local v1, "object":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 82
    new-instance v2, Landroid/graphics/PointF;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeBounds$1;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeBounds$1;
    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$1;
    move-object v1, p1

    .local v1, "object":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "value":Landroid/graphics/PointF;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 75
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object v5, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 76
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method
