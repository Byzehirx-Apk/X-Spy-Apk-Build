.class public Lcom/google/appinventor/components/runtime/util/KodularContentProtection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;,
        Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Content Protection"


# instance fields
.field private CURRENT_COUNTRY:Ljava/lang/String;

.field private ENGLISH:[Ljava/lang/String;

.field private GERMAN:[Ljava/lang/String;

.field private SPANISH:[Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field private canStartValidation:Z

.field private failReason:Ljava/lang/String;

.field private isAccepted:Z

.field private kActivity:Landroid/app/Activity;

.field private kAppId:Ljava/lang/String;

.field public kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    .line 43
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isAccepted:Z

    .line 45
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->canStartValidation:Z

    .line 48
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 174
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "Handlung erforderlich!"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "Ihre App wurde nicht f\u00fcr das Anzeigen von Werbung genehmigt. Bitte beantragen Sie die Aktivierung in ihren Kodular Account."

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "Anfrage"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "Sp\u00e4ter"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->GERMAN:[Ljava/lang/String;

    .line 175
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "Acci\u00f3n requerida"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "Esta app no ha sido aprobada para mostrar anuncios. Por favor, ve a My Kodular y env\u00eda tu solicitud."

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "Solicitar ahora"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "Luego"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->SPANISH:[Ljava/lang/String;

    .line 176
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "Action required!"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "Your app has not been approved to serve ads. Please go to my.kodular.io and request approval for your app."

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "Request now"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "Later"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->ENGLISH:[Ljava/lang/String;

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    .line 52
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "default"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 59
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isApproved()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isAccepted:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;Z)Z
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isAccepted:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;ZZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Landroid/app/AlertDialog;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    move-object v0, v1

    return-object v0
.end method

.method private getResult(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 194
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->ENGLISH:[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    :goto_1
    return-object v0

    .line 180
    :sswitch_0
    move-object v4, v2

    const-string/jumbo v5, "de"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v2

    const-string/jumbo v5, "ch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v2

    const-string/jumbo v5, "at"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    :sswitch_3
    move-object v4, v2

    const-string/jumbo v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    move v3, v4

    goto :goto_0

    .line 185
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->GERMAN:[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_1

    .line 188
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->SPANISH:[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_1

    .line 180
    :sswitch_data_0
    .sparse-switch
        0xc33 -> :sswitch_2
        0xc65 -> :sswitch_1
        0xc81 -> :sswitch_0
        0xcae -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isApproved()Z
    .locals 11

    .prologue
    .line 212
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 213
    move-object v1, v6

    const-string/jumbo v6, "https://api.creator.kodular.io/ads/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 214
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 215
    move-object v5, v1

    const-string/jumbo v6, "/check/v1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 216
    const-string/jumbo v5, "Content Protection"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Checking for App ID "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 218
    const/4 v5, 0x0

    move-object v2, v5

    .line 220
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 222
    move-object v2, v6

    const-string/jumbo v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 224
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_6

    .line 225
    new-instance v5, Ljava/io/BufferedReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v5

    .line 228
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v4, v6

    if-eqz v5, :cond_0

    .line 229
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    .line 231
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 233
    new-instance v5, Lorg/json/JSONObject;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 234
    move-object v1, v6

    const-string/jumbo v6, "success"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    const-string/jumbo v6, "approved"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    move-object v5, v0

    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    .line 236
    const-string/jumbo v5, "Content Protection"

    const-string/jumbo v6, "The application is ready to serve ads."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 255
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 256
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    .line 253
    :goto_1
    return v0

    .line 238
    :cond_2
    move-object v5, v1

    :try_start_1
    const-string/jumbo v6, "success"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v1

    const-string/jumbo v6, "approved"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 239
    move-object v5, v0

    const-string/jumbo v6, "Your app has not been approved to serve ads. Please go to my.kodular.io and request approval for your app."

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    .line 240
    const-string/jumbo v5, "Content Protection"

    const-string/jumbo v6, "The application is not approved to serve ads."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 255
    move-object v5, v2

    if-eqz v5, :cond_3

    .line 256
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 241
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 243
    :cond_4
    move-object v5, v0

    :try_start_2
    const-string/jumbo v6, "An unexpected response from Admob Validation System was received. Please try again."

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    .line 244
    const-string/jumbo v5, "Content Protection"

    const-string/jumbo v6, "Internal error! The server response is NULL. Please try again."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 245
    const-string/jumbo v5, "Content Protection"

    const-string/jumbo v6, "Response from server: "

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 255
    move-object v5, v2

    if-eqz v5, :cond_5

    .line 256
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 246
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 248
    :cond_6
    move-object v5, v0

    :try_start_3
    const-string/jumbo v6, "No response got from validation System. Please try again."

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    .line 249
    const-string/jumbo v5, "Content Protection"

    const-string/jumbo v6, "Internal error! No response was received from server."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    .line 255
    move-object v5, v2

    if-eqz v5, :cond_7

    .line 256
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 250
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 251
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 252
    :try_start_4
    const-string/jumbo v5, "Content Protection"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    .line 255
    move-object v5, v2

    if-eqz v5, :cond_8

    .line 256
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 253
    :cond_8
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_1

    .line 255
    :catchall_0
    move-exception v5

    move-object v1, v5

    move-object v5, v2

    if-eqz v5, :cond_9

    .line 256
    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 258
    :cond_9
    move-object v5, v1

    throw v5
.end method

.method private isConnected()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 201
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 202
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 203
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    .line 201
    move v0, v2

    goto :goto_0
.end method

.method private isInstalledFromGooglePlay()Z
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 208
    move-object v1, v3

    if-eqz v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "com.google.android.feedback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private setInterfaceHelper(ZZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

    if-eqz v4, :cond_0

    .line 133
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;->onResult(ZZLjava/lang/String;)V

    .line 135
    :cond_0
    move-object v4, v3

    const-string/jumbo v5, "Your app has not been approved to serve ads. Please go to my.kodular.io and request approval for your app."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->showWarningDialog()V

    .line 138
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->canStartValidation:Z

    .line 139
    return-void
.end method

.method private showWarningDialog()V
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 143
    move-object v1, v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    const v5, 0x1030239

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    .line 148
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 152
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 171
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 172
    return-void

    .line 145
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    const v5, 0x1030132

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

    .line 70
    return-void
.end method

.method public startContentValidation(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    .line 77
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->canStartValidation:Z

    if-eqz v2, :cond_3

    .line 78
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isInstalledFromGooglePlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string/jumbo v2, "Content Protection"

    const-string/jumbo v3, "Application was installed from Play Store"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 81
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    .line 82
    .line 110
    :goto_0
    return-void

    .line 86
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    check-cast v2, Lcom/google/appinventor/components/runtime/Form;

    .line 87
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string/jumbo v2, "Content Protection"

    const-string/jumbo v3, "Application is Companion"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 95
    .line 98
    :cond_1
    :goto_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const-string/jumbo v2, "Content Protection"

    const-string/jumbo v3, "Start now application content check."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 100
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;B)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 102
    :cond_2
    const-string/jumbo v2, "Content Protection"

    const-string/jumbo v3, "There was an internal error while loading the ad. No internet connection."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "There was an internal error while loading the ad. No internet connection."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    const-string/jumbo v2, "Content Protection"

    const-string/jumbo v3, "Can not load a new ad until the old requested one has finished loading or was shown."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 108
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "Can not load a new ad until the old requested one has finished loading or was shown."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    .line 110
    goto :goto_0
.end method
