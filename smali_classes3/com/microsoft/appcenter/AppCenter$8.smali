.class Lcom/microsoft/appcenter/AppCenter$8;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field final synthetic val$startFromApp:Z

.field final synthetic val$startedServices:Ljava/util/Collection;

.field final synthetic val$updatedServices:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 7

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$8;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter$8;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter$8;->val$updatedServices:Ljava/util/Collection;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter$8;->val$startedServices:Ljava/util/Collection;

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/microsoft/appcenter/AppCenter$8;->val$startFromApp:Z

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$8;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$8;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter$8;->val$updatedServices:Ljava/util/Collection;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter$8;->val$startedServices:Ljava/util/Collection;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/microsoft/appcenter/AppCenter$8;->val$startFromApp:Z

    invoke-static {v1, v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->access$700(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V

    .line 888
    return-void
.end method
