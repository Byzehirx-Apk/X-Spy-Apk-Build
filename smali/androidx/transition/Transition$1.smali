.class final Landroidx/transition/Transition$1;
.super Landroidx/transition/PathMotion;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$1;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 10

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$1;
    move v1, p1

    .local v1, "startX":F
    move v2, p2

    .local v2, "startY":F
    move v3, p3

    .local v3, "endX":F
    move v4, p4

    .local v4, "endY":F
    new-instance v6, Landroid/graphics/Path;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    move-object v5, v6

    .line 174
    .local v5, "path":Landroid/graphics/Path;
    move-object v6, v5

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    move-object v6, v5

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Landroidx/transition/Transition$1;
    return-object v0
.end method
