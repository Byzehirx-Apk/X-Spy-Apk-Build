.class public Lcom/google/appinventor/components/runtime/ImageSprite;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>).</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  A sprite whose <code>Rotates</code> property is <code>True</code> will rotate its image as the sprite\'s <code>Heading</code> changes.  Checking for collisions with a rotated sprite currently checks the sprite\'s unrotated position so that collision checking will be inaccurate for tall narrow or short wide sprites that are rotated.  Any of the sprite properties can be changed at any time under program control.</p> "
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Z

.field private picturePath:Ljava/lang/String;

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 57
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    .line 58
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    .line 59
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Z

    .line 72
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The height of the ImageSprite in pixels."
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    const/16 v2, -0x3e8

    if-gt v1, v2, :cond_2

    .line 147
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    goto :goto_0

    .line 149
    :cond_2
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    move v0, v1

    goto :goto_0
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:I

    .line 156
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 157
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public MoveTo(DD)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the ImageSprite so that its left top corner is at the specfied x and y coordinates."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 238
    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The picture that determines the ImageSprite\'s appearance."
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 130
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 136
    :goto_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 137
    return-void

    .line 128
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    const-string/jumbo v2, "ImageSprite"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 133
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method public Rotates(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Z

    .line 211
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 212
    return-void
.end method

.method public Rotates()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the image should rotate to match the ImageSprite\'s heading. The sprite rotates around its centerpoint."
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Z

    move v0, v1

    return v0
.end method

.method public Width()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The width of the ImageSprite in pixels."
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    const/16 v2, -0x3e8

    if-gt v1, v2, :cond_2

    .line 169
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    goto :goto_0

    .line 171
    :cond_2
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ImageSprite;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    move v0, v1

    goto :goto_0
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ImageSprite;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:I

    .line 178
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 179
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public X()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the left edge of the ImageSprite, increasing as the ImageSprite moves right."
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public Y()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the top edge of the ImageSprite, increasing as the ImageSprite moves down."
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->visible:Z

    if-eqz v6, :cond_1

    .line 81
    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v2, v6

    .line 82
    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v3, v6

    .line 83
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    .line 84
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v5, v6

    .line 85
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move v10, v3

    move v11, v5

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 88
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Z

    if-nez v6, :cond_0

    .line 89
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 97
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v7

    neg-double v7, v7

    double-to-float v7, v7

    move v8, v2

    move v9, v4

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v3

    move v10, v5

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 98
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ImageSprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 102
    :cond_1
    goto :goto_0
.end method
