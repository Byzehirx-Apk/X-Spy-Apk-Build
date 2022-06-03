.class public Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.super Ljava/lang/Object;
.source "AbstractChannelListener.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel$Listener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/AbstractChannelListener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    return-void
.end method

.method public onGloballyEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 41
    return-void
.end method

.method public onGroupAdded(Ljava/lang/String;Lcom/microsoft/appcenter/channel/Channel$GroupListener;J)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "groupListener"    # Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .param p3, "batchTimeInterval"    # J

    .prologue
    .line 20
    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    return-void
.end method

.method public onPaused(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetToken"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public onPreparedLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
    .locals 0
    .param p1, "log"    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "flags"    # I

    .prologue
    .line 32
    return-void
.end method

.method public onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    return-void
.end method

.method public onResumed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetToken"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .locals 3
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/AbstractChannelListener;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/channel/AbstractChannelListener;
    return v0
.end method
