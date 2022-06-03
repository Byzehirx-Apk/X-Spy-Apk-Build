.class public Lcom/google/appinventor/components/runtime/util/WebViewerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:[Ljava/lang/String;

.field private static CURRENT_COUNTRY:Ljava/lang/String;

.field private static ENGLISH:[Ljava/lang/String;

.field private static GERMAN:[Ljava/lang/String;

.field private static KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:[Ljava/lang/String;

.field private static PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:[Ljava/lang/String;

.field private static moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:[Ljava/lang/String;

.field private static oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:[Ljava/lang/String;

.field private static sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:[Ljava/lang/String;

.field private static tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:[Ljava/lang/String;

.field private static wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    const-string/jumbo v0, ""

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Berechtigungsanfrage"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Diese Anwendung"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " m\u00f6chte auf Ihren Standort zugreifen."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Zulassen"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Ablehnen"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->GERMAN:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Permission Request"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "This Application"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " would like to access your location."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Allow"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Denied"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Permintaan Izin"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Aplikasi ini"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " ingin mengakses lokasi Anda."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Mengizinkan"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Ditolak"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "\u0130zin \u0130ste\u011fi"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Bu uygulama"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " bulundu\u011funuz konuma eri\u015fmek istiyor."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "\u0130zin Ver"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Reddet"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Richiesta autorizzazione"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Questa applicazione"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " vorrebbe accedere alla tua posizione."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Permetti"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Nega"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Requer Permiss\u00e3o"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Esta Aplica\u00e7\u00e3o"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " gostaria de acessar sua localiza\u00e7\u00e3o."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Permitir"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Negado"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Toestemming geven"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Deze applicatie"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " wil uw locatie weten."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Toestaan"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Weigeren"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "\u0905\u0928\u0941\u092e\u0924\u093f \u0915\u093e \u0905\u0928\u0941\u0930\u094b\u0927"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "\u092f\u0939 \u0905\u0945\u092a\u0932\u093f\u0915\u0947\u0936\u0928"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " \u0906\u092a\u0915\u093e \u0938\u094d\u0925\u093e\u0928 \u091c\u093e\u0901\u091a\u0928\u093e \u091a\u093e\u0939\u0947\u0902\u0917\u0940\u0964"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "\u0905\u0928\u0941\u092e\u0924\u093f \u0926\u0947\u0902"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "\u0905\u0938\u094d\u0935\u0940\u0915\u0943\u0924 \u0915\u0930\u0947\u0902"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Solicitar Permiso"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Esta App"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " solicita acceso a la ubicaci\u00f3n."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Permitir"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Rechazar"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Enged\u00e9lyk\u00e9r\u00e9s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "Ez az alkalmaz\u00e1s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " hozz\u00e1f\u00e9r\u00e9st k\u00e9r a tart\u00f3zkod\u00e1si hely\u00e9hez."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Enged\u00e9lyez"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "Megtagad"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getPermissionAllowString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionApplicationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionDeniedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionMessageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResult(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    move v0, p0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 78
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    :goto_1
    return-object v0

    .line 50
    :sswitch_0
    move-object v3, v1

    const-string/jumbo v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    :sswitch_1
    move-object v3, v1

    const-string/jumbo v4, "de"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    goto :goto_0

    :sswitch_2
    move-object v3, v1

    const-string/jumbo v4, "ch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    move v2, v3

    goto :goto_0

    :sswitch_3
    move-object v3, v1

    const-string/jumbo v4, "at"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    move v2, v3

    goto :goto_0

    :sswitch_4
    move-object v3, v1

    const-string/jumbo v4, "gb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    move v2, v3

    goto :goto_0

    :sswitch_5
    move-object v3, v1

    const-string/jumbo v4, "us"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    move v2, v3

    goto :goto_0

    :sswitch_6
    move-object v3, v1

    const-string/jumbo v4, "ie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    move v2, v3

    goto :goto_0

    :sswitch_7
    move-object v3, v1

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    move v2, v3

    goto :goto_0

    :sswitch_8
    move-object v3, v1

    const-string/jumbo v4, "in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    move v2, v3

    goto :goto_0

    :sswitch_9
    move-object v3, v1

    const-string/jumbo v4, "tr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    move v2, v3

    goto/16 :goto_0

    :sswitch_a
    move-object v3, v1

    const-string/jumbo v4, "it"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    move v2, v3

    goto/16 :goto_0

    :sswitch_b
    move-object v3, v1

    const-string/jumbo v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    move v2, v3

    goto/16 :goto_0

    :sswitch_c
    move-object v3, v1

    const-string/jumbo v4, "nl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    move v2, v3

    goto/16 :goto_0

    :sswitch_d
    move-object v3, v1

    const-string/jumbo v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    move v2, v3

    goto/16 :goto_0

    :sswitch_e
    move-object v3, v1

    const-string/jumbo v4, "hu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    move v2, v3

    goto/16 :goto_0

    .line 52
    :pswitch_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 56
    :pswitch_1
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->GERMAN:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 60
    :pswitch_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 62
    :pswitch_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 64
    :pswitch_4
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 66
    :pswitch_5
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 68
    :pswitch_6
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 70
    :pswitch_7
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 72
    :pswitch_8
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 74
    :pswitch_9
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 76
    :pswitch_a
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:[Ljava/lang/String;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0xc33 -> :sswitch_3
        0xc65 -> :sswitch_2
        0xc81 -> :sswitch_1
        0xcae -> :sswitch_d
        0xcdb -> :sswitch_4
        0xd0d -> :sswitch_e
        0xd1b -> :sswitch_7
        0xd1c -> :sswitch_6
        0xd25 -> :sswitch_8
        0xd2b -> :sswitch_a
        0xdbe -> :sswitch_c
        0xe04 -> :sswitch_b
        0xe7e -> :sswitch_9
        0xe9e -> :sswitch_5
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    .line 21
    move-object v0, v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string/jumbo v1, "default"

    sput-object v1, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 26
    goto :goto_0
.end method
