.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ACTVAutoSizeHelper"

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field private static final VERY_WIDE:I = 0x100000

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/RectF;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "textView":Landroid/widget/TextView;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 82
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 84
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 86
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 89
    move-object v2, v0

    const/4 v3, 0x0

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 93
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 100
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 101
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 12

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "presetValues":[I
    move-object v7, v1

    array-length v7, v7

    move v2, v7

    .line 448
    .local v2, "presetValuesLength":I
    move v7, v2

    if-nez v7, :cond_0

    .line 449
    move-object v7, v1

    move-object v0, v7

    .line 471
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :goto_0
    return-object v0

    .line 451
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 453
    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 454
    .local v3, "uniqueValidSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 455
    move-object v7, v1

    move v8, v4

    aget v7, v7, v8

    move v5, v7

    .line 457
    .local v5, "currentPresetValue":I
    move v7, v5

    if-lez v7, :cond_1

    move-object v7, v3

    move v8, v5

    .line 458
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_1

    .line 459
    move-object v7, v3

    move v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 454
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 463
    .end local v5    # "currentPresetValue":I
    :cond_2
    move v7, v2

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 464
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 466
    :cond_3
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 467
    .local v4, "uniqueValidSizesLength":I
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 468
    .local v5, "cleanedUpSizes":[I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 469
    move-object v7, v5

    move v8, v6

    move-object v9, v3

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    .line 468
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 471
    :cond_4
    move-object v7, v5

    move-object v0, v7

    goto :goto_0
.end method

.method private clearAutoSizeConfiguration()V
    .locals 3

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 586
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 587
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 588
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 589
    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 590
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 591
    return-void
.end method

.method private createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "alignment":Landroid/text/Layout$Alignment;
    move v3, p3

    .local v3, "availableWidth":I
    move/from16 v4, p4

    .local v4, "maxLines":I
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "getTextDirectionHeuristic"

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/TextDirectionHeuristic;

    move-object v5, v7

    .line 715
    .local v5, "textDirectionHeuristic":Landroid/text/TextDirectionHeuristic;
    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    .line 716
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move v11, v3

    .line 715
    invoke-static {v7, v8, v9, v10, v11}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move-object v6, v7

    .line 718
    .local v6, "layoutBuilder":Landroid/text/StaticLayout$Builder;
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 720
    invoke-virtual {v8}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 721
    invoke-virtual {v9}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v9

    .line 719
    invoke-virtual {v7, v8, v9}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 722
    invoke-virtual {v8}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 723
    invoke-virtual {v8}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 724
    invoke-virtual {v8}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    const v8, 0x7fffffff

    .line 725
    :goto_0
    invoke-virtual {v7, v8}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    move-object v8, v5

    .line 726
    invoke-virtual {v7, v8}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    .line 727
    invoke-virtual {v7}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return-object v0

    .line 724
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_0
    move v8, v4

    goto :goto_0
.end method

.method private createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 17

    .prologue
    .line 733
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    .local v2, "alignment":Landroid/text/Layout$Alignment;
    move/from16 v3, p3

    .local v3, "availableWidth":I
    const/high16 v7, 0x3f800000    # 1.0f

    move v4, v7

    .line 734
    .local v4, "lineSpacingMultiplier":F
    const/4 v7, 0x0

    move v5, v7

    .line 735
    .local v5, "lineSpacingAdd":F
    const/4 v7, 0x1

    move v6, v7

    .line 737
    .local v6, "includePad":Z
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    .line 739
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v7

    move v4, v7

    .line 740
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    move v5, v7

    .line 741
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    move v6, v7

    .line 755
    :goto_0
    new-instance v7, Landroid/text/StaticLayout;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move v11, v3

    move-object v12, v2

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return-object v0

    .line 745
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "getLineSpacingMultiplier"

    move v10, v4

    .line 746
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 745
    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v4, v7

    .line 747
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "getLineSpacingExtra"

    move v10, v5

    .line 748
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 747
    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v5, v7

    .line 749
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "getIncludeFontPadding"

    move v10, v6

    .line 750
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 749
    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v6, v7

    goto :goto_0
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 11

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "availableSpace":Landroid/graphics/RectF;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v7, v7

    move v2, v7

    .line 643
    .local v2, "sizesCount":I
    move v7, v2

    if-nez v7, :cond_0

    .line 644
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "No available text sizes to choose from."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 647
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 648
    .local v3, "bestSizeIndex":I
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v4, v7

    .line 649
    .local v4, "lowIndex":I
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 651
    .local v5, "highIndex":I
    :goto_0
    move v7, v4

    move v8, v5

    if-gt v7, v8, :cond_2

    .line 652
    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 653
    .local v6, "sizeToTryIndex":I
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    move v9, v6

    aget v8, v8, v9

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 654
    move v7, v4

    move v3, v7

    .line 655
    move v7, v6

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v4, v7

    goto :goto_0

    .line 657
    :cond_1
    move v7, v6

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 658
    move v7, v5

    move v3, v7

    goto :goto_0

    .line 662
    .end local v6    # "sizeToTryIndex":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    move v8, v3

    aget v7, v7, v8

    move v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0
.end method

.method private getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "methodName":Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    move-object v2, v3

    .line 787
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 788
    const-class v3, Landroid/widget/TextView;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 789
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 790
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 792
    sget-object v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 796
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .line 799
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 797
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 798
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "ACTVAutoSizeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to retrieve TextView#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "() method"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 799
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "methodName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    move-object v4, v8

    .line 765
    .local v4, "result":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    move v5, v8

    .line 769
    .local v5, "exceptionThrown":Z
    move-object v8, v0

    move-object v9, v2

    :try_start_0
    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v6, v8

    .line 770
    .local v6, "method":Ljava/lang/reflect/Method;
    move-object v8, v6

    move-object v9, v1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 775
    move-object v8, v4

    if-nez v8, :cond_0

    move v8, v5

    if-eqz v8, :cond_0

    .line 776
    move-object v8, v3

    move-object v4, v8

    .line 780
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return-object v0

    .line 771
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 772
    .local v6, "ex":Ljava/lang/Exception;
    const/4 v8, 0x1

    move v5, v8

    .line 773
    :try_start_1
    const-string/jumbo v8, "ACTVAutoSizeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to invoke TextView#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "() method"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 775
    move-object v8, v4

    if-nez v8, :cond_0

    move v8, v5

    if-eqz v8, :cond_0

    .line 776
    move-object v8, v3

    move-object v4, v8

    goto :goto_0

    .line 775
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    if-nez v8, :cond_1

    move v8, v5

    if-eqz v8, :cond_1

    .line 776
    move-object v8, v3

    move-object v4, v8

    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v8, v7

    throw v8
.end method

.method private setRawTextSize(F)V
    .locals 8

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move v1, p1

    .local v1, "size":F
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 605
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 607
    const/4 v5, 0x0

    move v2, v5

    .line 608
    .local v2, "isInLayout":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 609
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInLayout()Z

    move-result v5

    move v2, v5

    .line 612
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 614
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 616
    const-string/jumbo v5, "nullLayouts"

    move-object v3, v5

    .line 618
    .local v3, "methodName":Ljava/lang/String;
    move-object v5, v0

    :try_start_0
    const-string/jumbo v6, "nullLayouts"

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 619
    .local v4, "method":Ljava/lang/reflect/Method;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 620
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 624
    .line 626
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    move v5, v2

    if-nez v5, :cond_3

    .line 627
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 632
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 635
    .end local v2    # "isInLayout":Z
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_2
    return-void

    .line 622
    .restart local v2    # "isInLayout":Z
    .restart local v3    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 623
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "ACTVAutoSizeHelper"

    const-string/jumbo v6, "Failed to invoke TextView#nullLayouts() method"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0

    .line 629
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->forceLayout()V

    goto :goto_1
.end method

.method private setupAutoSizeText()Z
    .locals 9

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 514
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v6, v6

    if-nez v6, :cond_3

    .line 516
    :cond_0
    const/4 v6, 0x1

    move v1, v6

    .line 517
    .local v1, "autoSizeValuesLength":I
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    move v2, v6

    .line 518
    .local v2, "currentSize":F
    :goto_0
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 519
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 520
    add-int/lit8 v1, v1, 0x1

    .line 521
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v6, v7

    move v2, v6

    goto :goto_0

    .line 523
    :cond_1
    move v6, v1

    new-array v6, v6, [I

    move-object v3, v6

    .line 524
    .local v3, "autoSizeTextSizesInPx":[I
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    move v4, v6

    .line 525
    .local v4, "sizeToAdd":F
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_2

    .line 526
    move-object v6, v3

    move v7, v5

    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v6, v7

    .line 527
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v6, v7

    move v4, v6

    .line 525
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 529
    :cond_2
    move-object v6, v0

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 532
    .end local v1    # "autoSizeValuesLength":I
    .end local v2    # "currentSize":F
    .end local v3    # "autoSizeTextSizesInPx":[I
    .end local v4    # "sizeToAdd":F
    .end local v5    # "i":I
    :cond_3
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 537
    :goto_2
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0

    .line 534
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_4
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_2
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .locals 10

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "textSizes":Landroid/content/res/TypedArray;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    move v2, v5

    .line 422
    .local v2, "textSizesLength":I
    move v5, v2

    new-array v5, v5, [I

    move-object v3, v5

    .line 424
    .local v3, "parsedSizes":[I
    move v5, v2

    if-lez v5, :cond_1

    .line 425
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 426
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    aput v7, v5, v6

    .line 425
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    :cond_0
    move-object v5, v0

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 429
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v5

    .line 431
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 6

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v2, v2

    move v1, v2

    .line 435
    .local v1, "sizesLength":I
    move-object v2, v0

    move v3, v1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 436
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v2, :cond_0

    .line 437
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 438
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 439
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 440
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 442
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0

    .line 435
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 14

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move v1, p1

    .local v1, "suggestedSizeInPx":I
    move-object/from16 v2, p2

    .local v2, "availableSpace":Landroid/graphics/RectF;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v3, v8

    .line 667
    .local v3, "text":Ljava/lang/CharSequence;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    move-object v4, v8

    .line 668
    .local v4, "transformationMethod":Landroid/text/method/TransformationMethod;
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 669
    move-object v8, v4

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-interface {v8, v9, v10}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v5, v8

    .line 670
    .local v5, "transformedText":Ljava/lang/CharSequence;
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 671
    move-object v8, v5

    move-object v3, v8

    .line 675
    .end local v5    # "transformedText":Ljava/lang/CharSequence;
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMaxLines()I

    move-result v8

    :goto_0
    move v5, v8

    .line 676
    .local v5, "maxLines":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v8, :cond_3

    .line 677
    move-object v8, v0

    new-instance v9, Landroid/text/TextPaint;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v9, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    .line 681
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 682
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move v9, v1

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 685
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v10, "getLayoutAlignment"

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/Layout$Alignment;

    move-object v6, v8

    .line 687
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_4

    move-object v8, v0

    move-object v9, v3

    move-object v10, v6

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 689
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v12, v5

    .line 688
    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v8

    .line 690
    :goto_2
    move-object v7, v8

    .line 693
    .local v7, "layout":Landroid/text/StaticLayout;
    move v8, v5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move-object v8, v7

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    move v9, v5

    if-gt v8, v9, :cond_1

    move-object v8, v7

    move-object v9, v7

    .line 694
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 695
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    .line 703
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :goto_3
    return v0

    .line 675
    .end local v5    # "maxLines":I
    .end local v6    # "alignment":Landroid/text/Layout$Alignment;
    .end local v7    # "layout":Landroid/text/StaticLayout;
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_2
    const/4 v8, -0x1

    goto :goto_0

    .line 679
    .restart local v5    # "maxLines":I
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->reset()V

    goto :goto_1

    .line 688
    .restart local v6    # "alignment":Landroid/text/Layout$Alignment;
    :cond_4
    move-object v8, v0

    move-object v9, v3

    move-object v10, v6

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 691
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 690
    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v8

    goto :goto_2

    .line 699
    .restart local v7    # "layout":Landroid/text/StaticLayout;
    :cond_5
    move-object v8, v7

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 700
    const/4 v8, 0x0

    move v0, v8

    goto :goto_3

    .line 703
    :cond_6
    const/4 v8, 0x1

    move v0, v8

    goto :goto_3
.end method

.method private supportsAutoSizeText()Z
    .locals 2

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    instance-of v1, v1, Landroidx/appcompat/widget/AppCompatEditText;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move v1, p1

    .local v1, "autoSizeMinTextSizeInPx":F
    move v2, p2

    .local v2, "autoSizeMaxTextSizeInPx":F
    move v3, p3

    .local v3, "autoSizeStepGranularityInPx":F
    move v4, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 486
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Minimum auto-size text size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px) is less or equal to (0px)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 490
    :cond_0
    move v4, v2

    move v5, v1

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 491
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Maximum auto-size text size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px) is less or equal to minimum auto-size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "text size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :cond_1
    move v4, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 497
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The auto-size step granularity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px) is less or equal to (0px)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    :cond_2
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 503
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 504
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 505
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 506
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 507
    return-void
.end method


# virtual methods
.method autoSizeText()V
    .locals 12
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 548
    .line 582
    :goto_0
    return-void

    .line 551
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    if-eqz v7, :cond_7

    .line 552
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    if-lez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_2

    .line 553
    :cond_1
    goto :goto_0

    .line 556
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "getHorizontallyScrolling"

    const/4 v10, 0x0

    .line 557
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 556
    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v1, v7

    .line 558
    .local v1, "horizontallyScrolling":Z
    move v7, v1

    if-eqz v7, :cond_4

    const/high16 v7, 0x100000

    .line 561
    :goto_1
    move v2, v7

    .line 562
    .local v2, "availableWidth":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 563
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v3, v7

    .line 565
    .local v3, "availableHeight":I
    move v7, v2

    if-lez v7, :cond_3

    move v7, v3

    if-gtz v7, :cond_5

    .line 566
    :cond_3
    goto :goto_0

    .line 558
    .end local v2    # "availableWidth":I
    .end local v3    # "availableHeight":I
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 561
    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_1

    .line 569
    .restart local v2    # "availableWidth":I
    .restart local v3    # "availableHeight":I
    :cond_5
    sget-object v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    monitor-enter v7

    .line 570
    :try_start_0
    sget-object v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->setEmpty()V

    .line 571
    sget-object v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    move v8, v2

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 572
    sget-object v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    move v8, v3

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 573
    move-object v7, v0

    sget-object v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v7

    int-to-float v7, v7

    move v5, v7

    .line 574
    .local v5, "optimalTextSize":F
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 575
    move-object v7, v0

    const/4 v8, 0x0

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 577
    :cond_6
    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v1    # "horizontallyScrolling":Z
    .end local v2    # "availableWidth":I
    .end local v3    # "availableHeight":I
    .end local v5    # "optimalTextSize":F
    :cond_7
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 582
    goto/16 :goto_0

    .line 577
    .restart local v1    # "horizontallyScrolling":Z
    .restart local v2    # "availableWidth":I
    .restart local v3    # "availableHeight":I
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method getAutoSizeMaxTextSize()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0
.end method

.method isAutoSizeEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move/from16 v2, p2

    .local v2, "defStyleAttr":I
    const/high16 v9, -0x40800000    # -1.0f

    move v3, v9

    .line 106
    .local v3, "autoSizeMinTextSizeInPx":F
    const/high16 v9, -0x40800000    # -1.0f

    move v4, v9

    .line 107
    .local v4, "autoSizeMaxTextSizeInPx":F
    const/high16 v9, -0x40800000    # -1.0f

    move v5, v9

    .line 109
    .local v5, "autoSizeStepGranularityInPx":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    move-object v10, v1

    sget-object v11, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v6, v9

    .line 111
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 112
    move-object v9, v0

    move-object v10, v6

    sget v11, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 115
    :cond_0
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 116
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    move v5, v9

    .line 120
    :cond_1
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 121
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    move v3, v9

    .line 125
    :cond_2
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 126
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    move v4, v9

    .line 130
    :cond_3
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    move v7, v9

    .line 133
    .local v7, "autoSizeStepSizeArrayResId":I
    move v9, v7

    if-lez v9, :cond_4

    .line 134
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v7

    .line 135
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v8, v9

    .line 136
    .local v8, "autoSizePreDefTextSizes":Landroid/content/res/TypedArray;
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    .line 137
    move-object v9, v8

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    .end local v7    # "autoSizeStepSizeArrayResId":I
    .end local v8    # "autoSizePreDefTextSizes":Landroid/content/res/TypedArray;
    :cond_4
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 143
    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 147
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-nez v9, :cond_8

    .line 148
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    move-object v7, v9

    .line 151
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    move v9, v3

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    .line 152
    const/4 v9, 0x2

    const/high16 v10, 0x41400000    # 12.0f

    move-object v11, v7

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    move v3, v9

    .line 158
    :cond_5
    move v9, v4

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 159
    const/4 v9, 0x2

    const/high16 v10, 0x42e00000    # 112.0f

    move-object v11, v7

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    move v4, v9

    .line 165
    :cond_6
    move v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_7

    .line 167
    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v9

    .line 170
    :cond_7
    move-object v9, v0

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 175
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_8
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v9

    .line 180
    :cond_9
    :goto_0
    return-void

    .line 178
    :cond_a
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    goto :goto_0
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 13
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move v1, p1

    .local v1, "autoSizeMinTextSize":I
    move v2, p2

    .local v2, "autoSizeMaxTextSize":I
    move/from16 v3, p3

    .local v3, "autoSizeStepGranularity":I
    move/from16 v4, p4

    .local v4, "unit":I
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 266
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    move-object v5, v9

    .line 267
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    move v9, v4

    move v10, v1

    int-to-float v10, v10

    move-object v11, v5

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    move v6, v9

    .line 269
    .local v6, "autoSizeMinTextSizeInPx":F
    move v9, v4

    move v10, v2

    int-to-float v10, v10

    move-object v11, v5

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    move v7, v9

    .line 271
    .local v7, "autoSizeMaxTextSizeInPx":F
    move v9, v4

    move v10, v3

    int-to-float v10, v10

    move-object v11, v5

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    move v8, v9

    .line 274
    .local v8, "autoSizeStepGranularityInPx":F
    move-object v9, v0

    move v10, v6

    move v11, v7

    move v12, v8

    invoke-direct {v9, v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 277
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 278
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 281
    .end local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "autoSizeMinTextSizeInPx":F
    .end local v7    # "autoSizeMaxTextSizeInPx":F
    .end local v8    # "autoSizeStepGranularityInPx":F
    :cond_0
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 13
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move-object v1, p1

    .local v1, "presetSizes":[I
    move v2, p2

    .local v2, "unit":I
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 309
    move-object v7, v1

    array-length v7, v7

    move v3, v7

    .line 310
    .local v3, "presetSizesLength":I
    move v7, v3

    if-lez v7, :cond_4

    .line 311
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 313
    .local v4, "presetSizesInPx":[I
    move v7, v2

    if-nez v7, :cond_1

    .line 314
    move-object v7, v1

    move v8, v3

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    move-object v4, v7

    .line 325
    :cond_0
    move-object v7, v0

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 326
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v7

    if-nez v7, :cond_2

    .line 327
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "None of the preset sizes is valid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    .line 328
    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 316
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object v5, v7

    .line 319
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 320
    move-object v7, v4

    move v8, v6

    move v9, v2

    move-object v10, v1

    move v11, v6

    aget v10, v10, v11

    int-to-float v10, v10

    move-object v11, v5

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v7, v8

    .line 319
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 330
    .line 334
    .end local v4    # "presetSizesInPx":[I
    .end local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "i":I
    :cond_2
    :goto_1
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 338
    .end local v3    # "presetSizesLength":I
    :cond_3
    return-void

    .line 331
    .restart local v3    # "presetSizesLength":I
    :cond_4
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    goto :goto_1
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move v1, p1

    .local v1, "autoSizeTextType":I
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 224
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown auto-size text type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :pswitch_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->clearAutoSizeConfiguration()V

    .line 202
    .line 228
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v2, v5

    .line 206
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    move v3, v5

    .line 210
    .local v3, "autoSizeMinTextSizeInPx":F
    const/4 v5, 0x2

    const/high16 v6, 0x42e00000    # 112.0f

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    move v4, v5

    .line 215
    .local v4, "autoSizeMaxTextSizeInPx":F
    move-object v5, v0

    move v6, v3

    move v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 219
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setTextSizeInternal(IF)V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    move v1, p1

    .local v1, "unit":I
    move v2, p2

    .local v2, "size":F
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 597
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 598
    :goto_0
    move-object v3, v4

    .line 600
    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setRawTextSize(F)V

    .line 601
    return-void

    .line 597
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 598
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    goto :goto_0
.end method
