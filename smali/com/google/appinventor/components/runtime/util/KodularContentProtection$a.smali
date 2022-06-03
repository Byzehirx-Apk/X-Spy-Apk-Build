.class final Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularContentProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;B)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 2116
    move-object v1, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$100(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2117
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$202(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;Z)Z

    move-result v2

    .line 2118
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v2

    :goto_0
    return-object v0

    .line 2121
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$202(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;Z)Z

    move-result v2

    .line 2122
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    move-object v0, v2

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    move-object v2, v4

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 1127
    move-object v1, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$200(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$300(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$400(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;ZZLjava/lang/String;)V

    .line 112
    return-void
.end method
