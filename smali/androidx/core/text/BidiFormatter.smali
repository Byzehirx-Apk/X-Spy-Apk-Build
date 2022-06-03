.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/BidiFormatter$DirectionalityEstimator;,
        Landroidx/core/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 85
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 115
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 120
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 217
    new-instance v0, Landroidx/core/text/BidiFormatter;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v4, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v1, v2, v3, v4}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 222
    new-instance v0, Landroidx/core/text/BidiFormatter;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    const/4 v3, 0x2

    sget-object v4, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v1, v2, v3, v4}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    return-void
.end method

.method constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move v1, p1

    .local v1, "isRtlContext":Z
    move v2, p2

    .local v2, "flags":I
    move-object v3, p3

    .local v3, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 263
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 264
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/core/text/BidiFormatter;->mFlags:I

    .line 265
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 266
    return-void
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .locals 6

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    new-instance v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v1

    move v0, v1

    .end local v0    # "str":Ljava/lang/CharSequence;
    return v0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .locals 6

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    new-instance v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v1

    move v0, v1

    .end local v0    # "str":Ljava/lang/CharSequence;
    return v0
.end method

.method public static getInstance()Landroidx/core/text/BidiFormatter;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroidx/core/text/BidiFormatter;
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Landroidx/core/text/BidiFormatter$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "locale":Ljava/util/Locale;
    return-object v0
.end method

.method public static getInstance(Z)Landroidx/core/text/BidiFormatter;
    .locals 5

    .prologue
    .line 245
    move v0, p0

    .local v0, "rtlContext":Z
    new-instance v1, Landroidx/core/text/BidiFormatter$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v1}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "rtlContext":Z
    return-object v0
.end method

.method static isRtlLocale(Ljava/util/Locale;)Z
    .locals 3

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "locale":Ljava/util/Locale;
    return v0

    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private markAfter(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v4

    move v3, v4

    .line 302
    .local v3, "isRtl":Z
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 303
    :cond_0
    sget-object v4, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    move-object v0, v4

    .line 308
    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    :goto_0
    return-object v0

    .line 305
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter;
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v4, :cond_3

    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 306
    :cond_2
    sget-object v4, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 308
    :cond_3
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method private markBefore(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v4

    move v3, v4

    .line 330
    .local v3, "isRtl":Z
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 331
    :cond_0
    sget-object v4, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    move-object v0, v4

    .line 336
    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    :goto_0
    return-object v0

    .line 333
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter;
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v4, :cond_3

    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 334
    :cond_2
    sget-object v4, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 336
    :cond_3
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, v0

    iget v1, v1, Landroidx/core/text/BidiFormatter;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return v0

    .restart local v0    # "this":Landroidx/core/text/BidiFormatter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return v0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return v0
.end method

.method public isRtlContext()Z
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move v3, p3

    .local v3, "isolate":Z
    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 429
    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    :goto_0
    return-object v0

    .line 412
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter;
    :cond_0
    move-object v6, v2

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v6

    move v4, v6

    .line 413
    .local v4, "isRtl":Z
    new-instance v6, Landroid/text/SpannableStringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v5, v6

    .line 414
    .local v5, "result":Landroid/text/SpannableStringBuilder;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/text/BidiFormatter;->getStereoReset()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_1

    .line 415
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    if-eqz v9, :cond_3

    sget-object v9, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-direct {v7, v8, v9}, Landroidx/core/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 418
    :cond_1
    move v6, v4

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v6, v7, :cond_5

    .line 419
    move-object v6, v5

    move v7, v4

    if-eqz v7, :cond_4

    const/16 v7, 0x202b

    :goto_2
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 420
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 421
    move-object v6, v5

    const/16 v7, 0x202c

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 425
    :goto_3
    move v6, v3

    if-eqz v6, :cond_2

    .line 426
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    if-eqz v9, :cond_6

    sget-object v9, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_4
    invoke-direct {v7, v8, v9}, Landroidx/core/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 429
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 415
    :cond_3
    sget-object v9, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    .line 419
    :cond_4
    const/16 v7, 0x202a

    goto :goto_2

    .line 423
    :cond_5
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    goto :goto_3

    .line 426
    :cond_6
    sget-object v9, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_4
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "isolate":Z
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move v3, p3

    .local v3, "isolate":Z
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 392
    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/text/BidiFormatter;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "isolate":Z
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/text/BidiFormatter;
    return-object v0
.end method
