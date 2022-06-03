.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1750
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1752
    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .locals 4

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    move-object v1, p1

    .local v1, "copy":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1756
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6

    .prologue
    .line 1774
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    move-object v1, p1

    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v4, v1

    const/4 v5, 0x0

    .line 1775
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1776
    .local v2, "pathName":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1777
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;

    .line 1780
    :cond_0
    move-object v4, v1

    const/4 v5, 0x1

    .line 1781
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1782
    .local v3, "pathData":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1783
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v5

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1785
    :cond_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .prologue
    .line 1760
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    move-object v1, p1

    .local v1, "r":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    move-object v4, p4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v7, v4

    const-string/jumbo v8, "pathData"

    invoke-static {v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    move v5, v7

    .line 1761
    .local v5, "hasPathData":Z
    move v7, v5

    if-nez v7, :cond_0

    .line 1762
    .line 1768
    :goto_0
    return-void

    .line 1764
    :cond_0
    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    sget-object v10, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    invoke-static {v7, v8, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    .line 1766
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1767
    move-object v7, v6

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1768
    goto :goto_0
.end method

.method public isClipPath()Z
    .locals 2

    .prologue
    .line 1789
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
    return v0
.end method
