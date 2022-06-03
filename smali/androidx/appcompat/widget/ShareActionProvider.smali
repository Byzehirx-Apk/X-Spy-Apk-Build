.class public Landroidx/appcompat/widget/ShareActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;,
        Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 164
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 169
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 185
    move-object v2, v0

    const-string/jumbo v3, "share_history.xml"

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 198
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 199
    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 7

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v2, :cond_0

    .line 384
    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v2, :cond_1

    .line 387
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 389
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v2

    move-object v1, v2

    .line 390
    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;)V

    .line 391
    goto :goto_0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ShareActionProvider;
    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 9

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    new-instance v4, Landroidx/appcompat/widget/ActivityChooserView;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    move-object v1, v4

    .line 223
    .local v1, "activityChooserView":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActivityChooserView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v4

    move-object v2, v4

    .line 225
    .local v2, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActivityChooserView;->setActivityChooserModel(Landroidx/appcompat/widget/ActivityChooserModel;)V

    .line 229
    .end local v2    # "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_0
    new-instance v4, Landroid/util/TypedValue;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v4

    .line 230
    .local v2, "outTypedValue":Landroid/util/TypedValue;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$attr;->actionModeShareDrawable:I

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 231
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 232
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActivityChooserView;->setProvider(Landroidx/core/view/ActionProvider;)V

    .line 236
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 238
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 241
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ShareActionProvider;
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 15

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object/from16 v1, p1

    .local v1, "subMenu":Landroid/view/SubMenu;
    move-object v9, v1

    invoke-interface {v9}, Landroid/view/SubMenu;->clear()V

    .line 260
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v9

    move-object v2, v9

    .line 261
    .local v2, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v3, v9

    .line 263
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v9

    move v4, v9

    .line 264
    .local v4, "expandedActivityCount":I
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v5, v9

    .line 267
    .local v5, "collapsedActivityCount":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 268
    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-object v7, v9

    .line 269
    .local v7, "activity":Landroid/content/pm/ResolveInfo;
    move-object v9, v1

    const/4 v10, 0x0

    move v11, v6

    move v12, v6

    move-object v13, v7

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v7

    move-object v11, v3

    .line 270
    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 271
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 274
    .end local v7    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 276
    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v14, Landroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    .line 278
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 276
    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v9

    move-object v6, v9

    .line 279
    .local v6, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 280
    move-object v9, v2

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-object v8, v9

    .line 281
    .local v8, "activity":Landroid/content/pm/ResolveInfo;
    move-object v9, v6

    const/4 v10, 0x0

    move v11, v7

    move v12, v7

    move-object v13, v8

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v8

    move-object v11, v3

    .line 282
    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 283
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 286
    .end local v6    # "expandedSubMenu":Landroid/view/SubMenu;
    .end local v7    # "i":I
    .end local v8    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 213
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 214
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object v1, p1

    .local v1, "shareHistoryFile":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 322
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 323
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object v1, p1

    .local v1, "shareIntent":Landroid/content/Intent;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 343
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 344
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SEND"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.SEND_MULTIPLE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 348
    .end local v2    # "action":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    move-object v2, v3

    .line 350
    .local v2, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method updateIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 413
    move-object v2, v1

    const/high16 v3, 0x8080000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    move-object v2, v1

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method
