.class Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->setUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;->this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;->val$userId:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;->this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;->val$userId:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getPrefixedUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->access$302(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    return-void
.end method
