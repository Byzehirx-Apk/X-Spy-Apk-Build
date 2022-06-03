.class public Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

.field private activity:Landroid/app/Activity;

.field private authToken:Ljava/lang/String;

.field private h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

.field private initialized:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 13

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    .line 60
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

    .line 61
    move-object v5, v0

    move-object v6, v4

    if-nez v6, :cond_0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :goto_0
    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

    .line 62
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    .line 63
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    .line 64
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/util/AccountChooser;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/AccountChooser;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    .line 65
    return-void

    .line 61
    :cond_0
    move-object v6, v4

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    move-object v5, v0

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 130
    move-object v4, v6

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Authorization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 131
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GoogleLogin auth="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    const-string/jumbo v5, "ClientLoginHelper"

    const-string/jumbo v6, "Removing header:"

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 133
    move-object v5, v0

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeader(Lorg/apache/http/Header;)V

    .line 129
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 123
    const-string/jumbo v2, "ClientLoginHelper"

    const-string/jumbo v3, "adding auth token token: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 124
    move-object v2, v0

    const-string/jumbo v3, "Authorization"

    const-string/jumbo v4, "GoogleLogin auth="

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 1072
    move-object v2, v4

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    if-nez v3, :cond_1

    .line 1073
    const-string/jumbo v3, "ClientLoginHelper"

    const-string/jumbo v4, "initializing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1083
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1074
    if-eqz v3, :cond_0

    .line 1075
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Can\'t initialize login helper from UI thread"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1077
    :cond_0
    move-object v3, v2

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 1078
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    .line 95
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 96
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 97
    move-object v2, v4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_2

    .line 98
    const-string/jumbo v3, "ClientLoginHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Invalid token: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    const-string/jumbo v4, "com.google"

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 101
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 102
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v3, "ClientLoginHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "new token: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    move-object v2, v3

    .line 106
    :cond_2
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public forgetAccountName()V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->forgetAccountName()V

    .line 119
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->findAccount()Landroid/accounts/Account;

    move-result-object v2

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    .line 144
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    move-object v1, v2

    .line 147
    const-string/jumbo v2, "ClientLoginHelper"

    const-string/jumbo v3, "Have account, auth token: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 150
    move-object v2, v1

    :try_start_0
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 151
    const-string/jumbo v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 153
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 158
    .line 160
    :cond_0
    :goto_0
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "Can\'t get valid authentication token"

    invoke-direct {v3, v4}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    goto :goto_0

    .line 157
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0
.end method
