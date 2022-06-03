.class Lcom/microsoft/appcenter/AbstractAppCenterService$8;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService;->postOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService;)V
    .locals 4

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$8;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AbstractAppCenterService$8;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method
