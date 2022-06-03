.class Landroidx/fragment/app/FragmentActivity$HostCallbacks;
.super Landroidx/fragment/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/FragmentHostCallback",
        "<",
        "Landroidx/fragment/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/FragmentActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    .line 959
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 960
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 1033
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return-object v0
.end method

.method public onGetHost()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->onGetHost()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 3

    .prologue
    .line 1026
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v1, v2

    .line 1027
    .local v1, "w":Landroid/view/Window;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 3

    .prologue
    .line 1043
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v1, v2

    .line 1044
    .local v1, "w":Landroid/view/Window;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onHasWindowAnimations()Z
    .locals 2

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "permissions":[Ljava/lang/String;
    move v3, p3

    .local v3, "requestCode":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/fragment/app/FragmentActivity;->requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1011
    return-void
.end method

.method public onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    return v0
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 8

    .prologue
    .line 989
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "requestCode":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 990
    return-void
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "requestCode":I
    move-object v4, p4

    .local v4, "options":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 996
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
    .line 1002
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
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
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1004
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$HostCallbacks;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 985
    return-void
.end method
