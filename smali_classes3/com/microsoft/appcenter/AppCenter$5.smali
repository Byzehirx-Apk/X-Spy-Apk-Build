.class Lcom/microsoft/appcenter/AppCenter$5;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Lcom/microsoft/appcenter/AppCenterHandler;


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
    .line 676
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter$5;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$5;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "disabledRunnable":Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter$5;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/AppCenter;->access$500(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method
