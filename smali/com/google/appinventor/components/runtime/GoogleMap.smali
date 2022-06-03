.class public Lcom/google/appinventor/components/runtime/GoogleMap;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Visible component that show information on Google map."
    helpUrl = "https://docs.kodular.io/components/google/google-maps/"
    iconName = "images/gMap.png"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-location.jar",
        "play-services-location.aar",
        "play-services-maps.jar",
        "play-services-maps.aar",
        "play-services-places-placereport.aar",
        "play-services-places-placereport.jar",
        "play-services-tasks.jar",
        "play-services-tasks.aar",
        "core-runtime.jar",
        "core-runtime.aar",
        "gson.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.INTERNET",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION",
        "com.google.android.providers.gsf.permission.READ_GSERVICES"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GoogleMap$a;
    }
.end annotation


# static fields
.field private static final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final RADIUS_OF_EARTH_METERS:D = 6371009.0

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/location/LocationRequest;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:F

.field private HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

.field private I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:I

.field private KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

.field private PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Z

.field private UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

.field private final XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Ljava/lang/String;

.field private XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

.field private ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

.field private Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

.field private final androidUIHandler:Landroid/os/Handler;

.field private eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

.field private eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

.field private fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private havePermission:Z

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Bundle;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/GoogleMap$a;",
            ">;"
        }
    .end annotation
.end field

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 155
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 184
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const-wide/16 v2, 0x10

    .line 185
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/location/LocationRequest;

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 104
    move-object v4, v0

    const-string/jumbo v5, ""

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 119
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    .line 122
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    .line 123
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    .line 124
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

    .line 125
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

    .line 126
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    .line 127
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

    .line 128
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Z

    .line 131
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    .line 133
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

    .line 134
    move-object v4, v0

    const-string/jumbo v5, "standard"

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    .line 139
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    .line 144
    move-object v4, v0

    const v5, -0xde690e

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 145
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z

    .line 148
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

    .line 149
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

    .line 150
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    .line 157
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    .line 158
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    .line 159
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    .line 161
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    .line 164
    move-object v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:F

    .line 165
    move-object v4, v0

    const/high16 v5, -0x1000000

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    .line 166
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:I

    .line 167
    move-object v4, v0

    const/16 v5, 0x14

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    .line 168
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v5

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:I

    .line 174
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    .line 178
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->havePermission:Z

    .line 190
    const-string/jumbo v4, "GoogleMap"

    const-string/jumbo v5, "In the constructor of GoogleMap"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 191
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    .line 192
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 193
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getOnCreateBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Bundle;

    .line 194
    const-string/jumbo v4, "GoogleMap"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "savedInstanceState in GM: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 197
    move-object v4, v0

    new-instance v5, Landroid/widget/LinearLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    .line 198
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 200
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "map_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Ljava/lang/String;

    .line 201
    const-string/jumbo v4, "GoogleMap"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "map_tag:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 204
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 2438
    move-object v2, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v4

    move v3, v4

    .line 2439
    const-string/jumbo v4, "GoogleMap"

    const-string/jumbo v5, "googlePlayServicesAvailable:"

    move v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2441
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 205
    :goto_0
    :pswitch_0
    move-object v4, v0

    move-object v2, v4

    .line 2463
    move-object v4, v2

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.google.android.apps.maps"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2466
    .line 208
    :goto_1
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Ljava/lang/String;

    .line 209
    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    if-nez v4, :cond_0

    .line 213
    const-string/jumbo v4, "GoogleMap"

    const-string/jumbo v5, "mMapFragment is null."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 215
    move-object v4, v0

    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->newInstance()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 218
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 219
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v2, v4

    .line 220
    const-string/jumbo v4, "GoogleMap"

    const-string/jumbo v5, "here before adding fragment"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 222
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 224
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v4

    .line 227
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V

    .line 228
    move-object v4, v1

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 230
    move-object v4, v0

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->Width(I)V

    .line 231
    move-object v4, v0

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->Height(I)V

    .line 232
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 233
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 234
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 235
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 236
    return-void

    .line 2443
    :pswitch_1
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    const-string/jumbo v6, "checkGooglePlayServiceSDK"

    const/16 v7, 0x2eeb

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2445
    goto/16 :goto_0

    .line 2447
    :pswitch_2
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    const-string/jumbo v6, "checkGooglePlayServiceSDK"

    const/16 v7, 0x2ef0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2449
    goto/16 :goto_0

    .line 2451
    :pswitch_3
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    const-string/jumbo v6, "checkGooglePlayServiceSDK"

    const/16 v7, 0x2ef1

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2453
    goto/16 :goto_0

    .line 2455
    :pswitch_4
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    const-string/jumbo v6, "checkGooglePlayServiceSDK"

    const/16 v7, 0x2ef2

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2465
    :catch_0
    move-exception v4

    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    const-string/jumbo v6, "checkGoogleMapInstalled"

    const/16 v7, 0x2eea

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 168
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 2441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Z)V
    .locals 7

    .prologue
    .line 727
    move-object v0, p0

    move v1, p1

    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "@EnableMyLocation:"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 728
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 729
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    .line 731
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_2

    .line 733
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 734
    move v2, v1

    if-eqz v2, :cond_1

    .line 735
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt()V

    .line 736
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 746
    :goto_0
    return-void

    .line 738
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    goto :goto_0

    .line 740
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 741
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "EnableMyLocation"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 744
    goto :goto_0

    .line 742
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 743
    const-string/jumbo v2, "GoogleMap"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 746
    :cond_2
    goto :goto_0
.end method

.method private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V
    .locals 3

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_0

    .line 276
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    .line 277
    const-string/jumbo v1, "GoogleMap"

    const-string/jumbo v2, "setUpMapIfNeeded. mMap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 278
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 279
    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    .line 282
    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 13

    .prologue
    .line 12725
    move-object v1, p0

    move-object v2, p1

    const/4 v4, 0x1

    new-array v4, v4, [F

    move-object v3, v4

    .line 12726
    move-object v4, v1

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v12, v3

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 12727
    move-object v4, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    .line 97
    move-wide v1, v4

    return-wide v1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()I
    .locals 6

    .prologue
    .line 247
    :goto_0
    sget-object v2, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v5, v2

    move v2, v5

    move v3, v5

    .line 249
    move v0, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v2, v5

    move v3, v5

    .line 250
    move v1, v3

    const v3, 0xffffff

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 251
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;

    move v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    move v2, v0

    move v0, v2

    return v0

    .line 254
    :cond_1
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I
    .locals 15

    .prologue
    .line 1056
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    const-string/jumbo v8, "GoogleMap"

    const-string/jumbo v9, "@addMarkerToMap"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1057
    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v1, v8

    .line 1058
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lcom/google/android/gms/maps/model/MarkerOptions;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object v10, v1

    .line 1059
    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    move v10, v4

    .line 1060
    invoke-static {v10}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    .line 1058
    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v8

    move-object v1, v8

    .line 1062
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1063
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1065
    :cond_0
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1066
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1068
    :cond_1
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1070
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v9, v1

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1071
    move v8, v3

    move v0, v8

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 15

    .prologue
    .line 1720
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v6, v2

    const-wide v8, 0x41584db040000000L    # 6371009.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 1721
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide v12, v4

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v1, v6

    return-object v1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Lcom/google/android/gms/maps/model/Marker;
    .locals 12

    .prologue
    .line 1348
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 1350
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1351
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    const-string/jumbo v5, "getMarkerIfExisted"

    const/16 v6, 0x2eed

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 1352
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1351
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1354
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 507
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 509
    move-object v2, v4

    if-nez v3, :cond_0

    .line 510
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    const-string/jumbo v5, "getCircleIfExisted"

    const/16 v6, 0x2eef

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 511
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 510
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 512
    const/4 v3, 0x0

    move-object v0, v3

    .line 514
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;TE;>;TE;)TT;"
        }
    .end annotation

    .prologue
    .line 1509
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 1510
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1511
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 1514
    :goto_1
    return-object v0

    .line 1513
    :cond_0
    goto :goto_0

    .line 1514
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2035
    move-object v1, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 2036
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2037
    move-object v5, v2

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v6

    .line 12031
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2037
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2036
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2039
    :cond_0
    move-object v5, v2

    move-object v1, v5

    return-object v1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;Z)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;Z)Z
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->havePermission:Z

    move v0, v2

    return v0
.end method

.method private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt()V
    .locals 8

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_0

    .line 293
    move-object v1, v0

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    move-object v5, v0

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 294
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    move-object v3, v0

    .line 295
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    move-object v3, v0

    .line 296
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public AddCircle(DDDIFFIZ)I
    .locals 25
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a circle overlay on the map UI with specified latitude and longitude for center. \"hue\" (min 0, max 360) and \"alpha\" (min 0, max 255) are used to set color and transparency level of the circle, \"strokeWidth\" and \"strokeColor\" are for the perimeter of the circle. Returning a unique id of the circle for future reference to events raised by moving this circle. If the circle isset to be draggable, two default markers will appear on the map: one in the center of the circle, another on the perimeter."
    .end annotation

    .prologue
    .line 4030
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    sget-object v14, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v14

    .line 484
    move v13, v14

    .line 485
    move v14, v8

    const/4 v15, 0x3

    new-array v15, v15, [F

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const/16 v17, 0x0

    move/from16 v18, v9

    aput v18, v16, v17

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const/16 v17, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const/16 v17, 0x2

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static {v14, v15}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v14

    move v8, v14

    .line 487
    move v14, v12

    if-eqz v14, :cond_0

    .line 489
    new-instance v14, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v1

    new-instance v17, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    invoke-direct/range {v18 .. v22}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-wide/from16 v18, v6

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v8

    invoke-direct/range {v15 .. v22}, Lcom/google/appinventor/components/runtime/GoogleMap$a;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;DFII)V

    move-object v2, v14

    .line 491
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    move-object v15, v2

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 492
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    move-object v15, v2

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 493
    .line 503
    :goto_0
    move v14, v13

    move v1, v14

    return v1

    .line 494
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v15, Lcom/google/android/gms/maps/model/CircleOptions;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v16, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-direct/range {v17 .. v21}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 495
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v15

    move-wide/from16 v16, v6

    .line 496
    invoke-virtual/range {v15 .. v17}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v15

    move/from16 v16, v10

    .line 497
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v15

    move/from16 v16, v11

    .line 498
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v15

    move/from16 v16, v8

    .line 499
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v15

    .line 494
    invoke-virtual {v14, v15}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v14

    move-object v2, v14

    .line 500
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    move-object v15, v2

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0
.end method

.method public AddMarkers(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 27
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailLists for markers. The representation of a maker in the inner YailList is composed of: lat(double) [required], long(double) [required], Color, title(String), snippet(String), draggable(boolean). Return a list of unqiue ids for the added  markers. Note that the markers ids are not meant to persist after  the app is closed, but for temporary references to the markers within the program only. Return an empty list if any error happen in the input"
    .end annotation

    .prologue
    .line 920
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 922
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v18

    .line 923
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v4, v19

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v7, v18

    const/16 v18, 0x0

    move/from16 v8, v18

    :goto_0
    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    move-object/from16 v18, v4

    move/from16 v19, v8

    aget-object v18, v18, v19

    move-object/from16 v9, v18

    .line 924
    const/16 v18, 0x1

    move/from16 v10, v18

    .line 925
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 926
    const-string/jumbo v18, "GoogleMap"

    const-string/jumbo v19, "interior YailLiat"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 927
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 928
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 931
    :cond_0
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 932
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    .line 933
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 934
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 935
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v13, v18

    .line 936
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v14, v18

    .line 939
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/DFloNum;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/DFloNum;

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 940
    :cond_1
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 948
    :goto_1
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, -0x3fa9800000000000L    # -90.0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x4056800000000000L    # 90.0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_2

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, -0x3f99800000000000L    # -180.0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x4066800000000000L    # 180.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_3

    .line 949
    :cond_2
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 954
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    move/from16 v18, v0

    move/from16 v11, v18

    .line 955
    const-string/jumbo v18, ""

    move-object/from16 v12, v18

    .line 956
    const-string/jumbo v18, ""

    move-object/from16 v15, v18

    .line 957
    const/16 v18, 0x0

    move/from16 v16, v18

    .line 959
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 961
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 962
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 963
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 965
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 966
    move-object/from16 v18, v17

    check-cast v18, Lgnu/math/IntNum;

    invoke-virtual/range {v18 .. v18}, Lgnu/math/IntNum;->intValue()I

    move-result v18

    move/from16 v11, v18

    .line 972
    :cond_4
    :goto_2
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 973
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 974
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 975
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 976
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    .line 978
    :cond_5
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 979
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 980
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 981
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 982
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    .line 984
    :cond_6
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 985
    move-object/from16 v18, v9

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 986
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 987
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 989
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 990
    move-object/from16 v18, v17

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v16, v18

    .line 996
    :cond_7
    :goto_3
    move/from16 v18, v11

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 997
    move/from16 v18, v10

    if-eqz v18, :cond_8

    .line 6020
    sget-object v18, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v18

    .line 998
    move/from16 v17, v18

    .line 999
    move-object/from16 v18, v6

    move/from16 v19, v17

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 1000
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v21, v17

    move-object/from16 v22, v5

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v12

    move-object/from16 v24, v15

    move/from16 v25, v16

    invoke-direct/range {v18 .. v25}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    move-result v18

    .line 1003
    .line 923
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 942
    :cond_9
    move-object/from16 v18, v11

    check-cast v18, Lgnu/math/DFloNum;

    invoke-virtual/range {v18 .. v18}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v13, v18

    .line 943
    move-object/from16 v18, v12

    check-cast v18, Lgnu/math/DFloNum;

    invoke-virtual/range {v18 .. v18}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v14, v18

    goto/16 :goto_1

    .line 968
    :cond_a
    const/16 v18, 0x0

    move/from16 v10, v18

    goto/16 :goto_2

    .line 992
    :cond_b
    const/16 v18, 0x0

    move/from16 v10, v18

    goto :goto_3

    .line 1005
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkers"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    const-string/jumbo v25, "marker is not represented as list"

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_4

    .line 1009
    :cond_d
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v18

    move-object/from16 v3, v18

    return-object v3
.end method

.method public AddMarkersFromJson(Ljava/lang/String;)V
    .locals 25
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of markers that are represented as JsonArray.  The inner JsonObject represents a markerand is composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .prologue
    .line 1090
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v16

    .line 1091
    new-instance v16, Lcom/google/gson/JsonParser;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/JsonParser;-><init>()V

    move-object/from16 v5, v16

    .line 1092
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 1096
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    :try_start_0
    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    .line 1097
    move-object/from16 v5, v17

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1098
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v16

    move-object/from16 v5, v16

    .line 1100
    const-string/jumbo v16, "GoogleMap"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "It\'s a JsonArry: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1101
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v5, v16

    :goto_0
    move-object/from16 v16, v5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v16, v5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonElement;

    move-object/from16 v7, v16

    .line 1102
    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1104
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1105
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    .line 1106
    move-object/from16 v7, v17

    const-string/jumbo v17, "lat"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v16, v7

    const-string/jumbo v17, "lng"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    if-nez v16, :cond_1

    .line 1107
    :cond_0
    goto :goto_0

    .line 1112
    :cond_1
    move-object/from16 v16, v7

    const-string/jumbo v17, "lat"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonPrimitive;

    move-object/from16 v9, v16

    .line 1113
    move-object/from16 v16, v7

    const-string/jumbo v17, "lng"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonPrimitive;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, v16

    .line 1115
    const-wide/16 v16, 0x0

    move-wide/from16 v12, v16

    .line 1116
    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    .line 1121
    move-object/from16 v16, v9

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1122
    const-string/jumbo v16, "GoogleMap"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "jpLat:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1123
    const-string/jumbo v16, "GoogleMap"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "jpLng:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1125
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 1126
    new-instance v16, Ljava/lang/Double;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 1127
    const-string/jumbo v16, "GoogleMap"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "convert to double:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    .line 1138
    :goto_1
    move-wide/from16 v16, v12

    const-wide v18, -0x3fa9800000000000L    # -90.0

    cmpg-double v16, v16, v18

    if-ltz v16, :cond_2

    move-wide/from16 v16, v12

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpl-double v16, v16, v18

    if-gtz v16, :cond_2

    move-wide/from16 v16, v14

    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpg-double v16, v16, v18

    if-ltz v16, :cond_2

    move-wide/from16 v16, v14

    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_3

    .line 1139
    :cond_2
    :try_start_2
    const-string/jumbo v16, "GoogleMap"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "Lat/Lng wrong range:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1140
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 1144
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    move/from16 v16, v0

    move-object/from16 v17, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1145
    move-object/from16 v16, v6

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v9, v16

    .line 1146
    move-object/from16 v16, v7

    const-string/jumbo v17, "color"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    if-nez v16, :cond_8

    move/from16 v16, v9

    :goto_2
    move/from16 v24, v16

    move/from16 v16, v24

    move/from16 v17, v24

    .line 1148
    move/from16 v9, v17

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_4

    move/from16 v16, v9

    const/high16 v17, 0x43b40000    # 360.0f

    cmpl-float v16, v16, v17

    if-lez v16, :cond_5

    .line 1149
    :cond_4
    const-string/jumbo v16, "GoogleMap"

    const-string/jumbo v17, "Wrong color"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1150
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 1153
    :cond_5
    move-object/from16 v16, v7

    const-string/jumbo v17, "title"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    if-nez v16, :cond_9

    const-string/jumbo v16, ""

    :goto_3
    move-object/from16 v10, v16

    .line 1154
    move-object/from16 v16, v7

    const-string/jumbo v17, "snippet"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    if-nez v16, :cond_a

    const-string/jumbo v16, ""

    :goto_4
    move-object/from16 v11, v16

    .line 1155
    move-object/from16 v16, v7

    const-string/jumbo v17, "draggable"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    if-nez v16, :cond_b

    const/16 v16, 0x0

    :goto_5
    move/from16 v7, v16

    .line 1157
    move/from16 v16, v8

    if-eqz v16, :cond_6

    .line 1158
    const-string/jumbo v16, "GoogleMap"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "Adding marker"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 7020
    sget-object v16, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v16

    .line 1159
    move/from16 v8, v16

    .line 1160
    move-object/from16 v16, v4

    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 1161
    move-object/from16 v16, v2

    move-wide/from16 v17, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-wide/from16 v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v23, v7

    invoke-direct/range {v16 .. v23}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 1166
    :cond_6
    goto/16 :goto_0

    .line 1129
    :cond_7
    move-object/from16 v16, v7

    :try_start_3
    const-string/jumbo v17, "lat"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 1130
    move-object/from16 v16, v7

    const-string/jumbo v17, "lng"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsDouble()D
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 1135
    goto/16 :goto_1

    .line 1134
    :catch_0
    move-exception v16

    const/16 v16, 0x0

    move/from16 v8, v16

    goto/16 :goto_1

    .line 1146
    :cond_8
    move-object/from16 v16, v7

    :try_start_4
    const-string/jumbo v17, "color"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_2

    .line 1153
    :cond_9
    move-object/from16 v16, v7

    const-string/jumbo v17, "title"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 1154
    :cond_a
    move-object/from16 v16, v7

    const-string/jumbo v17, "snippet"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 1155
    :cond_b
    move-object/from16 v16, v7

    const-string/jumbo v17, "draggable"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsBoolean()Z
    :try_end_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v16

    goto/16 :goto_5

    .line 1168
    .line 1180
    :cond_c
    :goto_6
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1182
    return-void

    .line 1169
    :cond_d
    move-object/from16 v16, v2

    :try_start_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    const-string/jumbo v18, "AddMarkersFromJson"

    const/16 v19, 0x2eec

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x0

    const-string/jumbo v23, "markers needs to be represented as JsonArray"

    aput-object v23, v21, v22

    invoke-virtual/range {v16 .. v20}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1171
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1178
    goto :goto_6

    .line 1175
    :catch_1
    move-exception v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    const-string/jumbo v18, "AddMarkersFromJson"

    const/16 v19, 0x2eee

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x0

    move-object/from16 v23, v3

    aput-object v23, v21, v22

    invoke-virtual/range {v16 .. v20}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1177
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_6
.end method

.method public AddMarkersHue(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 28
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailList for markers. The inner YailList represents a marker and is composed of lat(Double) [required], long(Double) [required], color(int)[in hue value ranging from 0-360], title(String), snippet(String), draggable(boolean). Return a list of unique ids for the markers that are added"
    .end annotation

    .prologue
    .line 1194
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    .line 1196
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v4, v19

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v6, v18

    const/16 v18, 0x0

    move/from16 v7, v18

    :goto_0
    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    move-object/from16 v18, v4

    move/from16 v19, v7

    aget-object v18, v18, v19

    move-object/from16 v8, v18

    .line 1197
    const/16 v18, 0x1

    move/from16 v9, v18

    .line 1198
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 1199
    const-string/jumbo v18, "GoogleMap"

    const-string/jumbo v19, "Interior YailLiat"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1200
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1202
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkers"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    const-string/jumbo v25, "Need more than 2 inputs"

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1204
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 1209
    :cond_0
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 1210
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 1211
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1212
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1213
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v12, v18

    .line 1214
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v13, v18

    .line 1217
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/DFloNum;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/DFloNum;

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 1218
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkersHue"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    const-string/jumbo v25, "Not a number for latitude or longitude"

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1220
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 1226
    :goto_1
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, -0x3fa9800000000000L    # -90.0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x4056800000000000L    # 90.0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_2

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, -0x3f99800000000000L    # -180.0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x4066800000000000L    # 180.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_3

    .line 1227
    :cond_2
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 1228
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkers"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    const-string/jumbo v25, "Range for the latitude or longitude is wrong"

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 8020
    :cond_3
    sget-object v18, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v18

    .line 1232
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v10, v18

    .line 1233
    const/high16 v18, 0x43700000    # 240.0f

    move/from16 v11, v18

    .line 1234
    const-string/jumbo v18, ""

    move-object/from16 v14, v18

    .line 1235
    const-string/jumbo v18, ""

    move-object/from16 v15, v18

    .line 1236
    const/16 v18, 0x0

    move/from16 v16, v18

    .line 1238
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 1240
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1241
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1242
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1244
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1245
    move-object/from16 v18, v17

    check-cast v18, Lgnu/math/IntNum;

    invoke-virtual/range {v18 .. v18}, Lgnu/math/IntNum;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 1253
    :cond_4
    :goto_2
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1254
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 1255
    move-object/from16 v17, v19

    check-cast v18, Ljava/lang/String;

    move-object/from16 v14, v18

    .line 1256
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1257
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1260
    :cond_5
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 1261
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 1262
    move-object/from16 v17, v19

    check-cast v18, Ljava/lang/String;

    move-object/from16 v15, v18

    .line 1263
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1264
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1267
    :cond_6
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 1268
    move-object/from16 v18, v8

    check-cast v18, Lcom/google/appinventor/components/runtime/util/YailList;

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1270
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Type: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1271
    const-string/jumbo v18, "GoogleMap"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string/jumbo v21, "Value: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1273
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1274
    move-object/from16 v18, v17

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v16, v18

    .line 1282
    :cond_7
    :goto_3
    move/from16 v18, v9

    if-eqz v18, :cond_8

    .line 1283
    move-object/from16 v18, v5

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 1284
    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move/from16 v25, v16

    invoke-direct/range {v18 .. v25}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    move-result v18

    .line 1286
    .line 1196
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1222
    :cond_9
    move-object/from16 v18, v10

    check-cast v18, Lgnu/math/DFloNum;

    invoke-virtual/range {v18 .. v18}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v12, v18

    .line 1223
    move-object/from16 v18, v11

    check-cast v18, Lgnu/math/DFloNum;

    invoke-virtual/range {v18 .. v18}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v13, v18

    goto/16 :goto_1

    .line 1247
    :cond_a
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 1248
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkersHue"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v27, v25

    move-object/from16 v25, v27

    move-object/from16 v26, v27

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v17

    .line 1249
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is not a number"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 1248
    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1276
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkers"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    const-string/jumbo v25, "marker not as a list"

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1278
    const/16 v18, 0x0

    move/from16 v9, v18

    goto/16 :goto_3

    .line 1288
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const-string/jumbo v20, "AddMarkersHue"

    const/16 v21, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    const-string/jumbo v25, "Marker is not represented as list"

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1290
    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v18

    move-object/from16 v3, v18

    .line 1293
    :goto_4
    return-object v3

    :cond_d
    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v18

    move-object/from16 v3, v18

    goto :goto_4
.end method

.method public AddPolyline(Lcom/google/appinventor/components/runtime/util/YailList;FI)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will return the unique id of the new added polyline. Create a new polyline on the map. Use for \'points\' a list of lat, lng pairs. A integer for the \'width\' (in pixel) and a valid color for the \'color\' parameter."
    .end annotation

    .prologue
    .line 2059
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/PolylineOptions;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v4

    move-object v1, v4

    .line 12040
    sget-object v4, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 2060
    move v2, v4

    .line 2061
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2062
    move v4, v2

    move v0, v4

    return v0
.end method

.method public ApiKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the API Key"
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public BoundCamera(DDDD)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Transforms the camera such that the specified latitude/longitude bounds are centered on screen at the greatest possible zoom level. Need to specify both latitudes and longitudes for both northeast location and southwest location of the bounding box"
    .end annotation

    .prologue
    .line 1606
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v10, :cond_0

    .line 1607
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-wide v12, v2

    move-wide v14, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v2, v10

    .line 1608
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-wide v12, v6

    move-wide v14, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v3, v10

    .line 1609
    new-instance v10, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1611
    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    move-object v2, v10

    .line 1612
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1614
    :cond_0
    return-void
.end method

.method public CameraAngle()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current tilt, the angle (in degrees) from the nadir (directly facing the Earth), of the map\'s camera."
    .end annotation

    .prologue
    .line 1988
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 1989
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    move v0, v1

    .line 1991
    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    move v0, v1

    goto :goto_0
.end method

.method public CameraAngle(F)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified tilt, the angle (in degrees) from the nadir (directly facing the Earth). Must be a value between 0.0 and 90.0"
    .end annotation

    .prologue
    .line 1977
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1978
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 1979
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1984
    :goto_0
    return-void

    .line 1981
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

    .line 1984
    :cond_1
    goto :goto_0
.end method

.method public CameraPositionChanged(DDFFF)V
    .locals 21
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called after the camera position of a map has changed."
    .end annotation

    .prologue
    .line 1539
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v9, Lcom/google/appinventor/components/runtime/GoogleMap$12;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/appinventor/components/runtime/GoogleMap$12;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DDFFF)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1545
    return-void
.end method

.method public CameraRotation()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current bearing, the direction that the camera is pointing in (in degrees clockwise from north), of the map\'s camera."
    .end annotation

    .prologue
    .line 2006
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 2007
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    move v0, v1

    .line 2009
    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    move v0, v1

    goto :goto_0
.end method

.method public CameraRotation(F)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified bearing, the direction that the camera is pointing in (in degrees clockwise from north)."
    .end annotation

    .prologue
    .line 1997
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 1998
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2002
    :goto_0
    return-void

    .line 2000
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

    .line 2002
    goto :goto_0
.end method

.method public CameraZoomLevel()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current zoom level of the map\'s camera."
    .end annotation

    .prologue
    .line 1936
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 1937
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    move v0, v1

    .line 1939
    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    move v0, v1

    goto :goto_0
.end method

.method public CameraZoomLevel(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "15"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified zoom level."
    .end annotation

    .prologue
    .line 1927
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 1928
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move v3, v1

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1932
    :goto_0
    return-void

    .line 1930
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    .line 1932
    goto :goto_0
.end method

.method public CompassEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the compass widget is currently enabled in the map ui"
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public EnableCompass(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the compass widget on the map\'s ui. Call this only after event \"MapIsReady\" is received"
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    if-eqz v2, :cond_0

    .line 360
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

    .line 361
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public EnableMapCameraPosChangeListener(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s camera position changed event"
    .end annotation

    .prologue
    .line 860
    move-object v0, p0

    move v1, p1

    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "@EnableMapCameraPosChangeListener:"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 861
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 862
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    .line 865
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 866
    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "enable cameraChangedListener?:"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 867
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 869
    :cond_1
    return-void

    .line 867
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public EnableMapClickListener(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s click event"
    .end annotation

    .prologue
    .line 806
    move-object v0, p0

    move v1, p1

    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "@EnableMapClickListener:"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 807
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 808
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

    .line 810
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 811
    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "enable map listener?: "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 812
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 814
    :cond_1
    return-void

    .line 812
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public EnableMapLongClickListener(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/disable to listen to map\'s long click event"
    .end annotation

    .prologue
    .line 833
    move-object v0, p0

    move v1, p1

    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "@EnableMapLongClickListener:"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 834
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 835
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

    .line 837
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 838
    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "enable long click listener?:"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 839
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 841
    :cond_1
    return-void

    .line 839
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public EnableMyLocation(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable or disable my location widget control for Google Map. One can call GetMyLocation() to obtain the current location after enable this.\""
    .end annotation

    .prologue
    .line 700
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->havePermission:Z

    if-nez v2, :cond_0

    .line 702
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/GoogleMap$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/GoogleMap$6;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Z)V

    .line 724
    goto :goto_0
.end method

.method public EnableRotate(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to rotate a map on the ui. Call this only after the event \"MapIsReady\" is received."
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    if-eqz v2, :cond_0

    .line 374
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

    .line 375
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method public EnableScroll(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to scroll a map on the ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    if-eqz v2, :cond_0

    .line 388
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    .line 389
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public EnableZoomControl(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the zoom widget on the map\'s ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

    .line 402
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 403
    return-void
.end method

.method public EnableZoomGesture(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables zoom gesture on the map ui. Call this only after the event  \"MapIsReady\" is received. "
    .end annotation

    .prologue
    .line 413
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    if-eqz v2, :cond_0

    .line 414
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    .line 415
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method public FinishedDraggingCircle(IDDD)V
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event been raised after the action of moving a draggable circle is finished. Possible a user drag the center of the circle or drag the radius marker of the circle"
    .end annotation

    .prologue
    .line 627
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v9, Lcom/google/appinventor/components/runtime/GoogleMap$1;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v0

    move v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v10 .. v18}, Lcom/google/appinventor/components/runtime/GoogleMap$1;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDDD)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method

.method public GetAllCircleIDs()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all circles Ids. A short cut to get all the references for the eixisting circles"
    .end annotation

    .prologue
    .line 613
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetAllMarkerID()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all the existing markers\'s Ids"
    .end annotation

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetAllPolylineIds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This will return a list with all available polyline id\'s."
    .end annotation

    .prologue
    .line 2122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Set;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetMarkers()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a list of markers composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .prologue
    .line 1080
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public GetMyLocation()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current location using Google Map Service. Return a YailList with first item beingthe latitude, the second item being the longitude, and last time being the accuracy of the reading."
    .end annotation

    .prologue
    .line 757
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 759
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    const-string/jumbo v3, "GoogleMap"

    const-string/jumbo v4, "client is connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 761
    sget-object v3, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v3

    move-object v2, v3

    .line 762
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 763
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 764
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 767
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public GetPointsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a JsonArray of points (lat, lng pairs) to a list."
    .end annotation

    .prologue
    .line 2046
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 2047
    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2048
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2049
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 2050
    goto :goto_0

    .line 2051
    :cond_0
    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 2053
    :goto_1
    return-object v0

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 269
    const/4 v2, -0x2

    move v1, v2

    .line 271
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 272
    return-void
.end method

.method public InfoWindowClicked(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the marker\'s infowindow is clicked, returning marker\'s id"
    .end annotation

    .prologue
    .line 1471
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/GoogleMap$11;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/GoogleMap$11;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1477
    return-void
.end method

.method public MapCameraChangedListenerEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map camera\'s position changed listener is currently enabled"
    .end annotation

    .prologue
    .line 878
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    move v0, v1

    return v0
.end method

.method public MapClickListenerEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the mapClick event listener is currently enabled"
    .end annotation

    .prologue
    .line 823
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

    move v0, v1

    return v0
.end method

.method public MapIsReady()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the map has been rendered and ready for adding markers or changing other settings. Please add or updating markers within this event"
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    const-string/jumbo v1, "GoogleMap"

    const-string/jumbo v2, "Map is ready for adding markers and other setting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 428
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    if-nez v1, :cond_0

    .line 429
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    .line 430
    const-string/jumbo v1, "GoogleMap"

    const-string/jumbo v2, "Map is ready for adding markers and other setting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 431
    move-object v1, v0

    const-string/jumbo v2, "MapIsReady"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 433
    :cond_0
    return-void
.end method

.method public MapLongClickListenerEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map longClick listener is currently enabled"
    .end annotation

    .prologue
    .line 850
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

    move v0, v1

    return v0
.end method

.method public MapType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates the current map type"
    .end annotation

    .prologue
    .line 883
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    packed-switch v1, :pswitch_data_0

    .line 893
    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 885
    :pswitch_0
    const-string/jumbo v1, "normal"

    move-object v0, v1

    goto :goto_0

    .line 887
    :pswitch_1
    const-string/jumbo v1, "hybrid"

    move-object v0, v1

    goto :goto_0

    .line 889
    :pswitch_2
    const-string/jumbo v1, "satellite"

    move-object v0, v1

    goto :goto_0

    .line 891
    :pswitch_3
    const-string/jumbo v1, "terrain"

    move-object v0, v1

    goto :goto_0

    .line 883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public MoveCamera(DDF)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the map\'s camera to the specified position and zoom level"
    .end annotation

    .prologue
    .line 1589
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v7, :cond_0

    .line 1590
    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move v9, v6

    invoke-static {v8, v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1591
    move-object v7, v1

    move v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    .line 1592
    move-object v7, v1

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

    .line 1594
    :cond_0
    return-void
.end method

.method public MyLocationEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether my locaiton UI control is currently enabled for the Google map."
    .end annotation

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    move v0, v1

    return v0
.end method

.method public OnLocationChanged(DD)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers this event when user location has changed. Only works when EnableMylocation is set to true"
    .end annotation

    .prologue
    .line 1762
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$4;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/GoogleMap$4;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1768
    return-void
.end method

.method public OnMapClick(DD)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a tap gesture on the map"
    .end annotation

    .prologue
    .line 1578
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$3;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/GoogleMap$3;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1584
    return-void
.end method

.method public OnMapLongClick(DD)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a long-press gesture on the map"
    .end annotation

    .prologue
    .line 1561
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$2;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/GoogleMap$2;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1567
    return-void
.end method

.method public OnMarkerClick(IDD)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is clicked"
    .end annotation

    .prologue
    .line 1461
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$10;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/appinventor/components/runtime/GoogleMap$10;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1467
    return-void
.end method

.method public OnMarkerDrag(IDD)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is been dragged"
    .end annotation

    .prologue
    .line 1439
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$8;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/appinventor/components/runtime/GoogleMap$8;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1445
    return-void
.end method

.method public OnMarkerDragEnd(IDD)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the user drags a marker and finish the action, returning marker\'s id and it\'s latest position"
    .end annotation

    .prologue
    .line 1451
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$9;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/appinventor/components/runtime/GoogleMap$9;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1457
    return-void
.end method

.method public OnMarkerDragStart(IDD)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker starts been dragged"
    .end annotation

    .prologue
    .line 1429
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$7;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/appinventor/components/runtime/GoogleMap$7;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1435
    return-void
.end method

.method public OnPointOfInterestClick(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event will be invoked when a user clicks on a point of interest. This can be a shop, coffee-bar or else."
    .end annotation

    .prologue
    .line 2020
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    const-string/jumbo v8, "OnPointOfInterestClick"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v1

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-wide v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x2

    move-object v12, v5

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x3

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v7

    .line 2021
    return-void
.end method

.method public RemoveCircle(I)Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a circle for the map. Returns true if successfully removed, false if the circle does not exist with the specified id"
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 524
    move-object v1, v4

    if-nez v3, :cond_0

    .line 526
    const/4 v3, 0x0

    move v0, v3

    .line 538
    :goto_0
    return v0

    .line 528
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    if-eqz v3, :cond_1

    .line 529
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 4690
    move-object v2, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 4691
    move-object v3, v2

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 4692
    move-object v3, v2

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 530
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 532
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v3, :cond_2

    .line 533
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 535
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 538
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public RemoveMarker(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a marker from the map"
    .end annotation

    .prologue
    .line 1360
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 1361
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 1362
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1363
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1366
    :cond_0
    return-void
.end method

.method public RemovePolyline(I)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to remove a polyline from the map. It will return true if it was successful."
    .end annotation

    .prologue
    .line 2067
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Polyline;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 2068
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 2069
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2070
    const/4 v2, 0x1

    move v0, v2

    .line 2072
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public RotateEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to rotate a map on the ui is currently enabled"
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ScrollEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to scroll a map on the ui is currently enabled"
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public SetMapType(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the layer of Google map. Default layer is \"normal\", other choices including \"hybrid\",\"satellite\", and \"terrain\" "
    .end annotation

    .prologue
    .line 774
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

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

    .line 788
    const-string/jumbo v4, "GoogleMap"

    const-string/jumbo v5, "Error setting layer with name "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 789
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "SetMapType"

    const/16 v7, 0x2eec

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not the correct type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 794
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_1

    .line 795
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 797
    :cond_1
    return-void

    .line 774
    :sswitch_0
    move-object v4, v2

    const-string/jumbo v5, "normal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v2

    const-string/jumbo v5, "hybrid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v2

    const-string/jumbo v5, "satellite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    :sswitch_3
    move-object v4, v2

    const-string/jumbo v5, "terrain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    move v3, v4

    goto/16 :goto_0

    .line 776
    :pswitch_0
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    .line 777
    goto :goto_1

    .line 779
    :pswitch_1
    move-object v4, v0

    const/4 v5, 0x4

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    .line 780
    goto :goto_1

    .line 782
    :pswitch_2
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    .line 783
    goto :goto_1

    .line 785
    :pswitch_3
    move-object v4, v0

    const/4 v5, 0x3

    iput v5, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    .line 786
    goto :goto_1

    .line 774
    :sswitch_data_0
    .sparse-switch
        -0x5e1f36c5 -> :sswitch_2
        -0x54d7eccb -> :sswitch_3
        -0x47b09e04 -> :sswitch_1
        -0x3df94319 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public Style(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the style of the map from json. Just use a text field and paste there the json data. Create a custom map style at https://mapstyle.withgoogle.com/. Set the theme to \"standard\" to clear the style json."
    .end annotation

    .prologue
    .line 1965
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v2, :cond_0

    .line 1966
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

    .line 1972
    :goto_0
    return-void

    .line 1967
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1968
    move-object v2, v0

    const-string/jumbo v3, "custom"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    goto :goto_0

    .line 1970
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "SetStyle"

    const/16 v5, 0x2ef3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1972
    goto :goto_0
.end method

.method public Theme()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the theme of the map. The choices are \"standard\"(default), \"silver\", \"retro\", \"dark\", \"night\", \"aubergine\", \"vintage\", \"kodular\" and \"roads-only\". Returns \"custom\" if the style of the map has been set from json."
    .end annotation

    .prologue
    .line 1960
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "standard"
        editorType = "google_map_theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme of the map. The choices are \"standard\"(default), \"silver\", \"retro\", \"dark\", \"night\", \"aubergine\", \"vintage\", \"kodular\" and \"roads-only\"."
    .end annotation

    .prologue
    .line 1945
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_3

    .line 1946
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v2, :cond_0

    .line 1947
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

    .line 1956
    :goto_0
    return-void

    .line 1948
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GoogleMapStyleOptions;->JSON_BY_THEME:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1949
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "SetTheme"

    const/16 v5, 0x2ef4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1950
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    sget-object v5, Lcom/google/appinventor/components/runtime/util/GoogleMapStyleOptions;->JSON_BY_THEME:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1951
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    goto :goto_0

    .line 1953
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "SetStyle"

    const/16 v5, 0x2ef3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "(theme)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1956
    :cond_3
    goto :goto_0
.end method

.method public UpdateCircle(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of an existing circle. Properties include: \"alpha\"(number, value ranging from 0~255), \"color\" (nimber, hue value ranging 0~360), \"radius\"(number in meters)"
    .end annotation

    .prologue
    .line 545
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v7, :cond_6

    .line 546
    const-string/jumbo v7, "GoogleMap"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "inputs: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 547
    const/4 v7, 0x3

    new-array v7, v7, [F

    move-object v4, v7

    .line 548
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 549
    const/4 v7, 0x0

    move-object v6, v7

    .line 551
    move-object v7, v5

    if-eqz v7, :cond_5

    .line 552
    move-object v7, v5

    instance-of v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    if-eqz v7, :cond_0

    .line 553
    move-object v7, v5

    check-cast v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 4704
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    .line 553
    move-object v6, v7

    .line 555
    :cond_0
    move-object v7, v5

    instance-of v7, v7, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v7, :cond_1

    .line 556
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/maps/model/Circle;

    move-object v6, v7

    .line 559
    :cond_1
    move-object v7, v3

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v7

    .line 560
    move-object v7, v2

    const-string/jumbo v8, "alpha"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 562
    move-object v7, v6

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v7

    .line 563
    move-object v8, v4

    invoke-static {v7, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 564
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v7

    .line 566
    move-object v8, v4

    invoke-static {v7, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    move v4, v7

    .line 567
    move-object v7, v6

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 570
    :cond_2
    move-object v7, v2

    const-string/jumbo v8, "color"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 571
    move-object v7, v6

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 573
    const/4 v8, 0x3

    new-array v8, v8, [F

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    move v4, v7

    .line 574
    move-object v7, v6

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 577
    :cond_3
    move-object v7, v2

    const-string/jumbo v8, "radius"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 580
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 582
    move-object v7, v5

    instance-of v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    if-eqz v7, :cond_4

    .line 584
    move-object v7, v5

    check-cast v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 5696
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 584
    move-object v4, v7

    .line 585
    move-object v7, v5

    check-cast v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 5700
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 586
    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 587
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object v9, v4

    .line 588
    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    const/4 v9, 0x1

    .line 589
    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    const/high16 v9, 0x43520000    # 210.0f

    .line 590
    invoke-static {v9}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    .line 587
    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v7

    move-object v1, v7

    .line 593
    move-object v7, v5

    check-cast v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    move-object v8, v1

    .line 5712
    iput-object v8, v7, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .line 609
    :cond_4
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v0

    const-string/jumbo v9, "UpdateCircle"

    const/16 v10, 0x2eec

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    .line 599
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 598
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 600
    goto :goto_0

    .line 605
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v0

    const-string/jumbo v9, "UpdateCircle"

    const/16 v10, 0x2eef

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v1

    .line 606
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 605
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 609
    :cond_6
    goto :goto_0
.end method

.method public UpdateMarker(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of a marker, note that the marker has to be added first or else will throw an exception! Properties include: \"color\"(hue value ranging from 0~360), \"title\", \"snippet\", \"draggable\"(give either true or false as the value)."
    .end annotation

    .prologue
    .line 1303
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1304
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1306
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "@UpdateMarker"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1307
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "markerId:"

    move v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1308
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "prop:"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1309
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "value:"

    move-object v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1310
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    move-object v1, v6

    .line 1311
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "marker?:"

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1314
    move-object v6, v1

    if-eqz v6, :cond_4

    .line 1315
    move-object v6, v4

    const-string/jumbo v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1316
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "we are changing color"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1317
    new-instance v6, Ljava/lang/Float;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 1318
    move-object v2, v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1319
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    const-string/jumbo v8, "UpdateMarker"

    const/16 v9, 0x2eec

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    .line 1320
    invoke-virtual {v13}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1319
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1326
    :cond_1
    :goto_0
    move-object v6, v4

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1327
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "we are changing title"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1328
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1330
    :cond_2
    move-object v6, v4

    const-string/jumbo v7, "snippet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1331
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "we are changing snippet"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1332
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1334
    :cond_3
    move-object v6, v4

    const-string/jumbo v7, "draggable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1335
    const-string/jumbo v6, "GoogleMap"

    const-string/jumbo v7, "we are changing draggable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1336
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1339
    :cond_4
    return-void

    .line 1323
    :cond_5
    move-object v6, v1

    new-instance v7, Ljava/lang/Float;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public UpdatePolyline(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update any polyline with the given id. You can change the property values for \'width\' (in pixel), \'color\' or \'points (a list of lat, lng pairs)."
    .end annotation

    .prologue
    .line 2078
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Polyline;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 2079
    move-object v1, v6

    if-eqz v5, :cond_1

    .line 2080
    const/4 v5, -0x1

    move v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 2118
    :cond_1
    :goto_1
    return-void

    .line 2080
    :sswitch_0
    move-object v5, v2

    const-string/jumbo v6, "points"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    :sswitch_1
    move-object v5, v2

    const-string/jumbo v6, "width"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v4, v5

    goto :goto_0

    :sswitch_2
    move-object v5, v2

    const-string/jumbo v6, "color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    move v4, v5

    goto :goto_0

    .line 2084
    :pswitch_0
    move-object v5, v3

    :try_start_0
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 2086
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    goto :goto_1

    .line 2088
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2089
    const-string/jumbo v5, "GoogleMap"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2091
    goto :goto_1

    .line 2096
    :pswitch_1
    move-object v5, v3

    :try_start_1
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 2097
    move-object v2, v6

    if-eqz v5, :cond_2

    .line 2098
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2102
    :cond_2
    goto :goto_1

    .line 2100
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 2101
    const-string/jumbo v5, "GoogleMap"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2103
    goto/16 :goto_1

    .line 2108
    :pswitch_2
    move-object v5, v3

    :try_start_2
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 2109
    move-object v2, v6

    if-eqz v5, :cond_3

    .line 2110
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2114
    :cond_3
    goto/16 :goto_1

    .line 2112
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 2113
    const-string/jumbo v5, "GoogleMap"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 2080
    :sswitch_data_0
    .sparse-switch
        -0x3a93a31d -> :sswitch_0
        0x5a72f63 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 261
    const/4 v2, -0x2

    move v1, v2

    .line 263
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 264
    return-void
.end method

.method public ZoomControlEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom widget on the map ui is currently enabled"
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ZoomGestureEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom gesture is currently enabled"
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public addOverlay()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add overlay."
    .end annotation

    .prologue
    .line 1869
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 1870
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-wide v4, 0x40445b672b884407L    # 40.714086

    const-wide v6, -0x3fad715d074213a1L    # -74.228697

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v1, v2

    .line 1871
    new-instance v2, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>()V

    move-object v3, v1

    const v4, 0x46066000    # 8600.0f

    const v5, 0x45cb2000    # 6500.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v2

    move-object v1, v2

    .line 1872
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    move-result-object v2

    .line 1874
    :cond_0
    return-void
.end method

.method public addPolygon(DDDD)V
    .locals 21
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "A Polygon is an enclosed shape that can be used to mark areas on the map."
    .end annotation

    .prologue
    .line 1772
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v10, :cond_0

    .line 1773
    new-instance v10, Lcom/google/android/gms/maps/model/PolygonOptions;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v11, 0x5

    new-array v11, v11, [Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-wide/from16 v16, v2

    move-wide/from16 v18, v8

    invoke-direct/range {v15 .. v19}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v14, v12, v13

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x1

    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    invoke-direct/range {v15 .. v19}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v14, v12, v13

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x2

    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-direct/range {v15 .. v19}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v14, v12, v13

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x3

    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-wide/from16 v16, v2

    move-wide/from16 v18, v6

    invoke-direct/range {v15 .. v19}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v14, v12, v13

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x4

    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-wide/from16 v16, v2

    move-wide/from16 v18, v8

    invoke-direct/range {v15 .. v19}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v14, v12, v13

    .line 1774
    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v10

    move-object v2, v10

    .line 1781
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v10

    move-object v2, v10

    .line 1782
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    move-object v11, v2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1784
    :cond_0
    return-void
.end method

.method public addTileOverlay()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add title overlay."
    .end annotation

    .prologue
    .line 1878
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 1879
    new-instance v2, Lcom/google/appinventor/components/runtime/GoogleMap$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap$5;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V

    move-object v1, v2

    .line 1911
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    move-result-object v2

    .line 1913
    :cond_0
    return-void
.end method

.method public clearAllPolygons()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all Polygons."
    .end annotation

    .prologue
    .line 1788
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1789
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Polygon;

    .line 1790
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 1791
    goto :goto_0

    .line 1792
    :cond_0
    return-void
.end method

.method public drawCentralSquare()V
    .locals 31
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw central square."
    .end annotation

    .prologue
    .line 1796
    move-object/from16 v3, p0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1797
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v30, v18

    move-object/from16 v18, v30

    move-object/from16 v19, v30

    .line 1799
    move-object/from16 v4, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 1800
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v4, v18

    .line 1802
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    .line 1803
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    .line 1805
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 1806
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 1809
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 1810
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 1812
    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 1813
    move-wide/from16 v18, v12

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 1819
    move-object/from16 v18, v3

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    const-string/jumbo v21, "[{lat:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v20, v10

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",lng:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-wide/from16 v20, v12

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "}]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/GoogleMap;->AddMarkersFromJson(Ljava/lang/String;)V

    .line 1821
    new-instance v18, Lcom/google/android/gms/maps/model/PolygonOptions;

    move-object/from16 v30, v18

    move-object/from16 v18, v30

    move-object/from16 v19, v30

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v19, v0

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    const/16 v21, 0x0

    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    add-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v16

    add-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v22, v20, v21

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    const/16 v21, 0x1

    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    sub-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v16

    add-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v22, v20, v21

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    const/16 v21, 0x2

    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    sub-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v22, v20, v21

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    const/16 v21, 0x3

    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    add-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v22, v20, v21

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    const/16 v21, 0x4

    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    add-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v16

    add-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v22, v20, v21

    .line 1822
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v18

    move-object/from16 v4, v18

    .line 1829
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v18

    move-object/from16 v4, v18

    .line 1830
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 1832
    :cond_0
    return-void
.end method

.method public getBoundingBox(DDD)Ljava/lang/String;
    .locals 45
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get bounding box."
    .end annotation

    .prologue
    .line 1843
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v34, v2

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v34

    move-wide/from16 v8, v34

    .line 1844
    move-wide/from16 v34, v4

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v34

    move-wide/from16 v10, v34

    .line 1845
    move-wide/from16 v34, v6

    const-wide v36, 0x408f400000000000L    # 1000.0

    mul-double v34, v34, v36

    move-wide/from16 v12, v34

    .line 1850
    const-wide v34, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    move-wide/from16 v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v14, v34

    .line 1851
    const-wide v34, 0x42c260252d89d1a5L    # 4.040829980355529E13

    move-wide/from16 v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v16, v34

    .line 1852
    const-wide v34, 0x415854a640000000L    # 6378137.0

    move-wide/from16 v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v18, v34

    .line 1853
    const-wide v34, 0x41583fc413333333L    # 6356752.3

    move-wide/from16 v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v20, v34

    .line 1854
    move-wide/from16 v34, v14

    move-wide/from16 v42, v34

    move-wide/from16 v34, v42

    move-wide/from16 v36, v42

    mul-double v34, v34, v36

    move-wide/from16 v36, v16

    move-wide/from16 v42, v36

    move-wide/from16 v36, v42

    move-wide/from16 v38, v42

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v36, v18

    move-wide/from16 v42, v36

    move-wide/from16 v36, v42

    move-wide/from16 v38, v42

    mul-double v36, v36, v38

    move-wide/from16 v38, v20

    move-wide/from16 v42, v38

    move-wide/from16 v38, v42

    move-wide/from16 v40, v42

    mul-double v38, v38, v40

    add-double v36, v36, v38

    div-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v42, v34

    move-wide/from16 v34, v42

    move-wide/from16 v36, v42

    .line 1857
    move-wide/from16 v22, v36

    move-wide/from16 v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v24, v34

    .line 1859
    move-wide/from16 v34, v8

    move-wide/from16 v36, v12

    move-wide/from16 v38, v22

    div-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v26, v34

    .line 1860
    move-wide/from16 v34, v8

    move-wide/from16 v36, v12

    move-wide/from16 v38, v22

    div-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v28, v34

    .line 1861
    move-wide/from16 v34, v10

    move-wide/from16 v36, v12

    move-wide/from16 v38, v24

    div-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v30, v34

    .line 1862
    move-wide/from16 v34, v10

    move-wide/from16 v36, v12

    move-wide/from16 v38, v24

    div-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v32, v34

    .line 1864
    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v35, v26

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-wide/from16 v35, v30

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-wide/from16 v35, v28

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-wide/from16 v35, v32

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v1, v34

    return-object v1
.end method

.method public getMapCenter()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get map center. If a error occures the output will be \'-999\'."
    .end annotation

    .prologue
    .line 1917
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 1918
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 1919
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1921
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "-999"

    move-object v0, v1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public getZoomLevelInfo()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deprecated block! Don\'t use this anymore. Use instead \'Camera Zoom Level\'."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2015
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->CameraZoomLevel()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 14

    .prologue
    .line 1519
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, v6

    .line 1520
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v3, v6

    .line 1521
    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v4, v6

    .line 1522
    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v5, v6

    .line 1523
    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, v6

    .line 1524
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual/range {v6 .. v13}, Lcom/google/appinventor/components/runtime/GoogleMap;->CameraPositionChanged(DDFFF)V

    .line 1525
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1736
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "GoogleMap"

    const-string/jumbo v3, "onConnected to location listener....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1737
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/location/LocationRequest;

    move-object v5, v0

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    .line 1738
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 1732
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 1741
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 1744
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 4

    .prologue
    .line 1481
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 1482
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->InfoWindowClicked(I)V

    .line 1483
    return-void
.end method

.method public onInitialize()V
    .locals 3

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Z

    .line 660
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->MapIsReady()V

    .line 661
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 1757
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnLocationChanged(DD)V

    .line 1758
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8

    .prologue
    .line 1571
    move-object v1, p0

    move-object v2, p1

    const-string/jumbo v3, "GoogleMap"

    const-string/jumbo v4, "receive google maps\'s onMapClick"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1572
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapClick(DD)V

    .line 1574
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8

    .prologue
    .line 1550
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapLongClick(DD)V

    .line 1551
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 7

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "GoogleMap"

    const-string/jumbo v4, "Yes, we have a google map..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 286
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    .line 287
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    .line 288
    move-object v3, v0

    move-object v1, v3

    .line 3303
    new-instance v3, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    move-object v2, v3

    .line 3304
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_0

    .line 3305
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    .line 3307
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 3308
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    .line 3310
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 3311
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    .line 3313
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 3314
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    .line 3316
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 3317
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 3318
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->Style(Ljava/lang/String;)V

    .line 3325
    :cond_4
    :goto_0
    const-string/jumbo v3, "GoogleMap"

    const-string/jumbo v4, "in setUpMap()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3327
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 3328
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 3329
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 3330
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setOnPoiClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;)V

    .line 3333
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    .line 3334
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 3335
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 3336
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 3337
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 3338
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 3342
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->MapIsReady()V

    .line 289
    return-void

    .line 3319
    :cond_5
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    .line 3320
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->Theme(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 10

    .prologue
    .line 1487
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 1488
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    move-object v2, v4

    .line 1489
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, v2

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerClick(IDD)V

    .line 1494
    const/4 v4, 0x0

    move v1, v4

    return v1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 11

    .prologue
    .line 1371
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "GoogleMap"

    const-string/jumbo v5, "Dragging M:"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1372
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1374
    move-object v2, v5

    if-eqz v4, :cond_0

    .line 1375
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    move-object v3, v4

    .line 1376
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, v3

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDrag(IDD)V

    .line 1380
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1381
    move-object v2, v5

    .line 8696
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1381
    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    .line 8700
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1381
    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1382
    :cond_1
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v4

    .line 1384
    :cond_2
    goto :goto_0

    .line 1385
    :cond_3
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 15

    .prologue
    .line 1389
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 1391
    move-object v2, v7

    if-eqz v6, :cond_0

    .line 1392
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    move-object v3, v6

    .line 1393
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v3

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDragEnd(IDD)V

    .line 1397
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 1398
    move-object v2, v7

    .line 9696
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1398
    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    .line 9700
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1398
    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1399
    :cond_1
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v6

    .line 1401
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 1402
    move-object v6, v2

    .line 10696
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1402
    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    move-object v5, v6

    .line 1403
    move-object v6, v0

    move v7, v4

    move-object v8, v5

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v10, v5

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v12, v2

    .line 10708
    iget-wide v12, v12, Lcom/google/appinventor/components/runtime/GoogleMap$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    .line 1403
    invoke-virtual/range {v6 .. v13}, Lcom/google/appinventor/components/runtime/GoogleMap;->FinishedDraggingCircle(IDDD)V

    .line 1405
    :cond_2
    goto :goto_0

    .line 1406
    :cond_3
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 11

    .prologue
    .line 1411
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1412
    move-object v2, v5

    if-eqz v4, :cond_0

    .line 1413
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    move-object v3, v4

    .line 1414
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, v3

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDragStart(IDD)V

    .line 1418
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1419
    move-object v2, v5

    .line 11696
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1419
    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    .line 11700
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1419
    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1420
    :cond_1
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v4

    .line 1422
    :cond_2
    goto :goto_0

    .line 1425
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1748
    move-object v0, p0

    const-string/jumbo v1, "GoogleMap"

    const-string/jumbo v2, "OnPause, remote LocationClient"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1749
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 1750
    const-string/jumbo v1, "GoogleMap"

    const-string/jumbo v2, "before location client disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1751
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 1753
    :cond_0
    return-void
.end method

.method public onPoiClick(Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 10

    .prologue
    .line 2025
    move-object v1, p0

    move-object v2, p1

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2026
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v6, v2

    iget-object v6, v6, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v8, v2

    iget-object v8, v8, Lcom/google/android/gms/maps/model/PointOfInterest;->name:Ljava/lang/String;

    move-object v9, v2

    iget-object v9, v9, Lcom/google/android/gms/maps/model/PointOfInterest;->placeId:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnPointOfInterestClick(DDLjava/lang/String;Ljava/lang/String;)V

    .line 2028
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 648
    move-object v0, p0

    const-string/jumbo v1, "GoogleMap"

    const-string/jumbo v2, "in onResume...Google Map redraw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 650
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 651
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt()V

    .line 652
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 654
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V

    .line 655
    return-void
.end method
