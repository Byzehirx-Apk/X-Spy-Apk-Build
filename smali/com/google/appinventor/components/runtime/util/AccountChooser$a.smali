.class final Lcom/google/appinventor/components/runtime/util/AccountChooser$a;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/AccountChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AccountChooser;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Thread;-><init>()V

    .line 177
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/SynchronousQueue;

    .line 178
    move-object v4, v0

    move-object v5, v2

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

    .line 179
    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 180
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

    move v5, v1

    move-object v6, v2

    move v7, v1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AccountChooser$a;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AccountChooser"

    const-string/jumbo v3, "Chose: canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 218
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->onClick(Landroid/content/DialogInterface;I)V

    .line 219
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-ltz v3, :cond_0

    .line 203
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v2, v3

    .line 204
    const-string/jumbo v3, "AccountChooser"

    const-string/jumbo v4, "Chose: "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 205
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/SynchronousQueue;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 212
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void

    .line 207
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/SynchronousQueue;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/AccountChooser$a$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser$a$1;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
