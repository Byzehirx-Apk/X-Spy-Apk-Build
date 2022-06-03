.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 116
    move-object v2, v0

    const/16 v3, 0x8

    invoke-super {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    move-object v3, v0

    const/16 v4, 0x8

    invoke-super {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    move-object v4, v0

    const/16 v5, 0x8

    invoke-super {v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Barrier;
    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Barrier;
    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 182
    move-object v6, v0

    new-instance v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    iput-object v7, v6, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 183
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 184
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 185
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v6

    .line 186
    .local v3, "N":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 187
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move v5, v6

    .line 188
    .local v5, "attr":I
    move v6, v5

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v6, v7, :cond_1

    .line 189
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 186
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_1
    move v6, v5

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v6, v7, :cond_0

    .line 191
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_1

    .line 195
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "attr":I
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    iput-object v7, v6, Landroidx/constraintlayout/widget/Barrier;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    .line 196
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    .line 197
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move v1, p1

    .local v1, "supportGone":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 201
    return-void
.end method

.method public setType(I)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Barrier;
    move v1, p1

    .local v1, "type":I
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    .line 145
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 146
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_2

    .line 149
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 150
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 172
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Barrier;->setBarrierType(I)V

    .line 173
    return-void

    .line 151
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 152
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 156
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object v2, v4

    .line 157
    .local v2, "config":Landroid/content/res/Configuration;
    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 158
    .local v3, "isRtl":Z
    move v4, v3

    if-eqz v4, :cond_5

    .line 159
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 160
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 157
    .end local v3    # "isRtl":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 161
    .restart local v3    # "isRtl":Z
    :cond_4
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 162
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 165
    :cond_5
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 166
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 167
    :cond_6
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 168
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0
.end method
