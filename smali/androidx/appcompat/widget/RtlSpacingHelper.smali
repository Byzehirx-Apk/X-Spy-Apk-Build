.class Landroidx/appcompat/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 29
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 30
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    .line 31
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    .line 32
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 33
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 35
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    return v0
.end method

.method public getStart()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_0
.end method

.method public setAbsolute(II)V
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "right":I
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 69
    move v3, v1

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v0

    move v5, v1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 70
    :cond_0
    move v3, v2

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    move-object v3, v0

    move-object v4, v0

    move v5, v2

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 71
    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move v1, p1

    .local v1, "isRtl":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne v2, v3, :cond_0

    .line 75
    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 78
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v2, :cond_6

    .line 79
    move v2, v1

    if-eqz v2, :cond_3

    .line 80
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    :goto_1
    iput v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 81
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    :goto_2
    iput v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 90
    :goto_3
    goto :goto_0

    .line 80
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_1

    .line 81
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_2

    .line 83
    :cond_3
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    :goto_4
    iput v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 84
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_5

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    :goto_5
    iput v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    goto :goto_3

    .line 83
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_4

    .line 84
    :cond_5
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_5

    .line 87
    :cond_6
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 88
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v3, v2, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    goto :goto_3
.end method

.method public setRelative(II)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/RtlSpacingHelper;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    .line 56
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    .line 57
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 58
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v3, :cond_2

    .line 59
    move v3, v2

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 60
    :cond_0
    move v3, v1

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    move v3, v1

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_3

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 63
    :cond_3
    move v3, v2

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method
