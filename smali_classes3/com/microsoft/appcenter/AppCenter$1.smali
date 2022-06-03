.class Lcom/microsoft/appcenter/AppCenter$1;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;)V
    .locals 4

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter$1;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$1;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/appcenter/channel/Channel;->invalidateDeviceCache()V

    .line 511
    return-void
.end method
