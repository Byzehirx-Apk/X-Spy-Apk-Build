.class public Lcom/airbnb/lottie/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/model/MutablePair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/airbnb/lottie/model/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/MutablePair",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 7
    .param p2    # Lcom/airbnb/lottie/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v1, p1

    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, p2

    .local v2, "delegate":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/model/MutablePair;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/airbnb/lottie/model/MutablePair;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 22
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 24
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 27
    move-object v3, v0

    const-string/jumbo v4, ".ttf"

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 30
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 31
    move-object v3, v1

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_0

    .line 32
    const-string/jumbo v3, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 34
    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 38
    goto :goto_0
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    move-object v2, v5

    .line 69
    .local v2, "defaultTypeface":Landroid/graphics/Typeface;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 70
    move-object v5, v2

    move-object v0, v5

    .line 91
    .end local v0    # "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    :goto_0
    return-object v0

    .line 73
    .restart local v0    # "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    .line 74
    .local v3, "typeface":Landroid/graphics/Typeface;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v5, :cond_1

    .line 75
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v3, v5

    .line 78
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v5, :cond_2

    move-object v5, v3

    if-nez v5, :cond_2

    .line 79
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 80
    .local v4, "path":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 81
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v3, v5

    .line 85
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    move-object v5, v3

    if-nez v5, :cond_3

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 87
    .restart local v4    # "path":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v3, v5

    .line 90
    .end local v4    # "path":Ljava/lang/String;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 91
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, p2

    .local v2, "style":Ljava/lang/String;
    const/4 v6, 0x0

    move v3, v6

    .line 96
    .local v3, "styleInt":I
    move-object v6, v2

    const-string/jumbo v7, "Italic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    move v4, v6

    .line 97
    .local v4, "containsItalic":Z
    move-object v6, v2

    const-string/jumbo v7, "Bold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    move v5, v6

    .line 98
    .local v5, "containsBold":Z
    move v6, v4

    if-eqz v6, :cond_1

    move v6, v5

    if-eqz v6, :cond_1

    .line 99
    const/4 v6, 0x3

    move v3, v6

    .line 106
    :cond_0
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    move v7, v3

    if-ne v6, v7, :cond_3

    .line 107
    move-object v6, v1

    move-object v0, v6

    .line 110
    .end local v0    # "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    :goto_1
    return-object v0

    .line 100
    .restart local v0    # "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    :cond_1
    move v6, v4

    if-eqz v6, :cond_2

    .line 101
    const/4 v6, 0x2

    move v3, v6

    goto :goto_0

    .line 102
    :cond_2
    move v6, v5

    if-eqz v6, :cond_0

    .line 103
    const/4 v6, 0x1

    move v3, v6

    goto :goto_0

    .line 110
    :cond_3
    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/String;
    move-object v2, p2

    .local v2, "style":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/lottie/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    move-object v3, v5

    .line 58
    .local v3, "typeface":Landroid/graphics/Typeface;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 59
    move-object v5, v3

    move-object v0, v5

    .line 64
    .end local v0    # "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/manager/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v4, v5

    .line 62
    .local v4, "typefaceWithDefaultStyle":Landroid/graphics/Typeface;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/manager/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v3, v5

    .line 63
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 64
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v1, p1

    .local v1, "defaultFontFileExtension":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/FontAssetManager;
    move-object v1, p1

    .local v1, "assetDelegate":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 42
    return-void
.end method
