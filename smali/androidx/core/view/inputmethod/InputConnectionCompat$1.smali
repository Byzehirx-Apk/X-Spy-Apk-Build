.class final Landroidx/core/view/inputmethod/InputConnectionCompat$1;
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
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputConnectionCompat$1;
    move-object v1, p1

    .local v1, "x0":Landroid/view/inputmethod/InputConnection;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/view/inputmethod/InputConnectionCompat$1;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputConnectionCompat$1;
    move-object v1, p1

    .local v1, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    move v2, p2

    .local v2, "flags":I
    move-object v3, p3

    .local v3, "opts":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/inputmethod/InputConnectionCompat$1;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-result-object v5

    move v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const/4 v4, 0x1

    move v0, v4

    .line 213
    .end local v0    # "this":Landroidx/core/view/inputmethod/InputConnectionCompat$1;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/inputmethod/InputConnectionCompat$1;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method
