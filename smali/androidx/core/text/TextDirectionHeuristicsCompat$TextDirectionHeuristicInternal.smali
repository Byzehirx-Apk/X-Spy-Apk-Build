.class Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method constructor <init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
    move-object v1, p1

    .local v1, "algorithm":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;
    move v2, p2

    .local v2, "defaultIsRtl":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    .line 157
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    .line 158
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
    return v0
.end method
