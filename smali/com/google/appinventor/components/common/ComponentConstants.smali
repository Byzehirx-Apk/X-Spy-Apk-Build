.class public Lcom/google/appinventor/components/common/ComponentConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CANVAS_PREFERRED_HEIGHT:I = 0x30

.field public static final CANVAS_PREFERRED_WIDTH:I = 0x20

.field public static final CIRCLE_PREFERRED_RADIUS:I = 0x1e

.field public static final DEFAULT_ACCENT_COLOR:Ljava/lang/String; = "&HFFFF4081"

.field public static final DEFAULT_POLLFISH_MODE:Ljava/lang/String; = "Single Survey"

.field public static final DEFAULT_PRIMARY_COLOR:Ljava/lang/String; = "&HFF3F51B5"

.field public static final DEFAULT_PRIMARY_DARK_COLOR:Ljava/lang/String; = "&HFF303F9F"

.field public static final DEFAULT_PRIMARY_TEXT_COLOR:Ljava/lang/String; = "&HFF212121"

.field public static final DEFAULT_PROGRESSBAR_ANIMATION:Ljava/lang/String; = "Wave"

.field public static final DEFAULT_ROW_COLUMN:I = -0x1

.field public static final DEFAULT_SECONDARY_TEXT_COLOR:Ljava/lang/String; = "&HFF757575"

.field public static final DEFAULT_THEME:Ljava/lang/String; = "AppTheme"

.field public static final EMPTY_HV_ARRANGEMENT_HEIGHT:I = 0x64

.field public static final EMPTY_HV_ARRANGEMENT_WIDTH:I = 0x64

.field public static final GRAVITY_BOTTOM:I = 0x3

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x3

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x2

.field public static final GRAVITY_LEFT:I = 0x1

.field public static final GRAVITY_RIGHT:I = 0x2

.field public static final GRAVITY_TOP:I = 0x1

.field public static final HORIZONTAL_ALIGNMENT_DEFAULT:I = 0x1

.field public static final KODULAR_MIN_SDK:I = 0x13

.field public static final KODULAR_PREF:Ljava/lang/String; = "KODULAR_PREF"

.field public static final LAYOUT_ORIENTATION_HORIZONTAL:I = 0x0

.field public static final LAYOUT_ORIENTATION_VERTICAL:I = 0x1

.field public static final LINESTRING_PREFERRED_LENGTH:I = 0x3c

.field public static final LISTVIEW_FILTER_PREFERRED_HEIGHT:I = 0x1e

.field public static final LISTVIEW_PREFERRED_HEIGHT:I = 0x28

.field public static final LISTVIEW_PREFERRED_WIDTH:I = 0xf8

.field public static final MAP_PREFERRED_HEIGHT:I = 0x90

.field public static final MAP_PREFERRED_WIDTH:I = 0xb0

.field public static final MARKER_PREFERRED_HEIGHT:I = 0x32

.field public static final MARKER_PREFERRED_WIDTH:I = 0x1e

.field public static NONSCROLLABLE_ARRANGEMENT:Z = false

.field public static final POLYGON_PREFERRED_HEIGHT:I = 0x1e

.field public static final POLYGON_PREFERRED_WIDTH:I = 0x32

.field public static final PROGRESS_DESCRIPTION:Ljava/lang/String; = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, animation will be removed."

.field public static final PROGRESS_DESCRIPTION_DESC:Ljava/lang/String; = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, Wave animation will be used."

.field public static final RECTANGLE_PREFERRED_HEIGHT:I = 0x1e

.field public static final RECTANGLE_PREFERRED_WIDTH:I = 0x32

.field public static SCROLLABLE_ARRANGEMENT:Z = false

.field public static final TEXTBOX_PREFERRED_WIDTH:I = 0xa0

.field public static final TEXT_RECEIVING_ALWAYS:I = 0x3

.field public static final TEXT_RECEIVING_FOREGROUND:I = 0x2

.field public static final TEXT_RECEIVING_OFF:I = 0x1

.field public static final VERTICAL_ALIGNMENT_DEFAULT:I = 0x1

.field public static final VIDEOPLAYER_PREFERRED_HEIGHT:I = 0x90

.field public static final VIDEOPLAYER_PREFERRED_WIDTH:I = 0xb0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/common/ComponentConstants;->SCROLLABLE_ARRANGEMENT:Z

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/common/ComponentConstants;->NONSCROLLABLE_ARRANGEMENT:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
