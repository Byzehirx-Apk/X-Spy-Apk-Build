.class public Lcom/microsoft/appcenter/utils/IdHelper;
.super Ljava/lang/Object;
.source "IdHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/IdHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstallId()Ljava/util/UUID;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    const-string/jumbo v3, "installId"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 29
    .local v0, "installIdString":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 34
    .line 35
    .local v1, "installId":Ljava/util/UUID;
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "installIdString":Ljava/lang/String;
    return-object v0

    .line 30
    .end local v1    # "installId":Ljava/util/UUID;
    .restart local v0    # "installIdString":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 31
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Unable to get installID from Shared Preferences"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    move-object v1, v3

    .line 33
    .restart local v1    # "installId":Ljava/util/UUID;
    const-string/jumbo v3, "installId"

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
