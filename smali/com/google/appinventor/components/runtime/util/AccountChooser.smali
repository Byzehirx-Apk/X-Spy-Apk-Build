.class public Lcom/google/appinventor/components/runtime/util/AccountChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/AccountChooser$a;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private dWv1HgRlVDHMM4U4qerIJIQWfNWwQ9IKsqdbo4GTv31QUUa72uwaY9lJJ42yxpKq:Ljava/lang/String;

.field private fYawfM9zby4GKauiBqb4ci1jAzhTnTs5rPk6pEfhgdCGlaj30ALyaese8PExemNE:Ljava/lang/String;

.field private h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    .line 53
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AccountChooser;->h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

    .line 54
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AccountChooser;->dWv1HgRlVDHMM4U4qerIJIQWfNWwQ9IKsqdbo4GTv31QUUa72uwaY9lJJ42yxpKq:Ljava/lang/String;

    .line 55
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AccountChooser;->fYawfM9zby4GKauiBqb4ci1jAzhTnTs5rPk6pEfhgdCGlaj30ALyaese8PExemNE:Ljava/lang/String;

    .line 56
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    .line 57
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AccountChooser;->fYawfM9zby4GKauiBqb4ci1jAzhTnTs5rPk6pEfhgdCGlaj30ALyaese8PExemNE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Ljava/lang/String;
    .locals 10

    .prologue
    .line 118
    move-object v0, p0

    const-string/jumbo v2, "AccountChooser"

    const-string/jumbo v3, "Adding auth token account ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    const-string/jumbo v3, "com.google"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/AccountChooser;->h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    move-object v1, v2

    .line 121
    move-object v2, v1

    :try_start_0
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 122
    const-string/jumbo v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 123
    const-string/jumbo v2, "AccountChooser"

    const-string/jumbo v3, "created: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 124
    move-object v2, v1

    move-object v0, v2

    .line 132
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 126
    const-string/jumbo v2, "AccountChooser"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 131
    .line 132
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 127
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 128
    const-string/jumbo v2, "AccountChooser"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 131
    goto :goto_1

    .line 129
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 130
    const-string/jumbo v2, "AccountChooser"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AccountChooser"

    const-string/jumbo v3, "persisting account: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 160
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "account"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 161
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 9

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

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

    .line 108
    move-object v4, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const-string/jumbo v5, "AccountChooser"

    const-string/jumbo v6, "chose account: "

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 110
    move-object v5, v4

    move-object v0, v5

    .line 113
    :goto_1
    return-object v0

    .line 107
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser;->dWv1HgRlVDHMM4U4qerIJIQWfNWwQ9IKsqdbo4GTv31QUUa72uwaY9lJJ42yxpKq:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Landroid/accounts/Account;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v2, v3

    .line 137
    new-instance v3, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V

    .line 138
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->start()V

    .line 139
    const-string/jumbo v3, "AccountChooser"

    const-string/jumbo v4, "Select: waiting for user..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 140
    const/4 v3, 0x0

    move-object v1, v3

    .line 142
    move-object v3, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 145
    .line 146
    :goto_0
    const-string/jumbo v3, "AccountChooser"

    const-string/jumbo v4, "Selected: "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 147
    const-string/jumbo v3, ""

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    .line 143
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 144
    const-string/jumbo v3, "AccountChooser"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 147
    :cond_0
    move-object v3, v1

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public findAccount()Landroid/accounts/Account;
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    const-string/jumbo v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 66
    move-object v1, v4

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 67
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 68
    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v0, v3

    .line 103
    :goto_0
    return-object v0

    .line 73
    :cond_0
    move-object v3, v1

    array-length v3, v3

    if-nez v3, :cond_2

    .line 74
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 75
    move-object v2, v4

    if-eqz v3, :cond_1

    .line 76
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 77
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    const-string/jumbo v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v3, "AccountChooser"

    const-string/jumbo v4, "User failed to create a valid account"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 80
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 87
    :cond_2
    move-object v3, v0

    .line 1155
    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "account"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 88
    move-object v2, v4

    if-eqz v3, :cond_3

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v2, v4

    if-eqz v3, :cond_3

    .line 89
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 95
    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 96
    move-object v2, v4

    if-eqz v3, :cond_4

    .line 97
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 98
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 102
    :cond_4
    const-string/jumbo v3, "AccountChooser"

    const-string/jumbo v4, "User failed to choose an account"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 103
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public forgetAccountName()V
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "account"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 165
    return-void
.end method
