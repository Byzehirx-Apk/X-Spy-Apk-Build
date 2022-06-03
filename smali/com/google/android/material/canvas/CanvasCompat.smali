.class public Lcom/google/android/material/canvas/CanvasCompat;
.super Ljava/lang/Object;
.source "CanvasCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/canvas/CanvasCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I
    .locals 13

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "canvas":Landroid/graphics/Canvas;
    move v1, p1

    .local v1, "left":F
    move v2, p2

    .local v2, "top":F
    move/from16 v3, p3

    .local v3, "right":F
    move/from16 v4, p4

    .local v4, "bottom":F
    move/from16 v5, p5

    .local v5, "alpha":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-le v6, v7, :cond_0

    .line 53
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v6

    move v0, v6

    .line 55
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return v0

    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/16 v12, 0x1f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static saveLayerAlpha(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)I
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "canvas":Landroid/graphics/Canvas;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/RectF;
    move v2, p2

    .local v2, "alpha":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v3, v4, :cond_0

    .line 40
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result v3

    move v0, v3

    .line 42
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return v0

    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/16 v6, 0x1f

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method
