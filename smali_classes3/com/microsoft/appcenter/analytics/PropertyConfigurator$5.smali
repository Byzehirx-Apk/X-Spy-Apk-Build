.class Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->collectDeviceId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;->this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;->this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->access$402(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Z)Z

    move-result v1

    .line 342
    return-void
.end method
