.class Landroidx/cardview/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/cardview/widget/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cardview/widget/CardViewBaseImpl;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardViewBaseImpl;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    .prologue
    .line 42
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl$1;
    move-object/from16 v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "bounds":Landroid/graphics/RectF;
    move/from16 v3, p3

    .local v3, "cornerRadius":F
    move-object/from16 v4, p4

    .local v4, "paint":Landroid/graphics/Paint;
    move v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    move v5, v10

    .line 43
    .local v5, "twoRadius":F
    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    move v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    move v6, v10

    .line 44
    .local v6, "innerWidth":F
    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    move v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    move v7, v10

    .line 45
    .local v7, "innerHeight":F
    move v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_0

    .line 47
    move v10, v3

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    move v8, v10

    .line 48
    .local v8, "roundedCornerRadius":F
    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v10, v10, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    move v11, v8

    neg-float v11, v11

    move v12, v8

    neg-float v12, v12

    move v13, v8

    move v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move v9, v10

    .line 51
    .local v9, "saved":I
    move-object v10, v1

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move v12, v8

    add-float/2addr v11, v12

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move v13, v8

    add-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x1

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    move-object v10, v1

    move v11, v6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    move-object v10, v1

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 56
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x1

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    move-object v10, v1

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    move-object v10, v1

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 59
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x1

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    move-object v10, v1

    move v11, v6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    move-object v10, v1

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 62
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v11, v11, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x1

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    move-object v10, v1

    move v11, v9

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 65
    move-object v10, v1

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move v12, v8

    add-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object v13, v2

    iget v13, v13, Landroid/graphics/RectF;->right:F

    move v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v13, v14

    move-object v14, v2

    iget v14, v14, Landroid/graphics/RectF;->top:F

    move v15, v8

    add-float/2addr v14, v15

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    move-object v10, v1

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move v12, v8

    add-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move v13, v8

    sub-float/2addr v12, v13

    move-object v13, v2

    iget v13, v13, Landroid/graphics/RectF;->right:F

    move v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v13, v14

    move-object v14, v2

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    .end local v8    # "roundedCornerRadius":F
    .end local v9    # "saved":I
    :cond_0
    move-object v10, v1

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move v13, v3

    add-float/2addr v12, v13

    move-object v13, v2

    iget v13, v13, Landroid/graphics/RectF;->right:F

    move-object v14, v2

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    move v15, v3

    sub-float/2addr v14, v15

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method
