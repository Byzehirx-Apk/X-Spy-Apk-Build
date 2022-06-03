.class final Landroidx/transition/ChangeBounds$2;
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
        "Landroidx/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$2;
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
.method public get(Landroidx/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$2;
    move-object v1, p1

    .local v1, "viewBounds":Landroidx/transition/ChangeBounds$ViewBounds;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeBounds$2;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeBounds$2;->get(Landroidx/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeBounds$2;
    return-object v0
.end method

.method public set(Landroidx/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$2;
    move-object v1, p1

    .local v1, "viewBounds":Landroidx/transition/ChangeBounds$ViewBounds;
    move-object v2, p2

    .local v2, "topLeft":Landroid/graphics/PointF;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/transition/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    .line 91
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/transition/ChangeBounds$ViewBounds;

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/ChangeBounds$2;->set(Landroidx/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
