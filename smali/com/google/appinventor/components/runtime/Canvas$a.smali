.class final Lcom/google/appinventor/components/runtime/Canvas$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 4

    .prologue
    .line 1652
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 26

    .prologue
    .line 1656
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    const/4 v14, 0x0

    move-object v15, v4

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v16

    div-float v15, v15, v16

    float-to-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    move v5, v14

    .line 1657
    const/4 v14, 0x0

    move-object v15, v4

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v16

    div-float v15, v15, v16

    float-to-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    move v4, v14

    .line 1660
    move v14, v6

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v6, v14

    .line 1661
    move v14, v7

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v7, v14

    .line 1663
    move v14, v6

    move/from16 v25, v14

    move/from16 v14, v25

    move/from16 v15, v25

    mul-float/2addr v14, v15

    move v15, v7

    move/from16 v25, v15

    move/from16 v15, v25

    move/from16 v16, v25

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    move v8, v14

    .line 1664
    move v14, v7

    float-to-double v14, v14

    move/from16 v16, v6

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    neg-double v14, v14

    double-to-float v14, v14

    move v9, v14

    .line 1666
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v14

    move v10, v14

    .line 1667
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v14

    move v11, v14

    .line 1671
    new-instance v14, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    const/16 v16, 0x0

    move/from16 v17, v5

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0xc

    add-int/lit8 v17, v17, -0xc

    .line 1672
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move/from16 v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0xc

    add-int/lit8 v19, v19, -0xc

    .line 1673
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v10

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0xc

    add-int/lit8 v21, v21, 0xc

    .line 1674
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v11

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v23, v4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0xc

    add-int/lit8 v23, v23, 0xc

    .line 1675
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-direct/range {v15 .. v23}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    move-object v10, v14

    .line 1677
    const/4 v14, 0x0

    move v11, v14

    .line 1679
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v14}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :goto_0
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/appinventor/components/runtime/Sprite;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    .line 1680
    move-object v13, v15

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v13

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v13

    move-object v15, v10

    .line 1681
    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1682
    move-object v14, v13

    move v15, v5

    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Lcom/google/appinventor/components/runtime/Sprite;->Flung(FFFFFF)V

    .line 1683
    const/4 v14, 0x1

    move v11, v14

    .line 1685
    :cond_0
    goto :goto_0

    .line 1686
    :cond_1
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move v15, v5

    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v11

    invoke-virtual/range {v14 .. v21}, Lcom/google/appinventor/components/runtime/Canvas;->Flung(FFFFFFZ)V

    .line 1687
    const/4 v14, 0x1

    move v3, v14

    return v3
.end method
