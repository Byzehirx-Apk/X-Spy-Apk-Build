.class Lcom/microsoft/appcenter/AppCenter$4;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z
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
    .line 657
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter$4;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$4;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter$4;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v2}, Lcom/microsoft/appcenter/AppCenter;->access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setAppSecret(Ljava/lang/String;)V

    .line 662
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$4;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$400(Lcom/microsoft/appcenter/AppCenter;)V

    .line 663
    return-void
.end method
