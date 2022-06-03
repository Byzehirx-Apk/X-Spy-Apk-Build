.class Landroidx/core/widget/TextViewCompat$OreoCallback;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OreoCallback"
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    move-object v2, p2

    .local v2, "textView":Landroid/widget/TextView;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 548
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    .line 549
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    .line 550
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    .line 551
    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    new-instance v1, Landroid/content/Intent;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "info":Landroid/content/pm/ResolveInfo;
    move-object v2, p2

    .local v2, "textView11":Landroid/widget/TextView;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.PROCESS_TEXT_READONLY"

    move-object v5, v0

    move-object v6, v2

    .line 658
    invoke-direct {v5, v6}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isEditable(Landroid/widget/TextView;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 659
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    return-object v0

    .line 658
    .restart local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 629
    .local v3, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v8, v1

    instance-of v8, v8, Landroid/app/Activity;

    move v4, v8

    .line 630
    .local v4, "canStartActivityForResult":Z
    move v8, v4

    if-nez v8, :cond_0

    .line 631
    move-object v8, v3

    move-object v0, v8

    .line 640
    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    :goto_0
    return-object v0

    .line 633
    .restart local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    :cond_0
    move-object v8, v2

    move-object v9, v0

    .line 634
    invoke-direct {v9}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 635
    .local v5, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    move-object v7, v8

    .line 636
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 637
    move-object v8, v3

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 639
    :cond_1
    goto :goto_1

    .line 640
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object v8, v3

    move-object v0, v8

    goto :goto_0
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .locals 3

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "textView11":Landroid/widget/TextView;
    move-object v2, v1

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 664
    invoke-virtual {v2}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 665
    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    return v0

    .restart local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "info":Landroid/content/pm/ResolveInfo;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    const/4 v3, 0x1

    move v0, v3

    .line 651
    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    :goto_0
    return v0

    .line 647
    .restart local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_1

    .line 648
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 650
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 651
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .locals 15

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object/from16 v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v2, v7

    .line 576
    .local v2, "context":Landroid/content/Context;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v3, v7

    .line 578
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    if-nez v7, :cond_0

    .line 579
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    .line 581
    move-object v7, v0

    :try_start_0
    const-string/jumbo v8, "com.android.internal.view.menu.MenuBuilder"

    .line 582
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 583
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    const-string/jumbo v9, "removeItemAt"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    .line 584
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 585
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 590
    .line 594
    :cond_0
    :goto_0
    move-object v7, v0

    :try_start_1
    iget-boolean v7, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    move-object v8, v1

    .line 595
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 598
    :goto_1
    move-object v4, v7

    .line 599
    .local v4, "removeItemAtMethod":Ljava/lang/reflect/Method;
    move-object v7, v1

    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    if-ltz v7, :cond_3

    .line 600
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    move-object v6, v7

    .line 601
    .local v6, "item":Landroid/view/MenuItem;
    move-object v7, v6

    invoke-interface {v7}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "android.intent.action.PROCESS_TEXT"

    move-object v8, v6

    .line 602
    invoke-interface {v8}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    move-object v7, v4

    move-object v8, v1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    .line 599
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 586
    .end local v4    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    .end local v5    # "i":I
    .end local v6    # "item":Landroid/view/MenuItem;
    :catch_0
    move-exception v7

    :goto_3
    move-object v4, v7

    .line 587
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 588
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 589
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    goto :goto_0

    .line 595
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    move-object v7, v1

    .line 597
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "removeItemAt"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 598
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v7

    goto :goto_1

    .line 611
    .line 614
    .local v4, "removeItemAtMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "i":I
    :cond_3
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    .line 615
    invoke-direct {v7, v8, v9}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 616
    .local v4, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    move v5, v7

    :goto_4
    move v7, v5

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 617
    move-object v7, v4

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v6, v7

    .line 618
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x64

    move v11, v5

    add-int/2addr v10, v11

    move-object v11, v6

    move-object v12, v3

    .line 620
    invoke-virtual {v11, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 618
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    move-object v8, v0

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    .line 621
    invoke-direct {v8, v9, v10}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v8, 0x1

    .line 622
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 616
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 606
    .end local v4    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v7

    :goto_5
    move-object v4, v7

    .line 624
    :goto_6
    return-void

    .restart local v4    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "i":I
    :cond_4
    goto :goto_6

    .line 586
    .end local v4    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "i":I
    :catch_2
    move-exception v7

    goto :goto_3

    .line 606
    :catch_3
    move-exception v7

    goto :goto_5

    :catch_4
    move-exception v7

    goto :goto_5
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "mode":Landroid/view/ActionMode;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "mode":Landroid/view/ActionMode;
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "mode":Landroid/view/ActionMode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 572
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    move-object v1, p1

    .local v1, "mode":Landroid/view/ActionMode;
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/core/widget/TextViewCompat$OreoCallback;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    .line 561
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/TextViewCompat$OreoCallback;
    return v0
.end method
