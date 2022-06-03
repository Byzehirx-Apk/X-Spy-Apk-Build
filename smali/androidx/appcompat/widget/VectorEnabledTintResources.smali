.class public Landroidx/appcompat/widget/VectorEnabledTintResources;
.super Landroid/content/res/Resources;
.source "VectorEnabledTintResources.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_SDK_WHERE_REQUIRED:I = 0x14

.field private static sCompatVectorFromResourcesEnabled:Z


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/VectorEnabledTintResources;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "res":Landroid/content/res/Resources;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 56
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroidx/appcompat/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Landroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    return v0
.end method

.method public static setCompatVectorFromResourcesEnabled(Z)V
    .locals 2

    .prologue
    .line 83
    move v0, p0

    .local v0, "enabled":Z
    move v1, v0

    sput-boolean v1, Landroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    .line 84
    return-void
.end method

.method public static shouldBeUsed()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->isCompatVectorFromResourcesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/VectorEnabledTintResources;
    move v1, p1

    .local v1, "id":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v2, v3

    .line 67
    .local v2, "context":Landroid/content/Context;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 68
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v3

    move-object v4, v2

    move-object v5, v0

    move v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 70
    .end local v0    # "this":Landroidx/appcompat/widget/VectorEnabledTintResources;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/VectorEnabledTintResources;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method final superGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/VectorEnabledTintResources;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/VectorEnabledTintResources;
    return-object v0
.end method
