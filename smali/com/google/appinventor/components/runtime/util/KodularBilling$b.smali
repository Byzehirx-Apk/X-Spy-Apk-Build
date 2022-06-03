.class final Lcom/google/appinventor/components/runtime/util/KodularBilling$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    move-object v1, v0

    const-string/jumbo v2, "KodularCommission"

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;-><init>()V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    :try_start_0
    aget-object v5, v5, v6

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "https://api.creator.kodular.io/billing/v1?p=commission&i="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 109
    new-instance v4, Ljava/net/URL;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 111
    move-object v1, v5

    const-string/jumbo v5, "User-Agent"

    const-string/jumbo v6, "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object v4, v1

    const-string/jumbo v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 117
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 118
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v1, v4

    .line 119
    :goto_0
    move v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 120
    move-object v4, v3

    move v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v1, v4

    goto :goto_0

    .line 123
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 124
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 125
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 128
    move-object v1, v5

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    move-object v4, v1

    const-string/jumbo v5, "billed"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    .line 136
    :goto_1
    return-object v0

    .line 131
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "CANNOT RETREIVE BILLED COMMISSION"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 132
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    .line 134
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 135
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->LOG_TAG:Ljava/lang/String;

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 136
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/Boolean;

    move-object v2, v5

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 1142
    move-object v1, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v3, v4

    .line 1143
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1144
    move-object v4, v3

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".kbc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    :cond_0
    return-void
.end method
