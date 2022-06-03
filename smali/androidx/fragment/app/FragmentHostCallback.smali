.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "handler":Landroid/os/Handler;
    move v4, p4

    .local v4, "windowAnimations":I
    move-object v5, v0

    invoke-direct {v5}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    .line 48
    move-object v5, v0

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v6, v5, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 62
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 63
    move-object v5, v0

    move-object v6, v2

    const-string/jumbo v7, "context == null"

    invoke-static {v6, v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iput-object v6, v5, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 64
    move-object v5, v0

    move-object v6, v3

    const-string/jumbo v7, "handler == null"

    invoke-static {v6, v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    iput-object v6, v5, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 65
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "handler":Landroid/os/Handler;
    move v3, p3

    .local v3, "windowAnimations":I
    move-object v4, v0

    move-object v5, v1

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Landroid/app/Activity;

    :goto_0
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 54
    return-void

    .line 52
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "activity":Landroidx/fragment/app/FragmentActivity;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 58
    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-object v0
.end method

.method getFragmentManagerImpl()Landroidx/fragment/app/FragmentManagerImpl;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-object v0
.end method

.method onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .prologue
    .line 208
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 78
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move v1, p1

    .local v1, "id":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return v0
.end method

.method public onHasView()Z
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 153
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return v0
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "requestCode":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "requestCode":I
    move-object v4, p4

    .local v4, "options":Landroid/os/Bundle;
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 126
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 18
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 139
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    move-object/from16 v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v2, p2

    .local v2, "intent":Landroid/content/IntentSender;
    move/from16 v3, p3

    .local v3, "requestCode":I
    move-object/from16 v4, p4

    .local v4, "fillInIntent":Landroid/content/Intent;
    move/from16 v5, p5

    .local v5, "flagsMask":I
    move/from16 v6, p6

    .local v6, "flagsValues":I
    move/from16 v7, p7

    .local v7, "extraFlags":I
    move-object/from16 v8, p8

    .local v8, "options":Landroid/os/Bundle;
    move v9, v3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 140
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const-string/jumbo v11, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 143
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 109
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method
