.class Landroidx/transition/Styleable;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Styleable$PatternPathMotion;,
        Landroidx/transition/Styleable$ArcMotion;,
        Landroidx/transition/Styleable$TransitionSet;,
        Landroidx/transition/Styleable$Slide;,
        Landroidx/transition/Styleable$ChangeTransform;,
        Landroidx/transition/Styleable$Fade;,
        Landroidx/transition/Styleable$VisibilityTransition;,
        Landroidx/transition/Styleable$ChangeBounds;,
        Landroidx/transition/Styleable$Transition;,
        Landroidx/transition/Styleable$TransitionManager;,
        Landroidx/transition/Styleable$TransitionTarget;
    }
.end annotation


# static fields
.field static final ARC_MOTION:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final CHANGE_BOUNDS:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final CHANGE_TRANSFORM:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final FADE:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final PATTERN_PATH_MOTION:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final SLIDE:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION_MANAGER:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION_SET:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION_TARGET:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field static final VISIBILITY_TRANSITION:[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/Styleable;->TRANSITION_TARGET:[I

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10104cf

    aput v3, v1, v2

    sput-object v0, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101047c

    aput v3, v1, v2

    sput-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10103e1

    aput v3, v1, v2

    sput-object v0, Landroidx/transition/Styleable;->FADE:[I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010430

    aput v3, v1, v2

    sput-object v0, Landroidx/transition/Styleable;->SLIDE:[I

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10103e0

    aput v3, v1, v2

    sput-object v0, Landroidx/transition/Styleable;->TRANSITION_SET:[I

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroidx/transition/Styleable;->ARC_MOTION:[I

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10104ca

    aput v3, v1, v2

    sput-object v0, Landroidx/transition/Styleable;->PATTERN_PATH_MOTION:[I

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x101002f
        0x10103dc
        0x1010441
        0x1010442
        0x101044d
        0x101044e
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x10103dd
        0x10103de
        0x10103df
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data

    .line 120
    :array_3
    .array-data 4
        0x10104bc
        0x10104bd
    .end array-data

    .line 153
    :array_4
    .array-data 4
        0x101047d
        0x101047e
        0x101047f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Styleable;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method
