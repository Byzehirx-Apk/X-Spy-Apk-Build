.class public Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const-string/jumbo v5, "color"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getDimension(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "dimen"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move v0, v2

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const-string/jumbo v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "string"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getStyle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "style"

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method
