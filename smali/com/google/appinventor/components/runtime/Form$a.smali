.class final Lcom/google/appinventor/components/runtime/Form$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v4

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 2324
    move-object v1, v4

    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Form;

    .line 2325
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "Doing Full MultiDex Install"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2326
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    move-result v3

    .line 2327
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 319
    move-object v0, v3

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1332
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 319
    return-void
.end method
