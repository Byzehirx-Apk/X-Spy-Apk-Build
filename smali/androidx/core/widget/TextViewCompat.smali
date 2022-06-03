.class public final Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewCompat$OreoCallback;,
        Landroidx/core/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 455
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    .line 460
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 457
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 458
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 460
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 438
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    .line 443
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 440
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 441
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 443
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 421
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    .line 426
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 423
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 424
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 472
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    .line 477
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 474
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 475
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 477
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 405
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    .line 410
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 407
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 408
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 294
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 308
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 296
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    .line 297
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 298
    .local v1, "rtl":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 299
    .local v2, "compounds":[Landroid/graphics/drawable/Drawable;
    move v5, v1

    if-eqz v5, :cond_1

    .line 301
    move-object v5, v2

    const/4 v6, 0x2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 302
    .local v3, "start":Landroid/graphics/drawable/Drawable;
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v4, v5

    .line 303
    .local v4, "end":Landroid/graphics/drawable/Drawable;
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    .line 304
    move-object v5, v2

    const/4 v6, 0x2

    move-object v7, v4

    aput-object v7, v5, v6

    .line 306
    .end local v3    # "start":Landroid/graphics/drawable/Drawable;
    .end local v4    # "end":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 297
    .end local v1    # "rtl":Z
    .end local v2    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 308
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "textView":Landroid/widget/TextView;
    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "textView":Landroid/widget/TextView;
    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 225
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    move v0, v1

    .line 242
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 228
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    if-nez v1, :cond_1

    .line 229
    const-string/jumbo v1, "mMaxMode"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 230
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    .line 232
    :cond_1
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 234
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    if-nez v1, :cond_2

    .line 235
    const-string/jumbo v1, "mMaximum"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    .line 236
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    .line 238
    :cond_2
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    .line 239
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 242
    :cond_3
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 251
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    move v0, v1

    .line 268
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 254
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    if-nez v1, :cond_1

    .line 255
    const-string/jumbo v1, "mMinMode"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    .line 256
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    .line 258
    :cond_1
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 260
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    if-nez v1, :cond_2

    .line 261
    const-string/jumbo v1, "mMinimum"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    .line 262
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    .line 264
    :cond_2
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    .line 265
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 268
    :cond_3
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .locals 3
    .param p0    # Landroid/text/TextDirectionHeuristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "heuristic":Landroid/text/TextDirectionHeuristic;
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_0

    .line 962
    const/4 v1, 0x1

    move v0, v1

    .line 978
    .end local v0    # "heuristic":Landroid/text/TextDirectionHeuristic;
    :goto_0
    return v0

    .line 963
    .restart local v0    # "heuristic":Landroid/text/TextDirectionHeuristic;
    :cond_0
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_1

    .line 964
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 965
    :cond_1
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_2

    .line 966
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 967
    :cond_2
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_3

    .line 968
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 969
    :cond_3
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_4

    .line 970
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 971
    :cond_4
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_5

    .line 972
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 973
    :cond_5
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_6

    .line 974
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 975
    :cond_6
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_7

    .line 976
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 978
    :cond_7
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v5, :cond_0

    .line 907
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    .line 952
    .end local v0    # "textView":Landroid/widget/TextView;
    .local v1, "defaultIsRtl":Z
    :goto_0
    return-object v0

    .line 910
    .end local v1    # "defaultIsRtl":Z
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_3

    .line 911
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 916
    move-object v5, v0

    .line 917
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v5

    move-object v1, v5

    .line 918
    .local v1, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v2, v5

    .line 921
    .local v2, "zero":Ljava/lang/String;
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    move v3, v5

    .line 922
    .local v3, "firstCodepoint":I
    move v5, v3

    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v5

    move v4, v5

    .line 923
    .local v4, "digitDirection":B
    move v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    move v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 925
    :cond_1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 927
    :cond_2
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 933
    .end local v1    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .end local v2    # "zero":Ljava/lang/String;
    .end local v3    # "firstCodepoint":I
    .end local v4    # "digitDirection":B
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 936
    .local v1, "defaultIsRtl":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextDirection()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 939
    move v5, v1

    if-eqz v5, :cond_5

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_2
    move-object v0, v5

    goto :goto_0

    .line 933
    .end local v1    # "defaultIsRtl":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 939
    .restart local v1    # "defaultIsRtl":Z
    :cond_5
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 942
    :pswitch_0
    sget-object v5, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 944
    :pswitch_1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 946
    :pswitch_2
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 948
    :pswitch_3
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 950
    :pswitch_4
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 952
    :pswitch_5
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 814
    new-instance v2, Landroidx/core/text/PrecomputedTextCompat$Params;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    move-object v0, v2

    .line 825
    .end local v0    # "textView":Landroid/widget/TextView;
    .local v1, "builder":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    :goto_0
    return-object v0

    .line 816
    .end local v1    # "builder":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    new-instance v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroid/text/TextPaint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    .line 817
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v3, v4}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    move-object v1, v2

    .line 818
    .restart local v1    # "builder":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 819
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v2

    .line 820
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v2

    .line 822
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 823
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v2

    .line 825
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "fieldName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v1, v3

    .line 114
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v1, v3

    .line 115
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "fieldName":Ljava/lang/String;
    return-object v0

    .line 116
    .restart local v0    # "fieldName":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 117
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "TextViewCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not retrieve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "field":Ljava/lang/reflect/Field;
    move-object v1, p1

    .local v1, "textView":Landroid/widget/TextView;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 128
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v0

    .line 125
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 126
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "TextViewCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not retrieve value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 128
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "autoSizeMinTextSize":I
    move v2, p2

    .local v2, "autoSizeMaxTextSize":I
    move v3, p3

    .local v3, "autoSizeStepGranularity":I
    move v4, p4

    .local v4, "unit":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_1

    .line 360
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v5, :cond_0

    .line 363
    move-object v5, v0

    check-cast v5, Landroidx/core/widget/AutoSizeableTextView;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "presetSizes":[I
    move v2, p2

    .local v2, "unit":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_1

    .line 386
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v3, :cond_0

    .line 388
    move-object v3, v0

    check-cast v3, Landroidx/core/widget/AutoSizeableTextView;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "autoSizeTextType":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_1

    .line 325
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v2, :cond_0

    .line 327
    move-object v2, v0

    check-cast v2, Landroidx/core/widget/AutoSizeableTextView;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "start":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "top":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .local v3, "end":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "bottom":Landroid/graphics/drawable/Drawable;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 150
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 152
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 153
    .local v5, "rtl":Z
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v3

    :goto_2
    move-object v8, v2

    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v1

    :goto_3
    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    goto :goto_0

    .line 152
    .end local v5    # "rtl":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 153
    .restart local v5    # "rtl":Z
    :cond_2
    move-object v7, v1

    goto :goto_2

    :cond_3
    move-object v9, v3

    goto :goto_3

    .line 155
    .end local v5    # "rtl":Z
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "end":I
    move v4, p4

    .local v4, "bottom":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 209
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 211
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 212
    .local v5, "rtl":Z
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_2

    move v7, v3

    :goto_2
    move v8, v2

    move v9, v5

    if-eqz v9, :cond_3

    move v9, v1

    :goto_3
    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 214
    goto :goto_0

    .line 211
    .end local v5    # "rtl":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 212
    .restart local v5    # "rtl":Z
    :cond_2
    move v7, v1

    goto :goto_2

    :cond_3
    move v9, v3

    goto :goto_3

    .line 215
    .end local v5    # "rtl":Z
    :cond_4
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "start":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "top":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .local v3, "end":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "bottom":Landroid/graphics/drawable/Drawable;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 177
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 179
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 180
    .local v5, "rtl":Z
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v3

    :goto_2
    move-object v8, v2

    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v1

    :goto_3
    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    goto :goto_0

    .line 179
    .end local v5    # "rtl":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 180
    .restart local v5    # "rtl":Z
    :cond_2
    move-object v7, v1

    goto :goto_2

    :cond_3
    move-object v9, v3

    goto :goto_3

    .line 183
    .end local v5    # "rtl":Z
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .locals 5
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 505
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 504
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 506
    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "firstBaselineToTopHeight":I
    move v5, v1

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v5

    .line 692
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    .line 693
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 694
    .line 716
    :goto_0
    return-void

    .line 697
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    move-object v2, v5

    .line 699
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    move-object v5, v0

    .line 702
    invoke-virtual {v5}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 703
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v3, v5

    .line 711
    .local v3, "fontMetricsTop":I
    :goto_1
    move v5, v1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 712
    move v5, v1

    move v6, v3

    neg-int v6, v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 713
    .local v4, "paddingTop":I
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    move v7, v4

    move-object v8, v0

    .line 714
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    .line 713
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 716
    .end local v4    # "paddingTop":I
    :cond_2
    goto :goto_0

    .line 705
    .end local v3    # "fontMetricsTop":I
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v3, v5

    .restart local v3    # "fontMetricsTop":I
    goto :goto_1
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "lastBaselineToBottomHeight":I
    move v5, v1

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v5

    .line 738
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    move-object v2, v5

    .line 740
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    move-object v5, v0

    .line 743
    invoke-virtual {v5}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 744
    :cond_0
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v3, v5

    .line 752
    .local v3, "fontMetricsBottom":I
    :goto_0
    move v5, v1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_1

    .line 753
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v4, v5

    .line 754
    .local v4, "paddingBottom":I
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    move-object v8, v0

    .line 755
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    move v9, v4

    .line 754
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 757
    .end local v4    # "paddingBottom":I
    :cond_1
    return-void

    .line 746
    .end local v3    # "fontMetricsBottom":I
    :cond_2
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v3, v5

    .restart local v3    # "fontMetricsBottom":I
    goto :goto_0
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "lineHeight":I
    move v3, v1

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v3

    .line 796
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    move v2, v3

    .line 798
    .local v2, "fontHeight":I
    move v3, v1

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 800
    move-object v3, v0

    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 802
    :cond_0
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "precomputed":Landroidx/core/text/PrecomputedTextCompat;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 885
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_0
    return-void

    .line 887
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v3

    move-object v2, v3

    .line 888
    .local v2, "param":Landroidx/core/text/PrecomputedTextCompat$Params;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat;->getParams()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 889
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Given text can not be applied to TextView."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 891
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 5
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move v1, p1

    .local v1, "resId":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 282
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 841
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 844
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_2

    .line 845
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v3

    move v2, v3

    .line 848
    .local v2, "paintTextScaleX":F
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 851
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 854
    move-object v3, v0

    move v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 856
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 858
    .line 867
    .end local v2    # "paintTextScaleX":F
    :goto_0
    return-void

    .line 860
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 864
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 865
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "textView":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-gt v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroidx/core/widget/TextViewCompat$OreoCallback;

    if-eqz v2, :cond_1

    .line 521
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 527
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    new-instance v2, Landroidx/core/widget/TextViewCompat$OreoCallback;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Landroidx/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    move-object v0, v2

    goto :goto_0
.end method
