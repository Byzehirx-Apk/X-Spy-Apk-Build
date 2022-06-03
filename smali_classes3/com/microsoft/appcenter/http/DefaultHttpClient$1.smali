.class Lcom/microsoft/appcenter/http/DefaultHttpClient$1;
.super Ljava/lang/Object;
.source "DefaultHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/http/DefaultHttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/http/DefaultHttpClient;

.field final synthetic val$e:Ljava/util/concurrent/RejectedExecutionException;

.field final synthetic val$serviceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/http/DefaultHttpClient;Lcom/microsoft/appcenter/http/ServiceCallback;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;->this$0:Lcom/microsoft/appcenter/http/DefaultHttpClient;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;->val$serviceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;->val$e:Ljava/util/concurrent/RejectedExecutionException;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;->val$serviceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;->val$e:Ljava/util/concurrent/RejectedExecutionException;

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    .line 112
    return-void
.end method
