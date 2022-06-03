.class Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;
.super Landroidx/collection/LruCache;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatDrawableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PorterDuffColorFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;
    move v1, p1

    .local v1, "maxSize":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    .line 674
    return-void
.end method

.method private static generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 5

    .prologue
    .line 685
    move v0, p0

    .local v0, "color":I
    move-object v1, p1

    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    const/4 v3, 0x1

    move v2, v3

    .line 686
    .local v2, "hashCode":I
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move v4, v0

    add-int/2addr v3, v4

    move v2, v3

    .line 687
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 688
    move v3, v2

    move v0, v3

    .end local v0    # "color":I
    return v0
.end method


# virtual methods
.method get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 6

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;
    move v1, p1

    .local v1, "color":I
    move-object v2, p2

    .local v2, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;
    return-object v0
.end method

.method put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .locals 7

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;
    move v1, p1

    .local v1, "color":I
    move-object v2, p2

    .local v2, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v3, p3

    .local v3, "filter":Landroid/graphics/PorterDuffColorFilter;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PorterDuffColorFilter;

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;
    return-object v0
.end method
