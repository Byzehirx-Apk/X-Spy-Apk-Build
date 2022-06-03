.class public final Lcom/google/appinventor/components/runtime/Ball;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A round \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.</p><p>The difference between a <code>Ball</code> and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a <code>Ball</code>\'s appearance can be changed only by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 53
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    .line 56
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Ball;->PaintColor(I)V

    .line 57
    move-object v2, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Ball;->Radius(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public final Height()I
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    const/4 v1, 0x2

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    mul-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public final MoveTo(DD)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the x and y coordinates of the Ball. If CenterAtOrigin is true, the center of the Ball will be placed here. Otherwise, the top left edge of the Ball will be placed at the specified coordinates."
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 199
    return-void
.end method

.method public final OriginAtCenter(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the x- and y-coordinates should represent the center of the Ball (<code>true</code>) or its left and top edges (<code>false</code>)."
        userVisible = false
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 172
    return-void
.end method

.method public final PaintColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the Ball."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ball;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    move v0, v1

    return v0
.end method

.method public final PaintColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Ball;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    .line 154
    move v2, v1

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 160
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 161
    return-void

    .line 158
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public final Radius()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    move v0, v1

    return v0
.end method

.method public final Radius(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The distance from the edge of the Ball to its center."
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 121
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Ball;->originAtCenter:Z

    if-eqz v3, :cond_0

    .line 122
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    move v6, v2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    .line 123
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    move v6, v2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    .line 125
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    .line 126
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 127
    return-void
.end method

.method public final Width()I
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    const/4 v1, 0x2

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    mul-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final X()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the Ball, increasing as the Ball moves right. If the property OriginAtCenter is true, the coodinate is for the center of the Ball; otherwise, it is for the leftmost point of the Ball."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public final Y()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the Ball, increasing as the Ball moves down. If the property OriginAtCenter is true, the coodinate is for the center of the Ball; otherwise, it is for the uppermost point of the Ball."
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public final containsPoint(DD)Z
    .locals 15

    .prologue
    .line 108
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double/2addr v6, v8

    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-wide v8, v4

    move-object v10, v1

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v1

    iget v8, v8, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    move-object v9, v1

    iget v9, v9, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    move v1, v6

    :goto_0
    return v1

    :cond_0
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 64
    move-object v1, p0

    move-object v2, p1

    move-object v6, v1

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/Ball;->visible:Z

    if-eqz v6, :cond_0

    .line 65
    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    move v3, v6

    .line 66
    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    move v4, v6

    .line 67
    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    int-to-float v6, v6

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    mul-float/2addr v6, v7

    move v5, v6

    .line 68
    move-object v6, v2

    move v7, v3

    move v8, v5

    add-float/2addr v7, v8

    move v8, v4

    move v9, v5

    add-float/2addr v8, v9

    move v9, v5

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Ball;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    :cond_0
    return-void
.end method
