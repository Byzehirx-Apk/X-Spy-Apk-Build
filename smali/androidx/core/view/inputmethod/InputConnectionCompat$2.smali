.class final Landroidx/core/view/inputmethod/InputConnectionCompat$2;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputConnectionCompat$2;
    move-object v1, p1

    .local v1, "x0":Landroid/view/inputmethod/InputConnection;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/view/inputmethod/InputConnectionCompat$2;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputConnectionCompat$2;
    move-object v1, p1

    .local v1, "action":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Landroid/os/Bundle;
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/inputmethod/InputConnectionCompat$2;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {v3, v4, v5}, Landroidx/core/view/inputmethod/InputConnectionCompat;->handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const/4 v3, 0x1

    move v0, v3

    .line 228
    .end local v0    # "this":Landroidx/core/view/inputmethod/InputConnectionCompat$2;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/inputmethod/InputConnectionCompat$2;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method
