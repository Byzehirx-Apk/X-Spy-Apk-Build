.class final Lcom/google/appinventor/components/runtime/FusiontablesControl$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/ProgressDialog;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 851
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    .line 852
    const-string/jumbo v3, "QueryProcessorV2"

    const-string/jumbo v4, "Creating AsyncFusiontablesQuery"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 853
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->activity:Landroid/app/Activity;

    .line 854
    move-object v3, v0

    new-instance v4, Landroid/app/ProgressDialog;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/ProgressDialog;

    .line 855
    return-void
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 917
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 919
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v5

    move-object v2, v5

    .line 920
    new-instance v5, Lcom/google/api/client/json/gson/GsonFactory;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    move-object v3, v5

    .line 922
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "keyPath "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 925
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    .line 929
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 931
    :cond_0
    new-instance v5, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    move-object v6, v2

    .line 932
    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    move-object v6, v3

    .line 933
    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 934
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 935
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 936
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    .line 937
    invoke-virtual {v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v5

    move-object v4, v5

    .line 939
    new-instance v5, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    new-instance v6, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 940
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v5

    .line 941
    invoke-virtual {v5}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v5

    .line 944
    invoke-virtual {v5}, Lcom/google/api/services/fusiontables/Fusiontables;->query()Lcom/google/api/services/fusiontables/Fusiontables$Query;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/api/services/fusiontables/Fusiontables$Query;->sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 945
    move-object v2, v6

    const-string/jumbo v6, "alt"

    const-string/jumbo v7, "csv"

    invoke-virtual {v5, v6, v7}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 947
    const/4 v5, 0x0

    move-object v3, v5

    .line 953
    move-object v5, v2

    :try_start_1
    invoke-virtual {v5}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    move-object v3, v5

    .line 981
    .line 984
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 986
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 987
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Query = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nResultStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 996
    :goto_1
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "executed sql query"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v5

    .line 1004
    .line 1006
    :goto_2
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "returning queryResultStr = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1007
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 955
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 959
    :try_start_3
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "Got a JsonResponse exception on sql.executeUnparsed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 964
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 2012
    const-string/jumbo v6, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v7, "parseJsonResponseException: "

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2016
    move-object v6, v2

    .line 964
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 965
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    goto/16 :goto_0

    .line 967
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 969
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "Got an unanticipated exception on sql.executeUnparsed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 970
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Exception class is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 971
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Exception message is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 972
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "Exception is "

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 973
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "Point e"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 974
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "end of printing exception"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 978
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 979
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 997
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 998
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string/jumbo v7, "UseServiceAuthentication"

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 999
    const-string/jumbo v5, "FUSION"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1000
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1004
    goto/16 :goto_2

    .line 992
    :cond_1
    move-object v5, v0

    :try_start_4
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 993
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Error with null response:  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v5

    goto/16 :goto_1

    .line 1001
    :catch_3
    move-exception v5

    move-object v4, v5

    .line 1002
    const-string/jumbo v5, "FUSION_SERVICE_ACCOUNT"

    const-string/jumbo v6, "in Catch Throwable e"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1003
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 839
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    move-object v1, v4

    .line 2870
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 2871
    const-string/jumbo v4, "QueryProcessorV2"

    const-string/jumbo v5, "Starting doInBackground "

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2872
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2873
    move-object v4, v1

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 2907
    :goto_0
    return-object v0

    .line 2875
    :cond_0
    move-object v4, v1

    .line 2880
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2883
    new-instance v4, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 2884
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->activity:Landroid/app/Activity;

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 2888
    move-object v3, v5

    if-eqz v4, :cond_3

    .line 2891
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "create table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2892
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v6, v2

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2893
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 2897
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 2900
    move-object v3, v5

    if-eqz v4, :cond_2

    .line 2901
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2902
    const-string/jumbo v4, "QueryProcessorV2"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Query = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\nResultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2907
    :goto_1
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 2904
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2905
    const-string/jumbo v4, "QueryProcessorV2"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Error:  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 2910
    :cond_3
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    .line 839
    move-object v0, v4

    goto/16 :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 839
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v1, v3

    .line 2025
    const-string/jumbo v3, "FUSION"

    const-string/jumbo v4, "Query result "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2026
    move-object v3, v2

    if-nez v3, :cond_0

    .line 2027
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2029
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2030
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2032
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 859
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ShowLoadingDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/ProgressDialog;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->LoadingDialogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 861
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 863
    :cond_0
    return-void
.end method
