.class Landroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

.field final mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 132
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 133
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 134
    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 18

    .prologue
    .line 217
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    move/from16 v1, p1

    .local v1, "fromIndex":I
    move/from16 v2, p2

    .local v2, "toIndex":I
    move/from16 v3, p3

    .local v3, "preferredBoundFlags":I
    move/from16 v4, p4

    .local v4, "acceptableBoundFlags":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v13}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v13

    move v5, v13

    .line 218
    .local v5, "start":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v13}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v13

    move v6, v13

    .line 219
    .local v6, "end":I
    move v13, v2

    move v14, v1

    if-le v13, v14, :cond_0

    const/4 v13, 0x1

    :goto_0
    move v7, v13

    .line 220
    .local v7, "next":I
    const/4 v13, 0x0

    move-object v8, v13

    .line 221
    .local v8, "acceptableMatch":Landroid/view/View;
    move v13, v1

    move v9, v13

    .local v9, "i":I
    :goto_1
    move v13, v9

    move v14, v2

    if-eq v13, v14, :cond_3

    .line 222
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    move v14, v9

    invoke-interface {v13, v14}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 223
    .local v10, "child":Landroid/view/View;
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    move-object v14, v10

    invoke-interface {v13, v14}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v13

    move v11, v13

    .line 224
    .local v11, "childStart":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    move-object v14, v10

    invoke-interface {v13, v14}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v13

    move v12, v13

    .line 225
    .local v12, "childEnd":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    move v14, v5

    move v15, v6

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v17}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 226
    move v13, v3

    if-eqz v13, :cond_1

    .line 227
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 228
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    move v14, v3

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 229
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 231
    move-object v13, v10

    move-object v0, v13

    .line 242
    .end local v0    # "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childStart":I
    .end local v12    # "childEnd":I
    :goto_2
    return-object v0

    .line 219
    .end local v7    # "next":I
    .end local v8    # "acceptableMatch":Landroid/view/View;
    .end local v9    # "i":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    :cond_0
    const/4 v13, -0x1

    goto :goto_0

    .line 234
    .restart local v7    # "next":I
    .restart local v8    # "acceptableMatch":Landroid/view/View;
    .restart local v9    # "i":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childStart":I
    .restart local v12    # "childEnd":I
    :cond_1
    move v13, v4

    if-eqz v13, :cond_2

    .line 235
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 236
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    move v14, v4

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 237
    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 238
    move-object v13, v10

    move-object v8, v13

    .line 221
    :cond_2
    move v13, v9

    move v14, v7

    add-int/2addr v13, v14

    move v9, v13

    goto :goto_1

    .line 242
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childStart":I
    .end local v12    # "childEnd":I
    :cond_3
    move-object v13, v8

    move-object v0, v13

    goto :goto_2
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "boundsFlags":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    move-object v7, v1

    .line 253
    invoke-interface {v6, v7}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v7

    .line 252
    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 254
    move v3, v2

    if-eqz v3, :cond_0

    .line 255
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 256
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 257
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v3

    move v0, v3

    .line 259
    .end local v0    # "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ViewBoundsCheck;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
