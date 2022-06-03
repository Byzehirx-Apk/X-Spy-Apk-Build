.class public final Lcom/google/appinventor/components/runtime/YandexTranslate;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Use this component to translate words and sentences between different languages. This component needs Internet access, as it will request translations to the Yandex.Translate service. Specify the source and target language in the form source-target using two letter language codes. So\"en-es\" will translate from English to Spanish while \"es-ru\" will translate from Spanish to Russian. If you leave out the source language, the service will attempt to detect the source language. So providing just \"es\" will attempt to detect the source language and translate it to Spanish.<p /> This component is powered by the Yandex translation service.  See http://api.yandex.com/translate/ for more information, including the list of available languages and the meanings of the language codes and status codes. <p />Note: Translation happens asynchronously in the background. When the translation is complete, the \"GotTranslation\" event is triggered."
    iconName = "images/yandex.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field public static final YANDEX_TRANSLATE_SERVICE_URL:Ljava/lang/String; = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="


# instance fields
.field private UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->setYandexTranslateTagline()V

    .line 69
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    .line 71
    return-void
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 161
    move-object v1, v5

    if-nez v4, :cond_0

    .line 162
    const-string/jumbo v4, "UTF-8"

    move-object v1, v4

    .line 164
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v4

    .line 166
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    .line 167
    move v0, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v0

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    move-object v0, v4

    .line 170
    const/16 v4, 0x400

    new-array v4, v4, [C

    move-object v2, v4

    .line 172
    :goto_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 173
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1

    .line 167
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 178
    move-object v4, v0

    throw v4

    .line 175
    :cond_2
    move-object v4, v0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v0, v4

    .line 177
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 175
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v0, v4

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "https://translate.yandex.net/api/v1.5/tr.json/translate?key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&lang="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    const-string/jumbo v6, "UTF-8"

    .line 1122
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1124
    new-instance v4, Ljava/net/URL;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1126
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 1128
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/YandexTranslate;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1130
    new-instance v4, Lorg/json/JSONObject;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1132
    move-object v2, v5

    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1135
    move-object v4, v2

    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1136
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 1139
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/YandexTranslate$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/YandexTranslate$2;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1148
    :goto_0
    return-void

    .line 1147
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1148
    move-object v4, v0

    throw v4

    .line 49
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final ApiKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public final GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Yandex.Translate service returns the translated text. This event also provides a response code for error handling. If the responseCode is not 200, then something went wrong with the call, and the translation will not be available."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotTranslation"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 201
    return-void
.end method

.method public final RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "By providing a target language to translate to (for instance, \'es\' for Spanish, \'en\' for English, or \'ru\' for Russian), and a word or sentence to translate, this method will request a translation to the Yandex.Translate service.\nOnce the text is translated by the external service, the event GotTranslation will be executed.\nNote: Yandex.Translate will attempt to detect the source language. You can also specify prepending it to the language translation. I.e., es-ru will specify Spanish to Russian translation."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    const-string/jumbo v5, "RequestTranslation"

    const/16 v6, 0x899

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 89
    .line 106
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/YandexTranslate$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/YandexTranslate$1;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 106
    goto :goto_0
.end method
