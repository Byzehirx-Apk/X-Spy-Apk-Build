.class Lcom/microsoft/appcenter/AppCenter$3;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->setInstanceCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/AppCenter$3;->val$properties:Ljava/util/Map;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter$3;->val$properties:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->access$300(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V

    .line 574
    return-void
.end method
