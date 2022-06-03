.class public interface abstract Lcom/microsoft/appcenter/channel/Channel$GroupListener;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupListener"
.end annotation


# virtual methods
.method public abstract onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
.end method

.method public abstract onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V
.end method
