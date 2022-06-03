.class public Lcom/google/appinventor/components/runtime/LocationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You\'ll have to wait a short time for a location provider to be found and used, or wait for the OnLocationChanged event"
    iconName = "images/locationSensor.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_FINE_LOCATION",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_MOCK_LOCATION",
        "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LocationSensor$a;,
        Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

.field private ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private enabled:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private final handler:Landroid/os/Handler;

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Criteria;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

.field private initialized:Z

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

.field private poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

.field private speed:F

.field private tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const-class v0, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 9

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 178
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    .line 180
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    .line 184
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 192
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 202
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    .line 203
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    .line 204
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    .line 205
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    .line 206
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    .line 207
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    .line 210
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    .line 216
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 218
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    .line 239
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 240
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 241
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->handler:Landroid/os/Handler;

    .line 243
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 244
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 247
    move-object v3, v0

    const v4, 0xea60

    iput v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    .line 248
    move-object v3, v0

    const/4 v4, 0x5

    iput v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    .line 251
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v1, v3

    .line 252
    move-object v3, v0

    new-instance v4, Landroid/location/Geocoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    .line 253
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    .line 254
    move-object v3, v0

    new-instance v4, Landroid/location/Criteria;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Criteria;

    .line 255
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/LocationSensor$a;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;B)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    .line 256
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    .line 258
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 259
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 13

    .prologue
    .line 69
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    move-wide v1, v4

    return-wide v1
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    move v0, v1

    return v0
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 740
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 13

    .prologue
    .line 69
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    move-wide v1, v4

    return-wide v1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;F)F
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    move v0, v2

    return v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 676
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    .line 677
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 678
    move-object v3, v5

    if-nez v4, :cond_0

    .line 679
    sget-object v4, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "getProvider("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") returned null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 680
    const/4 v4, 0x0

    move v1, v4

    .line 687
    :goto_0
    return v1

    .line 682
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 683
    move-object v4, v1

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    .line 684
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/LocationSensor;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    int-to-long v6, v6

    move-object v8, v1

    iget v8, v8, Lcom/google/appinventor/components/runtime/LocationSensor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    int-to-float v8, v8

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 686
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 687
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 698
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    if-eqz v1, :cond_0

    .line 699
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 700
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    .line 701
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 703
    :cond_0
    return-void
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 13

    .prologue
    .line 69
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    move-wide v1, v4

    return-wide v1
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Z)V
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 513
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v2, :cond_0

    .line 514
    .line 521
    :goto_0
    return-void

    .line 516
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    .line 517
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    goto :goto_0

    .line 519
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "Enabled"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 521
    goto :goto_0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public Accuracy()D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 458
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    move-wide v1, v2

    .line 463
    :goto_0
    return-wide v1

    .line 460
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    if-eqz v2, :cond_1

    .line 461
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    invoke-virtual {v2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    int-to-double v2, v2

    move-wide v1, v2

    goto :goto_0

    .line 463
    :cond_1
    const-wide/16 v2, 0x0

    move-wide v1, v2

    goto :goto_0
.end method

.method public Altitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    move-wide v0, v1

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v6

    if-lez v4, :cond_1

    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 533
    :cond_1
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    move-object v5, v0

    iget-wide v5, v5, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    move-object v7, v0

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 534
    move-object v1, v5

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 535
    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 536
    move-object v1, v5

    if-eqz v4, :cond_3

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 538
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 539
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    move-object v4, v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 561
    :goto_1
    return-object v0

    .line 559
    .line 561
    :cond_3
    :goto_2
    const-string/jumbo v4, "No address available"

    move-object v0, v4

    goto :goto_1

    .line 546
    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 550
    move-object v1, v5

    instance-of v4, v4, Ljava/lang/IllegalArgumentException;

    if-nez v4, :cond_4

    move-object v4, v1

    instance-of v4, v4, Ljava/io/IOException;

    if-nez v4, :cond_4

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v4, :cond_5

    .line 553
    :cond_4
    sget-object v4, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Exception thrown by getting current address "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 556
    :cond_5
    sget-object v4, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Unexpected exception thrown by getting current address "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    .line 557
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method

.method public DistanceInterval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance."
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    move v0, v1

    return v0
.end method

.method public DistanceInterval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "sensor_dist_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    .line 375
    .line 387
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    .line 380
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v2, :cond_2

    .line 381
    move-object v2, v0

    const-string/jumbo v3, "DistanceInterval"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 384
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 385
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onDistanceIntervalChanged(I)V

    .line 386
    goto :goto_1

    .line 387
    :cond_3
    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v2, :cond_0

    .line 486
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/LocationSensor$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LocationSensor$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Z)V

    .line 509
    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public HasAccuracy()Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 422
    move-object v1, p0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Accuracy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public HasAltitude()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public HasLongitudeLatitude()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public Initialize()V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 264
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 265
    return-void
.end method

.method public Latitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    move-wide v0, v1

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    .prologue
    .line 574
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 575
    sget-object v4, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "latitude addressObjs size is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 576
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 577
    :cond_0
    new-instance v4, Ljava/io/IOException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string/jumbo v6, ""

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :catch_0
    move-exception v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    const-string/jumbo v6, "LatitudeFromAddress"

    const/16 v7, 0x65

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 583
    const-wide/16 v4, 0x0

    move-wide v1, v4

    :goto_0
    return-wide v1

    .line 579
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getLatitude()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public LocationChanged(DDDF)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 274
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object v9, v1

    const-string/jumbo v10, "LocationChanged"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-wide v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-wide v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x2

    move-wide v14, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x3

    move v14, v8

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v9

    .line 275
    return-void
.end method

.method public Longitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    move-wide v0, v1

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives longitude of given address"
    .end annotation

    .prologue
    .line 596
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 597
    sget-object v4, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "longitude addressObjs size is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 598
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 599
    :cond_0
    new-instance v4, Ljava/io/IOException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string/jumbo v6, ""

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :catch_0
    move-exception v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    const-string/jumbo v6, "LongitudeFromAddress"

    const/16 v7, 0x66

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 605
    const-wide/16 v4, 0x0

    move-wide v1, v4

    :goto_0
    return-wide v1

    .line 601
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public ProviderLocked(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    .line 332
    return-void
.end method

.method public ProviderLocked()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    move v0, v1

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 297
    const-string/jumbo v1, "NO PROVIDER"

    move-object v0, v1

    .line 299
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    .line 312
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "ProviderName"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 317
    goto :goto_0
.end method

.method public RefreshProvider(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v3, :cond_0

    .line 670
    :goto_0
    return-void

    .line 626
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 627
    move-object v3, v0

    move-object v2, v3

    .line 628
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v3, :cond_1

    .line 630
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/appinventor/components/runtime/LocationSensor$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/LocationSensor$2;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 651
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 652
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 653
    goto :goto_0

    .line 655
    :cond_2
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    .line 656
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Criteria;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 657
    move-object v1, v4

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 658
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 661
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 662
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 663
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    if-eqz v3, :cond_5

    .line 664
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    if-nez v3, :cond_4

    .line 665
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    .line 667
    :cond_4
    goto/16 :goto_0

    .line 669
    :cond_5
    goto :goto_1

    .line 670
    :cond_6
    goto/16 :goto_0
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v3, :cond_0

    .line 284
    move-object v3, v0

    const-string/jumbo v4, "StatusChanged"

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

    .line 286
    :cond_0
    return-void
.end method

.method public TimeInterval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after."
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    move v0, v1

    return v0
.end method

.method public TimeInterval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60000"
        editorType = "sensor_time_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const v3, 0xf4240

    if-le v2, v3, :cond_1

    .line 342
    .line 354
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    .line 347
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v2, :cond_2

    .line 348
    move-object v2, v0

    const-string/jumbo v3, "TimeInterval"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 351
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 352
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onTimeIntervalChanged(I)V

    .line 353
    goto :goto_1

    .line 354
    :cond_3
    goto :goto_0
.end method

.method public addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 731
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 732
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 726
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 727
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 711
    move-object v1, v0

    const-string/jumbo v2, "onResume"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 713
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 720
    return-void
.end method

.method public removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 4

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 736
    move-object v2, v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 737
    return-void
.end method
