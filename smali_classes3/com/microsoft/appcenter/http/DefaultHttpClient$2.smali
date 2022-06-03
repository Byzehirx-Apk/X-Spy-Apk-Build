.class Lcom/microsoft/appcenter/http/DefaultHttpClient$2;
.super Ljava/lang/Object;
.source "DefaultHttpClient.java"

# interfaces
.implements Lcom/microsoft/appcenter/http/ServiceCall;


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

.field final synthetic val$task:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/http/DefaultHttpClient;Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/http/DefaultHttpClient$2;->this$0:Lcom/microsoft/appcenter/http/DefaultHttpClient;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/http/DefaultHttpClient$2;->val$task:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/DefaultHttpClient$2;->val$task:Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->cancel(Z)Z

    move-result v1

    .line 122
    return-void
.end method
