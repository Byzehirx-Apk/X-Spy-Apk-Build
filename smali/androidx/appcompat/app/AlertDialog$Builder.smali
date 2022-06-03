.class public Landroidx/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Landroidx/appcompat/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "themeResId":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 343
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v1

    move v10, v2

    .line 344
    invoke-static {v9, v10}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 345
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    .line 346
    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 7

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    new-instance v2, Landroidx/appcompat/app/AlertDialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 982
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController$AlertParams;->apply(Landroidx/appcompat/app/AlertController;)V

    .line 983
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-boolean v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 984
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-boolean v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v2, :cond_0

    .line 985
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 987
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 988
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 989
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v2, :cond_1

    .line 990
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 992
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 660
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 661
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "cancelable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 580
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, p3

    .local v3, "labelColumn":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 679
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 680
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 681
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "customTitleView":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 399
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "iconId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 431
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 446
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "attrId":I
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 460
    .local v2, "out":Landroid/util/TypedValue;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 461
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    iput v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 462
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "useInverseBackground":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 957
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "itemsId":I
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 632
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 633
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "items":[Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 644
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 645
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "messageId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 409
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "message":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 419
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "itemsId":I
    move-object v2, p2

    .local v2, "checkedItems":[Z
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 705
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 706
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 707
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 708
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 7

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, p2

    .local v2, "isCheckedColumn":Ljava/lang/String;
    move-object v3, p3

    .local v3, "labelColumn":Ljava/lang/String;
    move-object v4, p4

    .local v4, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 759
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 760
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 761
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 762
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 763
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "items":[Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "checkedItems":[Z
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 731
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 732
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 733
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 734
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "textId":I
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 510
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 511
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 523
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 524
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 534
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "textId":I
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 546
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 547
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 559
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 560
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 570
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 601
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 611
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 869
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "onKeyListener":Landroid/content/DialogInterface$OnKeyListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 621
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "textId":I
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 474
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 475
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 487
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 488
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 498
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 965
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 966
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "itemsId":I
    move v2, p2

    .local v2, "checkedItem":I
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 784
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 785
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v5, v2

    iput v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 786
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 787
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 7

    .prologue
    .line 808
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move v2, p2

    .local v2, "checkedItem":I
    move-object v3, p3

    .local v3, "labelColumn":Ljava/lang/String;
    move-object v4, p4

    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 809
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 810
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v6, v2

    iput v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 811
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 812
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 813
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    move v2, p2

    .local v2, "checkedItem":I
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 854
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 855
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v5, v2

    iput v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 856
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 857
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "items":[Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "checkedItem":I
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 832
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 833
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v5, v2

    iput v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 834
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 835
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "titleId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 368
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 378
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setView(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move v1, p1

    .local v1, "layoutResId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 882
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 883
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 884
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 903
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 904
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 905
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public setView(Landroid/view/View;IIII)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "viewSpacingLeft":I
    move v3, p3

    .local v3, "viewSpacingTop":I
    move v4, p4

    .local v4, "viewSpacingRight":I
    move v5, p5

    .local v5, "viewSpacingBottom":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 935
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 936
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 937
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v7, v2

    iput v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 938
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v7, v3

    iput v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 939
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v7, v4

    iput v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 940
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    move v7, v5

    iput v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 941
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .prologue
    .line 1006
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    move-object v1, v2

    .line 1007
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1008
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog$Builder;
    return-object v0
.end method
