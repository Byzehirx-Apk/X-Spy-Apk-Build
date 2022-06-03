.class Lcom/google/android/material/snackbar/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 5

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/Snackbar;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/snackbar/Snackbar$1;->this$0:Lcom/google/android/material/snackbar/Snackbar;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/snackbar/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 319
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/Snackbar$1;->this$0:Lcom/google/android/material/snackbar/Snackbar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->dispatchDismiss(I)V

    .line 320
    return-void
.end method
