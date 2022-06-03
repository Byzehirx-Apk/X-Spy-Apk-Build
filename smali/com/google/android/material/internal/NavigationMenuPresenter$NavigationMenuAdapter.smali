.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 6

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 371
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 376
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 377
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 7

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move v1, p1

    .local v1, "startIndex":I
    move v2, p2

    .local v2, "endIndex":I
    move v5, v1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 552
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 553
    .local v4, "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 551
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    .end local v4    # "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_0
    return-void
.end method

.method private prepareMenuItems()V
    .locals 20

    .prologue
    .line 482
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v14, v1

    iget-boolean v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    if-eqz v14, :cond_0

    .line 483
    .line 548
    :goto_0
    return-void

    .line 485
    :cond_0
    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 486
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 487
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v15, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 489
    const/4 v14, -0x1

    move v2, v14

    .line 490
    .local v2, "currentGroupId":I
    const/4 v14, 0x0

    move v3, v14

    .line 491
    .local v3, "currentGroupStart":I
    const/4 v14, 0x0

    move v4, v14

    .line 492
    .local v4, "currentGroupHasIcon":Z
    const/4 v14, 0x0

    move v5, v14

    .local v5, "i":I
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v6, v14

    .local v6, "totalSize":I
    :goto_1
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_e

    .line 493
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    move v15, v5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v7, v14

    .line 494
    .local v7, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 495
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 497
    :cond_1
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 498
    move-object v14, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 500
    :cond_2
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 501
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    move-object v8, v14

    .line 502
    .local v8, "subMenu":Landroid/view/SubMenu;
    move-object v14, v8

    invoke-interface {v14}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 503
    move v14, v5

    if-eqz v14, :cond_3

    .line 504
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v15, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 506
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v15, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v17}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 507
    const/4 v14, 0x0

    move v9, v14

    .line 508
    .local v9, "subMenuHasIcon":Z
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v10, v14

    .line 509
    .local v10, "subMenuStart":I
    const/4 v14, 0x0

    move v11, v14

    .local v11, "j":I
    move-object v14, v8

    invoke-interface {v14}, Landroid/view/SubMenu;->size()I

    move-result v14

    move v12, v14

    .local v12, "size":I
    :goto_2
    move v14, v11

    move v15, v12

    if-ge v14, v15, :cond_8

    .line 510
    move-object v14, v8

    move v15, v11

    invoke-interface {v14, v15}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v13, v14

    .line 511
    .local v13, "subMenuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v14, v13

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 512
    move v14, v9

    if-nez v14, :cond_4

    move-object v14, v13

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 513
    const/4 v14, 0x1

    move v9, v14

    .line 515
    :cond_4
    move-object v14, v13

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 516
    move-object v14, v13

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 518
    :cond_5
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 519
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 521
    :cond_6
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v15, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v13

    invoke-direct/range {v16 .. v17}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 509
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 524
    .end local v13    # "subMenuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_8
    move v14, v9

    if-eqz v14, :cond_9

    .line 525
    move-object v14, v1

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 528
    .line 492
    .end local v8    # "subMenu":Landroid/view/SubMenu;
    .end local v9    # "subMenuHasIcon":Z
    .end local v10    # "subMenuStart":I
    .end local v11    # "j":I
    .end local v12    # "size":I
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 529
    :cond_a
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v14

    move v8, v14

    .line 530
    .local v8, "groupId":I
    move v14, v8

    move v15, v2

    if-eq v14, v15, :cond_d

    .line 531
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v3, v14

    .line 532
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    :goto_4
    move v4, v14

    .line 533
    move v14, v5

    if-eqz v14, :cond_b

    .line 534
    add-int/lit8 v3, v3, 0x1

    .line 535
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v15, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 541
    :cond_b
    :goto_5
    new-instance v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    move-object v9, v14

    .line 542
    .local v9, "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    move-object v14, v9

    move v15, v4

    iput-boolean v15, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 543
    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 544
    move v14, v8

    move v2, v14

    goto :goto_3

    .line 532
    .end local v9    # "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    .line 537
    :cond_d
    move v14, v4

    if-nez v14, :cond_b

    move-object v14, v7

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 538
    const/4 v14, 0x1

    move v4, v14

    .line 539
    move-object v14, v1

    move v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_5

    .line 547
    .end local v7    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v8    # "groupId":I
    :cond_e
    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 548
    goto/16 :goto_0
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 13

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    new-instance v9, Landroid/os/Bundle;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v1, v9

    .line 574
    .local v1, "state":Landroid/os/Bundle;
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v9, :cond_0

    .line 575
    move-object v9, v1

    const-string/jumbo v10, "android:menu:checked"

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :cond_0
    new-instance v9, Landroid/util/SparseArray;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v9

    .line 579
    .local v2, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v4, v9

    .local v4, "size":I
    :goto_0
    move v9, v3

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 580
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v5, v9

    .line 581
    .local v5, "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    move-object v9, v5

    instance-of v9, v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v9, :cond_1

    .line 582
    move-object v9, v5

    check-cast v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v9}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v9

    move-object v6, v9

    .line 583
    .local v6, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v9, v6

    if-eqz v9, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v9

    :goto_1
    move-object v7, v9

    .line 584
    .local v7, "actionView":Landroid/view/View;
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 585
    new-instance v9, Lcom/google/android/material/internal/ParcelableSparseArray;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    move-object v8, v9

    .line 586
    .local v8, "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 587
    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    .end local v6    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v7    # "actionView":Landroid/view/View;
    .end local v8    # "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    .restart local v6    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 591
    .end local v5    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    .end local v6    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_3
    move-object v9, v1

    const-string/jumbo v10, "android:menu:action_views"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 592
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    return-object v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 8

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v2, v4

    .line 392
    .local v2, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    move-object v4, v2

    instance-of v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v4, :cond_0

    .line 393
    const/4 v4, 0x2

    move v0, v4

    .line 401
    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    :goto_0
    return v0

    .line 394
    .restart local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v4, :cond_1

    .line 395
    const/4 v4, 0x3

    move v0, v4

    goto :goto_0

    .line 396
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v4, :cond_3

    .line 397
    move-object v4, v2

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v3, v4

    .line 398
    .local v3, "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 401
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 404
    .end local v3    # "textItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Unknown item type."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 10

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    .local v1, "holder":Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    move v2, p2

    .local v2, "position":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 427
    :pswitch_0
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuItemView;

    move-object v3, v5

    .line 428
    .local v3, "itemView":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-boolean v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    if-eqz v5, :cond_0

    .line 430
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 432
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    .line 433
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 435
    :cond_1
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 435
    :goto_1
    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 438
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 439
    .local v4, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    move-object v5, v3

    move-object v6, v4

    iget-boolean v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 440
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 441
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v6, v6, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 442
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 443
    goto :goto_0

    .line 437
    .end local v4    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 447
    .end local v3    # "itemView":Lcom/google/android/material/internal/NavigationMenuItemView;
    :pswitch_1
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    move-object v3, v5

    .line 448
    .local v3, "subHeader":Landroid/widget/TextView;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 449
    .restart local v4    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    goto/16 :goto_0

    .line 454
    .end local v3    # "subHeader":Landroid/widget/TextView;
    .end local v4    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object v3, v5

    .line 455
    .local v3, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 456
    goto/16 :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    .locals 9

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "viewType":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 419
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    :goto_0
    return-object v0

    .line 411
    .restart local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    :pswitch_0
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v7, v7, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    goto :goto_0

    .line 413
    :pswitch_1
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 415
    :pswitch_2
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 417
    :pswitch_3
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v3

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 3

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    .local v1, "holder":Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v2, :cond_0

    .line 468
    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    .line 470
    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    .local v1, "state":Landroid/os/Bundle;
    move-object v10, v1

    const-string/jumbo v11, "android:menu:checked"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    move v2, v10

    .line 597
    .local v2, "checkedItem":I
    move v10, v2

    if-eqz v10, :cond_1

    .line 598
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 599
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v4, v10

    .local v4, "size":I
    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_0

    .line 600
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v5, v10

    .line 601
    .local v5, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    move-object v10, v5

    instance-of v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v10, :cond_2

    .line 602
    move-object v10, v5

    check-cast v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v10

    move-object v6, v10

    .line 603
    .local v6, "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v10, v6

    if-eqz v10, :cond_2

    move-object v10, v6

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    move v11, v2

    if-ne v10, v11, :cond_2

    .line 604
    move-object v10, v0

    move-object v11, v6

    invoke-virtual {v10, v11}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 605
    .line 609
    .end local v5    # "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    .end local v6    # "menuItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 610
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 613
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_1
    move-object v10, v1

    const-string/jumbo v11, "android:menu:action_views"

    .line 614
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    move-object v3, v10

    .line 615
    .local v3, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    move-object v10, v3

    if-eqz v10, :cond_7

    .line 616
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v10

    .local v5, "size":I
    :goto_1
    move v10, v4

    move v11, v5

    if-ge v10, v11, :cond_7

    .line 617
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v6, v10

    .line 618
    .local v6, "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    move-object v10, v6

    instance-of v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v10, :cond_3

    .line 619
    .line 616
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    .end local v6    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    .local v3, "i":I
    .local v4, "size":I
    .local v5, "item":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 621
    .local v3, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/internal/ParcelableSparseArray;>;"
    .local v4, "i":I
    .local v5, "size":I
    .restart local v6    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    :cond_3
    move-object v10, v6

    check-cast v10, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v10

    move-object v7, v10

    .line 622
    .local v7, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v10, v7

    if-nez v10, :cond_4

    .line 623
    goto :goto_2

    .line 625
    :cond_4
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 626
    .local v8, "actionView":Landroid/view/View;
    move-object v10, v8

    if-nez v10, :cond_5

    .line 627
    goto :goto_2

    .line 629
    :cond_5
    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/internal/ParcelableSparseArray;

    move-object v9, v10

    .line 630
    .local v9, "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    move-object v10, v9

    if-nez v10, :cond_6

    .line 631
    goto :goto_2

    .line 633
    :cond_6
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_2

    .line 636
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "navigationMenuItem":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;
    .end local v7    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v8    # "actionView":Landroid/view/View;
    .end local v9    # "container":Lcom/google/android/material/internal/ParcelableSparseArray;
    :cond_7
    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, p1

    .local v1, "checkedItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    .line 566
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_2

    .line 562
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 564
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 565
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 566
    goto :goto_0
.end method

.method public setUpdateSuspended(Z)V
    .locals 4

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move v1, p1

    .local v1, "updateSuspended":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 640
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 474
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 475
    return-void
.end method
