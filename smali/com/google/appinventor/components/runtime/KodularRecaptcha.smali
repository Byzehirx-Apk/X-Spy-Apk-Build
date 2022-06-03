.class public Lcom/google/appinventor/components/runtime/KodularRecaptcha;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    helpUrl = "https://docs.kodular.io/components/google/recaptcha/"
    iconName = "images/recaptcha.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-safetynet.aar, play-services-safetynet.jar, play-services-base.aar, play-services-base.jar, play-services-basement.aar, play-services-basement.jar, play-services-tasks.aar, play-services-tasks.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private final vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 63
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    .line 65
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Map;

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 79
    const-string/jumbo v2, "ReCaptcha"

    const-string/jumbo v3, "Kodular reCaptcha component created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 80
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularRecaptcha;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v0

    move-object v0, v7

    .line 1169
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string/jumbo v9, "secret="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&response="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1171
    const-string/jumbo v7, "https://www.google.com/recaptcha/api/siteverify"

    move-object v6, v7

    .line 1172
    new-instance v7, Ljava/net/URL;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    .line 1173
    move-object v1, v8

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1174
    move-object v7, v1

    const-string/jumbo v8, "POST"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1175
    move-object v7, v1

    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v9, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    move-object v7, v1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    .line 1177
    move-object v2, v8

    move-object v8, v5

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1178
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 1179
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 1181
    move-object v7, v1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v1, v7

    .line 1182
    new-instance v7, Ljava/io/BufferedReader;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Ljava/io/InputStreamReader;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v7

    .line 1184
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v7

    .line 1186
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I

    move-result v7

    move v15, v7

    move v7, v15

    move v8, v15

    move v4, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1187
    move-object v7, v3

    move v8, v4

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_0

    .line 1189
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 1190
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 1191
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1194
    move-object v7, v4

    const-string/jumbo v8, "success"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v7

    move v1, v7

    .line 1197
    move-object v7, v4

    :try_start_1
    const-string/jumbo v8, "challenge_ts"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    .line 1198
    move-object v2, v8

    if-nez v7, :cond_1

    .line 1199
    const-string/jumbo v7, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v7

    .line 1204
    .line 1207
    :cond_1
    :goto_1
    move-object v7, v4

    :try_start_2
    const-string/jumbo v8, "apk_package_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    .line 1208
    move-object v3, v8

    if-nez v7, :cond_2

    .line 1209
    const-string/jumbo v7, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v7

    .line 1214
    .line 1216
    :cond_2
    :goto_2
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v5, v7

    .line 1218
    move-object v7, v4

    :try_start_4
    const-string/jumbo v8, "error-codes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    .line 1219
    move-object v4, v8

    if-eqz v7, :cond_3

    move-object v7, v4

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1220
    const/4 v7, 0x0

    move v6, v7

    :goto_3
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1221
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Map;

    move-object v9, v4

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    .line 1220
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1203
    :catch_0
    move-exception v7

    :try_start_5
    const-string/jumbo v7, ""

    move-object v2, v7

    goto :goto_1

    .line 1213
    :catch_1
    move-exception v7

    const-string/jumbo v7, ""

    move-object v3, v7

    goto :goto_2

    .line 1226
    .line 1227
    :cond_3
    :goto_4
    move-object v7, v5

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v7

    move-object v4, v7

    .line 1235
    .line 1237
    :goto_5
    move v7, v1

    move v5, v7

    .line 1238
    move-object v7, v2

    move-object v6, v7

    .line 1239
    move-object v7, v3

    move-object v1, v7

    .line 1240
    move-object v7, v4

    move-object v2, v7

    .line 1242
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v8, Lcom/google/appinventor/components/runtime/KodularRecaptcha$5;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move v11, v5

    move-object v12, v6

    move-object v13, v1

    move-object v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$5;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;ZLjava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    return-void

    :catch_2
    move-exception v7

    goto :goto_4

    .line 1228
    :catch_3
    move-exception v7

    :goto_6
    move-object v5, v7

    .line 1229
    const/4 v7, 0x0

    move v1, v7

    .line 1230
    const-string/jumbo v7, ""

    move-object v2, v7

    .line 1231
    const-string/jumbo v7, ""

    move-object v3, v7

    .line 1232
    new-instance v7, Ljava/util/ArrayList;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    .line 1233
    move-object v6, v8

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1234
    move-object v7, v6

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    move-object v4, v7

    goto :goto_5

    .line 1228
    :catch_4
    move-exception v7

    goto :goto_6
.end method


# virtual methods
.method public Prompt()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompt the user with a Google reCaptcha challenge. Needs a reCaptcha API Site Key to work."
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/safetynet/SafetyNetClient;->verifyWithRecaptcha(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 130
    return-void
.end method

.method public PromptErrored(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked when Google reCaptcha prompt returns an error status code."
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "PromptErrored"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 141
    return-void
.end method

.method public PromptSucceeded(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked Google reCaptcha returns a success status code, returning the user response token which should be verified later."
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PromptSucceeded"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 136
    return-void
.end method

.method public SiteKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the Google reCaptcha API Site Key."
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public SiteKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Google reCaptcha API Site Key. It is mandatory to use reCaptcha, as it will identify user\'s request with the challenge prompt."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public Validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Validate the received userResponseToken with your API Secret Key, for increased security. It is recommended to use the \'Obfuscated Text\' block with the API Secret Key."
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularRecaptcha$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$4;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public ValidateResponse(ZLjava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be triggered after the Validate method gets a response. \'success\' will return true when the prompt was completed successfully, \'challenge Timestamp\' is the date the challenge was completed in ISO format, \'app Package Name\' will return the package name of the app where the challenge was completed, and \'error Messages\' is a list of all errors that occurred during the validation."
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "ValidateResponse"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    .line 160
    return-void
.end method
