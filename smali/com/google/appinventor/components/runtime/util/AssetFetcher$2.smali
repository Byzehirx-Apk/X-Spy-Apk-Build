.class final Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

.field private synthetic be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 78
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;

    const-string/jumbo v6, "/"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 79
    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v1, v5

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    move-object v7, v1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 81
    move-object v1, v6

    if-eqz v5, :cond_0

    .line 83
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move-object v2, v5

    .line 84
    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 85
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 86
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".provider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-static {v5, v6, v7}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, v5

    .line 87
    move-object v5, v3

    move-object v6, v1

    const-string/jumbo v7, "application/vnd.android.package-archive"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 88
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 89
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 95
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 91
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ERROR_UNABLE_TO_GET"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 92
    const-string/jumbo v5, "Unable to Install new Companion Package."

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    .line 95
    :cond_0
    goto :goto_0
.end method
