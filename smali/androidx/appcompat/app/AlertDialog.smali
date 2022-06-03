.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field final mAlert:Landroidx/appcompat/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "themeResId":I
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/app/AlertController;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v4, v3, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "cancelable":Z
    move-object v3, p3

    .local v3, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 105
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 106
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resid":I
    move v3, v1

    const/16 v4, 0x18

    ushr-int/lit8 v3, v3, 0x18

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 112
    move v3, v1

    move v0, v3

    .line 116
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .line 114
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 115
    .local v2, "outValue":Landroid/util/TypedValue;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 116
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "whichButton":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog;
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 279
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertController;->installContent()V

    .line 280
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const/4 v3, 0x1

    move v0, v3

    .line 287
    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AlertDialog;
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const/4 v3, 0x1

    move v0, v3

    .line 295
    .end local v0    # "this":Landroidx/appcompat/app/AlertDialog;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AlertDialog;
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 10

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "whichButton":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "whichButton":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v6, v1

    move-object v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 245
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 10

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "whichButton":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "msg":Landroid/os/Message;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "layoutHint":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 197
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "customTitleView":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 254
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 8

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move v1, p1

    .local v1, "attrId":I
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 272
    .local v2, "out":Landroid/util/TypedValue;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v4, v2

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 274
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "message":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "viewSpacingLeft":I
    move v3, p3

    .local v3, "viewSpacingTop":I
    move/from16 v4, p4

    .local v4, "viewSpacingRight":I
    move/from16 v5, p5

    .local v5, "viewSpacingBottom":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 188
    return-void
.end method
