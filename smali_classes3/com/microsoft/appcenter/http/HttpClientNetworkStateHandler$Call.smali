.class Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
.super Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
.source "HttpClientNetworkStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Call"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/http/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .local v2, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object/from16 v3, p3

    .local v3, "url":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "method":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v6, p6

    .local v6, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object/from16 v7, p7

    .local v7, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;->this$0:Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;

    .line 99
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V

    .line 100
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;->this$0:Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->access$000(Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;)V

    .line 105
    return-void
.end method
