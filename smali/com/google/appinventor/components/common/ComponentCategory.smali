.class public final enum Lcom/google/appinventor/components/common/ComponentCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/ComponentCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EV3:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum NXT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
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

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ComponentCategory;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Boolean;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/ComponentCategory;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Boolean;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "USERINTERFACE"

    const/4 v3, 0x0

    const-string/jumbo v4, "User Interface"

    const-string/jumbo v5, "devices_other"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "LAYOUT"

    const/4 v3, 0x1

    const-string/jumbo v4, "Layout"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v6, "table_chart"

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "LAYOUT_GENERAL"

    const/4 v3, 0x2

    const-string/jumbo v4, "General"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "dashboard"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "LISTVIEWS"

    const/4 v3, 0x3

    const-string/jumbo v4, "Listviews"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "dns"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "NAVIGATION"

    const/4 v3, 0x4

    const-string/jumbo v4, "Navigation"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "control_camera"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "VIEWS"

    const/4 v3, 0x5

    const-string/jumbo v4, "Views"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "view_array"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "MEDIA"

    const/4 v3, 0x6

    const-string/jumbo v4, "Media"

    const-string/jumbo v5, "camera"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 27
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "ANIMATION"

    const/4 v3, 0x7

    const-string/jumbo v4, "Drawing and Animation"

    const-string/jumbo v5, "color_lens"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "MAPS"

    const/16 v3, 0x8

    const-string/jumbo v4, "Maps"

    const-string/jumbo v5, "map"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 29
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "SENSORS"

    const/16 v3, 0x9

    const-string/jumbo v4, "Sensors"

    const-string/jumbo v5, "explore"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 30
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "SOCIAL"

    const/16 v3, 0xa

    const-string/jumbo v4, "Social"

    const-string/jumbo v5, "supervised_user_circle"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 31
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "STORAGE"

    const/16 v3, 0xb

    const-string/jumbo v4, "Storage"

    const-string/jumbo v5, "file_copy"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 32
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "UTILITIES"

    const/16 v3, 0xc

    const-string/jumbo v4, "Utilities"

    const-string/jumbo v5, "work_outline"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 33
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "DYNAMIC"

    const/16 v3, 0xd

    const-string/jumbo v4, "Dynamic"

    const-string/jumbo v5, "code"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 34
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "CONNECTIVITY"

    const/16 v3, 0xe

    const-string/jumbo v4, "Connectivity"

    const-string/jumbo v5, "rss_feed"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 35
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "GOOGLE"

    const/16 v3, 0xf

    const-string/jumbo v4, "Google"

    const-string/jumbo v5, "mdi-google"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 36
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "MONETIZATION"

    const/16 v3, 0x10

    const-string/jumbo v4, "Monetization"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v6, "monetization_on"

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 37
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "MONETIZATION_GENERAL"

    const/16 v3, 0x11

    const-string/jumbo v4, "General"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "shopping_cart"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 38
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "ADVERTISING"

    const/16 v3, 0x12

    const-string/jumbo v4, "Advertising"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "branding_watermark"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 39
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "LEGOMINDSTORMS"

    const/16 v3, 0x13

    const-string/jumbo v4, "LEGO\u00ae MINDSTORMS\u00ae"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v6, "widgets"

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 40
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "EV3"

    const/16 v3, 0x14

    const-string/jumbo v4, "LEGO\u00ae EV3"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "gamepad"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 41
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "NXT"

    const/16 v3, 0x15

    const-string/jumbo v4, "LEGO\u00ae NXT"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v8, "gamepad"

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 42
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "EXPERIMENTAL"

    const/16 v3, 0x16

    const-string/jumbo v4, "Experimental"

    const-string/jumbo v5, "new_releases"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 43
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "DEPRECATED"

    const/16 v3, 0x17

    const-string/jumbo v4, "Deprecated"

    const-string/jumbo v5, "format_line_spacing"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "EXTENSION"

    const/16 v3, 0x18

    const-string/jumbo v4, "Extension"

    const-string/jumbo v5, "extension"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 45
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "INTERNAL"

    const/16 v3, 0x19

    const-string/jumbo v4, "For internal use only"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 46
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "UNINITIALIZED"

    const/16 v3, 0x1a

    const-string/jumbo v4, "Uninitialized"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 17
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x3

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x4

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x6

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x7

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x8

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x9

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xa

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xb

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xc

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xd

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xe

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xf

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x10

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x11

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x12

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x13

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x14

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x15

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x16

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x17

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x18

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x19

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ComponentCategory;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    .line 52
    sput-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "User Interface"

    const-string/jumbo v2, "user-interface"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Layout"

    const-string/jumbo v2, "layout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "LayoutGeneral"

    const-string/jumbo v2, "layout/general"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Listviews"

    const-string/jumbo v2, "layout/listviews"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Views"

    const-string/jumbo v2, "layout/views"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Navigation"

    const-string/jumbo v2, "layout/navigation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Media"

    const-string/jumbo v2, "media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Drawing and Animation"

    const-string/jumbo v2, "drawing-and-animation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Maps"

    const-string/jumbo v2, "maps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Sensors"

    const-string/jumbo v2, "sensors"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Social"

    const-string/jumbo v2, "social"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Storage"

    const-string/jumbo v2, "storage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Device"

    const-string/jumbo v2, "device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Dynamic"

    const-string/jumbo v2, "dynamic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Connectivity"

    const-string/jumbo v2, "connectivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Google"

    const-string/jumbo v2, "google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string/jumbo v2, "lego-mindstorms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "LEGO\u00ae EV3"

    const-string/jumbo v2, "lego-mindstorms/ev3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "LEGO\u00ae NXT"

    const-string/jumbo v2, "lego-mindstorms/nxt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Monetization"

    const-string/jumbo v2, "monetization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "MonetizationGeneral"

    const-string/jumbo v2, "monetization/general"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Advertising"

    const-string/jumbo v2, "monetization/advertising"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Utilities"

    const-string/jumbo v2, "utilities"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Experimental"

    const-string/jumbo v2, "experimental"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Deprecated"

    const-string/jumbo v2, "deprecated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v1, "Extension"

    const-string/jumbo v2, "extension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v11, "offline_bolt"

    invoke-direct/range {v4 .. v11}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/appinventor/components/common/ComponentCategory;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    .line 88
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Boolean;

    .line 89
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 90
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Boolean;

    .line 91
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ComponentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method


# virtual methods
.method public final getChildren()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/common/ComponentCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 155
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/common/ComponentCategory;->hasChildCategories()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    move-object v6, v1

    move-object v0, v6

    .line 162
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/common/ComponentCategory;->values()[Lcom/google/appinventor/components/common/ComponentCategory;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    .line 158
    move-object v5, v7

    invoke-virtual {v6}, Lcom/google/appinventor/components/common/ComponentCategory;->getParentCategory()Lcom/google/appinventor/components/common/ComponentCategory;

    move-result-object v6

    move-object v7, v0

    if-ne v6, v7, :cond_1

    .line 159
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 157
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_2
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method public final getDocName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    const-string/jumbo v1, "LAYOUT_GENERAL"

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ComponentCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v2, "LayoutGeneral"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const-string/jumbo v1, "MONETIZATION_GENERAL"

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ComponentCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    const-string/jumbo v2, "MonetizationGeneral"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 179
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final getParentCategory()Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/ComponentCategory;

    move-object v0, v1

    return-object v0
.end method

.method public final hasChildCategories()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Boolean;

    move-object v0, v1

    return-object v0
.end method

.method public final isParentCategory()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Boolean;

    move-object v0, v1

    return-object v0
.end method
