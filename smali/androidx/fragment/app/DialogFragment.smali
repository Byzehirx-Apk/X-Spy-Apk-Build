.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 92
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 93
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 94
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 102
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(Z)V

    .line 192
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 3

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(Z)V

    .line 202
    return-void
.end method

.method dismissInternal(Z)V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move v1, p1

    .local v1, "allowStateLoss":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-eqz v3, :cond_0

    .line 206
    .line 227
    :goto_0
    return-void

    .line 208
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 209
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 210
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 211
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 213
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 214
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    if-ltz v3, :cond_2

    .line 215
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    .line 217
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 227
    :goto_1
    goto :goto_0

    .line 219
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 220
    .local v2, "ft":Landroidx/fragment/app/FragmentTransaction;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 221
    move v3, v1

    if-eqz v3, :cond_3

    .line 222
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    goto :goto_1

    .line 224
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v3

    goto :goto_1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    return v0
.end method

.method public getTheme()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/DialogFragment;->mTheme:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    return v0
.end method

.method public isCancelable()Z
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 403
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v5, :cond_0

    .line 404
    .line 428
    :goto_0
    return-void

    .line 407
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 408
    .local v2, "view":Landroid/view/View;
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 409
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 410
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "DialogFragment can not be attached to a container view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 413
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 415
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    move-object v3, v5

    .line 416
    .local v3, "activity":Landroid/app/Activity;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 417
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 419
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 420
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 421
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 422
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 423
    move-object v5, v1

    const-string/jumbo v6, "android:savedDialogState"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 424
    .local v4, "dialogState":Landroid/os/Bundle;
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 425
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 428
    .end local v4    # "dialogState":Landroid/os/Bundle;
    :cond_4
    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 290
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v2, :cond_0

    .line 293
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 295
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 386
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 312
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mContainerId:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 314
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 315
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "android:style"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 316
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "android:theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 317
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "android:cancelable"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 318
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 319
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "android:backStackId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 321
    :cond_0
    return-void

    .line 312
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    new-instance v2, Landroid/app/Dialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 480
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 484
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 485
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 486
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 488
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 300
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v1, :cond_0

    .line 304
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 306
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "dialog":Landroid/content/DialogInterface;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    if-nez v2, :cond_0

    .line 395
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(Z)V

    .line 397
    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_0

    .line 327
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v2

    .line 338
    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    :goto_0
    return-object v0

    .line 330
    .restart local v0    # "this":Landroidx/fragment/app/DialogFragment;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 332
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 333
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 335
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0

    .line 338
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 444
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 445
    .local v2, "dialogState":Landroid/os/Bundle;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 446
    move-object v3, v1

    const-string/jumbo v4, "android:savedDialogState"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 449
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eqz v3, :cond_1

    .line 450
    move-object v3, v1

    const-string/jumbo v4, "android:style"

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mTheme:I

    if-eqz v3, :cond_2

    .line 453
    move-object v3, v1

    const-string/jumbo v4, "android:theme"

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mTheme:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    if-nez v3, :cond_3

    .line 456
    move-object v3, v1

    const-string/jumbo v4, "android:cancelable"

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v3, :cond_4

    .line 459
    move-object v3, v1

    const-string/jumbo v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 462
    move-object v3, v1

    const-string/jumbo v4, "android:backStackId"

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 434
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 435
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 436
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 438
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 469
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 470
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 472
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move v1, p1

    .local v1, "cancelable":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 249
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 250
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move v1, p1

    .local v1, "showsDialog":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 278
    return-void
.end method

.method public setStyle(II)V
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move v1, p1

    .local v1, "style":I
    move v2, p2

    .local v2, "theme":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 120
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mStyle:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 121
    :cond_0
    move-object v3, v0

    const v4, 0x1030059

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 123
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 124
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 126
    :cond_2
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "dialog":Landroid/app/Dialog;
    move v2, p2

    .local v2, "style":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 347
    :pswitch_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 353
    :pswitch_1
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v3

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "transaction":Landroidx/fragment/app/FragmentTransaction;
    move-object v2, p2

    .local v2, "tag":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 158
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 159
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 160
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 161
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v4

    iput v4, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 162
    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/DialogFragment;
    return v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "manager":Landroidx/fragment/app/FragmentManager;
    move-object v2, p2

    .local v2, "tag":Ljava/lang/String;
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 141
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 142
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 143
    .local v3, "ft":Landroidx/fragment/app/FragmentTransaction;
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 144
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v4

    .line 145
    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/DialogFragment;
    move-object v1, p1

    .local v1, "manager":Landroidx/fragment/app/FragmentManager;
    move-object v2, p2

    .local v2, "tag":Ljava/lang/String;
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 178
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 179
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 180
    .local v3, "ft":Landroidx/fragment/app/FragmentTransaction;
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 181
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 182
    return-void
.end method
