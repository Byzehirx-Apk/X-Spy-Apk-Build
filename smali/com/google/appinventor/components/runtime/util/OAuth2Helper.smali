.class public Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String; = null

.field public static final PREF_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final PREF_AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field public static final TAG:Ljava/lang/String; = "OAuthHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "Error during OAuth"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 225
    const-string/jumbo v0, "OAuthHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "getErrorMessage = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    sget-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String;

    return-object v0
.end method

.method public static resetAccountCredential(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    const-string/jumbo v1, "OAuthHelper"

    const-string/jumbo v2, "Reset credentials"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 213
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 214
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    .line 215
    move-object v0, v2

    const-string/jumbo v2, "authToken"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 216
    move-object v1, v0

    const-string/jumbo v2, "accountName"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 217
    move-object v1, v0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 218
    return-void
.end method


# virtual methods
.method public getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    .prologue
    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v9, "OAuthHelper"

    const-string/jumbo v10, "getRefreshedAuthToken()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1188
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 91
    if-eqz v9, :cond_0

    .line 92
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "Can\'t get authtoken from UI thread"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 95
    :cond_0
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    .line 96
    move-object v3, v10

    const-string/jumbo v10, "accountName"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 99
    move-object v9, v3

    const-string/jumbo v10, "authToken"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 102
    new-instance v9, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    .line 103
    move-object v6, v10

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v9

    .line 107
    move-object v9, v1

    move-object v10, v6

    move-object v11, v2

    move-object v12, v4

    .line 108
    move-object v7, v12

    move-object v6, v11

    move-object v4, v10

    move-object v2, v9

    .line 2151
    new-instance v9, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    .line 2158
    move-object v8, v10

    move-object v10, v4

    invoke-virtual {v10}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->invalidateAuthToken(Ljava/lang/String;)V

    .line 2159
    move-object v9, v2

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountByName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    .line 2166
    move-object v4, v10

    if-eqz v9, :cond_1

    .line 2169
    const-string/jumbo v9, "OAuthHelper"

    const-string/jumbo v10, "Getting token by account"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2170
    move-object v9, v8

    invoke-virtual {v9}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v9

    move-object v10, v4

    move-object v11, v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    move-object v2, v9

    .line 113
    :goto_0
    move-object v9, v2

    :try_start_0
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    .line 114
    move-object v2, v10

    const-string/jumbo v10, "authtoken"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 116
    move-object v9, v3

    move-object v10, v2

    const-string/jumbo v11, "authAccount"

    .line 117
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    .line 116
    move-object v6, v11

    move-object v4, v10

    move-object v2, v9

    .line 2198
    const-string/jumbo v9, "OAuthHelper"

    const-string/jumbo v10, "Persisting credentials, acct ="

    move-object v11, v4

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2199
    move-object v9, v2

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    .line 2200
    move-object v2, v10

    const-string/jumbo v10, "accountName"

    move-object v11, v4

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 2201
    move-object v9, v2

    const-string/jumbo v10, "authToken"

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 2202
    move-object v9, v2

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    .line 129
    .line 132
    :goto_1
    move-object v9, v5

    move-object v0, v9

    return-object v0

    .line 2175
    :cond_1
    const-string/jumbo v9, "OAuthHelper"

    const-string/jumbo v10, "Getting token by features, possibly prompting user to select an account"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2176
    move-object v9, v8

    invoke-virtual {v9}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v9

    const-string/jumbo v10, "com.google"

    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    move-object v2, v9

    goto :goto_0

    .line 120
    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 121
    move-object v9, v1

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    .line 122
    const-string/jumbo v9, "Error: operation cancelled"

    sput-object v9, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String;

    .line 129
    goto :goto_1

    .line 124
    :catch_1
    move-exception v9

    invoke-virtual {v9}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 125
    const-string/jumbo v9, "Error: Authenticator error"

    sput-object v9, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String;

    .line 129
    goto :goto_1

    .line 127
    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    const-string/jumbo v9, "Error: I/O error"

    sput-object v9, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Ljava/lang/String;

    goto :goto_1
.end method
