.class public Lcom/google/appinventor/components/runtime/Form;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x2a
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "Roboto-Thin.ttf, Roboto-Regular.ttf, fontawesome-webfont.ttf, fa-regular-400.ttf, fa-solid-900.ttf, fa-brands-400.ttf, MaterialIcons-Regular.ttf"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "jose4j.jar",
        "slf4j-api.jar",
        "appcenter-analytics.jar",
        "appcenter-analytics.aar",
        "appcenter-crashes.jar",
        "appcenter-crashes.aar",
        "appcenter.jar",
        "appcenter.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$a;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR_DARK:I

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field public static final MAX_PERMISSION_NONCE:I = 0xffff

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static screenInitialized:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private aboutScreenTitle:Ljava/lang/String;

.field private aboutThisAppBackgroundColor:I

.field private aboutThisAppLightTheme:Z

.field private accentColor:I

.field private actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResultMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private analyticsUtil:Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;

.field protected final androidUIHandler:Landroid/os/Handler;

.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private appId:Ljava/lang/String;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private billing:Lcom/google/appinventor/components/runtime/util/KodularBilling;

.field private closeAnimType:Ljava/lang/String;

.field private compatScalingFactor:F

.field public coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private customActionBarIcon:Landroid/view/Menu;

.field private customMenu:Landroid/view/Menu;

.field private deviceDensity:F

.field private dimChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private drawerArrowIconColor:I

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private fontTypeface:I

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field public highQuality:Z

.field private horizontalAlignment:I

.field private isCompanion:Z

.field private isDrawerOpenBackup:Z

.field private keepScreenOn:Z

.field private keyboardReallyShown:Z

.field private keyboardShown:Z

.field private lastToastTime:J

.field private layoutBackup:Ljava/lang/Object;

.field private lockedMenu:Z

.field private lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

.field private navigationBarLight:Z

.field private navigationIconColor:I

.field private nextFormName:Ljava/lang/String;

.field private final onClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private onCreateBundle:Landroid/os/Bundle;

.field private final onCreateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnCreateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOrientationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Ljava/lang/String;

.field private optionsMenuIconColor:I

.field private final permissionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRandom:Ljava/util/Random;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:I

.field private primaryColorDark:I

.field private progress:Landroid/app/ProgressDialog;

.field protected receiveSharedValue:Ljava/lang/String;

.field private receiveSharedValueType:I

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private scrollable:Z

.field private showNavBar:Z

.field private showOptionsMenu:Z

.field public showStatusBar:Z

.field public showTitle:Z

.field private splashEnabled:Z

.field protected startupValue:Ljava/lang/String;

.field private stateBackButton:Z

.field private statusbarColor:I

.field private statusbarLight:Z

.field private titleBarColor:I

.field private titleBarTextColor:I

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarIconColor:I

.field private toolbarSubTitle:Ljava/lang/String;

.field private toolbarTitle:Ljava/lang/String;

.field private verticalAlignment:I

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yandexTranslateTagline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    const-class v0, Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->$assertionsDisabled:Z

    .line 173
    const-string/jumbo v0, "&HFF3F51B5"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    .line 174
    const-string/jumbo v0, "&HFF303F9F"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    .line 175
    const-string/jumbo v0, "&HFFFF4081"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    .line 196
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    .line 220
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 255
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 191
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    .line 204
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    .line 208
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 221
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    .line 224
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 225
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 226
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 227
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    .line 228
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 229
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 230
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 231
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 232
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    .line 235
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 238
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 239
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 242
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    .line 245
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    .line 246
    move-object v1, v0

    new-instance v2, Ljava/util/Random;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    .line 250
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 252
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 256
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 264
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 266
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    .line 271
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    .line 276
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    .line 277
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    .line 278
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    .line 288
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 289
    move-object v1, v0

    const v2, -0xbbbbbc

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    .line 291
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 292
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 293
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 295
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    .line 296
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    .line 317
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    .line 2491
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    return-void
.end method

.method private OnCompanionRefresh()V
    .locals 5

    .prologue
    .line 3472
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->IsSideMenuAdded()Z

    move-result v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->drawerLayoutFix(Landroidx/drawerlayout/widget/DrawerLayout;ZZ)V

    .line 3473
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->toolbarColor(Landroidx/appcompat/widget/Toolbar;ZI)V

    .line 3474
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->statusBarColor(Landroid/app/Activity;ZI)V

    .line 3476
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3477
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    if-eqz v1, :cond_0

    .line 3478
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    check-cast v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    .line 3481
    :cond_0
    return-void
.end method

.method private UpdateTitlebarItemColor(I)V
    .locals 5

    .prologue
    .line 3416
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    .line 3418
    move v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    const-string/jumbo v3, "colorToolbar"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :goto_0
    move v1, v2

    .line 3419
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_2

    .line 3420
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3421
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3423
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3424
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3426
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_2

    .line 3427
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 3431
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    .line 3432
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    .line 3433
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    .line 3434
    return-void

    .line 3418
    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/KodularBilling;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->billing:Lcom/google/appinventor/components/runtime/util/KodularBilling;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/KodularBilling;)Lcom/google/appinventor/components/runtime/util/KodularBilling;
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->billing:Lcom/google/appinventor/components/runtime/util/KodularBilling;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 4

    .prologue
    .line 157
    move v0, p0

    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/Form;)I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1400(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->isDrawerOpenBackup:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->isDrawerOpenBackup:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbarTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Form;)I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    move v0, v1

    return v0
.end method

.method private closeApplication()V
    .locals 3

    .prologue
    .line 2345
    move-object v0, p0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 2347
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2349
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string/jumbo v2, "Screen1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2355
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 2357
    :cond_0
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "decodeJSONStringForForm -- decoding JSON representation:"

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 765
    const-string/jumbo v3, ""

    move-object v2, v3

    .line 767
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 768
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string/jumbo v6, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 774
    .line 775
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 770
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    const/16 v6, 0x387

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private defaultPropertyValues()V
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 537
    move-object v1, v0

    const-string/jumbo v2, "Responsive"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 538
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 539
    move-object v1, v0

    const-string/jumbo v2, "About this application"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenTitle(Ljava/lang/String;)V

    .line 540
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget v2, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenBackgroundColor(I)V

    .line 541
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenLightTheme(Z)V

    .line 542
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 543
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 544
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 545
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 546
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 547
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleBarSubTitle(Ljava/lang/String;)V

    .line 548
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 549
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowNavBar(Z)V

    .line 550
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 551
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 552
    move-object v1, v0

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarColor(I)V

    .line 553
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowOptionsMenu(Z)V

    .line 554
    move-object v1, v0

    const-string/jumbo v2, "unspecified"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation(Ljava/lang/String;)V

    .line 555
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->SplashEnabled(Z)V

    .line 556
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 557
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 558
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    .line 559
    move-object v1, v0

    const-string/jumbo v2, "AppTheme"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Theme(Ljava/lang/String;)V

    .line 560
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleBarTypefaceImport(Ljava/lang/String;)V

    .line 561
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->HighQuality(Z)V

    .line 562
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->KeepScreenOn(Z)V

    .line 563
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->RTLSupport(Z)V

    .line 564
    return-void
.end method

.method public static finishActivity()V
    .locals 4

    .prologue
    .line 2283
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2284
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2292
    move-object v0, p0

    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_1

    .line 2293
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 2294
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2295
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2301
    :goto_0
    return-void

    .line 2297
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "close screen with value"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2298
    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 2299
    move-object v1, v3

    const-string/jumbo v3, "APP_INVENTOR_RESULT"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2300
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2301
    goto :goto_0

    .line 2303
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "activeForm is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2309
    move-object v0, p0

    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_0

    .line 2310
    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 2311
    move-object v1, v3

    const-string/jumbo v3, "APP_INVENTOR_RESULT"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2312
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2313
    return-void

    .line 2314
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "activeForm is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static finishApplication()V
    .locals 4

    .prologue
    .line 2328
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2329
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    return-void

    .line 2331
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateNewRequestCode()I
    .locals 4

    .prologue
    .line 849
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    move v3, v0

    move v0, v3

    move v1, v3

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 2243
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2098
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 2099
    move-object v1, v4

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move v5, v3

    move v3, v5

    move v4, v5

    .line 2100
    move v2, v4

    if-nez v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getCompatibilityMode()Z
    .locals 1

    .prologue
    .line 2675
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2253
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2254
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2270
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2271
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string/jumbo v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 2132
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, ""

    move-object v2, v3

    .line 2133
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string/jumbo v6, "jsonEncodeForForm -- creating JSON representation:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2136
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2137
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "jsonEncodeForForm -- got JSON representation:"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2143
    .line 2144
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 2139
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    const/16 v6, 0x388

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    .line 2142
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2139
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 2450
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x4b

    const/16 v7, 0x4b

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2451
    new-instance v3, Landroid/text/SpannableString;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "       "

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, v3

    .line 2452
    new-instance v3, Landroid/text/style/ImageSpan;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object v1, v3

    .line 2453
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2454
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private populatePermissions()V
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 519
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 522
    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 521
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Exception while attempting to learn permissions."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 523
    goto :goto_0
.end method

.method private recomputeLayout()V
    .locals 11

    .prologue
    .line 1231
    move-object v0, p0

    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "recomputeLayout called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1233
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 1234
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1248
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1249
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 1250
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1251
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$19;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$19;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1277
    move-object v4, v0

    new-instance v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1278
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    new-instance v4, Landroid/widget/LinearLayout;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1282
    move-object v1, v5

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1285
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 1286
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/Toolbar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 1289
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const v8, 0x10102eb

    aput v8, v6, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1290
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v3, v4

    .line 1291
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1292
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    move v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "colorPrimary"

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 1297
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    .line 1299
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1301
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1303
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$20;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$20;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1319
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v4, :cond_3

    .line 1320
    move-object v4, v0

    new-instance v5, Landroid/widget/ScrollView;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1321
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    .line 1324
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    check-cast v4, Landroid/widget/ScrollView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1330
    :cond_1
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1337
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 1339
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1341
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1346
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v4, :cond_4

    .line 1347
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    check-cast v5, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->SideMenu(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 1353
    :cond_2
    :goto_1
    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "About to create a new ScaledFrameLayout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1354
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1355
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setContentView(Landroid/view/View;)V

    .line 1359
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1360
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1361
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$21;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$21;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 1378
    return-void

    .line 1327
    :cond_3
    move-object v4, v0

    new-instance v5, Landroid/widget/FrameLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    .line 1348
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    if-eqz v4, :cond_2

    .line 1349
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    check-cast v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    goto :goto_1
.end method

.method private setBackground(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 2661
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v3

    .line 2662
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_2

    .line 2663
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2664
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 2666
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2670
    :goto_1
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2671
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 2672
    return-void

    .line 2666
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 2668
    :cond_2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v5, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :goto_2
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v2, v3

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    goto :goto_2
.end method

.method private showAboutApplicationNotification()V
    .locals 9

    .prologue
    .line 2498
    move-object v0, p0

    const-string/jumbo v2, "<p><small><em>Created with Kodular<br><a href=\"https://www.kodular.io\">kodular.io</a></em></small></p>"

    move-object v1, v2

    .line 2500
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->billing:Lcom/google/appinventor/components/runtime/util/KodularBilling;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularBilling;->hasBrandingRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2501
    const-string/jumbo v3, "\\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2503
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    move-object v5, v0

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/Notifier;->aboutThisApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    .line 2507
    :goto_1
    return-void

    .line 2500
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 2504
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2505
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2507
    goto :goto_1
.end method

.method public static switchForm(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2006
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_0

    .line 2007
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2009
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "activeForm is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2022
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Open another screen with start value:"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2023
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_0

    .line 2024
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2026
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "activeForm is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private titleBarFontHelper(Ljava/lang/String;IZ)V
    .locals 12

    .prologue
    .line 3387
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 3388
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3389
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 3390
    move-object v5, v7

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 3391
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 3392
    move-object v5, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3393
    :cond_0
    move v6, v3

    if-eqz v6, :cond_2

    .line 3394
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 3388
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3396
    :cond_2
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    goto :goto_1

    .line 3401
    :cond_3
    return-void
.end method

.method private titleBarTextColorHelper(I)V
    .locals 7

    .prologue
    .line 3404
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3405
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 3406
    move-object v3, v5

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3407
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 3408
    move-object v3, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3409
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3404
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3413
    :cond_1
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 2177
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 2178
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 2167
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected $define()V
    .locals 4

    .prologue
    .line 993
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 2172
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public AboutScreen()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .prologue
    .line 1501
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1514
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v2, v1

    const-string/jumbo v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    move-object v2, v1

    const-string/jumbo v3, "<!--"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 1517
    :cond_0
    :goto_1
    move-object v2, v1

    const-string/jumbo v3, "<!-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1518
    move-object v2, v1

    const-string/jumbo v3, "<!-"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 1520
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    .line 1521
    return-void
.end method

.method public AboutScreenBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 3306
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public AboutScreenBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3313
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    .line 3314
    return-void
.end method

.method public AboutScreenLightTheme(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3324
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    .line 3325
    return-void
.end method

.method public AboutScreenLightTheme()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 3318
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    move v0, v1

    return v0
.end method

.method public AboutScreenTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "About this application"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Define the title of the about application option."
    .end annotation

    .prologue
    .line 2390
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2391
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    .line 2395
    :goto_0
    return-void

    .line 2393
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "About this application"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    .line 2395
    goto :goto_0
.end method

.method public AccentColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3216
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    move v0, v1

    return v0
.end method

.method public AccentColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .prologue
    .line 3211
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 3212
    return-void
.end method

.method public AddDrawerSync()V
    .locals 8

    .prologue
    .line 3061
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$10;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 3071
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 3072
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3073
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3074
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 3076
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3077
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3078
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3080
    :cond_1
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 3081
    return-void
.end method

.method public AddMenuItem(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item to the menu. Use the \'make a list\' block."
    .end annotation

    .prologue
    .line 2410
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 2411
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v5, :cond_0

    .line 2412
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 2413
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2414
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$4;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2412
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2422
    :cond_0
    return-void
.end method

.method public AddMenuItemWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item with a icon on the left side to the menu. This function does not use the make a list block. If you want more items with icon then use this block again."
    .end annotation

    .prologue
    .line 2428
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move-object v3, v4

    .line 2429
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v4, :cond_1

    .line 2431
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 2434
    .line 2436
    :goto_0
    move-object v4, v3

    if-nez v4, :cond_0

    .line 2437
    .line 2447
    :goto_1
    return-void

    .line 2432
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2433
    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "AddMenuItemWithIcon: "

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 2439
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    move-object v9, v3

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 2440
    new-instance v5, Lcom/google/appinventor/components/runtime/Form$5;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 2447
    :cond_1
    goto :goto_1
.end method

.method public AddTitleBarIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new action icon to the TitleBar. You will see a toast message on a long click with your choosen name. Add this block to the \"MenuInitialize\" event."
    .end annotation

    .prologue
    .line 2795
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move-object v3, v5

    .line 2797
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 2800
    .line 2802
    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    .line 2803
    .line 2821
    :goto_1
    return-void

    .line 2798
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 2799
    const-string/jumbo v5, "Form"

    const-string/jumbo v6, "AddTitleBarIcon: "

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 2806
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    if-eqz v5, :cond_1

    .line 2807
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    .line 2808
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    .line 2809
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 2810
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    const/4 v6, 0x0

    const v7, 0x16f4f51

    const/4 v8, 0x0

    move-object v9, v2

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 2811
    move-object v4, v6

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2812
    move-object v5, v4

    move-object v6, v3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2813
    move-object v5, v4

    new-instance v6, Lcom/google/appinventor/components/runtime/Form$6;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2821
    :cond_1
    goto :goto_1
.end method

.method public AlignHorizontal()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 2 = horizontally centered,  3 = right aligned."
    .end annotation

    .prologue
    .line 1689
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:I

    move v0, v1

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1704
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 1705
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    .line 1710
    :goto_0
    return-void

    .line 1707
    :catch_0
    move-exception v2

    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "HorizontalAlignment"

    const/16 v5, 0x579

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 1708
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1707
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1710
    goto :goto_0
.end method

.method public AlignVertical()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .prologue
    .line 1723
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:I

    move v0, v1

    return v0
.end method

.method public AlignVertical(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1738
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 1739
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    .line 1744
    :goto_0
    return-void

    .line 1741
    :catch_0
    move-exception v2

    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "VerticalAlignment"

    const/16 v5, 0x57a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 1742
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1741
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1744
    goto :goto_0
.end method

.method public AppId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1488
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    .line 1489
    return-void
.end method

.method public AppName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    .prologue
    .line 1963
    return-void
.end method

.method public ArePermissionsGranted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if ALL needed app permissions were granted, else false."
    .end annotation

    .prologue
    .line 3254
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->arePermissionsGranted(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 3543
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3544
    const-string/jumbo v2, "android.permission."

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3546
    :cond_0
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$11;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 3556
    return-void
.end method

.method public BackPressed()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BackPressed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1387
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1399
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1401
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1402
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1413
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1431
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1434
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    .line 1439
    :goto_1
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1440
    return-void

    .line 1431
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 1436
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1437
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public CanWriteSystemSettings()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the app can write system settings, else it returns false. It will return true automatic for devices with android version below 6 (API 23)."
    .end annotation

    .prologue
    .line 3273
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->writeSystemSettings(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1789
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1802
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "default"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "fade"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "zoom"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "slidehorizontal"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "slidevertical"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "none"

    if-eq v2, v3, :cond_0

    .line 1805
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "Screen"

    const/16 v5, 0x389

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1807
    .line 1810
    :goto_0
    return-void

    .line 1809
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    .line 1810
    goto :goto_0
.end method

.method public DrawerArrowIconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the drawer arrow icon color."
    .end annotation

    .prologue
    .line 3820
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    move v0, v1

    return v0
.end method

.method public DrawerArrowIconColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the drawer arrow icon color."
    .end annotation

    .prologue
    .line 3808
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v3, :cond_0

    .line 3810
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3813
    .line 3815
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    .line 3816
    return-void

    .line 3811
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3812
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .prologue
    .line 1098
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1099
    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1100
    const-string/jumbo v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Form "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ErrorOccurred, errorNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", componentType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", functionName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", messages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1103
    move-object v6, v5

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->logError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 1104
    move-object v6, v0

    const-string/jumbo v7, "ErrorOccurred"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v3

    .line 1105
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move-object v11, v4

    aput-object v11, v9, v10

    .line 1104
    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v6, :cond_0

    .line 1113
    :try_start_0
    new-instance v6, Lcom/google/appinventor/components/runtime/Notifier;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .line 1118
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1115
    const-string/jumbo v6, "Form"

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1118
    :cond_0
    goto :goto_0
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 1123
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 1124
    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1125
    const-string/jumbo v8, "Form"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Form "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ErrorOccurred, errorNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", componentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", functionName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", messages = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1128
    move-object v8, v0

    const-string/jumbo v9, "ErrorOccurred"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v3

    .line 1129
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v4

    aput-object v13, v11, v12

    .line 1128
    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v8, :cond_0

    .line 1137
    :try_start_0
    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Error "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    .line 1142
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1139
    const-string/jumbo v8, "Form"

    move-object v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1142
    :cond_0
    goto :goto_0
.end method

.method public GotReceivedShared(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user shared content to your app throw the sharing dialog of any other app. Type stand for integer. 0 = nothing shared, 1 = audio, 2 = image, 3 = text or 4 = video"
    .end annotation

    .prologue
    .line 3765
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotReceivedShared"

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

    .line 3766
    return-void
.end method

.method public Height()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .prologue
    .line 1985
    move-object v0, p0

    const-string/jumbo v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Form.Height = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1986
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    move v0, v1

    return v0
.end method

.method public HideKeyboard()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard."
    .end annotation

    .prologue
    .line 2777
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 2778
    move-object v1, v4

    if-nez v3, :cond_0

    .line 2779
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v1, v3

    .line 2781
    :cond_0
    move-object v3, v0

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v3

    .line 2782
    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2783
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    .line 2784
    return-void
.end method

.method public HighQuality(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 3439
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    .line 3440
    return-void
.end method

.method public HighQuality()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, pictures will be loaded in high quality."
    .end annotation

    .prologue
    .line 3445
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    move v0, v1

    return v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1830
    return-void
.end method

.method public Initialize()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen starting"
    .end annotation

    .prologue
    .line 1037
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$16;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Form$16;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1078
    return-void
.end method

.method public IsCompanion()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This block will return true, if you are running your project current in the companion application. Else it will return false."
    .end annotation

    .prologue
    .line 3452
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move v0, v1

    return v0
.end method

.method public IsSideMenuAdded()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if a side menu is added to the screen."
    .end annotation

    .prologue
    .line 3111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

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

.method public IsSideMenuOpen()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if a side menu is current open. Else it will return false."
    .end annotation

    .prologue
    .line 3102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3103
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    move v0, v1

    .line 3105
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public KeepScreenOn(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Keep the device\'s screen turned on and bright."
    .end annotation

    .prologue
    .line 3458
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    .line 3459
    move v2, v1

    if-eqz v2, :cond_0

    .line 3460
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3464
    :goto_0
    return-void

    .line 3462
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 3464
    goto :goto_0
.end method

.method public KeepScreenOn()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if keep screen on is set to enabled, else it returns false."
    .end annotation

    .prologue
    .line 3468
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    move v0, v1

    return v0
.end method

.method public KeyboardVisiblityChanged(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the keyboard was visible or invisible."
    .end annotation

    .prologue
    .line 701
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "KeyboardVisiblityChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 702
    return-void
.end method

.method public LockSideMenu()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to lock the side menu. This means the user can not open the side menu until the side menu  unlock block is used."
    .end annotation

    .prologue
    .line 2971
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2972
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    .line 2973
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 2974
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 2975
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2977
    :cond_0
    return-void
.end method

.method public MenuInitialize()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when the menu has loaded. Set here your blocks like TitleBarIcon or AddMenuItem."
    .end annotation

    .prologue
    .line 2383
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "MenuInitialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2384
    return-void
.end method

.method public MenuItemSelected(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a menu item has been selected."
    .end annotation

    .prologue
    .line 2460
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "MenuItemSelected"

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

    .line 2461
    return-void
.end method

.method public MinSdk(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "19"
        editorType = "min_sdk"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3250
    return-void
.end method

.method public MoveTaskToBack()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move task to back. That means it will minimize your current app."
    .end annotation

    .prologue
    .line 2680
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->moveTaskToBack(Z)Z

    move-result v1

    .line 2681
    return-void
.end method

.method public NavigationBarColor()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2725
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2726
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    move v0, v1

    .line 2728
    :goto_0
    return v0

    :cond_0
    const/high16 v1, -0x1000000

    move v0, v1

    goto :goto_0
.end method

.method public NavigationBarColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set navigation bar color. This will work starting from API Level 21 (Android Lollipop)"
    .end annotation

    .prologue
    .line 2716
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2717
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 2721
    :goto_0
    return-void

    .line 2719
    :cond_0
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Sorry, setNavigationBarColor is not available for API Level < 21"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2721
    goto :goto_0
.end method

.method public NavigationBarLightIcons(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This option tells the system to use dark navigation bar icons, useful for lighter colored navigation bars. Works only for devices with API >= 26."
    .end annotation

    .prologue
    .line 3151
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 3152
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Sorry, navigation bar light icons is not available for API Level < 26"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3165
    :goto_0
    return-void

    .line 3154
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->navigationBarLight:Z

    .line 3155
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3156
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, -0x7fffdff0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3157
    :cond_1
    move v2, v1

    if-eqz v2, :cond_2

    .line 3158
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, -0x7ffffff0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3159
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3160
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons(Z)V

    goto :goto_0

    .line 3162
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3165
    goto :goto_0
.end method

.method public NavigationBarLightIcons()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3169
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->navigationBarLight:Z

    move v0, v1

    return v0
.end method

.method public NavigationIconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the navigation icon color."
    .end annotation

    .prologue
    .line 3803
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    move v0, v1

    return v0
.end method

.method public NavigationIconColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the navigation icon color."
    .end annotation

    .prologue
    .line 3789
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 3790
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3792
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3795
    .line 3798
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    .line 3799
    return-void

    .line 3793
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3794
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public OnAppPause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The system calls this method as the first indication that the user is leaving your activity (though it does not always mean the activity is being destroyed)."
    .end annotation

    .prologue
    .line 2876
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAppPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2877
    return-void
.end method

.method public OnAppResume()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the activity enters the Resumed state, it comes to the foreground, and then the system invokes this event."
    .end annotation

    .prologue
    .line 2870
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAppResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2871
    return-void
.end method

.method public OnAppStop()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When your activity is no longer visible to the user, it has entered the Stopped state, and the system invokes this event."
    .end annotation

    .prologue
    .line 2882
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAppStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2883
    return-void
.end method

.method public OpenAppSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the settings screen of the app. Useful if \'Are Permissions Granted\' has returned false."
    .end annotation

    .prologue
    .line 3260
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->appSettings(Landroid/content/Context;)V

    .line 3261
    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1756
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1768
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "default"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "fade"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "zoom"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "slidehorizontal"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "slidevertical"

    if-eq v2, v3, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "none"

    if-eq v2, v3, :cond_0

    .line 1771
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "Screen"

    const/16 v5, 0x389

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1773
    .line 1776
    :goto_0
    return-void

    .line 1775
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    .line 1776
    goto :goto_0
.end method

.method public OpenSystemWriteSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the app\'s system settings page. This works only for devices with android 6+."
    .end annotation

    .prologue
    .line 3266
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->appSystemSettings(Landroid/content/Context;)V

    .line 3267
    return-void
.end method

.method public OptionsMenuIconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the options menu icon color."
    .end annotation

    .prologue
    .line 3784
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    move v0, v1

    return v0
.end method

.method public OptionsMenuIconColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the options menu icon color."
    .end annotation

    .prologue
    .line 3770
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 3771
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3773
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3776
    .line 3779
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    .line 3780
    return-void

    .line 3774
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3775
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .prologue
    .line 2150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Form "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    .line 2151
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2150
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2152
    move-object v3, v0

    const-string/jumbo v4, "OtherScreenClosed"

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

    .line 2153
    return-void
.end method

.method public PackageName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "app_package_name"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom PackageName for the app. Min 8 chars, max 35 chars, min 3 words, max 5 words, no special chars, only ASCII a-z and dots for separators"
        userVisible = false
    .end annotation

    .prologue
    .line 1874
    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 3513
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v3

    const-string/jumbo v5, "android.permission."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3515
    move-object v4, v3

    const-string/jumbo v5, "android.permission."

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3517
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "PermissionDenied"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3518
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/16 v7, 0x38c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 3520
    :cond_1
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 3530
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "android.permission."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3532
    move-object v2, v1

    const-string/jumbo v3, "android.permission."

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3534
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "PermissionGranted"

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

    .line 3535
    return-void
.end method

.method public PrimaryColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3190
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    move v0, v1

    return v0
.end method

.method public PrimaryColor(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .prologue
    .line 3177
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v2, v4

    .line 3178
    move v4, v1

    if-nez v4, :cond_1

    sget v4, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    :goto_0
    move v3, v4

    .line 3179
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 3180
    move-object v4, v2

    if-eqz v4, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    if-eq v4, v5, :cond_0

    .line 3182
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 3183
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 3184
    move-object v4, v2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3186
    :cond_0
    return-void

    .line 3178
    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method public PrimaryColorDark()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3203
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    move v0, v1

    return v0
.end method

.method public PrimaryColorDark(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF303F9F"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .prologue
    .line 3198
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 3199
    return-void
.end method

.method public RTLSupport(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3755
    return-void
.end method

.method public ReceiveSharedText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "receive_types"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3761
    return-void
.end method

.method public RemoveSideMenu()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a first created side menu. This block will be usefull if you need to update a side menu dynamically. You can use this block too to test a side menu in the companion. Add then this block above of the \'Side Menu\' block."
    .end annotation

    .prologue
    .line 2952
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2954
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V

    .line 2955
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 2956
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2957
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 2958
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 2960
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    .line 2965
    :goto_0
    return-void

    .line 2961
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2962
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2965
    :cond_0
    goto :goto_0
.end method

.method public RemoveTitleBarIcons()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all added action icons from the TitleBar."
    .end annotation

    .prologue
    .line 2830
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    if-eqz v4, :cond_0

    .line 2831
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 2832
    move-object v1, v5

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    move v2, v4

    .line 2833
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 2834
    move-object v4, v1

    const v5, 0x16f4f51

    invoke-interface {v4, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 2833
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2837
    :cond_0
    return-void
.end method

.method ReplayFormOrientation()V
    .locals 7

    .prologue
    .line 830
    move-object v0, p0

    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "ReplayFormOrientation()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 831
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    .line 832
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 833
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 835
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 836
    move-object v3, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v4, v5, :cond_0

    .line 837
    move-object v4, v3

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    move-object v5, v3

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:I

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 833
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 839
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    move-object v5, v3

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:I

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    goto :goto_1

    .line 842
    :cond_1
    return-void
.end method

.method public ResetMenu()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the menu back to its default"
    .end annotation

    .prologue
    .line 2465
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 2466
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 2467
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2468
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-super {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 2470
    :cond_0
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .prologue
    .line 1602
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1629
    const-string/jumbo v1, "unspecified"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1604
    :pswitch_0
    const-string/jumbo v1, "behind"

    move-object v0, v1

    goto :goto_0

    .line 1606
    :pswitch_1
    const-string/jumbo v1, "landscape"

    move-object v0, v1

    goto :goto_0

    .line 1608
    :pswitch_2
    const-string/jumbo v1, "nosensor"

    move-object v0, v1

    goto :goto_0

    .line 1610
    :pswitch_3
    const-string/jumbo v1, "portrait"

    move-object v0, v1

    goto :goto_0

    .line 1612
    :pswitch_4
    const-string/jumbo v1, "sensor"

    move-object v0, v1

    goto :goto_0

    .line 1614
    :pswitch_5
    const-string/jumbo v1, "unspecified"

    move-object v0, v1

    goto :goto_0

    .line 1616
    :pswitch_6
    const-string/jumbo v1, "user"

    move-object v0, v1

    goto :goto_0

    .line 1618
    :pswitch_7
    const-string/jumbo v1, "fullSensor"

    move-object v0, v1

    goto :goto_0

    .line 1620
    :pswitch_8
    const-string/jumbo v1, "reverseLandscape"

    move-object v0, v1

    goto :goto_0

    .line 1622
    :pswitch_9
    const-string/jumbo v1, "reversePortrait"

    move-object v0, v1

    goto :goto_0

    .line 1624
    :pswitch_a
    const-string/jumbo v1, "sensorLandscape"

    move-object v0, v1

    goto :goto_0

    .line 1626
    :pswitch_b
    const-string/jumbo v1, "sensorPortrait"

    move-object v0, v1

    goto :goto_0

    .line 1602
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1642
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "behind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1643
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    .line 1670
    :goto_0
    return-void

    .line 1644
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "fullSensor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1645
    move-object v2, v0

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1646
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1647
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1648
    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "nosensor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1649
    move-object v2, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1650
    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1651
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1652
    :cond_4
    move-object v2, v1

    const-string/jumbo v3, "reverseLandscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1653
    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1654
    :cond_5
    move-object v2, v1

    const-string/jumbo v3, "reversePortrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1655
    move-object v2, v0

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1656
    :cond_6
    move-object v2, v1

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1657
    move-object v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1658
    :cond_7
    move-object v2, v1

    const-string/jumbo v3, "sensorLandscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1659
    move-object v2, v0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1660
    :cond_8
    move-object v2, v1

    const-string/jumbo v3, "sensorPortrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1661
    move-object v2, v0

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1662
    :cond_9
    move-object v2, v1

    const-string/jumbo v3, "unspecified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1663
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1664
    :cond_a
    move-object v2, v1

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1665
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1667
    :cond_b
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "ScreenOrientation"

    const/16 v5, 0x385

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1670
    goto/16 :goto_0
.end method

.method public ScreenOrientationChanged()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .prologue
    .line 1082
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

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

    check-cast v2, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1083
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    .line 1084
    goto :goto_0

    .line 1085
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "ScreenOrientationChanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 1086
    return-void
.end method

.method public Scrollable(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 1213
    .line 1227
    :goto_0
    return-void

    .line 1216
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 1217
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1220
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 1224
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1225
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    .line 1226
    goto :goto_1

    .line 1227
    :cond_1
    goto :goto_0
.end method

.method public Scrollable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .prologue
    .line 1200
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    move v0, v1

    return v0
.end method

.method public ShowAboutApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the dialog which shows when pressing the \"About This Application\" button in the menu."
    .end annotation

    .prologue
    .line 2511
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    .line 2512
    return-void
.end method

.method public ShowKeyboard()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard"
    .end annotation

    .prologue
    .line 2770
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object v1, v2

    .line 2771
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2772
    :cond_0
    move-object v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2773
    return-void
.end method

.method public ShowListsAsJson(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"false\" meaning that the App Inventor programmer must explicitly set it to \"true\" if JSON/Python syntax is desired. At some point in the future we will alter the system so that new projects are created with this property set to \"true\" by default. Existing projects will not be impacted. The App Inventor programmer can also set it back to \"false\" in newer projects if desired. "
        userVisible = false
    .end annotation

    .prologue
    .line 1942
    move-object v0, p0

    move v1, p1

    move v2, v1

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 1943
    return-void
.end method

.method public ShowListsAsJson()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 1948
    move-object v0, p0

    sget-boolean v1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    move v0, v1

    return v0
.end method

.method public ShowNavBar(Z)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "experimental"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2907
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->showNavBar:Z

    .line 2908
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 2910
    move-object v2, v4

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->VisibilityHelper(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2911
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$7;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2925
    return-void
.end method

.method public ShowNavBar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show/Hide Navigation Bar"
    .end annotation

    .prologue
    .line 2930
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->showNavBar:Z

    move v0, v1

    return v0
.end method

.method public ShowOptionsMenu(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 2888
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->showOptionsMenu:Z

    .line 2889
    return-void
.end method

.method public ShowStatusBar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1573
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq v2, v3, :cond_0

    .line 1574
    move v2, v1

    if-eqz v2, :cond_1

    .line 1575
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1576
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1581
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 1583
    :cond_0
    return-void

    .line 1578
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1579
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public ShowStatusBar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .prologue
    .line 1562
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    move v0, v1

    return v0
.end method

.method public ShowTitlebarBackButton(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true it will show in the TitleBar a back button only if no side menu was added. If a side menu was added it will remove the \u2018hamburger\u2019-menu icon but the side menu can still be opened."
    .end annotation

    .prologue
    .line 2854
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->stateBackButton:Z

    .line 2855
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2856
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2858
    :cond_0
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 2859
    return-void
.end method

.method public ShowTitlebarBackButton()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of titlebar back button."
    .end annotation

    .prologue
    .line 2864
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->stateBackButton:Z

    move v0, v1

    return v0
.end method

.method public SideMenu(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Side Menu. Set to \"layout\" your layout that will be then your side menu. Use as example a vertical arrangement. Your choosen layout will be then removed from the screen and only visible in the side menu.\"Information\": This block works on companion only if you add a side menu on button click.Don\u2019t add it in companion on \"screen initialize event\". Else the companion will crash.Do NOT use this block with the Side Menu Layout component"
    .end annotation

    .prologue
    .line 2997
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 2999
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3000
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3005
    .line 3007
    move-object v3, v0

    new-instance v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/16 v7, 0x128

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 3010
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const v4, 0x800003

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3011
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3013
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3021
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v3, :cond_0

    .line 3022
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 3023
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3024
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3025
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->AddDrawerSync()V

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 3001
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 3002
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3003
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3004
    goto :goto_0
.end method

.method public SideMenuClose()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you had set your side menu then you can use this block to close it as example with a button click."
    .end annotation

    .prologue
    .line 3094
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3095
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 3097
    :cond_0
    return-void
.end method

.method public SideMenuClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the side menu was closed."
    .end annotation

    .prologue
    .line 3121
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SideMenuClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 3122
    return-void
.end method

.method public SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V
    .locals 9

    .prologue
    .line 3030
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 3032
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3034
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3035
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3038
    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/16 v7, 0x128

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 3041
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const v4, 0x800003

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3042
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3044
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3052
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v3, :cond_1

    .line 3053
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 3054
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3055
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3056
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->AddDrawerSync()V

    .line 3058
    :cond_1
    return-void
.end method

.method public SideMenuOpen()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you had set your side menu then you can use this block to open it as example with a button click."
    .end annotation

    .prologue
    .line 3086
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3087
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 3089
    :cond_0
    return-void
.end method

.method public SideMenuOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the side menu was opened."
    .end annotation

    .prologue
    .line 3116
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SideMenuOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 3117
    return-void
.end method

.method public Sizing(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .prologue
    .line 1892
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Sizing("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1893
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1894
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1895
    move-object v2, v1

    const-string/jumbo v3, "Fixed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1896
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1897
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1898
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1902
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 1903
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 1904
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1906
    :cond_0
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "formWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " formHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1907
    return-void

    .line 1900
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    goto :goto_0

    .line 1902
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public SplashEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user will see a splash screen while the app is loading the content."
        userVisible = false
    .end annotation

    .prologue
    .line 3230
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    .line 3231
    return-void
.end method

.method public SplashEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3235
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    move v0, v1

    return v0
.end method

.method public SplashIcon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3223
    return-void
.end method

.method public StatusBarColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2708
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->statusbarColor:I

    move v0, v1

    return v0
.end method

.method public StatusBarColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set status bar color. This will work starting from API Level 21 (Android Lollipop"
    .end annotation

    .prologue
    .line 2698
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->statusbarColor:I

    .line 2699
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2700
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 2704
    :goto_1
    return-void

    .line 2700
    :cond_0
    move v3, v1

    goto :goto_0

    .line 2702
    :cond_1
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Sorry, setStatusBarColor is not available for API Level < 21"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2704
    goto :goto_1
.end method

.method public StatusbarLightIcons(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This option tells the system to use dark statusbar icons, useful for lighter colored status bars. Works only for devices with API >= 23."
    .end annotation

    .prologue
    .line 3127
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 3128
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Sorry, statusbar light icons is not available for API Level < 23"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3141
    :goto_0
    return-void

    .line 3130
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->statusbarLight:Z

    .line 3131
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3132
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, -0x7fffdff0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3133
    :cond_1
    move v2, v1

    if-eqz v2, :cond_2

    .line 3134
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3135
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3136
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons(Z)V

    goto :goto_0

    .line 3138
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3141
    goto :goto_0
.end method

.method public StatusbarLightIcons()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3145
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->statusbarLight:Z

    move v0, v1

    return v0
.end method

.method public TaskDescription(Ljava/lang/String;I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets information describing the task with this activity for presentation inside the Recents System UI. You will see the settings if the device API is >= 21 and you minimize the app."
    .end annotation

    .prologue
    .line 2895
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 2896
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setAppBackgroundTaskInfo(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2900
    :goto_0
    return-void

    .line 2898
    :cond_0
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "Sorry, setAppBackgroundTaskInfo is not available for API Level < 21"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2900
    goto :goto_0
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppTheme"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme used by the application."
        userVisible = false
    .end annotation

    .prologue
    .line 3243
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .prologue
    .line 1450
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1451
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1452
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1457
    :goto_0
    return-object v0

    .line 1454
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1457
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1471
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1472
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarTitle:Ljava/lang/String;

    .line 1473
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1474
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1476
    :cond_0
    return-void
.end method

.method public TitleBarColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2693
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    move v0, v1

    return v0
.end method

.method public TitleBarColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set title bar color"
    .end annotation

    .prologue
    .line 2685
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 2686
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2687
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    if-eqz v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    :goto_0
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2689
    :cond_0
    return-void

    .line 2687
    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public TitleBarFontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 3371
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    move v0, v1

    return v0
.end method

.method public TitleBarFontTypeface(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3361
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    .line 3362
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3363
    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 3364
    move-object v2, v0

    const-string/jumbo v3, ""

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->titleBarFontHelper(Ljava/lang/String;IZ)V

    .line 3366
    :cond_0
    return-void
.end method

.method public TitleBarIconSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The event returns the \'icon\' or \'name\' of the selected icon."
    .end annotation

    .prologue
    .line 2825
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "TitleBarIconSelected"

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

    .line 2826
    return-void
.end method

.method public TitleBarSubTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the TitleBar\'s subtitle."
    .end annotation

    .prologue
    .line 2762
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2763
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2765
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Screen1"

    move-object v0, v1

    goto :goto_0
.end method

.method public TitleBarSubTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the TitleBar\'s subtitle."
    .end annotation

    .prologue
    .line 2754
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    .line 2755
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2756
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2758
    :cond_0
    return-void
.end method

.method public TitleBarTypefaceImport(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 3379
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3380
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3381
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->titleBarFontHelper(Ljava/lang/String;IZ)V

    .line 3384
    :cond_0
    return-void
.end method

.method public TitleVisible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1543
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1544
    move v2, v1

    if-eqz v2, :cond_1

    .line 1545
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 1549
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 1551
    :cond_0
    return-void

    .line 1547
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public TitleVisible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .prologue
    .line 1532
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    move v0, v1

    return v0
.end method

.method public TitlebarBackButtonClicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a menu item has been selected."
    .end annotation

    .prologue
    .line 2488
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "TitlebarBackButtonClicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2489
    return-void
.end method

.method public TitlebarTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the text color from the TitleBar."
    .end annotation

    .prologue
    .line 2848
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColor:I

    move v0, v1

    return v0
.end method

.method public TitlebarTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom color for the TitleBar text."
    .end annotation

    .prologue
    .line 2841
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColor:I

    .line 2842
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColorHelper(I)V

    .line 2843
    return-void
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    .prologue
    .line 1997
    return-void
.end method

.method public UnlockSideMenu()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to unlock the side menu. This means the user can now open again the side menu."
    .end annotation

    .prologue
    .line 2982
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2983
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    .line 2984
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 2985
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 2986
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2988
    :cond_0
    return-void
.end method

.method public VersionCode()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will returns the version code"
    .end annotation

    .prologue
    .line 2744
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2747
    :goto_0
    return v0

    .line 2745
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2746
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2747
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public VersionCode(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    .prologue
    .line 1844
    return-void
.end method

.method public VersionName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will returns the version name"
    .end annotation

    .prologue
    .line 2734
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2737
    :goto_0
    return-object v0

    .line 2735
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2736
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2737
    const-string/jumbo v2, "0"

    move-object v0, v2

    goto :goto_0
.end method

.method public VersionName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    .prologue
    .line 1858
    return-void
.end method

.method public VisibilityHelper(Z)I
    .locals 4

    .prologue
    .line 2935
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 2936
    const/4 v2, 0x0

    move v1, v2

    .line 2944
    :goto_0
    move v2, v1

    move v0, v2

    return v0

    .line 2938
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 2939
    const/4 v2, 0x2

    move v1, v2

    goto :goto_0

    .line 2941
    :cond_1
    const/16 v2, 0x1002

    move v1, v2

    goto :goto_0
.end method

.method public Width()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .prologue
    .line 1973
    move-object v0, p0

    const-string/jumbo v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Form.Width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1974
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    move v0, v1

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .locals 8

    .prologue
    .line 2398
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 2399
    new-instance v3, Lcom/google/appinventor/components/runtime/Form$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 2405
    return-void
.end method

.method public addElevation()V
    .locals 4

    .prologue
    .line 3344
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3345
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 3347
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 3348
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1

    .line 3349
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    .line 3355
    :cond_1
    :goto_0
    return-void

    .line 3352
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3353
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3355
    goto :goto_0
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 11

    .prologue
    .line 3629
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 3630
    move-object v2, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 3631
    :cond_0
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3632
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3633
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3636
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 3638
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    .line 3668
    :goto_1
    return-void

    .line 3641
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$14;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 3668
    goto :goto_1
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .locals 12

    .prologue
    .line 3604
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v3, v4

    .line 3605
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3607
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 3608
    .line 3621
    :goto_0
    return-void

    .line 3610
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$13;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 3621
    goto :goto_0
.end method

.method public assertPermission(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 3578
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3579
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3581
    :cond_0
    return-void
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2607
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/Form;->OnCompanionRefresh()V

    .line 2608
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "Initialize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v2, v3

    .line 2615
    .line 2617
    :try_start_1
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "calling Initialize method for Object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2618
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 2622
    :goto_0
    return-void

    .line 2609
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2610
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Security exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2611
    goto :goto_0

    .line 2614
    :catch_1
    move-exception v3

    goto :goto_0

    .line 2619
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 2620
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "invoke exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2621
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    throw v3
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 999
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_2

    move-object v3, v2

    const-string/jumbo v4, "Initialize"

    .line 1000
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v5, v3

    move v3, v5

    move v4, v5

    .line 1002
    move v1, v4

    if-eqz v3, :cond_1

    .line 1005
    move-object v3, v0

    sput-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 1008
    :cond_1
    move v3, v1

    move v0, v3

    return v0

    .line 1000
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 2516
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2517
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 2518
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2519
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2522
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 2523
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2524
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2525
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2526
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2527
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2528
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2529
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2530
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2531
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2532
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2533
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 2535
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 2536
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    .line 2537
    goto :goto_0

    .line 2539
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2540
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Form.clear() About to do moby GC!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2541
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2542
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2543
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 2

    .prologue
    .line 2336
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2337
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 2319
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2320
    move-object v2, v0

    const/4 v3, -0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2322
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2323
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2324
    return-void
.end method

.method public compatScalingFactor()F
    .locals 2

    .prologue
    .line 2185
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    move v0, v1

    return v0
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2546
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v2, :cond_0

    .line 2547
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2549
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v2, :cond_1

    .line 2550
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2552
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v2, :cond_2

    .line 2553
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2555
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v2, :cond_3

    .line 2556
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2558
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v2, :cond_4

    .line 2559
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2561
    :cond_4
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v2, :cond_5

    .line 2562
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2564
    :cond_5
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v2, :cond_6

    .line 2565
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2567
    :cond_6
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v2, :cond_7

    .line 2568
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2570
    :cond_7
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v2, :cond_8

    .line 2571
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/Deleteable;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2573
    :cond_8
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    if-eqz v2, :cond_9

    .line 2574
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2576
    :cond_9
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnCreateListener;

    if-eqz v2, :cond_a

    .line 2577
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2579
    :cond_a
    return-void
.end method

.method public deviceDensity()F
    .locals 2

    .prologue
    .line 2181
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    move v0, v1

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 1147
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/Form$17;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move v9, v3

    move-object v10, v4

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/Form$17;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1153
    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 1162
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/Form$18;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move v9, v3

    move-object v10, v4

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/Form$18;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1174
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 1022
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 1028
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .locals 8

    .prologue
    .line 3680
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 3681
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 3682
    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 3694
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$15;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3700
    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 3711
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 3

    .prologue
    .line 2588
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2589
    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 2657
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3721
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "file:///android_asset/"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 3286
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 3287
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file:///android_asset/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 2

    .prologue
    .line 2160
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getInstalledFrom()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2104
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 2105
    move-object v1, v4

    if-nez v3, :cond_0

    .line 2106
    const-string/jumbo v3, "Developer"

    move-object v0, v3

    .line 2118
    :goto_0
    return-object v0

    .line 2109
    :cond_0
    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2118
    const-string/jumbo v3, "Unknown"

    move-object v0, v3

    goto :goto_0

    .line 2109
    :sswitch_0
    move-object v3, v1

    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    :sswitch_1
    move-object v3, v1

    const-string/jumbo v4, "com.google.android.feedback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    goto :goto_1

    :sswitch_2
    move-object v3, v1

    const-string/jumbo v4, "com.amazon.venezia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    move v2, v3

    goto :goto_1

    :sswitch_3
    move-object v3, v1

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    move v2, v3

    goto :goto_1

    .line 2112
    :pswitch_0
    const-string/jumbo v3, "Google Play"

    move-object v0, v3

    goto :goto_0

    .line 2114
    :pswitch_1
    const-string/jumbo v3, "Amazon Appstore"

    move-object v0, v3

    goto :goto_0

    .line 2116
    :pswitch_2
    const-string/jumbo v3, "Samsung App Store"

    move-object v0, v3

    goto :goto_0

    .line 2109
    :sswitch_data_0
    .sparse-switch
        -0x6ed94931 -> :sswitch_2
        -0x490565ea -> :sswitch_3
        -0x3e676dcf -> :sswitch_0
        0x21b10dcc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getKodularPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2079
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2082
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 2083
    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2084
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2087
    const-string/jumbo v3, ".Screen1"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 2089
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getOnCreateBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getOpenAnimType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1817
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isCustomPackage()Z
    .locals 3

    .prologue
    .line 2094
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 3567
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 3568
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    .line 3567
    move v0, v2

    goto :goto_0
.end method

.method public isInstalledThruStore()Z
    .locals 3

    .prologue
    .line 2122
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getInstalledFrom()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isKeyboardVisible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the status of the keyboard. If the keyboard is visible then the result is true."
    .end annotation

    .prologue
    .line 2789
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    move v0, v1

    return v0
.end method

.method protected isRepl()Z
    .locals 2

    .prologue
    .line 3824
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .prologue
    .line 728
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 729
    const-string/jumbo v7, "Form"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Form "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " got onActivityResult, requestCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", resultCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 731
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 737
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    const-string/jumbo v8, "APP_INVENTOR_RESULT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 738
    move-object v7, v3

    const-string/jumbo v8, "APP_INVENTOR_RESULT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 742
    :goto_0
    move-object v7, v4

    const-string/jumbo v8, "other screen closed"

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 744
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    .line 759
    :goto_1
    return-void

    .line 740
    :cond_0
    const-string/jumbo v7, ""

    move-object v4, v7

    goto :goto_0

    .line 747
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 748
    move-object v4, v8

    if-eqz v7, :cond_2

    .line 749
    move-object v7, v4

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 752
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 753
    move-object v4, v8

    if-eqz v7, :cond_3

    .line 754
    move-object v7, v4

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    array-length v7, v7

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    :goto_2
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    .line 755
    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 754
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 759
    :cond_3
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 714
    :goto_0
    return-void

    .line 709
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 711
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 714
    :cond_1
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    .line 576
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 577
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_0

    .line 578
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 581
    :cond_0
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "onConfigurationChanged() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 582
    move-object v2, v1

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move v7, v2

    move v2, v7

    move v3, v7

    .line 583
    move v1, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 589
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$12;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 635
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 342
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 344
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 345
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/OnCreateListener;

    .line 346
    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/OnCreateListener;->onCreate()V

    .line 347
    goto :goto_0

    .line 350
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 351
    move-object v2, v5

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v3, v4

    .line 352
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 353
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 355
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 357
    sput-object v5, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v4, :cond_2

    .line 359
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    .line 362
    :cond_2
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 363
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result v5

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 364
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 365
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 367
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 368
    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string/jumbo v5, "Screen1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    const-string/jumbo v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "MULTI: _initialized = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " formName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 370
    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 375
    sget-boolean v4, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v4, :cond_3

    .line 376
    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "MultiDex already installed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 377
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 389
    :goto_1
    return-void

    .line 379
    :cond_3
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Please Wait..."

    const-string/jumbo v7, "Installation Finishing"

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 380
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 381
    new-instance v4, Lcom/google/appinventor/components/runtime/Form$a;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$a;-><init>(B)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    goto :goto_1

    .line 384
    :cond_4
    const-string/jumbo v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "NO MULTI: _initialized = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " formName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 385
    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 386
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 389
    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 964
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 968
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 966
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method onCreateFinish()V
    .locals 8

    .prologue
    .line 408
    move-object v1, p0

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "onCreateFinish called "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 409
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 410
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 413
    :cond_0
    move-object v2, v1

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->populatePermissions()V

    .line 423
    move-object v2, v1

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 425
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 427
    :goto_0
    if-eqz v2, :cond_2

    .line 428
    move-object v2, v1

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 449
    :goto_1
    return-void

    .line 425
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 447
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish2()V

    .line 449
    goto :goto_1
.end method

.method onCreateFinish2()V
    .locals 9

    .prologue
    .line 452
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 455
    const/4 v3, 0x0

    move-object v1, v3

    .line 457
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 460
    .line 461
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "APP_INVENTOR_START"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "APP_INVENTOR_START"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 465
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 466
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    move-object v3, v1

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 468
    move-object v2, v4

    if-eqz v3, :cond_1

    .line 469
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 470
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 472
    .line 493
    :cond_1
    :goto_1
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 497
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 498
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v1, v3

    .line 499
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    move v4, v1

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 503
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 510
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    .line 511
    return-void

    .line 458
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 459
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 472
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 473
    move-object v3, v1

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 474
    move-object v2, v4

    if-eqz v3, :cond_3

    .line 475
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 476
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 478
    :cond_3
    goto :goto_1

    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "text/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 479
    move-object v3, v1

    const-string/jumbo v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 480
    move-object v2, v4

    if-eqz v3, :cond_5

    .line 481
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 482
    move-object v3, v0

    const/4 v4, 0x3

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 484
    :cond_5
    goto/16 :goto_1

    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    move-object v3, v1

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 486
    move-object v2, v4

    if-eqz v3, :cond_1

    .line 487
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 488
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 2376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->showOptionsMenu:Z

    move v0, v2

    return v0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 933
    move-object v0, p0

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onDestroy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 935
    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 937
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

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

    check-cast v2, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 938
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    .line 939
    goto :goto_0

    .line 940
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 941
    return-void
.end method

.method public onGlobalLayout()V
    .locals 11

    .prologue
    .line 660
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v1, v3

    .line 661
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v3

    move v2, v3

    .line 662
    move v3, v1

    move v4, v2

    sub-int/2addr v3, v4

    .line 666
    int-to-float v3, v3

    move v4, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v1, v3

    .line 667
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "onGlobalLayout(): diffPercent = "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 669
    move v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 670
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "keyboard hidden!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 671
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v3, :cond_0

    .line 672
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 673
    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v3, :cond_0

    .line 674
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 675
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 687
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v3

    .line 688
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 689
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v10, v3

    move v3, v10

    move v4, v10

    .line 693
    move v2, v4

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v1, v3

    .line 695
    move-object v3, v0

    move v4, v1

    int-to-double v4, v4

    move v6, v2

    int-to-double v6, v6

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    .line 696
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->KeyboardVisiblityChanged(Z)V

    .line 697
    return-void

    .line 679
    :cond_1
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "keyboard shown!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 680
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 681
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v3, :cond_0

    .line 682
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 683
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_0

    .line 695
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 887
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 888
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Form "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " got onNewIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 889
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 890
    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    .line 891
    goto :goto_0

    .line 892
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 2474
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2475
    const/4 v3, 0x1

    move v0, v3

    .line 2483
    :goto_0
    return v0

    .line 2478
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_1
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2479
    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2480
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 2482
    :cond_1
    goto :goto_1

    .line 2483
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 900
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 901
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onPause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 902
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->OnAppPause()V

    .line 903
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

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

    check-cast v2, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 904
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    .line 905
    goto :goto_0

    .line 906
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 568
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 569
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_0

    .line 570
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 572
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    .prologue
    .line 973
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 978
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 980
    :goto_0
    return-void

    .line 975
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    .line 976
    goto :goto_0

    .line 973
    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    .line 2363
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 2364
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 2365
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    .line 2366
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    .line 2369
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2370
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->MenuInitialize()V

    .line 2371
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3485
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 3486
    move-object v4, v6

    if-nez v5, :cond_0

    .line 3488
    const-string/jumbo v5, "Form"

    const-string/jumbo v6, "Received permission response which we cannot match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3489
    .line 3502
    :goto_0
    return-void

    .line 3491
    :cond_0
    move-object v5, v3

    array-length v5, v5

    if-lez v5, :cond_2

    .line 3492
    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_1

    .line 3493
    move-object v5, v4

    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 3501
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3502
    goto :goto_0

    .line 3495
    :cond_1
    move-object v5, v4

    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3498
    :cond_2
    const-string/jumbo v5, "Form"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "onRequestPermissionsResult: grantResults.length = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " requestCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 854
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 855
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onResume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 856
    move-object v2, v0

    sput-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 859
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v2, :cond_0

    .line 860
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 861
    .line 869
    :goto_0
    return-void

    .line 864
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->OnAppResume()V

    .line 866
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 867
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    .line 868
    goto :goto_1

    .line 869
    :cond_1
    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    .line 914
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 915
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onStop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 916
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->OnAppStop()V

    .line 917
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

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

    check-cast v2, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 918
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    .line 919
    goto :goto_0

    .line 920
    :cond_0
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3733
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3301
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3739
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3740
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 3741
    move-object v3, v1

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 3745
    :goto_0
    return-object v0

    .line 3742
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3743
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 3745
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .locals 6

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v3

    move v2, v3

    .line 780
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 781
    move v3, v2

    move v0, v3

    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .locals 8

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 797
    move-object v3, v5

    if-nez v4, :cond_0

    .line 798
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    move-object v3, v4

    .line 799
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 801
    :cond_0
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 802
    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .locals 4

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 928
    return-void
.end method

.method public registerForOnCreateListener(Lcom/google/appinventor/components/runtime/OnCreateListener;)V
    .locals 4

    .prologue
    .line 960
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 961
    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .locals 4

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 949
    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .locals 4

    .prologue
    .line 944
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 945
    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .locals 4

    .prologue
    .line 882
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 883
    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .locals 4

    .prologue
    .line 895
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 896
    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .locals 4

    .prologue
    .line 952
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 953
    return-void
.end method

.method public registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V
    .locals 4

    .prologue
    .line 956
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 957
    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .locals 4

    .prologue
    .line 909
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 910
    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .locals 4

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 873
    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .locals 4

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 924
    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 11

    .prologue
    .line 845
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 846
    return-void
.end method

.method public removeElevation()V
    .locals 4

    .prologue
    .line 3329
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3330
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 3332
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 3333
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1

    .line 3334
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    .line 3340
    :cond_1
    :goto_0
    return-void

    .line 3337
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3338
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3340
    goto :goto_0
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    .prologue
    .line 1183
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "FORM_RUNTIME_ERROR"

    const-string/jumbo v5, "functionName is "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1184
    const-string/jumbo v4, "FORM_RUNTIME_ERROR"

    const-string/jumbo v5, "errorNumber is "

    move v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1185
    const-string/jumbo v4, "FORM_RUNTIME_ERROR"

    const-string/jumbo v5, "message is "

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1186
    move-object v4, v0

    sget-object v5, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1187
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 2215
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    .line 2216
    if-nez v4, :cond_0

    .line 2218
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2226
    :cond_0
    move v4, v3

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 2227
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    move v5, v3

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v3, v4

    .line 2230
    :cond_1
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2233
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 2234
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 2190
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 2191
    move v3, v5

    if-nez v4, :cond_0

    .line 2193
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$22;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$22;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2201
    :cond_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Form.setChildWidth(): width = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parent Width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " child = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2202
    move v4, v2

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 2203
    move v4, v3

    move v5, v2

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v2, v4

    .line 2207
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2210
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 2211
    return-void
.end method

.method setYandexTranslateTagline()V
    .locals 3

    .prologue
    .line 2494
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "<p><small>Language translation powered by Yandex.Translate</small></p>"

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    .line 2495
    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 15

    .prologue
    .line 2032
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "startNewForm:"

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2033
    new-instance v6, Landroid/content/Intent;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v3, v6

    .line 2038
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "Trying to get package name..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2040
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2041
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "Package Name is "

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2043
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 2044
    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2045
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2048
    const-string/jumbo v7, "Screen1"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2050
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "Setting Intent Class to "

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2052
    move-object v6, v3

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2053
    move-object v6, v2

    if-nez v6, :cond_0

    const-string/jumbo v6, "open another screen"

    :goto_0
    move-object v5, v6

    .line 2056
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 2057
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "StartNewForm about to JSON encode:"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2058
    move-object v6, v2

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 2059
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "StartNewForm got JSON encoding:"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2063
    :goto_1
    move-object v6, v3

    const-string/jumbo v7, "APP_INVENTOR_START"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2066
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 2067
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "about to start new form"

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2069
    :try_start_0
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "startNewForm starting activity:"

    move-object v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2070
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2071
    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    .line 2076
    :goto_2
    return-void

    .line 2053
    :cond_0
    const-string/jumbo v6, "open another screen with start value"

    goto :goto_0

    .line 2061
    :cond_1
    const-string/jumbo v6, ""

    move-object v2, v6

    goto :goto_1

    .line 2073
    :catch_0
    move-exception v6

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v5

    const/16 v9, 0x386

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v4

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2076
    goto :goto_2
.end method

.method protected toastAllowed()Z
    .locals 12

    .prologue
    .line 2595
    move-object v1, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v10, v4

    move-wide v4, v10

    move-wide v6, v10

    .line 2596
    move-wide v2, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v8, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 2597
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 2598
    const/4 v4, 0x1

    move v1, v4

    .line 2600
    :goto_0
    return v1

    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .locals 8

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    move-object v2, v5

    .line 806
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 807
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 808
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 810
    :cond_0
    goto :goto_0

    .line 811
    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 812
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 813
    goto :goto_1

    .line 816
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 817
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .line 818
    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 819
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 820
    move-object v4, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 821
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 822
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 824
    :cond_3
    goto :goto_2

    .line 825
    :cond_4
    return-void
.end method
