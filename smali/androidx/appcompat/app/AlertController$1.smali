.class Landroidx/appcompat/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    .line 140
    .local v2, "m":Landroid/os/Message;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v2

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    .line 132
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 133
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 134
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 135
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$1;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 137
    .end local v2    # "m":Landroid/os/Message;
    :cond_3
    const/4 v3, 0x0

    move-object v2, v3

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0
.end method
