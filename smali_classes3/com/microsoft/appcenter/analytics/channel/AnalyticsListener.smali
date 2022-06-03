.class public interface abstract Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# virtual methods
.method public abstract onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
.end method

.method public abstract onSendingFailed(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
.end method

.method public abstract onSendingSucceeded(Lcom/microsoft/appcenter/ingestion/models/Log;)V
.end method
