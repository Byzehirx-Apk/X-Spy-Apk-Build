.class public final Lcom/google/appinventor/components/runtime/ProgressBar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "spinkit.jar"
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

.field private ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

.field private backgroundColor:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 38
    move-object v2, v0

    const v3, -0xff7475

    iput v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 41
    move-object v2, v0

    const-string/jumbo v3, "Wave"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    .line 46
    move-object v2, v0

    new-instance v3, Landroid/widget/ProgressBar;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    .line 48
    move-object v2, v0

    const v3, -0xff7475

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ProgressBar;->Color(I)V

    .line 49
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ProgressBar;->AnimationStyle(Ljava/lang/String;)V

    .line 52
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 55
    move-object v2, v0

    const v3, 0xffffff

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ProgressBar;->BackgroundColor(I)V

    .line 56
    return-void
.end method

.method private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0()V
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    .line 183
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(IIII)V

    .line 184
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final AnimationStyle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets current animation style"
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final AnimationStyle(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Wave"
        editorType = "progress_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, Wave animation will be used."
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ProgressBar;->getSprite(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 104
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    .line 107
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(IIII)V

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method public final BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the background color of this component."
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->backgroundColor:I

    .line 68
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 69
    return-void
.end method

.method public final Color()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move v0, v1

    return v0
.end method

.method public final Color(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF008b8b"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the component"
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v2, :cond_0

    .line 81
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 82
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public final GetAnimationStyleNames()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets style names of all possible animations."
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->getAnimationStyles()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 170
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ProgressBar;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0()V

    .line 171
    return-void
.end method

.method public final Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 177
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ProgressBar;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0()V

    .line 178
    return-void
.end method

.method public final getSprite(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    .line 115
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\s"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 153
    move-object v3, v0

    const-string/jumbo v4, "Wave"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    .line 157
    new-instance v3, Lcom/github/ybq/android/spinkit/style/Wave;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    move-object v0, v3

    :goto_1
    return-object v0

    .line 115
    :sswitch_0
    move-object v3, v1

    const-string/jumbo v4, "chasingdots"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    :sswitch_1
    move-object v3, v1

    const-string/jumbo v4, "circle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    goto :goto_0

    :sswitch_2
    move-object v3, v1

    const-string/jumbo v4, "cubegrid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    move v2, v3

    goto :goto_0

    :sswitch_3
    move-object v3, v1

    const-string/jumbo v4, "doublebounce"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    move v2, v3

    goto :goto_0

    :sswitch_4
    move-object v3, v1

    const-string/jumbo v4, "fadingcircle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    move v2, v3

    goto :goto_0

    :sswitch_5
    move-object v3, v1

    const-string/jumbo v4, "foldingcube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    move v2, v3

    goto :goto_0

    :sswitch_6
    move-object v3, v1

    const-string/jumbo v4, "pulse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    move v2, v3

    goto :goto_0

    :sswitch_7
    move-object v3, v1

    const-string/jumbo v4, "rotatingcircle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    move v2, v3

    goto :goto_0

    :sswitch_8
    move-object v3, v1

    const-string/jumbo v4, "rotatingplane"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    move v2, v3

    goto/16 :goto_0

    :sswitch_9
    move-object v3, v1

    const-string/jumbo v4, "threebounce"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    move v2, v3

    goto/16 :goto_0

    :sswitch_a
    move-object v3, v1

    const-string/jumbo v4, "wanderingcubes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    move v2, v3

    goto/16 :goto_0

    :sswitch_b
    move-object v3, v1

    const-string/jumbo v4, "wave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    move v2, v3

    goto/16 :goto_0

    .line 117
    :pswitch_0
    new-instance v3, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 120
    :pswitch_1
    new-instance v3, Lcom/github/ybq/android/spinkit/style/Circle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 123
    :pswitch_2
    new-instance v3, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 126
    :pswitch_3
    new-instance v3, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 129
    :pswitch_4
    new-instance v3, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 132
    :pswitch_5
    new-instance v3, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 135
    :pswitch_6
    new-instance v3, Lcom/github/ybq/android/spinkit/style/Pulse;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 138
    :pswitch_7
    new-instance v3, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 141
    :pswitch_8
    new-instance v3, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 144
    :pswitch_9
    new-instance v3, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 147
    :pswitch_a
    new-instance v3, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 150
    :pswitch_b
    new-instance v3, Lcom/github/ybq/android/spinkit/style/Wave;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    move-object v0, v3

    goto/16 :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_1
        -0x30c05dfc -> :sswitch_8
        -0x2c36c40a -> :sswitch_5
        0x3792f9 -> :sswitch_b
        0x262ea28 -> :sswitch_7
        0x6482cfb -> :sswitch_2
        0x6611b99 -> :sswitch_6
        0x1e5a47f5 -> :sswitch_0
        0x442a6da6 -> :sswitch_9
        0x4891e9e9 -> :sswitch_a
        0x52813249 -> :sswitch_4
        0x57b39199 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    move-object v0, v1

    return-object v0
.end method
