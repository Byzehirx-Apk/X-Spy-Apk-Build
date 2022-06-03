.class final Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;
.super Ljava/lang/Object;
.source "AnalyticsTransmissionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->addAuthenticationProvider(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;->val$authenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;->val$authenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$000(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V

    .line 132
    return-void
.end method
