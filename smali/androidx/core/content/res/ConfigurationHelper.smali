.class public final Landroidx/core/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ConfigurationHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .locals 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 42
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    move v0, v1

    .line 44
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return v0

    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    move v0, v1

    goto :goto_0
.end method
