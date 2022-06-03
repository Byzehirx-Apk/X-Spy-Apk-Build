.class Landroidx/fragment/app/FragmentActivity$1;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/FragmentActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentActivity$1;->this$0:Landroidx/fragment/app/FragmentActivity;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$1;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    :goto_0
    return-void

    .line 87
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$1;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 88
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$1;->this$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    move-result v2

    .line 89
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
