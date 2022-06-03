.class public interface abstract Lcom/microsoft/appcenter/AppCenterService;
.super Ljava/lang/Object;
.source "AppCenterService.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;


# virtual methods
.method public abstract getLogFactories()Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract isAppSecretRequired()Z
.end method

.method public abstract isInstanceEnabled()Z
.end method

.method public abstract onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/channel/Channel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onStarting(Lcom/microsoft/appcenter/AppCenterHandler;)V
    .param p1    # Lcom/microsoft/appcenter/AppCenterHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setInstanceEnabled(Z)V
.end method
