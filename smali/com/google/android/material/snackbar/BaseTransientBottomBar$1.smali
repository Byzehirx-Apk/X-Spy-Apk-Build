.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 197
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
    :goto_0
    return v0

    .line 191
    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
    :pswitch_0
    move-object v2, v1

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V

    .line 192
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 194
    :pswitch_1
    move-object v2, v1

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->hideView(I)V

    .line 195
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
