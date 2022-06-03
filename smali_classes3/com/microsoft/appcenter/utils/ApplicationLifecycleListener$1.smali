.class Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;
.super Ljava/lang/Object;
.source "ApplicationLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;->this$0:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;->this$0:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->access$000(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;)V

    .line 83
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;->this$0:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->access$100(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;)V

    .line 84
    return-void
.end method
