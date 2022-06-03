.class Lcom/google/android/material/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/SnackbarManager;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/SnackbarManager$1;->this$0:Lcom/google/android/material/snackbar/SnackbarManager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager$1;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 60
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager$1;
    :goto_0
    return v0

    .line 57
    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager$1;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager$1;->this$0:Lcom/google/android/material/snackbar/SnackbarManager;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/SnackbarManager;->handleTimeout(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 58
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
