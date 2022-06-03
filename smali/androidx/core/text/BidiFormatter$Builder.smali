.class public final Landroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 140
    move-object v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v2

    invoke-direct {v1, v2}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 158
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v3

    invoke-direct {v2, v3}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move v1, p1

    .local v1, "rtlContext":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 149
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    .line 150
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;
    .locals 2

    .prologue
    .line 198
    move v0, p0

    .local v0, "isRtlContext":Z
    move v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    :goto_0
    move-object v0, v1

    .end local v0    # "isRtlContext":Z
    return-object v0

    .restart local v0    # "isRtlContext":Z
    :cond_0
    sget-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    goto :goto_0
.end method

.method private initialize(Z)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move v1, p1

    .local v1, "isRtlContext":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 168
    move-object v2, v0

    sget-object v3, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    iput-object v3, v2, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 169
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    .line 170
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/text/BidiFormatter;
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move-object v1, v0

    iget v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    sget-object v2, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    if-ne v1, v2, :cond_0

    .line 207
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v1}, Landroidx/core/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;

    move-result-object v1

    move-object v0, v1

    .line 209
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$Builder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$Builder;
    :cond_0
    new-instance v1, Landroidx/core/text/BidiFormatter;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setTextDirectionHeuristic(Landroidx/core/text/TextDirectionHeuristicCompat;)Landroidx/core/text/BidiFormatter$Builder;
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move-object v1, p1

    .local v1, "heuristic":Landroidx/core/text/TextDirectionHeuristicCompat;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 194
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/BidiFormatter$Builder;
    return-object v0
.end method

.method public stereoReset(Z)Landroidx/core/text/BidiFormatter$Builder;
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$Builder;
    move v1, p1

    .local v1, "stereoReset":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 178
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    .line 182
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/BidiFormatter$Builder;
    return-object v0

    .line 180
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$Builder;
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_0
.end method
