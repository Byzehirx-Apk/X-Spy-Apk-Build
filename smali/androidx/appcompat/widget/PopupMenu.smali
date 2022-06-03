.class public Landroidx/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/PopupMenu$OnDismissListener;,
        Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

.field final mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "anchor":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "anchor":Landroid/view/View;
    move v3, p3

    .local v3, "gravity":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    sget v8, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 104
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "anchor":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "gravity":I
    move/from16 v4, p4

    .local v4, "popupStyleAttr":I
    move/from16 v5, p5

    .local v5, "popupStyleRes":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 106
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 108
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 109
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v7, Landroidx/appcompat/widget/PopupMenu$1;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Landroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 123
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/view/menu/MenuPopupHelper;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v11, v2

    const/4 v12, 0x0

    move v13, v4

    move v14, v5

    invoke-direct/range {v8 .. v14}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v7, v6, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 124
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 125
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    new-instance v7, Landroidx/appcompat/widget/PopupMenu$2;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/PopupMenu$2;-><init>(Landroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    .line 248
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v1, :cond_0

    .line 175
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/widget/PopupMenu$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/PopupMenu$3;-><init>(Landroidx/appcompat/widget/PopupMenu;Landroid/view/View;)V

    iput-object v2, v1, Landroidx/appcompat/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 196
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu;
    return-object v0
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getGravity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu;
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu;
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    new-instance v1, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu;
    return-object v0
.end method

.method getMenuListView()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    const/4 v1, 0x0

    move-object v0, v1

    .line 309
    .end local v0    # "this":Landroidx/appcompat/widget/PopupMenu;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/PopupMenu;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public inflate(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move v1, p1

    .local v1, "menuRes":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 230
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 146
    return-void
.end method

.method public setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V
    .locals 4
    .param p1    # Landroidx/appcompat/widget/PopupMenu$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/PopupMenu$OnDismissListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

    .line 267
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 4
    .param p1    # Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 258
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 239
    return-void
.end method
