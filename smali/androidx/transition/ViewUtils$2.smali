.class final Landroidx/transition/ViewUtils$2;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewUtils;
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
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtils$2;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/Rect;>;"
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtils$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ViewUtils$2;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtils$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/transition/ViewUtils$2;->get(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ViewUtils$2;
    return-object v0
.end method

.method public set(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtils$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "clipBounds":Landroid/graphics/Rect;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 85
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtils$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/ViewUtils$2;->set(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
