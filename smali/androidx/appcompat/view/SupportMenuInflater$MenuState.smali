.class Landroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroidx/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroidx/appcompat/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, p1

    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 336
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 337
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 349
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 351
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 352
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, p1

    .local v1, "shortcutString":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 458
    const/4 v2, 0x0

    move v0, v2

    .line 460
    .end local v0    # "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    move-object v2, p2

    .local v2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    .line 549
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v5, v6

    .line 550
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 551
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 555
    .end local v0    # "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v0

    .line 552
    .restart local v0    # "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 553
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SupportMenuInflater"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot instantiate class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 555
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 11

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 466
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 467
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    const/4 v6, 0x1

    .line 468
    :goto_0
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 469
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 470
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 472
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v5, :cond_0

    .line 473
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 476
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 477
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 478
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 481
    :cond_2
    move-object v5, v1

    new-instance v6, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 482
    invoke-virtual {v8}, Landroidx/appcompat/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 485
    :cond_3
    move-object v5, v1

    instance-of v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v5, :cond_a

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_1
    move-object v2, v5

    .line 486
    .local v2, "impl":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 487
    move-object v5, v1

    instance-of v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v5, :cond_b

    .line 488
    move-object v5, v1

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 494
    :cond_4
    :goto_2
    const/4 v5, 0x0

    move v3, v5

    .line 495
    .local v3, "actionViewSpecified":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 496
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v7, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v8, v8, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 498
    .local v4, "actionView":Landroid/view/View;
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v5

    .line 499
    const/4 v5, 0x1

    move v3, v5

    .line 501
    .end local v4    # "actionView":Landroid/view/View;
    :cond_5
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v5, :cond_6

    .line 502
    move v5, v3

    if-nez v5, :cond_c

    .line 503
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 504
    const/4 v5, 0x1

    move v3, v5

    .line 510
    :cond_6
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v5, :cond_7

    .line 511
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    invoke-static {v5, v6}, Landroidx/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;

    move-result-object v5

    .line 514
    :cond_7
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroidx/core/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 515
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroidx/core/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    move-object v5, v1

    move-object v6, v0

    iget-char v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {v5, v6, v7}, Landroidx/core/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 518
    move-object v5, v1

    move-object v6, v0

    iget-char v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {v5, v6, v7}, Landroidx/core/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 520
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v5, :cond_8

    .line 521
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroidx/core/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 523
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_9

    .line 524
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6}, Landroidx/core/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 526
    :cond_9
    return-void

    .line 485
    .end local v2    # "impl":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v3    # "actionViewSpecified":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 489
    .restart local v2    # "impl":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_b
    move-object v5, v1

    instance-of v5, v5, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    if-eqz v5, :cond_4

    .line 490
    move-object v5, v1

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto/16 :goto_2

    .line 506
    .restart local v3    # "actionViewSpecified":Z
    :cond_c
    const-string/jumbo v5, "SupportMenuInflater"

    const-string/jumbo v6, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_3
.end method


# virtual methods
.method public addItem()V
    .locals 7

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 530
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 531
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 535
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v1, v2

    .line 536
    .local v1, "subMenu":Landroid/view/SubMenu;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 537
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v3, v3, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    move-object v4, v1

    sget-object v5, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 369
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 370
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 372
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 373
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 375
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 376
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 378
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    move-object v7, v1

    sget-object v8, Landroidx/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 388
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 389
    move-object v6, v2

    sget v7, Landroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v3, v6

    .line 390
    .local v3, "category":I
    move-object v6, v2

    sget v7, Landroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v4, v6

    .line 391
    .local v4, "order":I
    move-object v6, v0

    move v7, v3

    const/high16 v8, -0x10000

    and-int/2addr v7, v8

    move v8, v4

    const v9, 0xffff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 393
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 394
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 395
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 396
    move-object v6, v0

    move-object v7, v0

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 397
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v7

    iput-char v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 398
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    const/16 v9, 0x1000

    .line 399
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 400
    move-object v6, v0

    move-object v7, v0

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 401
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v7

    iput-char v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 402
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    const/16 v9, 0x1000

    .line 403
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 404
    move-object v6, v2

    sget v7, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 406
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 412
    :goto_1
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 413
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 414
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 415
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 416
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 417
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 418
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 419
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 421
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 422
    .local v5, "hasActionProvider":Z
    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 423
    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v9, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v10, v10, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/view/ActionProvider;

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 434
    :goto_3
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 435
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 436
    move-object v6, v2

    sget v7, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 437
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 444
    :goto_4
    move-object v6, v2

    sget v7, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 445
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 451
    :goto_5
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 454
    return-void

    .line 406
    .end local v5    # "hasActionProvider":Z
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 410
    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto/16 :goto_1

    .line 421
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 427
    .restart local v5    # "hasActionProvider":Z
    :cond_3
    move v6, v5

    if-eqz v6, :cond_4

    .line 428
    const-string/jumbo v6, "SupportMenuInflater"

    const-string/jumbo v7, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 431
    :cond_4
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    goto :goto_3

    .line 442
    :cond_5
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_4

    .line 448
    :cond_6
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_5
.end method

.method public resetGroup()V
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportMenuInflater$MenuState;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 356
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 357
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 358
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 359
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 360
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 361
    return-void
.end method
