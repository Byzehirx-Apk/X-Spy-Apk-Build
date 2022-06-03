.class Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->setAppLocale(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

.field final synthetic val$appLocale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;->this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;->val$appLocale:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;->this$0:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;->val$appLocale:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->access$202(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    return-void
.end method
