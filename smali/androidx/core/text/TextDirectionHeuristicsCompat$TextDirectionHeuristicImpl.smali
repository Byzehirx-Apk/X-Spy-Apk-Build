.class abstract Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method constructor <init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    move-object v1, p1

    .local v1, "algorithm":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 115
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    .line 116
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 146
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    :goto_0
    return v0

    .line 142
    .restart local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    :pswitch_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 144
    :pswitch_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .locals 9

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v1

    if-eqz v4, :cond_0

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, v3

    sub-int/2addr v4, v5

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 131
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 133
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    if-nez v4, :cond_2

    .line 134
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v4

    move v0, v4

    .line 136
    .end local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public isRtl([CII)Z
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    move-object v1, p1

    .local v1, "array":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    return v0
.end method
