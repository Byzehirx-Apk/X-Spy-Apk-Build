.class public Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADMOB_BANNER_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/6300978111"

.field public static final ADMOB_INTERSTITIAL_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/1033173712"

.field public static final ADMOB_KODULAR_BANNER_ID:Ljava/lang/String; = "ca-app-pub-9439286719204795/2208552876"

.field public static final ADMOB_KODULAR_INTERSTITIAL_ID:Ljava/lang/String; = "ca-app-pub-9439286719204795/6225008878"

.field public static final ADMOB_KODULAR_REWARDED_VIDEO_ID:Ljava/lang/String; = "ca-app-pub-9439286719204795/9992685881"

.field public static final ADMOB_REWARDED_VIDEO_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/5224354917"

.field public static final AD_COLONY_APP_ID:Ljava/lang/String; = "appb235d39ba30f401783"

.field public static final AD_COLONY_ZONE_ID:Ljava/lang/String; = "vzc8fd72c1e5494edca6"

.field public static final AD_MANAGER_BANNER_TEST_ID:Ljava/lang/String; = "/6499/example/banner"

.field public static final AD_MANAGER_INTERSTITIAL_TEST_ID:Ljava/lang/String; = "/6499/example/interstitial"

.field public static final AD_MANAGER_REWARDED_TEST_ID:Ljava/lang/String; = "/6499/example/rewarded"

.field public static final APP_LOVIN_SDK_KEY:Ljava/lang/String; = "EbEMcQnBzVuo9cK-oUIPKlMIiouhV1uxC-HlJeLJzP0TQG80dzkM3GgicsTXJvShe-8QJ6GrvmQcPeqltqgEkG"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final STARTAPP_APP_ID:Ljava/lang/String; = "204085028"

.field public static final UNITY_ADS_GAME_ID:Ljava/lang/String; = "3140736"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "Kodular Ads Util"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 58
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Device id: "

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 59
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method private static sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 43
    move-object v0, p0

    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 44
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    move-object v0, v5

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 46
    move-object v5, v0

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v0

    move v6, v3

    aget-byte v5, v5, v6

    move v4, v5

    .line 47
    move-object v5, v1

    move v6, v4

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x100

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 51
    :goto_1
    return-object v0

    :catch_0
    move-exception v5

    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_1
.end method
