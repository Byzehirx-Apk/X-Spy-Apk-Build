.class final Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->sendStartAppBannerLogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/Void;
    .locals 12

    .prologue
    .line 200
    move-object v0, p0

    const/4 v5, 0x0

    move-object v1, v5

    .line 202
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "https://account.kodular.io/api/startapp"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 204
    move-object v1, v6

    const-string/jumbo v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 206
    new-instance v5, Landroid/net/Uri$Builder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 207
    move-object v2, v6

    const-string/jumbo v6, "i"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$200(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 208
    move-object v5, v2

    const-string/jumbo v6, "p"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$200(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 209
    move-object v5, v2

    const-string/jumbo v6, "s"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 211
    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 213
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v3, v5

    .line 216
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 217
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/OutputStreamWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v5

    .line 222
    :goto_0
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 223
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 224
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 225
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 226
    const-string/jumbo v5, "StartApp Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Response code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 227
    const-string/jumbo v5, "StartApp Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Response message:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 231
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 232
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    :cond_0
    :goto_1
    const/4 v5, 0x0

    move-object v0, v5

    return-object v0

    .line 219
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/OutputStreamWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 228
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 229
    :try_start_2
    const-string/jumbo v5, "StartApp Banner"

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 231
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 232
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v5

    move-object v2, v5

    move-object v5, v1

    if-eqz v5, :cond_2

    .line 232
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_2
    move-object v5, v2

    throw v5
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1240
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "StartApp Banner"

    const-string/jumbo v3, "Log was send"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 197
    return-void
.end method
