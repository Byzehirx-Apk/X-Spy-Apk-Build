.class final Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$7;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "AnalyticsTransmissionTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$7;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$7;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "groupName":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$600(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 412
    return-void
.end method
