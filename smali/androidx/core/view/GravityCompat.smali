.class public final Landroidx/core/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# static fields
.field public static final END:I = 0x800005

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final START:I = 0x800003


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GravityCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 16

    .prologue
    .line 98
    move/from16 v0, p0

    .local v0, "gravity":I
    move/from16 v1, p1

    .local v1, "w":I
    move/from16 v2, p2

    .local v2, "h":I
    move-object/from16 v3, p3

    .local v3, "container":Landroid/graphics/Rect;
    move/from16 v4, p4

    .local v4, "xAdj":I
    move/from16 v5, p5

    .local v5, "yAdj":I
    move-object/from16 v6, p6

    .local v6, "outRect":Landroid/graphics/Rect;
    move/from16 v7, p7

    .local v7, "layoutDirection":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_0

    .line 99
    move v8, v0

    move v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    move v8, v0

    move v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    invoke-static/range {v8 .. v14}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 12

    .prologue
    .line 64
    move v0, p0

    .local v0, "gravity":I
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, p3

    .local v3, "container":Landroid/graphics/Rect;
    move-object/from16 v4, p4

    .local v4, "outRect":Landroid/graphics/Rect;
    move/from16 v5, p5

    .local v5, "layoutDirection":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    .line 65
    move v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    move v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8

    .prologue
    .line 126
    move v0, p0

    .local v0, "gravity":I
    move-object v1, p1

    .local v1, "display":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "inoutObj":Landroid/graphics/Rect;
    move v3, p3

    .local v3, "layoutDirection":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 127
    move v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static getAbsoluteGravity(II)I
    .locals 4

    .prologue
    .line 145
    move v0, p0

    .local v0, "gravity":I
    move v1, p1

    .local v1, "layoutDirection":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 146
    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    move v0, v2

    .line 149
    .end local v0    # "gravity":I
    :goto_0
    return v0

    .restart local v0    # "gravity":I
    :cond_0
    move v2, v0

    const v3, -0x800001

    and-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method
