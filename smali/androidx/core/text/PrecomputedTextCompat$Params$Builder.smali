.class public Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/PrecomputedTextCompat$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 8
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    move-object v1, p1

    .local v1, "paint":Landroid/text/TextPaint;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 116
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 118
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 119
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    .line 123
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 124
    move-object v2, v0

    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 128
    :goto_1
    return-void

    .line 121
    :cond_0
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    iput v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    goto :goto_0

    .line 126
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method


# virtual methods
.method public build()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    new-instance v1, Landroidx/core/text/PrecomputedTextCompat$Params;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object v5, v0

    iget v5, v5, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    move-object v6, v0

    iget v6, v6, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    return-object v0
.end method

.method public setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    move v1, p1

    .local v1, "strategy":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 145
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    return-object v0
.end method

.method public setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    move v1, p1

    .local v1, "frequency":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    .line 163
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    return-object v0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 4
    .param p1    # Landroid/text/TextDirectionHeuristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    move-object v1, p1

    .local v1, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 181
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    return-object v0
.end method
