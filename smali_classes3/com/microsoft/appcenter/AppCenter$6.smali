.class Lcom/microsoft/appcenter/AppCenter$6;
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

.field final synthetic val$configureFromApp:Z


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 5

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$6;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/AppCenter$6;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/microsoft/appcenter/AppCenter$6;->val$configureFromApp:Z

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$6;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$6;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/microsoft/appcenter/AppCenter$6;->val$configureFromApp:Z

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->access$600(Lcom/microsoft/appcenter/AppCenter;Z)V

    .line 694
    return-void
.end method
