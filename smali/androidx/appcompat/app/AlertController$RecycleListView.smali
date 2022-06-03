.class public Landroidx/appcompat/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$RecycleListView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 841
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$RecycleListView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 846
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/appcompat/R$styleable;->RecycleListView:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 848
    .local v3, "ta":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->RecycleListView_paddingBottomNoButtons:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 850
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->RecycleListView_paddingTopNoTitle:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 852
    return-void
.end method


# virtual methods
.method public setHasDecor(ZZ)V
    .locals 12

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$RecycleListView;
    move v1, p1

    .local v1, "hasTitle":Z
    move v2, p2

    .local v2, "hasButtons":Z
    move v7, v2

    if-eqz v7, :cond_0

    move v7, v1

    if-nez v7, :cond_1

    .line 856
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v7

    move v3, v7

    .line 857
    .local v3, "paddingLeft":I
    move v7, v1

    if-eqz v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v7

    :goto_0
    move v4, v7

    .line 858
    .local v4, "paddingTop":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v7

    move v5, v7

    .line 859
    .local v5, "paddingRight":I
    move v7, v2

    if-eqz v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v7

    :goto_1
    move v6, v7

    .line 860
    .local v6, "paddingBottom":I
    move-object v7, v0

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/appcompat/app/AlertController$RecycleListView;->setPadding(IIII)V

    .line 862
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingRight":I
    .end local v6    # "paddingBottom":I
    :cond_1
    return-void

    .line 857
    .restart local v3    # "paddingLeft":I
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    goto :goto_0

    .line 859
    .restart local v4    # "paddingTop":I
    .restart local v5    # "paddingRight":I
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    goto :goto_1
.end method
