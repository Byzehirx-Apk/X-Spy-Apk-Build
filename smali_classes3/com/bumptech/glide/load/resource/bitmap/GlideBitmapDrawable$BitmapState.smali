.class Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapState"
.end annotation


# static fields
.field private static final DEFAULT_PAINT:Landroid/graphics/Paint;

.field private static final DEFAULT_PAINT_FLAGS:I = 0x6

.field private static final GRAVITY:I = 0x77


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field paint:Landroid/graphics/Paint;

.field targetDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 141
    new-instance v0, Landroid/graphics/Paint;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->DEFAULT_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 147
    move-object v2, v0

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->DEFAULT_PAINT:Landroid/graphics/Paint;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    .line 150
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move-object v1, p1

    .local v1, "other":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    iput v3, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 157
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    return v0
.end method

.method mutatePaint()V
    .locals 6

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->DEFAULT_PAINT:Landroid/graphics/Paint;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    if-ne v1, v2, :cond_0

    .line 173
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    .line 175
    :cond_0
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    return-object v0
.end method

.method setAlpha(I)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->mutatePaint()V

    .line 166
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    return-void
.end method

.method setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->mutatePaint()V

    .line 161
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 162
    return-void
.end method
