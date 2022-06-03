.class public final Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string/jumbo v5, "RuntimeErrorAlert"

    const-string/jumbo v6, "in alert"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 25
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 26
    move-object v4, v6

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    move-object v5, v4

    move-object v6, v3

    new-instance v7, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 32
    move-object v5, v1

    if-nez v5, :cond_0

    .line 34
    const-class v5, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "No error message available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 38
    :goto_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 39
    return-void

    .line 36
    :cond_0
    const-class v5, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method
