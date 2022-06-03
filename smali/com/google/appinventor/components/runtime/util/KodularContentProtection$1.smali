.class final Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "https://my.kodular.io/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$500(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 159
    const-string/jumbo v3, "Content Protection"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 161
    goto :goto_0
.end method
