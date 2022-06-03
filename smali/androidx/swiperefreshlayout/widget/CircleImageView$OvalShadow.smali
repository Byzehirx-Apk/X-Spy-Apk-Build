.class Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircleImageView;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V
    .locals 7

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    move-object v1, p1

    move v2, p2

    .local v2, "shadowRadius":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 132
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 133
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 134
    move-object v3, v1

    move v4, v2

    iput v4, v3, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 135
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->rect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 136
    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 13

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    move v1, p1

    .local v1, "diameter":I
    move-object v2, v0

    new-instance v3, Landroid/graphics/RadialGradient;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move v5, v1

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move v6, v1

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget v7, v7, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v7, v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 156
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v2

    .line 157
    return-void

    .line 153
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "paint":Landroid/graphics/Paint;
    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getWidth()I

    move-result v5

    move v3, v5

    .line 147
    .local v3, "viewWidth":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getHeight()I

    move-result v5

    move v4, v5

    .line 148
    .local v4, "viewHeight":I
    move-object v5, v1

    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move v7, v4

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move v8, v3

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    move-object v5, v1

    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move v7, v4

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move v8, v3

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    move-object v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method protected onResize(FF)V
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "height":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    .line 141
    move-object v3, v0

    move v4, v1

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 142
    return-void
.end method
