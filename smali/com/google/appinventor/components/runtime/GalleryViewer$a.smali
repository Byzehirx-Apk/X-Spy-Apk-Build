.class final Lcom/google/appinventor/components/runtime/GalleryViewer$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GalleryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

.field qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GalleryViewer;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

    .line 171
    move-object v3, v0

    const/16 v4, 0x64

    iput v4, v3, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 172
    move-object v3, v0

    const/16 v4, 0x64

    iput v4, v3, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 176
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    .line 177
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ImageGallery_android_galleryItemBackground"

    const-string/jumbo v6, "styleable"

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    .line 178
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GalleryViewer$a;)I
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    .line 1192
    iget v1, v1, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 168
    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GalleryViewer$a;I)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1188
    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 168
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer$a;)I
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    .line 1185
    iget v1, v1, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 168
    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer$a;I)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1181
    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 168
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 216
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Landroid/widget/ImageView;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 219
    move-object v4, v2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

    move v7, v1

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    move-object v4, v2

    new-instance v5, Landroid/widget/Gallery$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    .line 221
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Landroid/content/Context;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    move-object v4, v2

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 225
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 226
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
