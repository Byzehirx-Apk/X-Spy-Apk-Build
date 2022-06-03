.class public Landroidx/appcompat/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuHelper;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Landroidx/appcompat/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, p3

    .local v3, "anchorView":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    sget v9, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object/from16 v3, p3

    .local v3, "anchorView":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "overflowOnly":Z
    move/from16 v5, p5

    .local v5, "popupStyleAttr":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, p3

    .local v3, "anchorView":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "overflowOnly":Z
    move/from16 v5, p5

    .local v5, "popupStyleAttr":I
    move/from16 v6, p6

    .local v6, "popupStyleRes":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v7, v0

    const v8, 0x800003

    iput v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 334
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/view/menu/MenuPopupHelper$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/view/menu/MenuPopupHelper$1;-><init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 85
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 86
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 87
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 88
    move-object v7, v0

    move v8, v4

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 89
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 90
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 91
    return-void
.end method

.method private createPopup()Landroidx/appcompat/view/menu/MenuPopup;
    .locals 17
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 224
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    move-object v1, v8

    .line 226
    .local v1, "windowManager":Landroid/view/WindowManager;
    move-object v8, v1

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    move-object v2, v8

    .line 227
    .local v2, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    move-object v3, v8

    .line 229
    .local v3, "displaySize":Landroid/graphics/Point;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_0

    .line 230
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 235
    :goto_0
    move-object v8, v3

    iget v8, v8, Landroid/graphics/Point;->x:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v4, v8

    .line 236
    .local v4, "smallestWidth":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v5, v8

    .line 238
    .local v5, "minSmallestWidthCascading":I
    move v8, v4

    move v9, v5

    if-lt v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v6, v8

    .line 241
    .local v6, "enableCascadingSubmenus":Z
    move v8, v6

    if-eqz v8, :cond_2

    .line 242
    new-instance v8, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object v12, v0

    iget v12, v12, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    move-object v14, v0

    iget-boolean v14, v14, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v9 .. v14}, Landroidx/appcompat/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    move-object v7, v8

    .line 250
    .local v7, "popup":Landroidx/appcompat/view/menu/MenuPopup;
    :goto_2
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 251
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 254
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 255
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuPopup;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 256
    move-object v8, v7

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 257
    move-object v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuPopup;->setGravity(I)V

    .line 259
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    return-object v0

    .line 232
    .end local v4    # "smallestWidth":I
    .end local v5    # "minSmallestWidthCascading":I
    .end local v6    # "enableCascadingSubmenus":Z
    .end local v7    # "popup":Landroidx/appcompat/view/menu/MenuPopup;
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :cond_0
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 238
    .restart local v4    # "smallestWidth":I
    .restart local v5    # "minSmallestWidthCascading":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 245
    .restart local v6    # "enableCascadingSubmenus":Z
    :cond_2
    new-instance v8, Landroidx/appcompat/view/menu/StandardMenuPopup;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    move-object v14, v0

    iget v14, v14, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    move-object v15, v0

    iget-boolean v15, v15, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v9 .. v15}, Landroidx/appcompat/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    move-object v7, v8

    .restart local v7    # "popup":Landroidx/appcompat/view/menu/MenuPopup;
    goto :goto_2
.end method

.method private showPopup(IIZZ)V
    .locals 18

    .prologue
    .line 263
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move/from16 v1, p1

    .local v1, "xOffset":I
    move/from16 v2, p2

    .local v2, "yOffset":I
    move/from16 v3, p3

    .local v3, "useOffsets":Z
    move/from16 v4, p4

    .local v4, "showTitle":Z
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v10

    move-object v5, v10

    .line 264
    .local v5, "popup":Landroidx/appcompat/view/menu/MenuPopup;
    move-object v10, v5

    move v11, v4

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 266
    move v10, v3

    if-eqz v10, :cond_1

    .line 270
    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 271
    invoke-static {v11}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    .line 270
    invoke-static {v10, v11}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v10

    const/4 v11, 0x7

    and-int/lit8 v10, v10, 0x7

    move v6, v10

    .line 272
    .local v6, "hgrav":I
    move v10, v6

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 273
    move v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    move v1, v10

    .line 276
    :cond_0
    move-object v10, v5

    move v11, v1

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 277
    move-object v10, v5

    move v11, v2

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 283
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    move v7, v10

    .line 284
    .local v7, "density":F
    const/high16 v10, 0x42400000    # 48.0f

    move v11, v7

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 285
    .local v8, "halfSize":I
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v2

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v1

    move v15, v8

    add-int/2addr v14, v15

    move v15, v2

    move/from16 v16, v8

    add-int v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v10

    .line 287
    .local v9, "epicenter":Landroid/graphics/Rect;
    move-object v10, v5

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 290
    .end local v6    # "hgrav":I
    .end local v7    # "density":F
    .end local v8    # "halfSize":I
    .end local v9    # "epicenter":Landroid/graphics/Rect;
    :cond_1
    move-object v10, v5

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuPopup;->show()V

    .line 291
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopup;->dismiss()V

    .line 301
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    return-object v0
.end method

.method public getPopup()Landroidx/appcompat/view/menu/MenuPopup;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->createPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 159
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 314
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_0

    .line 315
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 317
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 106
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move v1, p1

    .local v1, "forceShowIcon":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 119
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-eqz v2, :cond_0

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 133
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/PopupWindow$OnDismissListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 95
    return-void
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4
    .param p1    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 326
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-eqz v2, :cond_0

    .line 327
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuPopup;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 329
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    move v0, v1

    .line 178
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :goto_0
    return v0

    .line 173
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 174
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 177
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 178
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public tryShow(II)Z
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const/4 v3, 0x1

    move v0, v3

    .line 214
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :goto_0
    return v0

    .line 209
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuPopupHelper;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 210
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 213
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 214
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method
