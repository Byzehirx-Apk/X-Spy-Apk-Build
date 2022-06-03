.class public Lcom/google/appinventor/components/runtime/KodularColorUtilities;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    iconName = "images/colorUtilities.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 33
    const-string/jumbo v2, "Kodular Color Utilities"

    const-string/jumbo v3, "Kodular Color Utilities Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 34
    return-void
.end method


# virtual methods
.method public ConvertHexToInt(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a hex color to a integer color. The result is returned as integer."
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public ConvertIntToHex(I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a integer color to a hex color. The result is returned as string."
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetLuminance(I)D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the luminance of a color as a float between 0.0 and 1.0. The result is returned as double."
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public IsDarkColor(I)Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the color is dark, else it returns false, means the color is light. The result is returned as boolean."
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public SetAlphaValue(II)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a alpha value to a color. The result is returned as integer."
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    .line 49
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    move v0, v3

    .line 51
    :goto_0
    return v0

    :cond_0
    move v3, v1

    move v0, v3

    goto :goto_0
.end method
