.class public Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    const-string/jumbo v0, "Kodular GDPR Util"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->LOG_TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "at"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "be"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "bg"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "cy"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "cz"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "de"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "dk"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "ee"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "es"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "fi"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "fr"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "gb"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "gr"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "hr"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "hu"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "ie"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "it"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "lt"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "lu"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "lv"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "mt"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, "nl"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, "pl"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string/jumbo v3, "pt"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "ro"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string/jumbo v3, "se"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "si"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string/jumbo v3, "sk"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static isRequestLocationInEurope(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    .line 26
    move-object v0, v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 27
    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 28
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Current user country is: "

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 29
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 30
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 31
    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 32
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Current user is in EUROPE: "

    move v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 33
    move v1, v0

    move v0, v1

    .line 44
    :goto_0
    return v0

    .line 36
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "There was a error to retrieve the current user location."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 37
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "It was not possible to get the country code. We returned the value true as default to cover the EU privacy policy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 44
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
